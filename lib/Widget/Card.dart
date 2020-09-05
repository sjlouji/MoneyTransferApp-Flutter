import 'package:flutter/material.dart';
import 'package:moneytransfer_flutter/Model/Card.dart';

void main() {
  runApp(CardWidget());
}

class CardWidget extends StatelessWidget {

  CardWidget({Key key, this.card}) : super(key: key);

  // This widget is the root of your application.
  CardName card;

  @override
  Widget build(BuildContext context) {
    return CardWidgetPage(card: card,);
  }
}

class CardWidgetPage extends StatefulWidget {
  CardWidgetPage({Key key, this.title, this.card}) : super(key: key);

  final String title;
  CardName card;
  @override
  _CardWidgetPageState createState() => _CardWidgetPageState();
}

class _CardWidgetPageState extends State<CardWidgetPage> {

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 3.5,
      borderRadius: BorderRadius.circular(20),
      child: Container(
          height: 200,
          width: 400,
          padding: EdgeInsets.all(30),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.blue.shade900
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Text('Card Number', style: TextStyle(color: Colors.grey[200], fontSize: 25, fontWeight: FontWeight.w500),),
                        ),
                        Container(
                          child: Text(widget.card.cardnumber, style: TextStyle(color: Colors.grey[200], fontSize: 25, fontWeight: FontWeight.w500),),
                        ),
                      ],
                    ),
                    Container(
                      width: 40,
                      child: Image.asset(widget.card.icon),
                    )
                  ],
                ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('CARD HOLDERNAME', style: TextStyle(fontSize: 15, color: Colors.grey[300]),),
                      Text(widget.card.holdername, style: TextStyle(fontSize: 25, color: Colors.grey[100]),)
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('EXPIRY DATE', style: TextStyle(fontSize: 15, color: Colors.grey[300]),),
                      Text(widget.card.expirydate, style: TextStyle(fontSize: 25, color: Colors.grey[100]),)
                    ],
                  )
                ],
              )
            ],
          )
      ),
    );
  }
}
