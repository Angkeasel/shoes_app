import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';

import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'dart:async';
import 'dart:ui' as ui;
import 'package:flutter/foundation.dart';

import '../../../util/util.dart';
import '../controller/map_controller.dart';

class ChooseLocationAddress extends StatefulWidget {
  const ChooseLocationAddress({
    Key? key,
  }) : super(key: key);

  @override
  State<ChooseLocationAddress> createState() => _ChooseLocationAddressState();
}

class _ChooseLocationAddressState extends State<ChooseLocationAddress> {
  final Geolocator geolocator = Geolocator();
  final mapController = Get.put(AddressController());

  Future<void> getAddressFromLatLng(LatLng position) async {
    try {
      await placemarkFromCoordinates(position.latitude, position.longitude)
          .then((List<Placemark> placemarks) {
        Placemark place = placemarks[0];
        setState(() {
          mapController.stAddress.value =
              '${place.street}, ${place.administrativeArea},${place.name}, ${place.country}'
                  .toString();
        });
        debugPrint("Full Address:${mapController.stAddress.value}");
      });
    } catch (e) {
      debugPrint("Error :$e");
    } finally {
      debugPrint("Error final  :$e");
    }
  }

  final myCurrnetLoacation =
      const LatLng(11.588000535464978, 104.89708251231646);

  Set<Marker> markers = {};

  Future<Position> _determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }

    return await Geolocator.getCurrentPosition();
  }

  void setMarker() async {
    final position = await _determinePosition();
    debugPrint('LatLong: ${position.latitude}, ${position.longitude}');
    markers.add(
      Marker(
        position: LatLng(position.latitude, position.longitude),
        markerId: const MarkerId('MyCurrentLocation'),
      ),
    );
    setState(() {});
  }

  void onMovedCamera() async {
    final position = await _determinePosition();
    _googleMapController!.animateCamera(CameraUpdate.newLatLngZoom(
        LatLng(position.latitude, position.longitude), 14));
  }

  Set<Marker> marker = {};
  Uint8List? markerIcon;
  Future<Uint8List> getBytesFromAsset(
    String path,
    int width,
  ) async {
    ByteData data = await rootBundle.load(path);
    ui.Codec codec = await ui.instantiateImageCodec(data.buffer.asUint8List(),
        targetWidth: width);
    ui.FrameInfo fi = await codec.getNextFrame();
    return (await fi.image.toByteData(format: ui.ImageByteFormat.png))!
        .buffer
        .asUint8List();
  }

  Future<void> addMarker(startLocation) async {
    markers.add(
      Marker(
        anchor: const Offset(0.52, 0.7),
        markerId: MarkerId('$startLocation'),
        position: startLocation,
        onDragEnd: (value) {
          debugPrint('======== onDragEnd : $value');
        },
        icon: BitmapDescriptor.fromBytes(markerIcon!),
      ),
    );
  }

  fire() async {
    markerIcon = await getBytesFromAsset('assets/icons/pin_icon.png', 120);
    if (mapController.latitudePosition.value != 0.0) {
      mapController.isCheckMaker.value = true;
      addMarker(LatLng(mapController.latitudePosition.value,
              mapController.longitudePosition.value))
          .then((value) {
        setState(() {});
      });
    }
  }

  @override
  void initState() {
    setMarker();

    MapUtils.getCurrentLocation().then((value) {
      mapController.latitudePosition.value = value.latitude;
      mapController.longitudePosition.value = value.longitude;
    });
    onMovedCamera();
    super.initState();
  }

  GoogleMapController? _googleMapController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          GoogleMap(
            myLocationEnabled: true,
            myLocationButtonEnabled: false,
            zoomControlsEnabled: false,
            scrollGesturesEnabled: true, //widget.isScrolled!,
            onMapCreated: MapUtils.onCreatedGoogleMap,
            onTap: (v) {
              debugPrint('========getLatLng: $v');
              v;
            },
            onCameraMove: (value) {
              debugPrint(
                  '===Latlng on Moved: ${value.target.latitude}, ${value.target.longitude} \\${mapController.latitudePosition.value}');
              mapController.latitudePosition.value = value.target.latitude;
              mapController.longitudePosition.value = value.target.longitude;
            },
            mapType: MapType.normal,
            markers: mapController.isCheckMaker.value ? markers : marker,
            initialCameraPosition: CameraPosition(
              target: myCurrnetLoacation,
              zoom: 16,
            ),
          ),
          Positioned(
            bottom: 30,
            left: 100,
            right: 100,
            child: GestureDetector(
              onTap: () {
                setState(() {
                  mapController.isCheckMaker.value =
                      !mapController.isCheckMaker.value;
                });
              },
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    mapController.getAddressFromLatLng(
                        mapController.latitudePosition.value,
                        mapController.longitudePosition.value);
                    mapController.isCheckMaker.value = false;
                    Navigator.pop(context);
                  });
                },
                child: Text(
                  'Choose Address',
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      fontWeight: FontWeight.w700, color: Colors.white),
                ),
              ),
            ),
          ),
          const Align(
            alignment: Alignment.center,
            child: Icon(
              Icons.person_pin_circle,
              size: 40.0,
              color: Colors.red,
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        onPressed: () {
          onMovedCamera();
        },
        child: const Icon(
          Icons.my_location,
          color: Colors.black,
        ),
      ),
    );
  }
}
