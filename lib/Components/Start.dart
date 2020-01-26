import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Start extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final String assetName = 'assets/Logo.svg';

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 440.0, left: 35.0, bottom: 50.0),
        child: Container(
            alignment: Alignment.bottomLeft,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  child: Row(
                    children: <Widget>[
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          SvgPicture.asset(
                            assetName,
                            semanticsLabel: 'Logo',
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Oh Sh*t!',
                            style: GoogleFonts.ubuntu(
                              textStyle: TextStyle(
                                fontSize: 40,
                                color: Colors.teal[900],
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          SizedBox(
                            height: 50,
                            width: 200,
                            child: Text(
                              'Enter your health data to get started!',
                              style: GoogleFonts.ubuntu(
                                textStyle: TextStyle(
                                  fontSize: 16,
                                ),
                              )
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                TestButton(
                  name: 'Enter Health Data',
                  color: Colors.teal[900],
                  txtcolor: Colors.white,
                  onPressed: () => Navigator.of(context).pushNamed('/second'),
                ),
                SizedBox(
                  height: 10,
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
        style: GoogleFonts.ubuntu(
          textStyle: TextStyle(
            fontSize: 20
          ),
        )
      ),
      onPressed: onPressed,
      padding: const EdgeInsets.symmetric(vertical: 2.0,),
      color: color,
      textColor: txtcolor,
      shape: StadiumBorder(side: BorderSide(color: Colors.teal[900])),
      height: 70,
      minWidth: 300,
      elevation: 0,
    );
  }
}
