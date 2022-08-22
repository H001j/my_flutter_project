import 'dart:math';
import 'package:flutter/material.dart';
import 'details.dart';
import 'account.dart';
import 'search.dart';



 class Films extends StatelessWidget {
   @override
   Widget build (BuildContext context) {
     return SafeArea(
         child: Scaffold(
             backgroundColor: Colors.black,
             appBar: AppBar(
         leading: IconButton(
           icon: Icon(Icons.arrow_back, color: Colors.white,),

           onPressed: (){
       Navigator.pop(context);
     },),
               title: Text('Movies', style: TextStyle(
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
                               padding: const EdgeInsets.only(left: 0),
                               child: Container(
                                 width: 170,
                                 child: Column(
                                   mainAxisAlignment: MainAxisAlignment.start,
                                   crossAxisAlignment: CrossAxisAlignment.start,
                                   children: [
                                     Container(
                                       child: GestureDetector(
                                           onTap: () {},
                                           child: Image(image: AssetImage(
                                               'image/pic3.jpg'),
                                             width: double.infinity,
                                             height: 250,)),
                                     ),
                                     Padding(
                                       padding: const EdgeInsets.only(
                                           left: 5, top: 6),
                                       child: Row(
                                         mainAxisAlignment: MainAxisAlignment
                                             .spaceBetween,
                                         children: [
                                           Text('Lonely', style: TextStyle(
                                               fontSize: 15,
                                               color: Colors.white),),
                                           Icon(
                                             Icons.add, color: Colors.white,),
                                         ],),
                                     ),
                                     Padding(
                                       padding: const EdgeInsets.only(left: 5),
                                       child: Row(children: [
                                         Icon(
                                           Icons.star, color: Colors.orange,),
                                         Text('8.9', style: TextStyle(
                                             fontSize: 15, color: Colors.white))
                                       ],),
                                     )
                                   ],),
                               ),
                             ),
                             Padding(
                               padding: const EdgeInsets.only(left: 20),
                               child: Container(
                                 width: 170,
                                 child: Column(
                                   mainAxisAlignment: MainAxisAlignment.start,
                                   crossAxisAlignment: CrossAxisAlignment.start,
                                   children: [
                                     Image(
                                       image: AssetImage('image/pic6.jpeg'),
                                       width: double.infinity,
                                       height: 250,),
                                     Padding(
                                       padding: const EdgeInsets.only(
                                           left: 5, top: 6),
                                       child: Row(
                                         mainAxisAlignment: MainAxisAlignment
                                             .spaceBetween,
                                         children: [
                                           Text('Love', style: TextStyle(
                                               fontSize: 15,
                                               color: Colors.white),),
                                           Icon(
                                             Icons.add, color: Colors.white,),
                                         ],),
                                     ),
                                     Padding(
                                       padding: const EdgeInsets.only(left: 5),
                                       child: Row(children: [
                                         Icon(
                                           Icons.star, color: Colors.orange,),
                                         Text('7.7', style: TextStyle(
                                             fontSize: 15, color: Colors.white))
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
                               padding: const EdgeInsets.only(left: 0),
                               child: Container(
                                 width: 170,
                                 child: Column(
                                   mainAxisAlignment: MainAxisAlignment.start,
                                   crossAxisAlignment: CrossAxisAlignment.start,
                                   children: [
                                     Image(
                                       image: AssetImage('image/pic8.jpg'),
                                       width: double.infinity,
                                       height: 250,),
                                     Padding(
                                       padding: const EdgeInsets.only(
                                           left: 5, top: 6),
                                       child: Row(
                                         mainAxisAlignment: MainAxisAlignment
                                             .spaceBetween,
                                         children: [
                                           Text('True Beauty', style: TextStyle(
                                               fontSize: 15,
                                               color: Colors.white),),
                                           Icon(
                                             Icons.add, color: Colors.white,),
                                         ],),
                                     ),
                                     Padding(
                                       padding: const EdgeInsets.only(left: 5),
                                       child: Row(children: [
                                         Icon(
                                           Icons.star, color: Colors.orange,),
                                         Text('9.2', style: TextStyle(
                                             fontSize: 15, color: Colors.white))
                                       ],),
                                     )
                                   ],),
                               ),
                             ),
                             Padding(
                               padding: const EdgeInsets.only(left: 20),
                               child: Container(
                                 width: 170,
                                 child: Column(
                                   mainAxisAlignment: MainAxisAlignment.start,
                                   crossAxisAlignment: CrossAxisAlignment.start,
                                   children: [
                                     Image(
                                       image: AssetImage('image/pic10.JPG'),
                                       width: double.infinity,
                                       height: 250,),
                                     Padding(
                                       padding: const EdgeInsets.only(
                                           left: 5, top: 6),
                                       child: Row(
                                         mainAxisAlignment: MainAxisAlignment
                                             .spaceBetween,
                                         children: [
                                           Text('Tomorrw', style: TextStyle(
                                               fontSize: 15,
                                               color: Colors.white),),
                                           Icon(
                                             Icons.add, color: Colors.white,),
                                         ],),
                                     ),
                                     Padding(
                                       padding: const EdgeInsets.only(left: 5),
                                       child: Row(children: [
                                         Icon(
                                           Icons.star, color: Colors.orange,),
                                         Text('9.1', style: TextStyle(
                                             fontSize: 15, color: Colors.white))
                                       ],),
                                     )
                                   ],),
                               ),
                             ),
                           ],
                         ), Row(
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                             Padding(
                               padding: const EdgeInsets.only(left: 0),
                               child: Container(
                                 width: 170,
                                 child: Column(
                                   mainAxisAlignment: MainAxisAlignment.start,
                                   crossAxisAlignment: CrossAxisAlignment.start,
                                   children: [
                                     Image(
                                       image: AssetImage('image/Tunnel.jpg'),
                                       width: double.infinity,
                                       height: 250,),
                                     Padding(
                                       padding: const EdgeInsets.only(
                                           left: 5, top: 6),
                                       child: Row(
                                         mainAxisAlignment: MainAxisAlignment
                                             .spaceBetween,
                                         children: [
                                           Text('Tunnel', style: TextStyle(
                                               fontSize: 15,
                                               color: Colors.white),),
                                           Icon(
                                             Icons.add, color: Colors.white,),
                                         ],),
                                     ),
                                     Padding(
                                       padding: const EdgeInsets.only(left: 5),
                                       child: Row(children: [
                                         Icon(
                                           Icons.star, color: Colors.orange,),
                                         Text('4.9', style: TextStyle(
                                             fontSize: 15, color: Colors.white))
                                       ],),
                                     )
                                   ],),
                               ),
                             ),
                             Padding(
                               padding: const EdgeInsets.only(left: 20),
                               child: Container(
                                 width: 170,
                                 child: Column(
                                   mainAxisAlignment: MainAxisAlignment.start,
                                   crossAxisAlignment: CrossAxisAlignment.start,
                                   children: [
                                     Image(
                                       image: AssetImage('image/picc.jpg'),
                                       width: double.infinity,
                                       height: 250,),
                                     Padding(
                                       padding: const EdgeInsets.only(
                                           left: 5, top: 6),
                                       child: Row(
                                         mainAxisAlignment: MainAxisAlignment
                                             .spaceBetween,
                                         children: [
                                           Text('Dangoures', style: TextStyle(
                                               fontSize: 15,
                                               color: Colors.white),),
                                           Icon(
                                             Icons.add, color: Colors.white,),
                                         ],),
                                     ),
                                     Padding(
                                       padding: const EdgeInsets.only(left: 5),
                                       child: Row(children: [
                                         Icon(
                                           Icons.star, color: Colors.orange,),
                                         Text('9.9', style: TextStyle(
                                             fontSize: 15, color: Colors.white))
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
         )
     );
   }

}