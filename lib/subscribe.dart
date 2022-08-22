import 'dart:math';
import 'package:flutter/material.dart';
import 'download.dart';

class Subscribe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar (
            title: Text('Subscribe', style: TextStyle(
                fontSize: 24,
                color: Colors.white
            ),),
            leading: IconButton(
              icon: Icon(Icons.arrow_back, color: Colors.white,),

              onPressed: (){
                Navigator.pop(context);
              },),
            backgroundColor: Colors.black,
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 200,
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Penthouse - Part 1',style: TextStyle(
                              fontSize: 24,
                              color: Colors.white,
                              fontWeight: FontWeight.bold
                            ),),
                            SizedBox(height: 10,),
                            Text('Subscribers : 1021',style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                            ),),
                            SizedBox(height: 10,),
                            Text('Price : 10D',style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                            ),),
                          ],
                        ),
                        Image(image: AssetImage('image/pent.jpg'),
                        width: 150,
                        height: 120,
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Debit cards ', style: TextStyle(
                        fontSize: 15,
                        color: Colors.white
                      ),),
                      Text('Debit cards ', style: TextStyle(
                          fontSize: 15,
                          color: Colors.white
                      ),),
                      Text('Debit cards ', style: TextStyle(
                          fontSize: 15,
                          color: Colors.white
                      ),),

                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 60, left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Visa Card Number', style: TextStyle(
                          fontSize: 20,
                          color: Colors.white
                      ),),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        keyboardType: TextInputType.numberWithOptions(),
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white.withOpacity(.1),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        prefix: Icon(Icons.credit_card,
                              color: Colors.grey ),
                      ),),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 170),
                  child: Center(
                    child: Container(
                      width: 250,
                      height: 50,
                      color: Colors.purple,
                      child: MaterialButton(
                        onPressed: () {
                          showAlertDialog(context);
                        },
                        child: Text('Checkout',
                          style: TextStyle(
                              fontSize: 24,
                              color: Colors.white,
                              fontWeight: FontWeight.bold
                          ),),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
showAlertDialog(BuildContext context) {
  // Create button
  Widget okButton = FlatButton(
    child: Text("OK", style: TextStyle(
      color: Colors.purple
    ),),
    onPressed: () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => Download()));
    },
  );
  AlertDialog alert = AlertDialog(
    backgroundColor: Color(0xFF444444),
    title: Text("Subscribed Successfully", style: TextStyle(color:Colors.white, fontWeight: FontWeight.bold),),
    content: Text("Thank you for choosing us and we hope you enjoy!", style: TextStyle(color:Colors.white),),
    actions: [
      okButton,
    ],
  );
  showDialog(
    barrierColor: Colors.black.withOpacity(.4),
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}



