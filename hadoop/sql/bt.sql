drop function if exists BT_AsGeometry; create function BT_ToGeometry as 'com.wwbrannon.bing.BT_ToGeometry' using 'hdfs:/spatial/bing-tile-hive-1.0.jar';
drop function if exists BT_FromLatLon; create function BT_FromLatLon as 'com.wwbrannon.bing.BT_FromLatLon' using 'hdfs:/spatial/bing-tile-hive-1.0.jar';
drop function if exists BT_GetX; create function BT_GetX as 'com.wwbrannon.bing.BT_GetX' using 'hdfs:/spatial/bing-tile-hive-1.0.jar';
drop function if exists BT_TilesAround; create function BT_TilesAround as 'com.wwbrannon.bing.BT_TilesAround' using 'hdfs:/spatial/bing-tile-hive-1.0.jar';
drop function if exists BT_Equals; create function BT_Equals as 'com.wwbrannon.bing.BT_Equals' using 'hdfs:/spatial/bing-tile-hive-1.0.jar';
drop function if exists BT_FromQuadKey; create function BT_FromQuadKey as 'com.wwbrannon.bing.BT_FromQuadKey' using 'hdfs:/spatial/bing-tile-hive-1.0.jar';
drop function if exists BT_GetY; create function BT_GetY as 'com.wwbrannon.bing.BT_GetY' using 'hdfs:/spatial/bing-tile-hive-1.0.jar';
drop function if exists BT_TilesCoveringGeometry; create function BT_TilesCoveringGeometry as 'com.wwbrannon.bing.BT_TilesCoveringGeometry' using 'hdfs:/spatial/bing-tile-hive-1.0.jar';
drop function if exists BT_FromCoordinates; create function BT_FromCoordinates as 'com.wwbrannon.bing.BT_FromCoordinates' using 'hdfs:/spatial/bing-tile-hive-1.0.jar';
drop function if exists BT_GetQuadKey; create function BT_GetQuadKey as 'com.wwbrannon.bing.BT_GetQuadKey' using 'hdfs:/spatial/bing-tile-hive-1.0.jar';
drop function if exists BT_GetZoomLevel; create function BT_GetZoomLevel as 'com.wwbrannon.bing.BT_GetZoomLevel' using 'hdfs:/spatial/bing-tile-hive-1.0.jar';

