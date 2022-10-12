import 'package:bmies/result.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'cardy.dart';
import 'shared.dart';
import 'result.dart';

const activeCard = Color(0xFF1D1E33);
const inactiveCard = Color(0xFF111328);

enum Gender { male, female }

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int height = 180;
  int weight = 65;
  int age = 20;

  Gender? selectedGender;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF0A0E21),
        title: Center(child: Text(widget.title)),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        print('pressed');
                        setState(() {
                          selectedGender = Gender.male;
                        });
                      },
                      child: Cardy(
                        colour: selectedGender == Gender.male
                            ? activeCard
                            : inactiveCard,
                        cardChild: iconContent(
                          icon: FontAwesomeIcons.mars,
                          label: 'Male',
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedGender = Gender.female;
                        });
                      },
                      child: Cardy(
                        colour: selectedGender == Gender.female
                            ? activeCard
                            : inactiveCard,
                        cardChild: iconContent(
                          icon: FontAwesomeIcons.venus,
                          label: 'Female',
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            // first row
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Cardy(
                      colour: activeCard,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Height',
                            style: kFonty,
                          ),
                          SizedBox(height: 5),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            children: [
                              Text(
                                height.toString(),
                                style: kFontyNumber,
                              ),
                              Text(
                                'cm',
                                style: kFonty,
                              ),
                            ],
                          ),
                          Slider(
                            value: height.toDouble(),
                            min: 120.0,
                            max: 220.0,
                            activeColor: Color(0xFFEB1555),
                            inactiveColor: Color(0xFF8D8E98),
                            onChanged: (double newValue) {
                              print(newValue);
                              setState(() {
                                height = newValue.round();
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // second row
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Cardy(
                      colour: activeCard,
                      cardChild: (Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Weight',
                            style: kFonty,
                          ),
                          Text(
                            weight.toString(),
                            style: kFontyNumber,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                onPressed: () {
                                  setState(() {
                                    weight--;
                                  });
                                },
                                child: Icon(Icons.remove),
                                backgroundColor: Color(0xFF1D1E33),
                              ),
                              SizedBox(width: 10),
                              FloatingActionButton(
                                onPressed: () {
                                  setState(() {
                                    weight++;
                                  });
                                },
                                child: Icon(Icons.add),
                                backgroundColor: Color(0xFF1D1E33),
                              )
                            ],
                          )
                        ],
                      )),
                    ),
                  ),
                  Expanded(
                    child: Cardy(
                      colour: activeCard,
                      cardChild: (Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Age',
                            style: kFonty,
                          ),
                          Text(
                            age.toString(),
                            style: kFontyNumber,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                onPressed: () {
                                  setState(() {
                                    age--;
                                  });
                                },
                                child: Icon(Icons.remove),
                                backgroundColor: Color(0xFF1D1E33),
                              ),
                              SizedBox(width: 10),
                              FloatingActionButton(
                                onPressed: () {
                                  setState(() {
                                    age++;
                                  });
                                },
                                child: Icon(Icons.add),
                                backgroundColor: Color(0xFF1D1E33),
                              )
                            ],
                          )
                        ],
                      )),
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => result()));
              },
              child: Container(
                color: Color(0xFFEB1555),
                margin: EdgeInsets.only(top: 10),
                width: double.infinity,
                height: 75,
                child: Center(
                  child: Text(
                    'Calculate',
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
      ),
    );
  }
}

//0xFFEB1555
