import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:moneytransfer_flutter/Data/Card.dart';
import 'package:moneytransfer_flutter/Data/QuickAccess.dart';
import 'package:moneytransfer_flutter/Data/Transcation.dart';
import 'package:moneytransfer_flutter/Widget/Card.dart';
import 'package:moneytransfer_flutter/Widget/QuickAccess.dart';
import 'package:moneytransfer_flutter/Widget/Transcation.dart';

void main() {
  runApp(HomePage());
}

class HomePage extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Icon(LineIcons.bars, color: Colors.grey[900],),
        actions: [
          Container(
            padding: EdgeInsets.all(10),
            child: CircleAvatar(
              radius: 25,
              backgroundImage: NetworkImage('https://i.pinimg.com/originals/81/9f/b8/819fb8b2baa84564043bfb1d81e7c323.jpg'),
            ),
          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                child: Text('Good Evening', style: TextStyle(fontSize: 25, color: Colors.black),),
              ),
              Container(
                padding: EdgeInsets.only(top: 10),
                child: Text('Joan Louji', style: TextStyle(fontSize: 35, color: Colors.grey[800], fontWeight: FontWeight.bold, letterSpacing: 4)),
              ),
              Container(
                height: 200,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: quick.length,
                    itemBuilder: (context, index){
                      return Container(
                        padding: EdgeInsets.all(10),
                          child: QuickAccessWidget(quick: quick[index],)
                      );
                    },
                  ),
                ),
              ),
              Container(
                child: Text('Cards', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
              ),
              Container(
                height: 250,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: card.length,
                    itemBuilder: (context, index){
                      return Container(
                          padding: EdgeInsets.all(10),
                          child: CardWidget(card: card[index],),
                      );
                    },
                  ),
                ),
              ),
              Container(
                child: Text('Transcation History', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemCount: transcation.length,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index){
                      return Container(
                        padding: EdgeInsets.all(10),
                        child: TranscationWidget(tran: transcation[index],),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      )
    );
  }
}
