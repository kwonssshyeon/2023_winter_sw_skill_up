import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:logger/logger.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';

class RecommendMap extends StatefulWidget {
  @override
  State<RecommendMap> createState() => RecommendMapState();
}

class RecommendMapState extends State<RecommendMap> {
  Completer<GoogleMapController> _controller = Completer();


  LatLng startLocation = LatLng(37.33500926, -122.03272188);

  LatLng endLocation = LatLng(37.33429383, -122.06600055);

  List<LatLng> polylineCoordinates = [];

  String googleAPiKey = "AIzaSyChotVEN4pHvjzXVK3hJIFJtAXJRso2KDg";

  void getPolyPoints() async {
    PolylinePoints polylinePoints = PolylinePoints();

    PolylineResult result = await polylinePoints.getRouteBetweenCoordinates(
      googleAPiKey,
      PointLatLng(startLocation.latitude, startLocation.longitude),
      PointLatLng(endLocation.latitude, endLocation.longitude),
    );

    Logger(printer: SimplePrinter(colors: true)).v("결과값", result.points);

    if (result.points.isNotEmpty) {
      result.points.forEach(
            (PointLatLng point) =>
            polylineCoordinates.add(
              LatLng(point.latitude, point.longitude),
            ),
      );
      Logger(printer: SimplePrinter(colors: true)).v('폴리라인');
      setState(() {});
    }
  }


  @override
  void initState() {
    getPolyPoints();
    Logger(printer: SimplePrinter(colors: true)).v('빌드성공');
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: GoogleMap(
        initialCameraPosition: CameraPosition(
            target: startLocation,
            zoom: 13.5
        ),
        polylines: {
          Polyline(
              polylineId: PolylineId("route"),
              points: polylineCoordinates,
              color: Colors.black),
        },
        markers: {
          Marker(
            markerId: MarkerId("start"),
            position: startLocation,
          ),
          Marker(
            markerId: MarkerId("end"),
            position: endLocation,
          )
        },
        zoomGesturesEnabled: true,
        mapType: MapType.normal,
      ),
    );
  }
}