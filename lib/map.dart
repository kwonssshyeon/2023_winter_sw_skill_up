import 'dart:async';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:winter_skillup_hackathon/mywalk_list.dart';
import 'package:location/location.dart';
import 'package:custom_timer/custom_timer.dart';

class MapSample extends StatefulWidget {
  final int radiusSize;
  MapSample(@required this.radiusSize);

  @override
  _MapSample createState() => _MapSample();
}

class _MapSample extends State<MapSample> with SingleTickerProviderStateMixin {
  late CustomTimerController __controller = CustomTimerController(
      vsync: this,
      begin: Duration(seconds: 0),
      end: Duration(hours: 12),
      initialState: CustomTimerState.reset,
      interval: CustomTimerInterval.milliseconds
  );

  Completer<GoogleMapController> _controller = Completer();
  // on below line we have specified camera position
  static final CameraPosition _kGoogle = const CameraPosition(
    target: LatLng(35.888062217703045, 128.61150116523726),
    zoom: 10,
  );

  // on below line we have created the list of markers
  final List<Marker> _markers = <Marker>[
    Marker(
        markerId: MarkerId('1'),
        position: LatLng(35.888062217703045, 128.61150116523726),
        infoWindow: InfoWindow(
          title: 'My Position',
        )
    ),
  ];

  // created method for getting user current location
  Future<Position> getUserCurrentLocation() async {
    await Geolocator.requestPermission().then((value){
    }).onError((error, stackTrace) async {
      await Geolocator.requestPermission();
      print("ERROR"+error.toString());
    });
    return await Geolocator.getCurrentPosition();
  }

  @override
  void dispose() {
    __controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    int radiusSize = widget.radiusSize;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffD0FB8B),
        // on below line we have given title of app
        title: Text("지도", style: TextStyle(color: Colors.black),),
      ),
      body: Container(
        child: SafeArea(
            child: Stack(
              // on below line creating google maps
                children: [
                  GoogleMap(
                    // on below line setting camera position
                    initialCameraPosition: _kGoogle,
                    // on below line we are setting markers on the map
                    markers: Set<Marker>.of(_markers),
                    // on below line specifying map type.
                    mapType: MapType.normal,
                    // on below line setting user location enabled.
                    myLocationEnabled: true,
                    // on below line setting compass enabled.
                    compassEnabled: true,
                    // on below line specifying controller on map complete.
                    onMapCreated: (GoogleMapController controller) {
                      _controller.complete(controller);
                    },
                  ),
                  Container(
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), color:Color(0xffD0FB8B)),
                    margin: EdgeInsets.fromLTRB(50, 25, 50, 0),
                    height: 120,
                    width: 500,
                    child: Column(
                      children: [
                        CustomTimer(
                            controller: __controller,
                            builder: (state, remaining) {
                              // Build the widget you want!
                              return Column(
                                  children: [
                                    Text("${state.name}", style: TextStyle(
                                        fontSize: 24.0, fontWeight: FontWeight.bold)),
                                    Text(
                                        "${remaining.minutes}:${remaining
                                            .seconds}",
                                        style: TextStyle(fontSize: 24.0))
                                  ]
                              );
                            }),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            ElevatedButton(
                                onPressed: () => __controller.start(), style: ElevatedButton.styleFrom(backgroundColor: Colors.green[500]),
                                child: Text('시작'),),
                            SizedBox(width: 15,),
                            ElevatedButton(
                                onPressed: () => __controller.pause(), style: ElevatedButton.styleFrom(backgroundColor: Colors.green[500]),
                                child: Text('멈춤')),
                            SizedBox(width: 15,),
                            ElevatedButton(onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => MyWalkPage()));
                            }, style: ElevatedButton.styleFrom(backgroundColor: Colors.green[500]),
                                child: Text('종료')),
                          ],
                        )
                      ],
                    ),
                  ),
                ]
            )
        ),
      ),
      // on pressing floating action button the camera will take to user current location
      floatingActionButton: FloatingActionButton(
        onPressed: () async{
          getUserCurrentLocation().then((value) async {
            print(value.latitude.toString() +" "+value.longitude.toString());

            // marker added for current users location
            _markers.add(
                Marker(
                  markerId: MarkerId("1"),
                  position: LatLng(value.latitude, value.longitude),
                  infoWindow: InfoWindow(
                    title: 'My Current Location',
                  ),
                )
            );

            circles: {
              Circle(
                circleId: CircleId("1"),
                center: LatLng(value.latitude, value.longitude),
                radius: (radiusSize*100000).toDouble(),
                strokeWidth: 1,
                fillColor: Color(0xff006491).withOpacity(0.2),
              );
            };

            // specified current users location
            CameraPosition cameraPosition = new CameraPosition(
              target: LatLng(value.latitude, value.longitude),
              zoom: 10,
            );

            final GoogleMapController controller = await _controller.future;
            controller.animateCamera(CameraUpdate.newCameraPosition(cameraPosition));
            setState(() {
            });
          });
        },
        child: Icon(Icons.gps_fixed),
      ),
    );
  }
}

