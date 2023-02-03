import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:winter_skillup_hackathon/mywalk_list.dart';
import 'package:custom_timer/custom_timer.dart';

class MapSample extends StatefulWidget {
  @override
  State<MapSample> createState() => MapSampleState();
}


class MapSampleState extends State<MapSample> with SingleTickerProviderStateMixin {
  late CustomTimerController __controller = CustomTimerController(
      vsync: this,
      begin: Duration(seconds: 0),
      end: Duration(hours: 12),
      initialState: CustomTimerState.reset,
      interval: CustomTimerInterval.milliseconds
  );

  @override
  void dispose() {
    __controller.dispose();
    super.dispose();
  }

  Completer<GoogleMapController> _controller = Completer();

  // 초기 카메라 위치
  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );

  // 호수 위치
  static final CameraPosition _kLake = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(37.43296265331129, -122.08832357078792),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            GoogleMap(
              mapType: MapType.hybrid,
              initialCameraPosition: _kGooglePlex, // 초기 카메라 위치
              onMapCreated: (GoogleMapController controller) {
                _controller.complete(controller);
              },
            ),
            Container(
              child: Column(
                children: [
                  CustomTimer(
                      controller: __controller,
                      builder: (state, remaining) {
                        // Build the widget you want!
                        return Column(
                          children: [
                            Text("${state.name}", style: TextStyle(fontSize: 24.0)),
                            Text(
                                "${remaining.minutes}:${remaining.seconds}",
                                style: TextStyle(fontSize: 24.0))
                          ]
                        );
                      }),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end ,
                    children: [
                      ElevatedButton(onPressed: () => __controller.start(), child: Text('시작')),
                      SizedBox(width: 15,),
                      ElevatedButton(onPressed: () => __controller.pause(), child: Text('멈춤')),
                      SizedBox(width: 15,),
                      ElevatedButton(onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context)=> MyWalkPage()));},
                          child: Text('종료')),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _goToTheLake() async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(_kLake));
  }
}