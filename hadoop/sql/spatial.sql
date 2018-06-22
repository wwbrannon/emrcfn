drop function if exists ST_AsBinary; create function ST_AsBinary as 'com.esri.hadoop.hive.ST_AsBinary' using jar 'hdfs:/spatial/gis-tools-hadoop-2.0.jar';
drop function if exists ST_AsGeoJSON; create function ST_AsGeoJSON as 'com.esri.hadoop.hive.ST_AsGeoJson' using jar 'hdfs:/spatial/gis-tools-hadoop-2.0.jar';
drop function if exists ST_AsJSON; create function ST_AsJSON as 'com.esri.hadoop.hive.ST_AsJson' using jar 'hdfs:/spatial/gis-tools-hadoop-2.0.jar';
drop function if exists ST_AsText; create function ST_AsText as 'com.esri.hadoop.hive.ST_AsText' using jar 'hdfs:/spatial/gis-tools-hadoop-2.0.jar';
drop function if exists ST_GeomFromJSON; create function ST_GeomFromJSON as 'com.esri.hadoop.hive.ST_GeomFromJson' using jar 'hdfs:/spatial/gis-tools-hadoop-2.0.jar';
drop function if exists ST_GeomFromGeoJSON; create function ST_GeomFromGeoJSON as 'com.esri.hadoop.hive.ST_GeomFromGeoJson' using jar 'hdfs:/spatial/gis-tools-hadoop-2.0.jar';
drop function if exists ST_GeomFromText; create function ST_GeomFromText as 'com.esri.hadoop.hive.ST_GeomFromText' using jar 'hdfs:/spatial/gis-tools-hadoop-2.0.jar';
drop function if exists ST_GeomFromWKB; create function ST_GeomFromWKB as 'com.esri.hadoop.hive.ST_GeomFromWKB' using jar 'hdfs:/spatial/gis-tools-hadoop-2.0.jar';
drop function if exists ST_PointFromWKB; create function ST_PointFromWKB as 'com.esri.hadoop.hive.ST_PointFromWKB' using jar 'hdfs:/spatial/gis-tools-hadoop-2.0.jar';
drop function if exists ST_LineFromWKB; create function ST_LineFromWKB as 'com.esri.hadoop.hive.ST_LineFromWKB' using jar 'hdfs:/spatial/gis-tools-hadoop-2.0.jar';
drop function if exists ST_PolyFromWKB; create function ST_PolyFromWKB as 'com.esri.hadoop.hive.ST_PolyFromWKB' using jar 'hdfs:/spatial/gis-tools-hadoop-2.0.jar';
drop function if exists ST_MPointFromWKB; create function ST_MPointFromWKB as 'com.esri.hadoop.hive.ST_MPointFromWKB' using jar 'hdfs:/spatial/gis-tools-hadoop-2.0.jar';
drop function if exists ST_MLineFromWKB; create function ST_MLineFromWKB as 'com.esri.hadoop.hive.ST_MLineFromWKB' using jar 'hdfs:/spatial/gis-tools-hadoop-2.0.jar';
drop function if exists ST_MPolyFromWKB; create function ST_MPolyFromWKB as 'com.esri.hadoop.hive.ST_MPolyFromWKB' using jar 'hdfs:/spatial/gis-tools-hadoop-2.0.jar';
drop function if exists ST_GeomCollection; create function ST_GeomCollection as 'com.esri.hadoop.hive.ST_GeomCollection' using jar 'hdfs:/spatial/gis-tools-hadoop-2.0.jar';
drop function if exists ST_GeometryType; create function ST_GeometryType as 'com.esri.hadoop.hive.ST_GeometryType' using jar 'hdfs:/spatial/gis-tools-hadoop-2.0.jar';
drop function if exists ST_Point; create function ST_Point as 'com.esri.hadoop.hive.ST_Point' using jar 'hdfs:/spatial/gis-tools-hadoop-2.0.jar';
drop function if exists ST_PointZ; create function ST_PointZ as 'com.esri.hadoop.hive.ST_PointZ' using jar 'hdfs:/spatial/gis-tools-hadoop-2.0.jar';
drop function if exists ST_LineString; create function ST_LineString as 'com.esri.hadoop.hive.ST_LineString' using jar 'hdfs:/spatial/gis-tools-hadoop-2.0.jar';
drop function if exists ST_Polygon; create function ST_Polygon as 'com.esri.hadoop.hive.ST_Polygon' using jar 'hdfs:/spatial/gis-tools-hadoop-2.0.jar';
drop function if exists ST_MultiPoint; create function ST_MultiPoint as 'com.esri.hadoop.hive.ST_MultiPoint' using jar 'hdfs:/spatial/gis-tools-hadoop-2.0.jar';
drop function if exists ST_MultiLineString; create function ST_MultiLineString as 'com.esri.hadoop.hive.ST_MultiLineString' using jar 'hdfs:/spatial/gis-tools-hadoop-2.0.jar';
drop function if exists ST_MultiPolygon; create function ST_MultiPolygon as 'com.esri.hadoop.hive.ST_MultiPolygon' using jar 'hdfs:/spatial/gis-tools-hadoop-2.0.jar';
drop function if exists ST_SetSRID; create function ST_SetSRID as 'com.esri.hadoop.hive.ST_SetSRID' using jar 'hdfs:/spatial/gis-tools-hadoop-2.0.jar';
drop function if exists ST_SRID; create function ST_SRID as 'com.esri.hadoop.hive.ST_SRID' using jar 'hdfs:/spatial/gis-tools-hadoop-2.0.jar';
drop function if exists ST_IsEmpty; create function ST_IsEmpty as 'com.esri.hadoop.hive.ST_IsEmpty' using jar 'hdfs:/spatial/gis-tools-hadoop-2.0.jar';
drop function if exists ST_IsSimple; create function ST_IsSimple as 'com.esri.hadoop.hive.ST_IsSimple' using jar 'hdfs:/spatial/gis-tools-hadoop-2.0.jar';
drop function if exists ST_Dimension; create function ST_Dimension as 'com.esri.hadoop.hive.ST_Dimension' using jar 'hdfs:/spatial/gis-tools-hadoop-2.0.jar';
drop function if exists ST_X; create function ST_X as 'com.esri.hadoop.hive.ST_X' using jar 'hdfs:/spatial/gis-tools-hadoop-2.0.jar';
drop function if exists ST_Y; create function ST_Y as 'com.esri.hadoop.hive.ST_Y' using jar 'hdfs:/spatial/gis-tools-hadoop-2.0.jar';
drop function if exists ST_MinX; create function ST_MinX as 'com.esri.hadoop.hive.ST_MinX' using jar 'hdfs:/spatial/gis-tools-hadoop-2.0.jar';
drop function if exists ST_MaxX; create function ST_MaxX as 'com.esri.hadoop.hive.ST_MaxX' using jar 'hdfs:/spatial/gis-tools-hadoop-2.0.jar';
drop function if exists ST_MinY; create function ST_MinY as 'com.esri.hadoop.hive.ST_MinY' using jar 'hdfs:/spatial/gis-tools-hadoop-2.0.jar';
drop function if exists ST_MaxY; create function ST_MaxY as 'com.esri.hadoop.hive.ST_MaxY' using jar 'hdfs:/spatial/gis-tools-hadoop-2.0.jar';
drop function if exists ST_IsClosed; create function ST_IsClosed as 'com.esri.hadoop.hive.ST_IsClosed' using jar 'hdfs:/spatial/gis-tools-hadoop-2.0.jar';
drop function if exists ST_IsRing; create function ST_IsRing as 'com.esri.hadoop.hive.ST_IsRing' using jar 'hdfs:/spatial/gis-tools-hadoop-2.0.jar';
drop function if exists ST_Length; create function ST_Length as 'com.esri.hadoop.hive.ST_Length' using jar 'hdfs:/spatial/gis-tools-hadoop-2.0.jar';
drop function if exists ST_GeodesicLengthWGS84; create function ST_GeodesicLengthWGS84 as 'com.esri.hadoop.hive.ST_GeodesicLengthWGS84' using jar 'hdfs:/spatial/gis-tools-hadoop-2.0.jar';
drop function if exists ST_Area; create function ST_Area as 'com.esri.hadoop.hive.ST_Area' using jar 'hdfs:/spatial/gis-tools-hadoop-2.0.jar';
drop function if exists ST_Is3D; create function ST_Is3D as 'com.esri.hadoop.hive.ST_Is3D' using jar 'hdfs:/spatial/gis-tools-hadoop-2.0.jar';
drop function if exists ST_Z; create function ST_Z as 'com.esri.hadoop.hive.ST_Z' using jar 'hdfs:/spatial/gis-tools-hadoop-2.0.jar';
drop function if exists ST_MinZ; create function ST_MinZ as 'com.esri.hadoop.hive.ST_MinZ' using jar 'hdfs:/spatial/gis-tools-hadoop-2.0.jar';
drop function if exists ST_MaxZ; create function ST_MaxZ as 'com.esri.hadoop.hive.ST_MaxZ' using jar 'hdfs:/spatial/gis-tools-hadoop-2.0.jar';
drop function if exists ST_IsMeasured; create function ST_IsMeasured as 'com.esri.hadoop.hive.ST_IsMeasured' using jar 'hdfs:/spatial/gis-tools-hadoop-2.0.jar';
drop function if exists ST_M; create function ST_M as 'com.esri.hadoop.hive.ST_M' using jar 'hdfs:/spatial/gis-tools-hadoop-2.0.jar';
drop function if exists ST_MinM; create function ST_MinM as 'com.esri.hadoop.hive.ST_MinM' using jar 'hdfs:/spatial/gis-tools-hadoop-2.0.jar';
drop function if exists ST_MaxM; create function ST_MaxM as 'com.esri.hadoop.hive.ST_MaxM' using jar 'hdfs:/spatial/gis-tools-hadoop-2.0.jar';
drop function if exists ST_CoordDim; create function ST_CoordDim as 'com.esri.hadoop.hive.ST_CoordDim' using jar 'hdfs:/spatial/gis-tools-hadoop-2.0.jar';
drop function if exists ST_NumPoints; create function ST_NumPoints as 'com.esri.hadoop.hive.ST_NumPoints' using jar 'hdfs:/spatial/gis-tools-hadoop-2.0.jar';
drop function if exists ST_PointN; create function ST_PointN as 'com.esri.hadoop.hive.ST_PointN' using jar 'hdfs:/spatial/gis-tools-hadoop-2.0.jar';
drop function if exists ST_StartPoint; create function ST_StartPoint as 'com.esri.hadoop.hive.ST_StartPoint' using jar 'hdfs:/spatial/gis-tools-hadoop-2.0.jar';
drop function if exists ST_EndPoint; create function ST_EndPoint as 'com.esri.hadoop.hive.ST_EndPoint' using jar 'hdfs:/spatial/gis-tools-hadoop-2.0.jar';
drop function if exists ST_ExteriorRing; create function ST_ExteriorRing as 'com.esri.hadoop.hive.ST_ExteriorRing' using jar 'hdfs:/spatial/gis-tools-hadoop-2.0.jar';
drop function if exists ST_NumInteriorRing; create function ST_NumInteriorRing as 'com.esri.hadoop.hive.ST_NumInteriorRing' using jar 'hdfs:/spatial/gis-tools-hadoop-2.0.jar';
drop function if exists ST_InteriorRingN; create function ST_InteriorRingN as 'com.esri.hadoop.hive.ST_InteriorRingN' using jar 'hdfs:/spatial/gis-tools-hadoop-2.0.jar';
drop function if exists ST_NumGeometries; create function ST_NumGeometries as 'com.esri.hadoop.hive.ST_NumGeometries' using jar 'hdfs:/spatial/gis-tools-hadoop-2.0.jar';
drop function if exists ST_GeometryN; create function ST_GeometryN as 'com.esri.hadoop.hive.ST_GeometryN' using jar 'hdfs:/spatial/gis-tools-hadoop-2.0.jar';
drop function if exists ST_Centroid; create function ST_Centroid as 'com.esri.hadoop.hive.ST_Centroid' using jar 'hdfs:/spatial/gis-tools-hadoop-2.0.jar';
drop function if exists ST_Contains; create function ST_Contains as 'com.esri.hadoop.hive.ST_Contains' using jar 'hdfs:/spatial/gis-tools-hadoop-2.0.jar';
drop function if exists ST_Crosses; create function ST_Crosses as 'com.esri.hadoop.hive.ST_Crosses' using jar 'hdfs:/spatial/gis-tools-hadoop-2.0.jar';
drop function if exists ST_Disjoint; create function ST_Disjoint as 'com.esri.hadoop.hive.ST_Disjoint' using jar 'hdfs:/spatial/gis-tools-hadoop-2.0.jar';
drop function if exists ST_EnvIntersects; create function ST_EnvIntersects as 'com.esri.hadoop.hive.ST_EnvIntersects' using jar 'hdfs:/spatial/gis-tools-hadoop-2.0.jar';
drop function if exists ST_Envelope; create function ST_Envelope as 'com.esri.hadoop.hive.ST_Envelope' using jar 'hdfs:/spatial/gis-tools-hadoop-2.0.jar';
drop function if exists ST_Equals; create function ST_Equals as 'com.esri.hadoop.hive.ST_Equals' using jar 'hdfs:/spatial/gis-tools-hadoop-2.0.jar';
drop function if exists ST_Overlaps; create function ST_Overlaps as 'com.esri.hadoop.hive.ST_Overlaps' using jar 'hdfs:/spatial/gis-tools-hadoop-2.0.jar';
drop function if exists ST_Intersects; create function ST_Intersects as 'com.esri.hadoop.hive.ST_Intersects' using jar 'hdfs:/spatial/gis-tools-hadoop-2.0.jar';
drop function if exists ST_Relate; create function ST_Relate as 'com.esri.hadoop.hive.ST_Relate' using jar 'hdfs:/spatial/gis-tools-hadoop-2.0.jar';
drop function if exists ST_Touches; create function ST_Touches as 'com.esri.hadoop.hive.ST_Touches' using jar 'hdfs:/spatial/gis-tools-hadoop-2.0.jar';
drop function if exists ST_Within; create function ST_Within as 'com.esri.hadoop.hive.ST_Within' using jar 'hdfs:/spatial/gis-tools-hadoop-2.0.jar';
drop function if exists ST_Distance; create function ST_Distance as 'com.esri.hadoop.hive.ST_Distance' using jar 'hdfs:/spatial/gis-tools-hadoop-2.0.jar';
drop function if exists ST_Boundary; create function ST_Boundary as 'com.esri.hadoop.hive.ST_Boundary' using jar 'hdfs:/spatial/gis-tools-hadoop-2.0.jar';
drop function if exists ST_Buffer; create function ST_Buffer as 'com.esri.hadoop.hive.ST_Buffer' using jar 'hdfs:/spatial/gis-tools-hadoop-2.0.jar';
drop function if exists ST_ConvexHull; create function ST_ConvexHull as 'com.esri.hadoop.hive.ST_ConvexHull' using jar 'hdfs:/spatial/gis-tools-hadoop-2.0.jar';
drop function if exists ST_Intersection; create function ST_Intersection as 'com.esri.hadoop.hive.ST_Intersection' using jar 'hdfs:/spatial/gis-tools-hadoop-2.0.jar';
drop function if exists ST_Union; create function ST_Union as 'com.esri.hadoop.hive.ST_Union' using jar 'hdfs:/spatial/gis-tools-hadoop-2.0.jar';
drop function if exists ST_Difference; create function ST_Difference as 'com.esri.hadoop.hive.ST_Difference' using jar 'hdfs:/spatial/gis-tools-hadoop-2.0.jar';
drop function if exists ST_SymmetricDiff; create function ST_SymmetricDiff as 'com.esri.hadoop.hive.ST_SymmetricDiff' using jar 'hdfs:/spatial/gis-tools-hadoop-2.0.jar';
drop function if exists ST_SymDifference; create function ST_SymDifference as 'com.esri.hadoop.hive.ST_SymmetricDiff' using jar 'hdfs:/spatial/gis-tools-hadoop-2.0.jar';
drop function if exists ST_Aggr_ConvexHull; create function ST_Aggr_ConvexHull as 'com.esri.hadoop.hive.ST_Aggr_ConvexHull' using jar 'hdfs:/spatial/gis-tools-hadoop-2.0.jar';
drop function if exists ST_Aggr_Intersection; create function ST_Aggr_Intersection as 'com.esri.hadoop.hive.ST_Aggr_Intersection' using jar 'hdfs:/spatial/gis-tools-hadoop-2.0.jar';
drop function if exists ST_Aggr_Union; create function ST_Aggr_Union as 'com.esri.hadoop.hive.ST_Aggr_Union' using jar 'hdfs:/spatial/gis-tools-hadoop-2.0.jar';
drop function if exists ST_Bin; create function ST_Bin as 'com.esri.hadoop.hive.ST_Bin' using jar 'hdfs:/spatial/gis-tools-hadoop-2.0.jar';
drop function if exists ST_BinEnvelope; create function ST_BinEnvelope as 'com.esri.hadoop.hive.ST_BinEnvelope' using jar 'hdfs:/spatial/gis-tools-hadoop-2.0.jar';

