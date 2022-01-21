import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:music_app/song_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Bookmark',
      style: optionStyle,
    ),
    Text(
      'Index 2: Profile',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            // margin: EdgeInsets.all(15),
            child: Column(
              children: [
                Container(
                  margin:
                      EdgeInsets.only(left: 5, top: 20, right: 15, bottom: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text(
                            "Hi, Vishal!",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 35),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Text(
                              "What would you read today?",
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.grey,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 15, right: 15, bottom: 10),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Enter a search term',
                      prefixIcon: Icon(Icons.search_rounded),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 15, right: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Reading Now",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            "See all",
                            style: TextStyle(fontSize: 20),
                          ))
                    ],
                  ),
                ),
                SizedBox(
                  height: 300,
                  child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      physics: ClampingScrollPhysics(),
                      itemCount: 1,
                      itemBuilder: (context, index) {
                        return Container(
                          padding: EdgeInsets.only(left: 10, right: 10),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  SongCard(
                                    songName: "Hobbit",
                                    singar: "J.R.R. Tolkin",
                                    time: "8h30m",
                                    catagory: "Fantasy",
                                    imagePath: "assets/images/1.jpg",
                                  ),
                                  SongCard(
                                    songName: "The Great Getsby",
                                    singar: "F.S. Fitzgerald",
                                    time: "6h20m",
                                    catagory: "Roman",
                                    imagePath: "assets/images/3.jpg",
                                  ),
                                  SongCard(
                                    songName: "Hobbit",
                                    singar: "J.R.R. Tolkin",
                                    time: "5h00m",
                                    catagory: "Fantasy",
                                    imagePath: "assets/images/2.jpg",
                                  ),
                                  SongCard(
                                    songName: "Autumn in Rome",
                                    singar: "Peggy Lee",
                                    time: "7h10m",
                                    catagory: "Roman",
                                    imagePath: "assets/images/3.jpg",
                                  ),
                                  SongCard(
                                    songName: "Hobbit",
                                    singar: "J.R.R. Tolkin",
                                    time: "6h15m",
                                    catagory: "Fantasy",
                                    imagePath: "assets/images/2.jpg",
                                  ),
                                ],
                              ),
                            ],
                          ),
                        );
                      }),
                ),
                Container(
                  margin: EdgeInsets.only(left: 15, right: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Special For You",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            "See all",
                            style: TextStyle(fontSize: 20),
                          ))
                    ],
                  ),
                ),
                SizedBox(
                  height: 300,
                  child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      physics: ClampingScrollPhysics(),
                      itemCount: 1,
                      itemBuilder: (context, index) {
                        return Container(
                          padding: EdgeInsets.only(left: 10, right: 10),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  SongCard(
                                    songName: "Hobbit",
                                    singar: "J.R.R. Tolkin",
                                    time: "8h30m",
                                    catagory: "Fantasy",
                                    imagePath: "assets/images/1.jpg",
                                  ),
                                  SongCard(
                                    songName: "The Great Getsby",
                                    singar: "F.S. Fitzgerald",
                                    time: "6h20m",
                                    catagory: "Roman",
                                    imagePath: "assets/images/3.jpg",
                                  ),
                                  SongCard(
                                    songName: "Hobbit",
                                    singar: "J.R.R. Tolkin",
                                    time: "5h00m",
                                    catagory: "Fantasy",
                                    imagePath: "assets/images/2.jpg",
                                  ),
                                  SongCard(
                                    songName: "Heart of Rome",
                                    singar: "Elvis Presley",
                                    time: "7h10m",
                                    catagory: "Roman",
                                    imagePath: "assets/images/3.jpg",
                                  ),
                                  SongCard(
                                    songName: "Hobbit",
                                    singar: "J.R.R. Tolkin",
                                    time: "6h15m",
                                    catagory: "Fantasy",
                                    imagePath: "assets/images/2.jpg",
                                  ),
                                ],
                              ),
                            ],
                          ),
                        );
                      }),
                )
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark_border),
            label: 'Bookmark',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.perm_identity),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.redAccent,
        onTap: _onItemTapped,
      ),
    );
  }
}
