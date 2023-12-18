import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:image_card/image_card.dart';
import 'package:uas_pemmob/components/Post.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _selectedTab = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: ListView(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                  padding: EdgeInsets.only(
                      right: 30, left: 30, top: 30, bottom: 100),
                  decoration: BoxDecoration(color: Colors.white),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Hello, Filza",
                                style: TextStyle(
                                    fontSize: 28,
                                    fontFamily: 'Roboto',
                                    color: Color(0xFF091414),
                                    fontWeight: FontWeight.w700),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "what you want cook today?",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontFamily: 'Roboto',
                                    color: Color(0xFF9ca0a0),
                                    fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                          Spacer(),
                          Center(
                            child: Icon(
                              Icons.account_circle_rounded,
                              size: 48.0,
                            ),
                          ),
                        ],
                      ),
                    ],
                  )),
              Positioned(
                bottom: -80,
                child: Container(
                    padding: EdgeInsets.only(left: 30, right: 30),
                    width: 395,
                    height: 162,
                    child: Container(
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.black12),
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                width: 230,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Recipes recommendations",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600,
                                          fontFamily: 'Roboto'),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      "Get your personalized recipes recommendation in a 4 steps",
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500,
                                          fontFamily: 'Roboto',
                                          color: Colors.black38),
                                    )
                                  ],
                                ),
                              ),
                              Center(
                                  child: Image.asset(
                                'images/soup.png',
                                height: 50,
                              ))
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                  child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        primary: Color(0xFFfdf6eb),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(20.0),
                                        ),
                                      ),
                                      onPressed: () {},
                                      child: Text(
                                        "Get started",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold),
                                      ))),
                              SizedBox(
                                width: 5,
                              ),
                              Expanded(
                                  child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        primary: Colors.white,
                                        side: BorderSide(
                                          color: Colors.black12,
                                        ),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(20.0),
                                        ),
                                      ),
                                      onPressed: () {},
                                      child: Text(
                                        "Skip",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold),
                                      ))),
                            ],
                          )
                        ],
                      ),
                    )),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(right: 30, left: 30, top: 100),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Popular recipes",
                  style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "See all",
                  style: TextStyle(
                      color: Colors.amber,
                      fontSize: 17,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            padding: EdgeInsets.only(left: 30),
            height: 307,
            width: double.infinity,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Row(
                  children: [
                    Post(
                      img: "images/nasgor.jpg",
                      judul: "Nasi Goreng Udang",
                      category: "Nasi Goreng",
                      minute: "30 - 45 minutes",
                      difficulty: "Medium",
                      authorpict: "images/people1.png",
                      author: "Filza Rizki Ramadhan",
                    ),
                    Post(
                      img: "images/chicken-fillet.jpg",
                      judul: "Chicken Fillter",
                      category: "Ayam",
                      minute: "30 - 45 minutes",
                      difficulty: "Medium",
                      author: "Filza Rizki Ramadhan",
                      authorpict: "images/people1.png",
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(right: 30, left: 30, top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Popular creators",
                  style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "See all",
                  style: TextStyle(
                      color: Colors.amber,
                      fontSize: 17,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 30, right: 30, top: 20),
            child: GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              physics:
                  NeverScrollableScrollPhysics(), // to disable GridView's scrolling
              shrinkWrap: true, // You won't see infinite size error
              children: <Widget>[
                Container(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    height: 24,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.circle,
                          size: 38,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Reysa Amandha",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Roboto',
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(children: [
                          Icon(
                            Icons.library_books,
                            color: Colors.black38,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "203",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Roboto',
                                color: Colors.black38),
                          )
                        ]),
                        SizedBox(
                          height: 5,
                        ),
                        Row(children: [
                          Icon(
                            Icons.favorite,
                            color: Colors.black38,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "203",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Roboto',
                                color: Colors.black38),
                          )
                        ])
                      ],
                    )),
                Container(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    height: 24,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.circle,
                          size: 38,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Filza Rizki R.",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Roboto',
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(children: [
                          Icon(
                            Icons.library_books,
                            color: Colors.black38,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "203",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Roboto',
                                color: Colors.black38),
                          )
                        ]),
                        SizedBox(
                          height: 5,
                        ),
                        Row(children: [
                          Icon(
                            Icons.favorite,
                            color: Colors.black38,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "203",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Roboto',
                                color: Colors.black38),
                          )
                        ])
                      ],
                    )),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: SalomonBottomBar(
        backgroundColor: Colors.white,
        unselectedItemColor: Colors.black54,
        currentIndex: _selectedTab,
        onTap: (position) {
          setState(() {
            _selectedTab = position;
          });
        },
        items: [
          SalomonBottomBarItem(
              selectedColor: Colors.yellow,
              title: const Text(
                'Home',
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              icon: const Icon(Icons.home_filled)),
          SalomonBottomBarItem(
              selectedColor: Colors.yellow,
              title: const Text('Search'),
              icon: const Icon(Icons.search)),
          SalomonBottomBarItem(
              selectedColor: Colors.yellow,
              icon: const Icon(Icons.add_outlined),
              title: const Text("Add")),
          SalomonBottomBarItem(
              selectedColor: Colors.yellow,
              title: const Text('Library'),
              icon: const Icon(Icons.my_library_books_outlined)),
        ],
      ),
    );
  }
}
