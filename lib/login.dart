import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:listview/main.dart';
import 'switch.dart';

void main() {
  runApp(MaterialApp(
      home :Login()
  ));
}
class Login extends StatelessWidget {
//  const Login ({Key? key}) :super(key: key);

  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.black,
            appBar: AppBar(
              leading: IconButton(
                onPressed: (){},
                icon: Icon(Icons.arrow_back, color: Colors.white,),
              ),
               actions: [
                 Row(
                   crossAxisAlignment: CrossAxisAlignment.center,
                   mainAxisAlignment: MainAxisAlignment.center,

                   children: [
                     Image(
                       image: AssetImage('image/logo.png'),
                       width: 50,
                       height:50,
                     ),
                     Row(
                       crossAxisAlignment: CrossAxisAlignment.baseline,
                       textBaseline: TextBaseline.alphabetic,
                       children: [
                         Text('N',style: TextStyle(fontSize: 20)),
                         Text('F', style: TextStyle(color: Colors.purple,fontSize: 20),),
                         Text('LIX',style: TextStyle(fontSize: 20))
                       ],
                     )
                   ],
                 )

               ],
              backgroundColor: Colors.black,


            ),
            body:Padding (
              padding: const EdgeInsets.all(14),
              child: SingleChildScrollView(
                child: Column (
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Sign Up with',textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 40,
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    Text('Google Account', textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 40,
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    SizedBox(
                      height: 90,
                    ),
                    TextFormField(
                      controller: emailController,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white.withOpacity(.42),
                          border: OutlineInputBorder(),
                          labelText: 'Email Address',
                          prefix: Icon(Icons.email,

                            color: Colors.grey,)
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    TextFormField(
                      controller: passwordController,
                      obscureText: true,
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white.withOpacity(.42),
                          border: OutlineInputBorder(),
                          labelText: 'Password',
                          prefix: Icon(Icons.lock,
                              color: Colors.grey ),
                          suffixIcon: Icon(Icons.remove_red_eye)
                      ),
                    ),
                    SizedBox(
                      height: 45,
                    ),
                    Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center ,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text ( 'Need help ?',
                            style: TextStyle (
                              fontSize: 25,
                              color: Colors.white,
                            ),

                          ),
                          SizedBox(
                            height: 45,
                          ),

                          Text ( 'Sign-in protected by Google',
                            style: TextStyle (
                              fontSize: 20,
                              color: Colors.white,
                            ),

                          ),
                          TextButton(onPressed: () {}, child: Text (
                            'Learn more',
                            style: TextStyle (
                                fontSize: 20,
                                color: Colors.purple
                            ),
                          ))
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 70,
                    ),
                    Container(
                      color: Colors.purple,
                      width: double.infinity,
                      height: 50,
                      child: MaterialButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Bottom()));

                          print(emailController.text);
                          print(passwordController.text);
                        },
                        child: Text('SIGN UP',
                            style:TextStyle(color: Colors.white)
                        ),
                      ),
                    ),






                  ],
                ),
              ),
            )


        )
    );
  }
}
