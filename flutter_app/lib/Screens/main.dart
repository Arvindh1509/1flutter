



import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/Screens/about.dart';
import 'package:flutter_app/Screens/homepage.dart';


void main() =>runApp(MaterialApp(
  home: Scaffold(
    appBar: AppBar(
      title: Text("Home"),
    ),
       drawer: Drawer(
         child: Column(
           children: <Widget>[
            Container(

              width: double.infinity,
              padding: EdgeInsets.all(80.0),
              color: Colors.amber,
              child: Align(
                alignment: Alignment.bottomCenter,
                  child: Text('DSC demo app', style: TextStyle(
                fontStyle: FontStyle.normal,
              color: Colors.black,),),)

            ),
             ListTile(
               leading: Icon(Icons.home),
               title: Text(
                 'HOME',
                 style: TextStyle(
                   fontStyle: FontStyle.normal,
                   fontSize: 18,
                 ),
               ),
               onTap:(){
                 Navigator.push(context,MaterialPageRoute(
                   builder: (context) => JsonPage()),
                 );
               },
             ),
           ListTile(
            leading: Icon(Icons.info),
            title: Text(
                  'About us',
                      style: TextStyle(
                fontStyle: FontStyle.normal,
              fontSize: 18,
        ),
      ),
      onTap: (){
              Navigator.push(context,MaterialPageRoute(
                  builder: (context)=>MyAboutPage(),
              ));
      }
           ),
           ]
         ),
       ),

)));


