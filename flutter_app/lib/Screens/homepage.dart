import 'dart:convert';
import 'package:flutter/material.dart';
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
              return Column(
                children: [
                  ListTile(
                    title: Text(showData[index]['Adobe XD event']),
                    focusColor: Colors.lightGreenAccent,
                  ),
                ],
              );
            },
            itemCount: showData.length,
          );
        }, future: DefaultAssetBundle.of(context).loadString("assets/dsc.json"),

        ),
      ),

    );
  }
}