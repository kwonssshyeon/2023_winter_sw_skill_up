import 'package:flutter/material.dart';
import 'package:winter_skillup_hackathon/map.dart';
import 'package:winter_skillup_hackathon/recommend_map.dart';

class PathImg extends StatefulWidget {
  const PathImg({Key? key}) : super(key: key);
  @override
  State<PathImg> createState() => PathState();
}
class PathState extends State<PathImg> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        child: Image.asset("images/path05.png",height: 1200,),


      )




    );
  }
}
