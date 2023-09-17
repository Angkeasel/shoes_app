import 'dart:math';

import 'package:allpay/src/constant/app_setting.dart';
import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'dart:async';
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

  void onMovedCamera() async {
    final position = await _determinePosition();
    await Future.delayed(const Duration(seconds: 1));

    _googleMapController.animateCamera(
      CameraUpdate.newCameraPosition(
        CameraPosition(
          target: LatLng(
            position.latitude,
            position.longitude,
          ),
          zoom: 16,
        ),
      ),
    );
  }

  Future<Position> _getCurrentLocation() async {
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

  late final GoogleMapController _googleMapController;

  @override
  void initState() {
    _getCurrentLocation().then((value) {
      mapController.latitudePosition.value = value.latitude;
      mapController.longitudePosition.value = value.longitude;
      _latLng = LatLng(value.latitude, value.latitude);
    });
    onMovedCamera();
    super.initState();
  }

  late LatLng _latLng;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          GoogleMap(
            myLocationEnabled: true,
            myLocationButtonEnabled: false,
            onMapCreated: (controller) {
              _googleMapController = controller;
            },
            onCameraMove: (value) {
              mapController.latitudePosition.value = value.target.latitude;
              mapController.longitudePosition.value = value.target.longitude;
              _latLng = value.target;
            },
            mapType: MapType.normal,
            initialCameraPosition: CameraPosition(
              target: myCurrnetLoacation,
              zoom: 16,
            ),
          ),
          Positioned(
            bottom: 30,
            left: 100,
            right: 100,
            child: Material(
              type: MaterialType.transparency,
              borderRadius: BorderRadius.circular(20),
              clipBehavior: Clip.antiAlias,
              child: InkWell(
                onTap: () {
                  setState(() {
                    mapController.getAddressFromLatLng(
                        mapController.latitudePosition.value,
                        mapController.longitudePosition.value);
                    mapController.isCheckMaker.value = false;
                    Navigator.pop<LatLng>(
                      context,
                      _latLng,
                    );
                  });
                },
                child: Ink(
                  padding: const EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 10,
                  ),
                  decoration: const BoxDecoration(
                    color: AppColor.primaryColor,
                  ),
                  child: Center(
                    child: Text(
                      'Choose Address',
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          fontWeight: FontWeight.w700, color: Colors.white),
                    ),
                  ),
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
    );
  }
}
