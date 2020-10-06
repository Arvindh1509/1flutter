import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() =>runApp(MyApp()
);
class MyApp extends StatelessWidget {
    @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
                primarySwatch: Colors.blue,
      ),
      home: MyAboutPage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyAboutPage extends StatefulWidget {
  MyAboutPage({Key key, this.title}) : super(key: key);

    final String title;

  @override
  _MyAboutPageState createState() => _MyAboutPageState();
}

class _MyAboutPageState extends State<MyAboutPage> {
  void customLaunch(command) async {
    if (await canLaunch(command)) {
      await launch(command);
    } else {
      print(' could not launch $command');
    }
  }


 @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('About'),
              ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Column(
        children : [

          Container(
            child:Image(
              image: AssetImage('assets/dsc.jpeg'),),),
                Text('Developer Students Club is a community where everyone is welcome. We help students to bridge the gap between theory and practice and grow their knowledge by providing a peer-to-peer learning environment, by conducting workshops, study jams and building solution for local businesses. Developer Students Club is a program supported by GOOGLE developers!'),
                RaisedButton(
                  child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Text('Visit dscsastra.com'),
    ),

                  onPressed: ()=> customLaunch('https://dscsastra.com'),
                ),
        ],
      ),
            

   ],)) ) ;







    }}