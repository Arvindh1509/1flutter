import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_app/Screens/about.dart';
void main() =>runApp(MaterialApp(
home: JsonPage(),
));

class JsonPage extends StatefulWidget {
  @override
  _JsonPageState createState() => _JsonPageState();
}

class _JsonPageState extends State<JsonPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home"),),
      body: Center(
        child: FutureBuilder(builder: (context, snapshot){
          var showData=json.decode(snapshot.data.toString());
          return ListView.builder(

            itemBuilder: (BuildContext context, int index){
              return ListTile (
        
               title:Text(showData[index]['Adobe XD event']),
                    focusColor: Colors.lightGreenAccent,
                  );
                
                },
            itemCount: showData.length,
          );
        }, future: DefaultAssetBundle.of(context).loadString("assets/dsc.json"),

        ),
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
    );
  }
}