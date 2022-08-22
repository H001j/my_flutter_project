import 'dart:math';
        import 'package:flutter/material.dart';

        class Search extends StatelessWidget {
        @override
        Widget build(BuildContext context) {
        return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.black,
          body: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(
                  flex: 2,
                  child: TextFormField(
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 15),
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)
                        ),
                        isDense: true, // important line
                        contentPadding: EdgeInsets.all(5),//
                        filled: true,
                        fillColor: Colors.white.withOpacity(.5),
                        prefixIcon: Icon(Icons.search,),
                        hintText: 'Search ',
                        hintStyle: TextStyle(fontSize: 15 )),
                  ),
                ),
                SizedBox(height: 30,),
                Text('Recently Search', style: TextStyle(
                  color: Colors.grey.withOpacity(0.5),
                  fontSize: 20
                ),),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  children: [
                    Text('True Beauty', style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15
                    ),),
                    Icon(Icons.cancel, color: Colors.white10,)
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Happiness', style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15
                    ),),
                    Icon(Icons.cancel, color: Colors.white10,)
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Name', style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15
                    ),),
                    Icon(Icons.cancel, color: Colors.white10,)
                  ],
                ),




              ],
            ),
          ),
        ));
  }
}