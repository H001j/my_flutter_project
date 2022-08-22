import 'dart:math';
import 'package:flutter/material.dart';
import 'account.dart';

class Download extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.black,
            appBar: AppBar(
              leading: IconButton(
                icon: Icon(Icons.arrow_back, color: Colors.white,),

                onPressed: (){
                  Navigator.pop(context);
                },),
              title: Text('Details', style: TextStyle(
                  fontSize: 24,
                  color: Colors.white
              ),),
              actions: [
                IconButton(
                    icon: Icon(Icons.favorite_border, color: Colors.white,),
                    onPressed: () {
                      Navigator.pop(context);
                    })
              ],
              backgroundColor: Colors.black,
            ),
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: double.infinity,
                  height: 200,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image(image: AssetImage('image/pent.jpg'),
                          width: 170,
                          height: 250,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Penthouse', style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.bold
                            ),),
                            SizedBox(height: 10,),
                            Text('Part 1', style: TextStyle(
                                color: Colors.white,
                                fontSize: 17
                            ),),
                            SizedBox(height: 10,),

                            Text('Episodes : 12', style: TextStyle(
                                color: Colors.white,
                                fontSize: 15
                            ),),
                            SizedBox(height: 10,),

                            Text('Director: Joo Dong', style: TextStyle(
                                color: Colors.white,
                                fontSize: 15
                            ),),
                            SizedBox(height: 10,),

                            Text('Release Date: October 26 - January 5, 2021',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15
                              ),),
                            SizedBox(height: 10,),


                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(Icons.star, color: Colors.orange,),
                                Icon(Icons.star, color: Colors.orange,),
                                Icon(Icons.star, color: Colors.orange,),
                                Icon(Icons.star, color: Colors.orange,),
                                Icon(Icons.star, color: Colors.orange,),
                                SizedBox(width: 7,),
                                Text('9.9', style: TextStyle(color: Colors
                                    .white),)
                              ],
                            )

                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: ListView(
                      children: [
                        Container(
                    decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.09),
                    borderRadius: BorderRadius.circular(5)),
                          width: double.infinity,
                          height: 150,
                          child: Padding(
                            padding: const EdgeInsets.all(9.0),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Shim Su-Ryeon (Lee Ji-Ah) was born into wealth. She is now an elegant woman of the upper class and she is like the queen of the Penthouse Apartment.',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 13
                                    ),),
                                  SizedBox(height: 5,),
                                  Text(
                                    'Her husband is Joo Dan-Tae (Uhm Ki-Joon). He is successful in business and real estate.Cheon Seo-Jin (Kim So-Yeon) was born into a wealthy family. She is arrogant. Her husband is Ha Yoon-Cheol (Yoon Jong-Hoon). He is a chief surgeon at a general hospital and an ambitious man.',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 13
                                    ),)
                                ]),
                          ),
                        ),
                        SizedBox(height: 20,),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.09),
                            borderRadius: BorderRadius.circular(5)),
                          width: double.infinity,
                          height: 150,
                          child: Padding(
                            padding: const EdgeInsets.all(9.0),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [Text('Cast',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                    fontWeight: FontWeight.bold
                                  ),),
                                  SizedBox(height: 10,),
                                  Text('Lee Ji-Ah	: Uhm Ki-Joon	',
                                    style: TextStyle(
                                        fontSize: 13,
                                        color: Colors.white
                                    ),),
                                  SizedBox(height: 5,),
                                  Text('Lee Ji-Ah	: Uhm Ki-Joon	',
                                    style: TextStyle(
                                        fontSize: 13,
                                        color: Colors.white
                                    ),),
                                  SizedBox(height: 5,),
                                  Text('Lee Ji-Ah	: Uhm Ki-Joon	',
                                    style: TextStyle(
                                        fontSize: 13,
                                        color: Colors.white
                                    ),),
                                  SizedBox(height: 5,),
                                  Text('Lee Ji-Ah	: Uhm Ki-Joon	',
                                    style: TextStyle(
                                        fontSize: 13,
                                        color: Colors.white
                                    ),),
                                  SizedBox(height: 5,),
                                  Text('Lee Ji-Ah	: Uhm Ki-Joon	',
                                    style: TextStyle(
                                        fontSize: 13,
                                        color: Colors.white
                                    ),),
                                ]),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 15),
                          child: Center(

                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Episodes', style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white
                            ),),
                          ],
                        ),
                        SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Episode 1', style: TextStyle(
                              fontSize: 15,
                              color: Colors.white
                            ),),
                            Icon(Icons.file_download, color: Colors.white,)
                          ],
                        ),
                        SizedBox(height: 5,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Episode 2', style: TextStyle(
                                fontSize: 15,
                                color: Colors.white
                            ),),
                            Icon(Icons.file_download, color: Colors.white,)
                          ],
                        ),
                        SizedBox(height: 5,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Episode 3', style: TextStyle(
                                fontSize: 15,
                                color: Colors.white
                            ),),
                            Icon(Icons.file_download, color: Colors.white,)
                          ],
                        ),
                        SizedBox(height: 5,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Episode 4', style: TextStyle(
                                fontSize: 15,
                                color: Colors.white
                            ),),
                            Icon(Icons.file_download, color: Colors.white,)
                          ],
                        ),
                        SizedBox(height: 5,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Episode 5', style: TextStyle(
                                fontSize: 15,
                                color: Colors.white
                            ),),
                            Icon(Icons.file_download, color: Colors.white,)
                          ],
                        ),
                        SizedBox(height: 5,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Episode 6', style: TextStyle(
                                fontSize: 15,
                                color: Colors.white
                            ),),
                            Icon(Icons.file_download, color: Colors.white,)
                          ],
                        ),
                        SizedBox(height: 5,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Episode 7', style: TextStyle(
                                fontSize: 15,
                                color: Colors.white
                            ),),
                            Icon(Icons.file_download, color: Colors.white,)
                          ],
                        ),
                        SizedBox(height: 5,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Episode 8', style: TextStyle(
                                fontSize: 15,
                                color: Colors.white
                            ),),
                            Icon(Icons.file_download, color: Colors.white,)
                          ],
                        ),
                        SizedBox(height: 5,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Episode 9', style: TextStyle(
                                fontSize: 15,
                                color: Colors.white
                            ),),
                            Icon(Icons.file_download, color: Colors.white,)
                          ],
                        ),
                        SizedBox(height: 5,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Episode 10', style: TextStyle(
                                fontSize: 15,
                                color: Colors.white
                            ),),
                            Icon(Icons.file_download, color: Colors.white,)
                          ],
                        ),
                        SizedBox(height: 5,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Episode 11', style: TextStyle(
                                fontSize: 15,
                                color: Colors.white
                            ),),
                            Icon(Icons.file_download, color: Colors.white,)
                          ],
                        ),
                        SizedBox(height: 5,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Episode 12', style: TextStyle(
                                fontSize: 15,
                                color: Colors.white
                            ),),
                            Icon(Icons.file_download, color: Colors.white,)
                          ],
                        ),


                      ],
                    ),
                  ),
                )

              ],
            ),
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
                    label: 'Downloads'

                ),
              ],)
        )

        );
  }
}