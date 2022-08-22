import 'package:flutter/material.dart';
import 'package:listview/account.dart';
import 'package:listview/download.dart';
import 'package:listview/switch.dart';
import 'films.dart';
import 'details.dart';
import 'subscribe.dart';
import 'download.dart';
import 'account.dart';
import 'search.dart';
import 'login.dart';
import 'myDownload.dart';
import 'series.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: Login()));
}

class Home extends StatefulWidget {

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  final pages = [
    Home(),
    Center(child: Text('kjsdjbvsahfcasvh'),),
    Mydownload(),

  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          actions: [
            IconButton(
                icon: Icon(
                  Icons.search,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Search()));
                })
          ],
          backgroundColor: Colors.black,
        ),
        drawer: Drawer(
          child: Container(
            color: Colors.black,
            child: ListView(
              // Important: Remove any padding from the ListView.
              padding: EdgeInsets.zero,
              children: [
                const DrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.black,
                  ),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: CircleAvatar(
                      radius: 60,
                      backgroundColor: Colors.grey,
                      child: Icon(
                        Icons.account_circle,
                        color: Colors.white,
                        size: 120,
                      ),
                    ),
                  ),
                ),
                ListTile(
                  leading: Icon(
                    Icons.account_circle_rounded,
                    color: Colors.white,
                  ),
                  title: const Text(
                    'Account',
                    style: TextStyle(color: Colors.white),
                  ),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Account()));
                  },
                ),
                ListTile(
                  leading: Icon(
                    Icons.notifications,
                    color: Colors.white,
                  ),
                  title: const Text(
                    'Notifications',
                    style: TextStyle(color: Colors.white),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: Icon(
                    Icons.cloud_download_outlined,
                    color: Colors.white,
                  ),
                  title: const Text(
                    'My Download',
                    style: TextStyle(color: Colors.white),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: Icon(
                    Icons.list_alt_rounded,
                    color: Colors.white,
                  ),
                  title: const Text(
                    'My List',
                    style: TextStyle(color: Colors.white),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: Icon(
                    Icons.event_available,
                    color: Colors.white,
                  ),
                  title: const Text(
                    'Available To Watch',
                    style: TextStyle(color: Colors.white),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: Icon(
                    Icons.favorite,
                    color: Colors.white,
                  ),
                  title: const Text(
                    'My Favorite',
                    style: TextStyle(color: Colors.white),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: Icon(
                    Icons.location_on,
                    color: Colors.white,
                  ),
                  title: const Text(
                    'Location Of The Center',
                    style: TextStyle(color: Colors.white),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: Icon(
                    Icons.logout,
                    color: Colors.purple,
                  ),
                  title: const Text(
                    'Sign Out',
                    style: TextStyle(color: Colors.purple),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),
        ),
        body: Column(children: [
          Container(
            width: double.infinity,
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Image(
                  image: AssetImage("image/New.jpg"),
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                Container(
                  color: Colors.black.withOpacity(.6),
                  width: double.infinity,
                  child: Padding(
                    padding:
                        EdgeInsets.only(left: 70, right: 70, top: 6, bottom: 6),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          MaterialButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Films()));
                            },
                            child: Text(
                              'Movies',
                              textAlign: TextAlign.center,
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          ),
                          MaterialButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Series()));
                            },
                            child: Text(
                              'Series',
                              textAlign: TextAlign.center,
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          ),
                        ]),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 50, right: 50, top: 20),
            child: SingleChildScrollView(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Icon(
                        Icons.add_circle_outline,
                        color: Colors.white,
                        size: 40,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text('Add',
                          style: TextStyle(fontSize: 12, color: Colors.white))
                    ],
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.play_arrow,
                        color: Colors.white,
                        size: 40,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Play',
                        style: TextStyle(fontSize: 12, color: Colors.white),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.info_outline_rounded,
                        color: Colors.white,
                        size: 40,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text('Info',
                          style: TextStyle(fontSize: 12, color: Colors.white))
                    ],
                  ),
                ],
              ),
            ),
          ),
          Flexible(
            child: ListView(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                children: [
                  Container(
                    width: 150,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image(
                          image: AssetImage('image/pic.jpg'),
                          width: double.infinity,
                          height: 250,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5, top: 6),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'The Suspect',
                                style: TextStyle(
                                    fontSize: 15, color: Colors.white),
                              ),
                              Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.orange,
                              ),
                              Text('8.1',
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.white))
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Container(
                      width: 150,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image(
                            image: AssetImage('image/pic1.jpg'),
                            width: double.infinity,
                            height: 250,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5, top: 6),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Start Up',
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.white),
                                ),
                                Icon(
                                  Icons.add,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.orange,
                                ),
                                Text('9.5',
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.white))
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Container(
                      width: 150,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image(
                            image: AssetImage('image/hoo.jpg'),
                            width: double.infinity,
                            height: 250,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5, top: 6),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Hotel Del Luna',
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.white),
                                ),
                                Icon(
                                  Icons.add,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.orange,
                                ),
                                Text('8.5',
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.white))
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Container(
                      width: 150,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image(
                            image: AssetImage('image/Tunnel.jpg'),
                            width: double.infinity,
                            height: 250,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5, top: 6),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Tunnel',
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.white),
                                ),
                                Icon(
                                  Icons.add,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.orange,
                                ),
                                Text('9.3',
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.white))
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Container(
                      width: 150,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image(
                            image: AssetImage('image/happienss.JPG'),
                            width: double.infinity,
                            height: 250,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5, top: 6),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Happiness',
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.white),
                                ),
                                Icon(
                                  Icons.add,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.orange,
                                ),
                                Text('9.9',
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.white))
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ]),
          ),
        ]),
      ),
    );
  }
}
