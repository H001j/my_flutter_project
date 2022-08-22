import 'dart:math';
import 'package:flutter/material.dart';
class Account extends StatefulWidget {
  @override
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            backgroundColor: Colors.black,
            leading: IconButton(
              onPressed: (){
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back, color: Colors.white,),
            ),
            title: Text('User Name'),
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Container(
                    height: 120,
                    width: double.infinity,
                    child: CircleAvatar(
                      radius: 60,
                      backgroundColor: Colors.grey,
                      child: Icon(Icons.account_circle, color: Colors.white,
                        size: 120,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top:20),
                child: Center(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(20)
                    ),
                    width: 160,
                    height: 30,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.camera),
                        SizedBox(width: 6,),
                        Text('Edit Profile Picture'),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, top: 40),
                child: Column(
                  children: [

                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Privacy', style: TextStyle(
                            color: Colors.white,
                            fontSize: 18
                        ),),
                        Icon(Icons.arrow_forward_ios, color: Colors.white,)
                      ],
                    ),
                    SizedBox(height: 20,),

                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center ,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Dark Mode', style: TextStyle(
                            color: Colors.white,
                            fontSize: 18
                        ),),
                        Switch(
                            inactiveTrackColor: Colors.grey,
                            activeColor: Colors.purple,
                            value: isSwitched,
                            onChanged: (bool value) {
                              setState(() {
                                isSwitched= value;
                              });
                            }),

                      ],
                    ),
                    SizedBox(height: 20,),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Help & Support', style: TextStyle(
                            color: Colors.white,
                            fontSize: 18
                        ),),
                        Icon(Icons.arrow_forward_ios, color: Colors.white,)
                      ],
                    ),
                    SizedBox(height: 25,),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('App Language', style: TextStyle(
                            color: Colors.white,
                            fontSize: 18
                        ),),
                        Icon(Icons.arrow_forward_ios, color: Colors.white,)
                      ],
                    ),
                    SizedBox(height: 25,),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Security', style: TextStyle(
                            color: Colors.white,
                            fontSize: 18
                        ),),
                        Icon(Icons.arrow_forward_ios, color: Colors.white,)
                      ],
                    ),
                  ],
                ),
              ),


            ],
          ),
        ));
  }
}