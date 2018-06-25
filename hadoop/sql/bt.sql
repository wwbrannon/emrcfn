drop function if exists BT_AsGeometry; create function BT_AsGeometry as 'com.wwbrannon.bing.BT_AsGeometry' using jar 'hdfs:/spatial/bing-tile-hive-1.0.jar';
drop function if exists BT_Equals; create function BT_Equals as 'com.wwbrannon.bing.BT_Equals' using jar 'hdfs:/spatial/bing-tile-hive-1.0.jar';
drop function if exists BT_FromCoordinates; create function BT_FromCoordinates as 'com.wwbrannon.bing.BT_FromCoordinates' using jar 'hdfs:/spatial/bing-tile-hive-1.0.jar';
drop function if exists BT_FromLatLon; create function BT_FromLatLon as 'com.wwbrannon.bing.BT_FromLatLon' using jar 'hdfs:/spatial/bing-tile-hive-1.0.jar';
drop function if exists BT_FromQuadKey; create function BT_FromQuadKey as 'com.wwbrannon.bing.BT_FromQuadKey' using jar 'hdfs:/spatial/bing-tile-hive-1.0.jar';
drop function if exists BT_GetQuadKey; create function BT_GetQuadKey as 'com.wwbrannon.bing.BT_GetQuadKey' using jar 'hdfs:/spatial/bing-tile-hive-1.0.jar';
drop function if exists BT_GetX; create function BT_GetX as 'com.wwbrannon.bing.BT_GetX' using jar 'hdfs:/spatial/bing-tile-hive-1.0.jar';
drop function if exists BT_GetY; create function BT_GetY as 'com.wwbrannon.bing.BT_GetY' using jar 'hdfs:/spatial/bing-tile-hive-1.0.jar';
drop function if exists BT_GetZoomLevel; create function BT_GetZoomLevel as 'com.wwbrannon.bing.BT_GetZoomLevel' using jar 'hdfs:/spatial/bing-tile-hive-1.0.jar';
drop function if exists BT_TilesAround; create function BT_TilesAround as 'com.wwbrannon.bing.BT_TilesAround' using jar 'hdfs:/spatial/bing-tile-hive-1.0.jar';
drop function if exists BT_TilesCoveringGeometry; create function BT_TilesCoveringGeometry as 'com.wwbrannon.bing.BT_TilesCoveringGeometry' using jar 'hdfs:/spatial/bing-tile-hive-1.0.jar';

