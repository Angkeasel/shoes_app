import 'dart:async';

import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'dart:io' show Platform;
import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

//
//read me
/* 
  pls install three package before use this class 
  1. google_maps_flutter
  2. geolocator
  3. flutter_polyline_points
   
  and than configuration environment step by step if package required

  thank you good luck for use this class 
  make by ZFS Flutter Team 
*/

class MapUtils {
  static Completer<GoogleMapController> mapController = Completer();

  //function for initial camera google map
  static CameraPosition initialCameraGoogleMap(
      {required LatLng latlng, required double zoom}) {
    return CameraPosition(
      target: latlng,
      zoom: zoom,
    );
  }

  //on Created google map
  static void onCreatedGoogleMap(GoogleMapController controller) {
    rootBundle.loadString('assets/images/map_style.txt').then((string) {
      controller.setMapStyle(string);
    });
    mapController.complete(controller);
  }

  static void dispose() async {
    // ignore: unused_local_variable
    // final GoogleMapController controller = await mapController.future;
    mapController = Completer();
  }

  //function move location or go to current location
  static Future<void> cameraMoveGoogleMap(
      {required LatLng latlng, required double zoom}) async {
    final GoogleMapController controller = await mapController.future;

    controller.animateCamera(
      CameraUpdate.newCameraPosition(
        CameraPosition(
          target: latlng,
          zoom: zoom,
        ),
      ),
    );
  }

  //function drawing polygon google map
  static Set<Polygon> drawPolygon({
    required String idStr,
    required List<dynamic> points,
    bool visibility = true,
    required Color strokeColor,
    int strokeWidth = 10,
    required Color fillColor,
  }) {
    Set<Polygon> polygonSet = {};

    if (visibility) {
      points
          .map((e) => polygonSet.add(
                Polygon(
                  polygonId: PolygonId(e[1].toString()),
                  points: [LatLng(e[1], e[0])],
                  strokeColor: strokeColor,
                  fillColor: fillColor,
                  strokeWidth: strokeWidth,
                ),
              ))
          .toList();
    }
    return polygonSet;
  }

  //function set bound center google
  static Future<void> setBoundTargetGoogleMap(List<LatLng> coordinates,
      {double padding = 10.0}) async {
    debugPrint("====coordinated===");
    final GoogleMapController controller = await mapController.future;
    controller.animateCamera(
        CameraUpdate.newLatLngBounds(createBounds(coordinates), padding));
  }

  static LatLngBounds createBounds(List<dynamic> positions) {
    final southwestLat = positions.map((p) {
      LatLng latlng = LatLng(p[1], p[0]);
      return latlng.latitude;
    }).reduce(
        (value, element) => value < element ? value : element); // smallest
    final southwestLon = positions.map((p) {
      LatLng latlng = LatLng(p[1], p[0]);
      return latlng.longitude;
    }).reduce((value, element) => value < element ? value : element);
    final northeastLat = positions.map((p) {
      LatLng latlng = LatLng(p[1], p[0]);
      return latlng.latitude;
    }).reduce((value, element) => value > element ? value : element); // biggest
    final northeastLon = positions.map((p) {
      LatLng latlng = LatLng(p[1], p[0]);
      return latlng.longitude;
    }).reduce((value, element) => value > element ? value : element);
    return LatLngBounds(
      southwest: LatLng(southwestLat, southwestLon),
      northeast: LatLng(northeastLat, northeastLon),
    );
  }

  static Future<Position> getCurrentLocation() async {
    bool serviceEnabled;
    LocationPermission permission;
    try {
      serviceEnabled = await Geolocator.isLocationServiceEnabled();
      if (!serviceEnabled) {
        return Future.error('Location services are disabled.');
      }
      permission = await Geolocator.checkPermission();
      if (permission == LocationPermission.denied) {
        permission = await Geolocator.requestPermission();
        if (permission == LocationPermission.deniedForever) {
          return Future.error(
              'Location permissions are permanently denied, we cannot request permissions.');
        }

        if (permission == LocationPermission.denied) {
          return Future.error('Location permissions are denied');
        }
      }
    } catch (e) {
      debugPrint('TimeoutException: $e');
    }
    return Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.low,
      timeLimit: const Duration(seconds: 120),
      forceAndroidLocationManager: false,
    ).then((value) {
      debugPrint("dsa");
      return value;
    });
  }

  static Future<BitmapDescriptor> getMarkerImageFromUrl(
      {required String imageAsset, int targetWidth = 50}) async {
    ByteData data = await rootBundle.load(imageAsset);
    Uint8List markerImageBytes = data.buffer.asUint8List();
    if (!kIsWeb) {
      if (Platform.isIOS) {
        markerImageBytes = await _resizeImageBytes(
          markerImageBytes,
          targetWidth,
        );
      }
    }

    return BitmapDescriptor.fromBytes(markerImageBytes);
  }

  static Future<Uint8List> _resizeImageBytes(
    Uint8List imageBytes,
    int targetWidth,
  ) async {
    Codec imageCodec = await instantiateImageCodec(
      imageBytes,
      targetWidth: targetWidth,
    );

    FrameInfo frameInfo = await imageCodec.getNextFrame();

    ByteData? byteData = await frameInfo.image.toByteData(
      format: ImageByteFormat.png,
    );

    return byteData!.buffer.asUint8List();
  }
}
