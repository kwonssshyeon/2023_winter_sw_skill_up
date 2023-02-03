import 'package:flutter/material.dart';
import 'package:winter_skillup_hackathon/mywalk_list.dart';
import 'package:winter_skillup_hackathon/recommend_list.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

import 'map.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const MyHomePage(),
    );
  }
}

class RadiusSize{
  int radius = 10;
  RadiusSize(this.radius);
}

const List<String> list = <String>['10분','15분','20분','25분','30분'];

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String dropdownValue = list.first;
  int radiusSize = 10;

  void mappingRadius(){
    if(dropdownValue=='10분'){
      radiusSize = 10;}
    else if(dropdownValue=='15분'){
      radiusSize = 15;}
    else if(dropdownValue=='20분'){
      radiusSize = 20;}
    else if(dropdownValue=='25분'){
      radiusSize = 25;}
    else if(dropdownValue=='30분'){
      radiusSize = 30;}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xffD0FB8B),
        title: Image.asset('images/logo.png',width: 80,height: 80,),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.only(left: 28.0,bottom: 10),
            child: Text("OOO님,",style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 28.0),
            child: Text("오늘의 산책 코스는?",style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),),
          ),
          SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Card(
              color: Color(0xffD0FB8B),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //설명 텍스트
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("내가 가는 길이"),
                        SizedBox(height: 10),
                        Text("어쩌고 저쩌고 ~~~"),
                      ],
                    ),
                  ),
                  //반경시간 드롭다운
                  Padding(
                    padding: const EdgeInsets.only(top: 30,bottom: 30,right: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("반경 시간"),
                        DropdownButton<String>(
                          hint: Text("반경 시간"),
                          borderRadius: BorderRadius.circular(5),
                          value: dropdownValue,
                          icon: const Icon(Icons.arrow_drop_down),
                          elevation: 16,
                          style: const TextStyle(color: Colors.black),
                          // underline: Container(
                          //   height: 2,
                          //   color: Colors.deepPurpleAccent,
                          // ),
                          items: list.map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                          onChanged: (String? value) {
                            // This is called when the user selects an item.
                            setState(() {
                              dropdownValue = value!;
                            });
                          },
                        ),



                        ElevatedButton(
                          style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
                          onPressed: (){
                            mappingRadius();
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context)=>
                                  MapSample(radiusSize)),
                            );
                            print("반지름 크기");
                            print(radiusSize);
                          },
                          child: Text("지도 보기",
                            style: TextStyle(color: Colors.black),),
                        ),
                      ],
                    ),
                  ),

                ],
              ),
            ),
          ),
          SizedBox(height: 35),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Card(
              color: Color(0xffD0FB8B),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //설명텍스트
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("다른 사람이 가는 길이"),
                        SizedBox(height: 10),
                        Text("어쩌고 저쩌고 ~~~"),
                      ],
                    ),
                  ),
                  //버튼
                  Padding(
                    padding: const EdgeInsets.only(top: 30.0,bottom: 30,right: 15),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
                      onPressed: (){
                        final result =  Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context)=> const RecommendListPage()),
                        );
                      },
                      child: Text("추천경로 보기",
                        style: TextStyle(color: Colors.black),),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
