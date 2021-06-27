import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'ecomApp.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(scaffoldBackgroundColor: Colors.grey[100]),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Center(
            child: Text("Ecom App UI", 
                         style: TextStyle( fontWeight: FontWeight.w700,
                                           color: Colors.black),
                       ),
          ),
          actions: <Widget>[IconButton( icon: Icon( Icons.notifications, color: Colors.black),
                                                   onPressed: () {},),],
        ),
        
        body: ecomApp(),
        
        bottomNavigationBar: 
        BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home, color: Colors.purple, size: 30,),
              label: 'House',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.health_and_safety, color: Colors.grey,size: 30),
              label: 'Heart',
            ),
            BottomNavigationBarItem(
              icon: Icon(null),
              label: 'null'
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart, color: Colors.grey,size: 30),
              label: 'Shopping',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person, color: Colors.grey,size: 30),
              label: 'User',
            )
          ],
      ),
      
      floatingActionButton: new FloatingActionButton(
        onPressed: (){},
        backgroundColor: Colors.purple,
        child: new Icon(Icons.search, color: Colors.white,size: 30,),
        elevation: 4.0,
      ),
      
      floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterDocked,
    ));
  }
}

