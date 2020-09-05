import 'package:flutter/material.dart';
import 'package:moneytransfer_flutter/Model/Transcation.dart';
import 'package:moneytransfer_flutter/Screen/Home.dart';

void main() {
  runApp(TranscationWidget());
}

class TranscationWidget extends StatelessWidget {
  // This widget is the root of your application.
  TranscationWidget({Key key, this.tran}) : super(key: key);

  Transcation tran;
  @override
  Widget build(BuildContext context) {
    return TranscationPage(tran: tran,);
  }
}

class TranscationPage extends StatefulWidget {
  TranscationPage({Key key, this.title, this.tran}) : super(key: key);

  final String title;
  Transcation tran;

  @override
  _TranscationPageState createState() => _TranscationPageState();
}

class _TranscationPageState extends State<TranscationPage> {

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      borderRadius: BorderRadius.circular(20),
      child: Container(
        padding: EdgeInsets.all(10),
        height: 70,
        decoration: BoxDecoration(
          border: Border.all(width: 1, color: Colors.grey[200]),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  child: Text(widget.tran.RideType, style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800, color: Colors.grey[800]),),
                ),
                Container(
                  child: Text(widget.tran.date, style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13, color: Colors.grey[700]),),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.all(15),
              child: Text(widget.tran.credit?'+'+widget.tran.amount:'-'+widget.tran.amount, style: TextStyle(fontSize: 15, fontWeight: FontWeight.w800, color: widget.tran.credit?Colors.blue.shade900:Colors.red),),
            )
          ],
        )
      ),
    );
  }
}
