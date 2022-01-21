import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PlaybackPage extends StatefulWidget {
  const PlaybackPage({Key? key}) : super(key: key);

  @override
  _PlaybackPageState createState() => _PlaybackPageState();
}

class _PlaybackPageState extends State<PlaybackPage> {
  double _sliderValue = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/(1).jpg"),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.6),
                BlendMode.darken,
              )),
        ),
        child: Column(
          children: [
            AppBar(
              leading:
                  IconButton(onPressed: () {
                    Navigator.of(context).pop();
                  }, icon: Icon(Icons.arrow_back)),
              centerTitle: true,
              elevation: 0.0,
              backgroundColor: Colors.transparent,
              title: Text('THE GREAT GATSBY'),
              actions: [
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child:
                  IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
                ),
              ],
            ),
            Expanded(
              flex: 2,
              child: Text(""),
            ),
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "The great gatsby",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "F.S.Fitzgerald",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 150,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.bookmark),
                              color: Colors.white,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          Container(
                            width: 360,
                            child: Slider(
                              thumbColor: Colors.white,
                              activeColor: Colors.white,
                              inactiveColor: Colors.grey,
                              value: _sliderValue,
                              min: 0,
                              max: 100,
                              label: _sliderValue.round().toString(),
                              onChanged: (value) {
                                setState(() {
                                  _sliderValue = value;
                                });
                              },
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 25),
                            child: Text(
                              "1:30:00",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(right: 25),
                            child: Text(
                              "3:45:42",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.arrow_back_ios),
                        color: Colors.white,
                        iconSize: 50,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.play_circle_fill),
                        color: Colors.white,
                        iconSize: 50,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.arrow_forward_ios),
                        color: Colors.white,
                        iconSize: 50,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
