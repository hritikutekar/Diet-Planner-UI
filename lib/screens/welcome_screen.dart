import 'package:diet_planner/screens/diet_generator_screen.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/background.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
            child: Stack(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Text(
                      'Diet Planner',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.blueGrey[700],
                        fontSize: 32.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 20.0),
                    Text(
                      'Create your meal plan right here in seconds.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.blueGrey[700],
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 12.0),
                    Text(
                      'Reach your diet and nutritional goals with our calorie calculator, weekly meal plans, grocery lists and more.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.blueGrey[700],
                        fontSize: 15.0,
                        fontWeight: FontWeight.w300,
                      ),
                    )
                  ],
                ),
                Positioned(
                  bottom: 0.0,
                  left: 0.0,
                  right: 0.0,
                  child: FlatButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => DietGeneratorScreen(),
                        ),
                      );
                    },
                    color: Colors.blueGrey[800],
                    padding: EdgeInsets.symmetric(vertical: 15.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Text(
                      'Get Started',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
