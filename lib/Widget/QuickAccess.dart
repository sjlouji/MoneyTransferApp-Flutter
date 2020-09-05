import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:moneytransfer_flutter/Model/QuickAccess.dart';
import 'package:moneytransfer_flutter/Screen/Home.dart';

void main() {
  runApp(QuickAccessWidget());
}

class QuickAccessWidget extends StatelessWidget {
  QuickAccessWidget({Key key, this.quick}) : super(key: key);

  Quick quick;
  @override
  Widget build(BuildContext context) {
    return QuickAccessPage(quick: quick,);
  }
}

class QuickAccessPage extends StatefulWidget {
  QuickAccessPage({Key key, this.title, this.quick}) : super(key: key);

  final String title;
  Quick quick;

  @override
  _QuickAccessState createState() => _QuickAccessState();
}

class _QuickAccessState extends State<QuickAccessPage> {

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(20),
      child: Container(
            height: 100,
            width: 200,
            padding: EdgeInsets.all(30),
            decoration: BoxDecoration(
              border: Border.all(width: 1, color: Colors.grey[350]),
            borderRadius: BorderRadius.circular(20),
              color: widget.quick.color=='red'?Colors.blue.shade700:Colors.white
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                height: 35,
                width: 35,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: widget.quick.color=="red"?Colors.grey[200]:Colors.blue,
                ),
                child: Icon(LineIcons.trello, color: widget.quick.color=="red"?Colors.grey[800]:Colors.grey[200],size: 15),
              ),
              Container(
                child: Text(widget.quick.name, style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: widget.quick.color=='red'?Colors.grey[200]:Colors.grey[700]),),
              )
            ],
          )
        ),
    );
  }
}
