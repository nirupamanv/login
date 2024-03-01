

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        appBar: AppBar(
          leading: BackButton(
          color:Colors.black,
          ),
        ),
        body: Center(
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Sign In',style: TextStyle(color:Colors.red,fontSize: 30),),
              SizedBox(height: 30,),
              TextField(
                decoration:InputDecoration(
                  hintText: 'Email address.',
                  border:OutlineInputBorder(),
                  filled: true,
                  fillColor:Colors.white,
                ) ,
              ),
              SizedBox(
                width: 200,
                height: 30,
              ),
              TextField(
               decoration: InputDecoration(
                 hintText: 'Password',
                 border: OutlineInputBorder(),
                 filled: true,
                 fillColor: Colors.white,
               ),
              ),
              SizedBox(height: 30,),
              TextButton(onPressed:(){}, child: Text('Login'),
              style: TextButton.styleFrom(
                fixedSize: const Size(250,50),
                backgroundColor: Colors.red,
                primary: Colors.white,

              ),),
              SizedBox(height: 30,),
              Text('OR',style: TextStyle(color: Colors.blue),),
              SizedBox(height: 20,),
              TextButton(onPressed: (){}, child: Text('Facebook Login',style: TextStyle(color: Colors.white),),
                style: TextButton.styleFrom(
                    fixedSize: const Size(250,50),
                    backgroundColor: Colors.blue),
              ),

            ],
          ),
        ),
      )
    );
  }
}
