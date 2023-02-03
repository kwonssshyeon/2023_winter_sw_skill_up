import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:winter_skillup_hackathon/mywalk_list.dart';

class RecommendMap extends StatefulWidget {
  @override
  State<RecommendMap> createState() => RecommendMapState();
}

class RecommendMapState extends State<RecommendMap> {
  Completer<GoogleMapController> _controller = Completer();

  // 초기 카메라 위치
  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: GoogleMap(
        mapType: MapType.normal,
        initialCameraPosition: _kGooglePlex, // 초기 카메라 위치
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
      ),

    );
  }

}