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

    
            Image(
              image: AssetImage('assets/dsc.jpeg'),),
                const SizedBox(height: 30),
          RaisedButton(
            
                  onPressed: ()=> customLaunch('https://dscsastra.com'),
            textColor: Colors.white,
            padding: const EdgeInsets.all(0.0),
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: <Color>[
                    Color(0xFF0D47A1),
                    Color(0xFF1976D2),
                    Color(0xFF42A5F5),
                  ],
                ),
              ),
              padding: const EdgeInsets.all(10.0),
              child:
                  const Text('Visit DSCSASTRA.COM', style: TextStyle(fontSize: 20)),
            ),
    ),

                
        ],
      ),
            

   ],)) ) ;







    }}