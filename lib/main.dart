import 'package:flutter/material.dart';
import 'package:winter_skillup_hackathon/mywalk_list.dart';
import 'package:winter_skillup_hackathon/recommend_list.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

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

const List<String> list = <String>['10분','15분','20분','25분'];

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String dropdownValue = list.first;

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
            padding: const EdgeInsets.symmetric(horizontal: 28.0),
            child: Card(
              color: Color(0xffD0FB8B),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //설명 텍스트
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 30,horizontal: 30),
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
                    padding: const EdgeInsets.symmetric(vertical: 30,horizontal: 30),
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
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context)=> const MyWalkPage()),
                            );
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
            padding: const EdgeInsets.symmetric(horizontal: 28.0),
            child: Card(
              color: Color(0xffD0FB8B),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //설명텍스트
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 30,horizontal: 30),
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
                    padding: const EdgeInsets.all(30.0),
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
