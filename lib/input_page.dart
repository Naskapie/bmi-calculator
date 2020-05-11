import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'icon_content.dart';
import 'reusable_card.dart';

const bottomContainerHeight = 80.0;
const activeCardColour = Color(0xFF1D1E33);
const bottomContainerColour = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  // Gender selectedGender;
  int height = 180;
  int weight = 60;
  int age = 20;

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
              Expanded(
                  child: ReusableCard(
                colour: activeCardColour,
                cardChild: IconContent(
                  icon: FontAwesomeIcons.mars,
                  label: 'MEN',
                ),
              )),
              Expanded(
                  child: ReusableCard(
                colour: activeCardColour,
                cardChild: IconContent(
                  icon: FontAwesomeIcons.venus,
                  label: 'FEMALE',
                ),
              )),
            ],
          ),
        ),
        Expanded(
            child: ReusableCard(
          colour: activeCardColour,
        )),
        Expanded(
          child: Row(
            children: [
              Expanded(
                  child: ReusableCard(
                colour: activeCardColour,
                cardChild: IconContent(
                  icon: FontAwesomeIcons.venus,
                  label: 'WEIGHT',
                ),
              )),
              Expanded(
                  child: ReusableCard(
                colour: activeCardColour,
                cardChild: IconContent(
                  icon: FontAwesomeIcons.venus,
                  label: 'AGE',
                ),
              )),
            ],
          ),
        ),
        Container(
          color: bottomContainerColour,
          margin: EdgeInsets.only(top: 10.0),
          width: double.infinity,
          height: bottomContainerHeight,
        )
      ]),
    );
  }
}
