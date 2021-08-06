import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePageWidget(),
    );
  }
}

class HomePageWidget extends StatefulWidget {
  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          'Intern Task 5',
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 50, 10, 10),
                  child: Image.network(
                    'https://upload.wikimedia.org/wikipedia/commons/thumb/2/29/Nanga_Parbat_The_Killer_Mountain.jpg/1200px-Nanga_Parbat_The_Killer_Mountain.jpg',
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    fit: BoxFit.fitWidth,
                    //fit: BoxFit.fitHeight,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text(
                              'Nanga Parbat',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Gilgit , Pakistan',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                        like_counter(),
                      ]),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(50, 20, 50, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            IconButton(
                              onPressed: () {
                                showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return SimpleDialog(
                                        title: Text('Phone#'),
                                        children: [
                                          SimpleDialogOption(
                                            onPressed: () =>
                                                Navigator.pop(context, ''),
                                            child: Text('+923061824226'),
                                          ),
                                        ],
                                      );
                                    });
                               // print('CALL button pressed ...');
                              },
                              icon: Icon(
                                Icons.call,
                                color: Colors.blue,
                                size: 30,
                              ),
                              iconSize: 30,
                            ),
                            Text(
                              '\n CALL',
                              style: TextStyle(
                                color: Colors.blue,
                              ),
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            IconButton(
                              onPressed: () {
                                showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return AlertDialog(
                                      title: Text('Location Access'),
                                      content: Text(
                                          'Click confirm to get nearest location access'),
                                      actions: [
                                        TextButton(
                                          onPressed: () =>
                                              Navigator.pop(context, 'Confirm'),
                                          child: Text('Confirm'),
                                        ),
                                      ],
                                    );
                                  },
                                );
                                print('Route button pressed ...');
                              },
                              icon: Icon(
                                Icons.near_me,
                                color: Colors.blue,
                                size: 30,
                              ),
                              iconSize: 30,
                            ),
                            Text(
                              '\n Location',
                              style: TextStyle(
                                color: Colors.blue,
                              ),
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            IconButton(
                              onPressed: () {
                                showModalBottomSheet(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return Container(
                                        height: 200,
                                        child: Padding(
                                          padding: const EdgeInsets.all(16.0),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: <Widget>[
                                              Text(
                                                'Share Information',
                                                style: TextStyle(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              Text(
                                                  'Nanga Parbat, translates naked-mountain, also known locally as Diamer, is the ninth-highest mountain in the world at 8,126 metres above sea level'),
                                            ],
                                          ),
                                        ),
                                      );
                                    });
                              },
                              icon: Icon(
                                Icons.share,
                                color: Colors.blue,
                                size: 30,
                              ),
                              iconSize: 30,
                            ),
                            Text(
                              '\n SHARE',
                              style: TextStyle(
                                color: Colors.blue,
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width - 80,
                        child: Text(
                          'Nanga Parbat has tremendous vertical relief over local terrain in all directions.To the south, Nanga Parbat has what is often referred to as the highest mountain face in the world: the Rupal Face rises 4,600 m (15,090 ft) above its base.[9] To the north, the complex, somewhat more gently sloped Rakhiot Flank rises 7,000 m (23,000 ft) from the Indus River valley to the summit in just 25 km (16 mi), one of the ten greatest elevation gains in such a short distance on earth',
                        ),
                      )
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class like_counter extends StatefulWidget {
  @override
  _like_counterState createState() => _like_counterState();
}

class _like_counterState extends State<like_counter> {
  IconData icon_changer = Icons.star_border;
  int txt = 41;
  bool onPressed = true;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TextButton(
            onPressed: () {
              setState(() {
                if (onPressed == false) {
                  txt--;
                  icon_changer = Icons.star_border;
                  onPressed = true;
                } else {
                  icon_changer = Icons.star;
                  onPressed = false;
                  txt++;
                }
              });
            },
            child: Row(
              children: [
                Icon(
                  icon_changer,
                  color: Colors.deepOrange,
                ),
                Text(
                  "$txt",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ],
            )),
      ],
    );
  }
}
