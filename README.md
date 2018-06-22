geoemr
------

This repo's scripts set up an EMR cluster with spatially enabled Hive. The `emrcfn.yaml` template sets up the cluster and relies on resources under the `hadoop/` directory for geospatial support.

### Cluster features
Other than Hive spatial support, the cluster is configured with the following features:
* Autoscaling for core and task nodes, to keep up with respectively HDFS and memory utilization;
* Spot instances for task nodes, to minimize costs without risking data loss;
* Core Hadoop: Hadoop, Ganglia, Hive, Hue, Pig, Tez and Mahout;
* Spark: Spark and Zeppelin;
* Hadoop debugging and logging to an S3 bucket;
* AWS Glue for the Hive and Spark metastores.

Spot instances for task nodes can be replaced with on-demand, if desired. 

### Spatial support
One of the steps run on cluster creation loads ESRI's [geospatial library for Hadoop](https://github.com/esri/gptools-for-aws/). The jar file (in this repo under `hadoop/jar/`) is copied to HDFS and the relevant Hive DDL statements (in `hadoop/sql/spatial.sql`) set up UDFs in the Glue metastore. If the functions are already defined, they are dropped and recreated.

The `ST_*` spatial functions allow queries on geographic objects. If we have one table of Census geographies, with their WKT representations, and another of lat-long locations reported by IoT devices, we can identify the Census block groups where we've observed devices as follows:
```
select
	io.*,
	cg.geoid
from default.iot_observations io
	cross join default.census_geo cg
where
	cg.level = 'block' and
	ST_Intersects(ST_Point(io.longitude, io.latitude),
                  st_GeomFromText(cg.wkt));
```

### Deployment
Deployment is as follows:
1. Copy the `hadoop/` directory to an s3 bucket readable by the IAM user creating the cluster.
2. Run the Cloudformation template, passing the parameters
    * `VpcId` (the VPC in which to create the cluster),
    * `Subnet` (the subnet in which to create the cluster),
    * `KeyPair` (the SSH keypair to use for connections to the master node) and 
    * `SpatialInstallScript` (the S3 URL of the `install.sh` script copied in step 1).

An example AWS CLI command deploying the template is:
```
aws cloudformation create-stack --stack-name emrcfn \
                                --template-body "$(cat emrcfn.yaml)" \
                                --capabilities CAPABILITY_NAMED_IAM \
                                --parameters ParameterKey=VpcId,ParameterValue=vpc-XXXXXXXX \
                                             ParameterKey=Subnet,ParameterValue=subnet-XXXXXXXX \
                                             ParameterKey=KeyPair,ParameterValue=MyKeyPairName,
                                             ParameterKey=SpatialInstallScript,ParameterValue=s3://mybucket/hadoop/install.sh
```