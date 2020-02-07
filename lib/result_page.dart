import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 20.0,
          ),
          Text(
            'Your Results',
            style: kNumberTextStyle,
          ),
          SizedBox(
            height: 20.0,
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              margin: EdgeInsets.all(10.0),
              padding: EdgeInsets.all(5.0),
              decoration: BoxDecoration(
                color: kActiveCardColor,
                borderRadius: BorderRadius.all(
                  Radius.circular(10.0),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(
                    'NORMAL',
                    style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.w700,
                        fontSize: 26.0,
                        letterSpacing: 1.2),
                  ),
                  Text(
                    '26.7',
                    style: TextStyle(
                      fontSize: 100.0,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  Text(
                    'You have a more than normal body weight. Try and excercise more!',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 22, letterSpacing: 1.2),
                  )
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
                decoration: BoxDecoration(
                  color: Color(0xffEB1555),
                ),
                width: double.infinity,
                height: kBottomContainerHeight,
                child: Center(
                  child: Text(
                    'RE CALCULATE',
                    style: TextStyle(
                      color: Colors.white,
                      letterSpacing: 1.5,
                      fontSize: 18.0,
                    ),
                  ),
                )),
          )
        ],
      ),
    );
  }
}
