import 'dart:math';
import 'package:flutter/material.dart';

class Mydownload extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            leading: IconButton(icon: Icon(Icons.arrow_back, color: Colors.white,),),
            title: Text('My Download',
            style: TextStyle(
              color: Colors.white,
            ),),
          ),
          backgroundColor: Colors.black,
          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: double.infinity,
                  height: 200,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 20, left: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Penthouse',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),),
                            SizedBox(height: 10,),
                            Text('Episode 1',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              ),),
                            SizedBox(height: 10,),
                            Text('Episode 2',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              ),),
                            SizedBox(height: 10,),
                            Text('Episode 3',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              ),),
                            SizedBox(height: 10,),
                            Text('Episode 4',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              ),)

                          ],
                        ),
                      ),
                      Image(image: AssetImage('image/pic1.jpg'),width: 150,height: 200,)
                    ],
                  ),
                ),
                SizedBox(height: 50,),
                Container(
                  width: double.infinity,
                  height: 200,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 20, left: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('The Suspuct',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),),
                            SizedBox(height: 10,),
                            Text('Episode 1',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              ),),
                            SizedBox(height: 10,),
                            Text('Episode 2',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              ),),
                          ],
                        ),
                      ),
                      Image(image: AssetImage('image/pic.jpg'),width: 150,height: 200,)
                    ],
                  ),
                ),
                SizedBox(height: 50,),
                Container(
                  width: double.infinity,
                  height: 200,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 20, left: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Hotel Del Luna',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),),
                            SizedBox(height: 10,),
                            Text('Episode 1',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              ),),
                            SizedBox(height: 10,),
                            Text('Episode 2',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              ),),
                            SizedBox(height: 10,),
                            Text('Episode 3',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              ),),
                            SizedBox(height: 10,),
                            Text('Episode 4',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              ),),
                            SizedBox(height: 10,),
                            Text('Episode 5',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              ),),

                          ],
                        ),
                      ),
                      Image(image: AssetImage('image/hoo.jpg'),width: 150,height: 200,)
                    ],
                  ),
                ),
                SizedBox(height: 50,),
                Container(
                  width: double.infinity,
                  height: 200,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 20, left: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Happiness',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),),
                            SizedBox(height: 10,),
                            Text('Episode 1',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              ),),
                            SizedBox(height: 10,),
                            Text('Episode 2',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              ),),
                            SizedBox(height: 10,),
                            Text('Episode 3',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              ),),
                          ],
                        ),
                      ),
                      Image(image: AssetImage('image/happienss.JPG'),width: 150,height: 200,)
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}