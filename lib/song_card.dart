import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:music_app/home.dart';
import 'package:music_app/playback_page.dart';

class SongCard extends StatelessWidget {
  final String songName;
  final String singar;
  final String time;
  final String catagory;
  final String imagePath;

  const SongCard({
    Key? key,
    required this.songName,
    required this.singar,
    required this.time,
    required this.catagory,
    required this.imagePath
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
        child: InkWell(
          onTap: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => PlaybackPage()),
            );
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    width: 150,
                    height: 221,
                    child: Card(
                      clipBehavior: Clip.antiAlias,
                      child: Column(
                        children: [
                          Image.asset(imagePath),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.white.withOpacity(0.7),
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.only(top: 10, left: 10),
                    child: Text(
                      catagory,
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Container(
                    width: 150,
                    height: 221,
                    alignment: Alignment.bottomRight,
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.bookmark_border),
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.only(left: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      songName,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          letterSpacing: 1),
                    ),
                    Text(
                      singar,
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.watch_later_outlined,
                            size: 16,
                          ),
                          Text(
                            time,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
