import 'package:flutter/material.dart';
import 'package:winter_skillup_hackathon/map.dart';
import 'package:winter_skillup_hackathon/path.dart';
import 'package:winter_skillup_hackathon/recommend_map.dart';

class RecommendListPage extends StatefulWidget {
  const RecommendListPage({Key? key}) : super(key: key);

  @override
  State<RecommendListPage> createState() => _RecommendListPageState();
}

class _RecommendListPageState extends State<RecommendListPage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xffD0FB8B),
        title: Image.asset('images/logo.png',width: 80,height: 80,),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: [
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: GestureDetector(
              onTap: (){Navigator.push(
                context,
                MaterialPageRoute(builder: (context)=> PathImg()),
              );},
              child: Card(
                color: Color(0xffF5F5F5),
                child: Column(
                  children: [
                    Expanded(child: Image.asset("images/path05.png")),
                    Card(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("최고의 코스!"),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("25분"),
                                Text("2km"),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: GestureDetector(
              onTap: (){Navigator.push(
                context,
                MaterialPageRoute(builder: (context)=> RecommendMap()),
              );},
              child: Card(
                color: Color(0xffF5F5F5),
                child: Column(
                  children: [
                    Expanded(child: Image.asset("images/path01.png")),
                    Card(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("강아지랑 함께"),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("60분"),
                                Text("2.4km"),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: GestureDetector(
              onTap: (){Navigator.push(
                context,
                MaterialPageRoute(builder: (context)=> RecommendMap()),
              );},
              child: Card(
                color: Color(0xffF5F5F5),
                child: Column(
                  children: [
                    Expanded(child: Image.asset("images/path06.jpg")),
                    Card(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("단풍이 예쁜 길"),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("10분"),
                                Text("500m"),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: GestureDetector(
              onTap: (){Navigator.push(
                context,
                MaterialPageRoute(builder: (context)=> RecommendMap()),
              );},
              child: Card(
                color: Color(0xffF5F5F5),
                child: Column(
                  children: [
                    Expanded(child: Image.asset("images/path03.png")),
                    Card(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("힘든 등산코스!"),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("80분"),
                                Text("4km"),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: GestureDetector(
              onTap: (){Navigator.push(
                context,
                MaterialPageRoute(builder: (context)=> RecommendMap()),
              );},
              child: Card(
                color: Color(0xffF5F5F5),
                child: Column(
                  children: [
                    Expanded(child: Image.asset("images/path04.png")),
                    Card(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("오르락 내리락"),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("25분"),
                                Text("2km"),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: GestureDetector(
              onTap: (){Navigator.push(
                context,
                MaterialPageRoute(builder: (context)=> RecommendMap()),
              );},
              child: Card(
                color: Color(0xffF5F5F5),
                child: Column(
                  children: [
                    Expanded(child: Image.asset("images/path05.png")),
                    Card(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("동네가 예뻐요"),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("40분"),
                                Text("3km"),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: GestureDetector(
              onTap: (){Navigator.push(
                context,
                MaterialPageRoute(builder: (context)=> RecommendMap()),
              );},
              child: Card(
                color: Color(0xffF5F5F5),
                child: Column(
                  children: [
                    Expanded(child: Image.asset("images/path06.jpg")),
                    Card(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("벚꽃이 가득해요"),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("25분"),
                                Text("2km"),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: GestureDetector(
              onTap: (){Navigator.push(
                context,
                MaterialPageRoute(builder: (context)=> RecommendMap()),
              );},
              child: Card(
                color: Color(0xffF5F5F5),
                child: Column(
                  children: [
                    Expanded(child: Image.asset("images/map_.png")),
                    Card(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("사람이 없는 길"),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("25분"),
                                Text("2km"),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: GestureDetector(
              onTap: (){Navigator.push(
                context,
                MaterialPageRoute(builder: (context)=> RecommendMap()),
              );},
              child: Card(
                color: Color(0xffF5F5F5),
                child: Column(
                  children: [
                    Expanded(child: Image.asset("images/path03.png")),
                    Card(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("상쾌한 숲속길!"),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("25분"),
                                Text("2km"),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: GestureDetector(
              onTap: (){Navigator.push(
                context,
                MaterialPageRoute(builder: (context)=> RecommendMap()),
              );},
              child: Card(
                color: Color(0xffF5F5F5),
                child: Column(
                  children: [
                    Expanded(child: Image.asset("images/path04.png")),
                    Card(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("너무 좋아요!"),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("25분"),
                                Text("2km"),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),




        ],
      ),

    );
  }
}
