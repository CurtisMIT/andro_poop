import 'package:flutter/material.dart';

class Start extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 400.0, left: 35.0, bottom: 100.0),
        child: Container(
            alignment: Alignment.bottomLeft,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text(
                        'Oh Sh*t!',
                        style: TextStyle(
                            fontSize: 40,
                            color: Colors.teal[900],
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 50,
                        width: 200,
                        child: Text(
                          'Enter your health data to get started!',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                TestButton(
                  name: 'Enter Health Data',
                  color: Colors.teal[900],
                  txtcolor: Colors.white,
                  onPressed: () => Navigator.pushNamed(context, '/second'),
                ),
                TestButton(
                  name: 'Find me a toilet first',
                  color: Colors.white,
                  txtcolor: Colors.teal[900],
                  onPressed: () => print('finding toilet...'),
                )
              ],
            )),
      ),
    );
  }
}

class TestButton extends StatelessWidget {
  TestButton({this.name, this.color, this.txtcolor, this.onPressed});

  final String name;
  final Color color;
  final Color txtcolor;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      child: Text(
        '$name',
        style: TextStyle(
          fontSize: 20
        ),
      ),
      onPressed: onPressed,
      padding: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 5.0),
      color: color,
      textColor: txtcolor,
      shape: StadiumBorder(side: BorderSide(color: Colors.teal[900])),
      height: 65,
      minWidth: 255,
      elevation: 0,
    );
  }
}
