import 'package:flutter/material.dart';
import 'package:winter_skillup_hackathon/map.dart';
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
                    Expanded(child: Image.asset("images/map_.png")),
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
                    Expanded(child: Image.asset("images/map_.png")),
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
                    Expanded(child: Image.asset("images/map_.png")),
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
                    Expanded(child: Image.asset("images/map_.png")),
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
                    Expanded(child: Image.asset("images/map_.png")),
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
                    Expanded(child: Image.asset("images/map_.png")),
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
                    Expanded(child: Image.asset("images/map_.png")),
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
                    Expanded(child: Image.asset("images/map_.png")),
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
                    Expanded(child: Image.asset("images/map_.png")),
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

          


        ],
      ),

    );
  }
}
