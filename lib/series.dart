import 'dart:math';
import 'package:flutter/material.dart';
import 'details.dart';
import 'account.dart';
import 'search.dart';

class Series extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.black,
            appBar: AppBar (
              leading: IconButton(
                icon: Icon(Icons.arrow_back, color: Colors.white,),

                onPressed: (){
                  Navigator.pop(context);
                },),
              title: Text('Series', style: TextStyle(
                  fontSize: 24,
                  color: Colors.white
              ),),
              actions: [
                IconButton(icon: Icon (Icons.search , color: Colors.white,), onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Search()));
                })
              ],
              backgroundColor: Colors.black,
            ),

            body: ListView(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left:0 ),
                              child: Container(
                                width:170,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      child: GestureDetector(
                                          onTap: (){
                                            Navigator.push(
                                                context, MaterialPageRoute(
                                                builder:
                                                    (context) =>  Details()));
                                          },
                                          child: Image(image: AssetImage('image/pent.jpg'), width: double.infinity, height:250,)),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left:5, top: 6),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text('Penthouse',style: TextStyle(fontSize: 15, color: Colors.white),),
                                          Icon(Icons.add, color: Colors.white,), ],),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 5),
                                      child: Row(children: [
                                        Icon(Icons.star, color: Colors.orange,),
                                        Text('9.9',style: TextStyle(fontSize: 15, color: Colors.white))
                                      ],),
                                    )
                                  ],),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Container(
                                width:170,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image(image: AssetImage('image/hoo.jpg'), width: double.infinity, height:250,),
                                    Padding(
                                      padding: const EdgeInsets.only(left:5, top: 6),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text('Hptel Del Luna',style: TextStyle(fontSize: 15, color: Colors.white),),
                                          Icon(Icons.add, color: Colors.white,), ],),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 5),
                                      child: Row(children: [
                                        Icon(Icons.star, color: Colors.orange,),
                                        Text('9.0',style: TextStyle(fontSize: 15, color: Colors.white))
                                      ],),
                                    )
                                  ],),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left:0 ),
                              child: Container(
                                width:170,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image(image: AssetImage('image/pic1.jpg'), width: double.infinity, height:250,),
                                    Padding(
                                      padding: const EdgeInsets.only(left:5, top: 6),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text('Start Up',style: TextStyle(fontSize: 15, color: Colors.white),),
                                          Icon(Icons.add, color: Colors.white,), ],),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 5),
                                      child: Row(children: [
                                        Icon(Icons.star, color: Colors.orange,),
                                        Text('7.9',style: TextStyle(fontSize: 15, color: Colors.white))
                                      ],),
                                    )
                                  ],),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Container(
                                width:170,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image(image: AssetImage('image/pic.jpg'), width: double.infinity, height:250,),
                                    Padding(
                                      padding: const EdgeInsets.only(left:5, top: 6),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text('The Suspect',style: TextStyle(fontSize: 15, color: Colors.white),),
                                          Icon(Icons.add, color: Colors.white,), ],),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 5),
                                      child: Row(children: [
                                        Icon(Icons.star, color: Colors.orange,),
                                        Text('9.5',style: TextStyle(fontSize: 15, color: Colors.white))
                                      ],),
                                    )
                                  ],),
                              ),
                            ),
                          ],
                        ),                  Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left:0 ),
                              child: Container(
                                width:170,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image(image: AssetImage('image/happienss.JPG'), width: double.infinity, height:250,),
                                    Padding(
                                      padding: const EdgeInsets.only(left:5, top: 6),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text('Happiness',style: TextStyle(fontSize: 15, color: Colors.white),),
                                          Icon(Icons.add, color: Colors.white,), ],),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 5),
                                      child: Row(children: [
                                        Icon(Icons.star, color: Colors.orange,),
                                        Text('9.9',style: TextStyle(fontSize: 15, color: Colors.white))
                                      ],),
                                    )
                                  ],),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Container(
                                width:170,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image(image: AssetImage('image/pic2.jpg'), width: double.infinity, height:250,),
                                    Padding(
                                      padding: const EdgeInsets.only(left:5, top: 6),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text('Name',style: TextStyle(fontSize: 15, color: Colors.white),),
                                          Icon(Icons.add, color: Colors.white,), ],),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 5),
                                      child: Row(children: [
                                        Icon(Icons.star, color: Colors.orange,),
                                        Text('6.3',style: TextStyle(fontSize: 15, color: Colors.white))
                                      ],),
                                    )
                                  ],),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ]),
            bottomNavigationBar: BottomNavigationBar(
              backgroundColor: Colors.black,
              unselectedItemColor: Colors.white,
              selectedItemColor: Color(0xFFB568F2),
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                    icon: Icon(Icons.home, color: Colors.white,),
                    label: 'Home'


                ),
                BottomNavigationBarItem(
                    icon: Icon(Icons.av_timer, color: Colors.white,),
                    label: 'Coming Soon'

                ),
                BottomNavigationBarItem(
                    icon: Icon(Icons.download_outlined, color: Colors.white,),
                    label: 'Downloads'
                ),
              ],
            )
        ));
  }
}