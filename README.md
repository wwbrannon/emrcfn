geoemr
------

This repo's scripts set up an EMR cluster with spatially enabled Hive. The `emrcfn.yaml` template sets up the cluster and relies on resources under the `steps/` directory for geospatial support. The template outputs cluster attributes to facilitate nesting it within other templates.

### Cluster features
Other than Hive spatial support, the cluster is configured with the following features:
* Autoscaling for core and task nodes, to keep up with respectively HDFS and memory utilization;
* Spot instances for task nodes, to minimize costs without risking data loss;
* Core Hadoop: Hadoop, Ganglia, Hive, Hue, Pig, Tez and Mahout;
* Spark: Spark and Zeppelin;
* Presto;
* Hadoop debugging and logging to an S3 bucket;
* AWS Glue for the Hive and Spark metastores.

Spot instances for task nodes can be replaced with on-demand, if desired.

### Spatial support
One of the steps run on cluster creation loads a jar containing two sets of spatial functions:
* ESRI's [geospatial library for Hadoop](https://github.com/esri/spatial-framework-for-hadoop), containing the usual set of `ST_*` functions, and
* a [port](https://github.com/wwbrannon/bing-tile-hive) of Presto's functions for working with Bing tiles.

(If you're writing Java MapReduce jobs, ESRI's [Java Geometry API](https://github.com/esri/geometry-api-java) is also bundled in the jar as a dependency of both of the above.) The jar file (in this repo under `steps/jar/`) is copied to HDFS and the relevant Hive DDL statements (under `steps/sql/`) set up the UDFs. If the functions are already defined, they are dropped and recreated.

The `ST_*` spatial functions allow queries on geographic objects. As an example, if we have one table of Census geographies, with their WKT representations, and another of lat-long locations reported by IoT devices, we can identify the Census block groups where we've observed devices as follows:
```
select
	io.*,
	cg.geoid
from default.iot_observations io
	cross join default.census_geo cg
where
	cg.level = 'blockgroup' and
	ST_Intersects(ST_Point(io.longitude, io.latitude),
                  st_GeomFromText(cg.wkt));
```

By default, however, Hive implements this query very inefficiently, by actually materializing and filtering the Cartesian product of the two tables. Because Hive doesn't natively support [spatial indexes](https://blog.mapbox.com/a-dive-into-spatial-search-algorithms-ebd0c5e39d2a), the `BT_*` functions for Bing tiles can be useful for [implementing your own](https://github.com/wwbrannon/bing-tile-hive#use-for-spatial-joins) and speeding up spatial joins.

### Deployment
Deployment is as follows:
1. Copy the `steps/` directory as-is to an S3 prefix readable by the IAM user creating the cluster. You should wind up with these files under, e.g., `s3://mybucket/prefixname/steps/`.
2. Run the Cloudformation template, passing the parameters
    * `VpcId` (the VPC in which to create the cluster),
    * `Subnet` (the subnet in which to create the cluster),
    * `KeyPair` (the SSH keypair to use for connections to the master node) and 
    * `SpatialInstallS3Prefix` (the S3 prefix in step 1, including the bucket name but without the leading 's3://' and trailing '/', as in `mybucket/prefixname` rather than `s3://mybucket/prefixname/`).

An example AWS CLI command deploying the template is:
```
aws --profile socmac cloudformation create-stack --stack-name emrcfn \
                                --template-body "$(cat emrcfn.yaml)" \
                                --capabilities CAPABILITY_NAMED_IAM \
                                --parameters ParameterKey=VpcId,ParameterValue=vpc-4846d02d \
                                             ParameterKey=Subnet,ParameterValue=subnet-9f2ad7b4 \
                                             ParameterKey=KeyPair,ParameterValue=wwbrannon \
                                             ParameterKey=S3ConfigPrefix,ParameterValue=utils.lsm
```

