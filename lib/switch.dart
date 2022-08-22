import 'package:flutter/material.dart';
import 'package:listview/main.dart';
import 'package:listview/myDownload.dart';



class Bottom extends StatefulWidget {


  @override
  State<Bottom> createState() => _BottomState();
}

class _BottomState extends State<Bottom> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  final pages = [
    Home(),
    Center(child: Text('Nothing'),),
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
        body:
        pages[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.black,
          unselectedItemColor: Colors.white,
          selectedItemColor: Color(0xFFB568F2),
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.home,color: Colors.white,),
                label: 'Home'


            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.av_timer,color: Colors.white,),
                label: 'Coming Soon'

            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.download_outlined, color: Colors.white,),
              label: 'Downloads',


            ),
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
