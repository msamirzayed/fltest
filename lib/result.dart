import 'package:bmies/input_page.dart';
import 'package:bmies/shared.dart';
import 'package:flutter/material.dart';
import 'cardy.dart';
import 'shared.dart';

class result extends StatelessWidget {
  const result({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('BMI Calcos')),
        backgroundColor: Color(0xFF0A0E21),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
              child: Center(
            child: Text(
              'Your Result',
              style: TextStyle(fontSize: 40),
            ),
          )),
          Expanded(
              flex: 7,
              child: Cardy(
                colour: activeCard,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Normal',
                      style: TextStyle(
                          color: Color(0xFF24D876),
                          fontSize: 22,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '18.2',
                      style: kFontyNumber,
                    ),
                    Text(
                      'your BMI is higher than normal you should eat less more',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 22),
                    )
                  ],
                ),
              )),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => MyHomePage(
                            title: 'BMI Calcos',
                          )));
            },
            child: Container(
              color: Color(0xFFEB1555),
              margin: EdgeInsets.only(top: 10),
              width: double.infinity,
              height: 75,
              child: Center(
                child: Text(
                  'Calculate Again',
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
