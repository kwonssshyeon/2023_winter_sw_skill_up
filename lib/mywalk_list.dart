import 'package:flutter/material.dart';

class MyWalkPage extends StatefulWidget {
  const MyWalkPage({Key? key}) : super(key: key);

  @override
  State<MyWalkPage> createState() => _MyWalkPageState();
}

class _MyWalkPageState extends State<MyWalkPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Color(0xffD0FB8B),
          title: Image.asset('images/logo.png', width: 80, height: 80,),
        ),
        body: Center(
            child: Column(
              children: [
                Card(
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: ListTile(
                      leading: Image.asset('images/map_.png'),
                      title: Text('2023. 02. 02', style: TextStyle(
                          fontSize: 15, fontWeight: FontWeight.bold),),
                      subtitle: Text('32m 15s / 2.1km',
                        style: TextStyle(fontSize: 13, color: Colors.grey),),
                      onTap: () {
                        showDialog(
                          context: context,
                          barrierDismissible: false,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text('코스 한 줄 소개', style: TextStyle(color: Colors.green[500], fontSize: 17,fontWeight: FontWeight.bold),),
                              content: SingleChildScrollView(
                                child: TextField(decoration: InputDecoration(
                                    labelText: 'ex )벚꽃과 함께하는 산책 코스'),),),
                              actions: [
                                OutlinedButton(onPressed: () {
                                  Navigator.of(context).pop();
                                }, child: Text('취소', style: TextStyle(color: Colors.green[500])),),
                                OutlinedButton(onPressed: () {
                                  Navigator.of(context).pop();
                                }, child: Text('추천 등록', style: TextStyle(color: Colors.green[500])),),
                              ],
                            );
                          },
                        );
                      },
                      trailing: Text('추천 경로 등록하기', style: TextStyle(color: Colors.green[500]),)
                    //OutlinedButton(onPressed: (){}, child: Text('추천하기'),)
                    //Icon(Icons.recommend),
                  ),
                ),
                Card(
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: ListTile(
                      leading: Image.asset('images/map_.png'),
                      title: Text('2023. 02. 01', style: TextStyle(
                          fontSize: 15, fontWeight: FontWeight.bold),),
                      subtitle: Text('15m 15s / 1.1km',
                        style: TextStyle(fontSize: 13, color: Colors.grey),),
                      onTap: () {
                        showDialog(
                          context: context,
                          barrierDismissible: false,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text('코스 한 줄 소개', style: TextStyle(color: Colors.green[500], fontSize: 17,fontWeight: FontWeight.bold),),
                              content: SingleChildScrollView(
                                child: TextField(decoration: InputDecoration(
                                    labelText: 'ex )벚꽃과 함께하는 산책 코스'),),),
                              actions: [
                                OutlinedButton(onPressed: () {
                                  Navigator.of(context).pop();
                                }, child: Text('취소', style: TextStyle(color: Colors.green[500])),),
                                OutlinedButton(onPressed: () {
                                  Navigator.of(context).pop();
                                }, child: Text('추천 등록', style: TextStyle(color: Colors.green[500])),),
                              ],
                            );
                          },
                        );
                      },
                      trailing: Text('추천 경로 등록하기', style: TextStyle(color: Colors.green[500]),)
                    //OutlinedButton(onPressed: (){}, child: Text('추천하기'),)
                    //Icon(Icons.recommend),
                  ),
                ),
                Card(
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: ListTile(
                      leading: Image.asset('images/map_.png'),
                      title: Text('2023. 01. 20', style: TextStyle(
                          fontSize: 15, fontWeight: FontWeight.bold),),
                      subtitle: Text('60m 15s / 4.2km',
                        style: TextStyle(fontSize: 13, color: Colors.grey),),
                      onTap: () {
                        showDialog(
                          context: context,
                          barrierDismissible: false,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text('코스 한 줄 소개', style: TextStyle(color: Colors.green[500], fontSize: 17,fontWeight: FontWeight.bold),),
                              content: SingleChildScrollView(
                                child: TextField(decoration: InputDecoration(
                                    labelText: 'ex )벚꽃과 함께하는 산책 코스'),),),
                              actions: [
                                OutlinedButton(onPressed: () {
                                  Navigator.of(context).pop();
                                }, child: Text('취소', style: TextStyle(color: Colors.green[500])),),
                                OutlinedButton(onPressed: () {
                                  Navigator.of(context).pop();
                                }, child: Text('추천 등록', style: TextStyle(color: Colors.green[500])),),
                              ],
                            );
                          },
                        );
                      },
                      trailing: Text('추천 경로 등록하기', style: TextStyle(color: Colors.green[500]),)
                    //OutlinedButton(onPressed: (){}, child: Text('추천하기'),)
                    //Icon(Icons.recommend),
                  ),
                ),
                Card(
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: ListTile(
                      leading: Image.asset('images/map_.png'),
                      title: Text('2022. 12. 02', style: TextStyle(
                          fontSize: 15, fontWeight: FontWeight.bold),),
                      subtitle: Text('32m 15s / 2.1km',
                        style: TextStyle(fontSize: 13, color: Colors.grey),),
                      onTap: () {
                        showDialog(
                          context: context,
                          barrierDismissible: false,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text('코스 한 줄 소개', style: TextStyle(color: Colors.green[500], fontSize: 17,fontWeight: FontWeight.bold),),
                              content: SingleChildScrollView(
                                child: TextField(decoration: InputDecoration(
                                    labelText: 'ex )벚꽃과 함께하는 산책 코스'),),),
                              actions: [
                                OutlinedButton(onPressed: () {
                                  Navigator.of(context).pop();
                                }, child: Text('취소', style: TextStyle(color: Colors.green[500])),),
                                OutlinedButton(onPressed: () {
                                  Navigator.of(context).pop();
                                }, child: Text('추천 등록', style: TextStyle(color: Colors.green[500])),),
                              ],
                            );
                          },
                        );
                      },
                      trailing: Text('추천 경로 등록하기', style: TextStyle(color: Colors.green[500]),)
                    //OutlinedButton(onPressed: (){}, child: Text('추천하기'),)
                    //Icon(Icons.recommend),
                  ),
                ),
              ],
            )
        )
    );
  }
}