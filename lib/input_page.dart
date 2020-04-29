import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculate Your BMI'),
      ),
      body: Column(children: [
        Expanded(
          child: Row(
            children: [
              Expanded(child: ReusableCard()),
              Expanded(child: ReusableCard()),
            ],
          ),
        ),
        Expanded(child: ReusableCard()),
        Expanded(
          child: Row(
            children: [
              Expanded(child: ReusableCard()),
              Expanded(child: ReusableCard()),
            ],
          ),
        )
      ]),
    );
  }
}

class IconContent extends StatelessWidget {
  IconContent({@required this.icon, this.label});

  final IconData icon;
  final label;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
  }
}

class ReusableCard extends StatelessWidget {
  ReusableCard({@required this.colour, this.cardChild});

  final Color colour;
  final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
          color: colour, borderRadius: BorderRadius.circular(10.0)),
    );
  }
}
