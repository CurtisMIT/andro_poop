import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Start.dart';

class Info extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Title(),
          GenderBoard(),
          HeightBoard(),
          WeightBoard(),
          DigestBoard(),
          TestButton(
            name: 'Continue',
            color: Colors.teal[900],
            txtcolor: Colors.white,
            onPressed: () => Navigator.of(context).pushNamed('/calendar'),
          )
        ],
      ),
    );
  }
}

class Ubuntu extends StatelessWidget {
  Ubuntu({this.text, this.colour, this.size, this.weight});

  final String text;
  final Color colour;
  final double size;
  final FontWeight weight;

  @override
  Widget build(BuildContext context) {
    return Text(
      '$text',
      style: GoogleFonts.ubuntu(
        textStyle: TextStyle(
          color: colour,
          fontSize: size,
          fontWeight: weight
        )
      ),
    );
  }
}

class Title extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 50),
      child: Ubuntu(
        text: 'Enter your info',
        colour: Colors.teal[900],
        size: 36.0,
        weight: FontWeight.w500,
      ),
    );
  }
}

class Header extends StatelessWidget {

  Header({this.header});

  final String header;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 35),
      alignment: Alignment.bottomLeft,
      child: Ubuntu(
        text: '$header',
        colour: Colors.grey[600],
        size: 16,
        weight: FontWeight.w500,
      ),
    );
  }
}

class Board extends StatelessWidget {

  Board({this.header, this.child});

  final String header;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Header(header: '$header',),
          SizedBox(height: 20,),
          child
        ],
      ),
    );
  }

}

class InputBox extends StatelessWidget {

  InputBox({this.suffix});

  final String suffix;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: TextField(
        obscureText: true,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: 'Type here...',
          labelStyle: GoogleFonts.ubuntu(
            textStyle: TextStyle(
              color: Colors.grey[400]
            )
          ),
          suffix: Ubuntu(
            text: '$suffix',
            colour: Colors.grey[600],
          )
        ),
      ),
    );
  }

}

class HeightBoard extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Board(
      header: 'Height',
      child: InputBox(suffix: 'foot',)
    );
  }

}

class WeightBoard extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Board(
      header: 'Weight',
      child: InputBox(suffix: 'kg',)
    );
  }

}

class DigestBoard extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Board(
      header: 'Any digestive disorders?',
      child: InputBox()
    );
  }

}



class GenderBoard extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Board(
      header: 'Gender',
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Gender(gender: 'Male',),
          Gender(gender: 'Female',),
          Gender(gender: 'Other',)
        ],
      ),
    );
  }
}

class Gender extends StatelessWidget {

  Gender({this.gender});

  final String gender;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      child: Text(
        '$gender',
        style: TextStyle(
          color: Colors.grey[600]
        ),
      ),
      onPressed: () => print('I\'m $gender'),
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: Colors.grey[400],
          width: 1
        ),
        borderRadius: BorderRadius.circular(7)
      ),
      height: 70,
      minWidth: 100,
    );
  }
}