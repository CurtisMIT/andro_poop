import 'package:flutter/material.dart';
import 'Colour.dart';

Color hexToColor(String code) {
  return new Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
}

class Popup extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    const radius = const Radius.circular(40.0);
    return Scaffold(
      backgroundColor: hexToColor('#006960'),
      body: Container(        
        child: Column(
          children: <Widget>[
            new Expanded(
              flex: 1,
              child: new Container(                
              )
            ),
            new Expanded(
              flex: 4,                            
              child: new Container(
                width: MediaQuery.of(context).size.width,
                decoration: new BoxDecoration(                  
                  color: Colors.white,
                  borderRadius: const BorderRadius.only(
                    topLeft: radius,
                    topRight: radius,
                  ),
                ),
                child: Row(children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Container()                      
                  ),
                  Expanded(
                    flex: 11,
                    child: Container(
                      child: Column(     
                        crossAxisAlignment: CrossAxisAlignment.start,                               
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(top: 35.0, bottom: 20.0),
                            child: Text(
                            'How does your poop look?',
                            style: TextStyle(
                              fontSize: 24,
                              color:  hexToColor('#1E2027'),
                              fontWeight: FontWeight.bold,                              
                            )
                          ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: 400,
                            child: Colour(),
                          ),
                                          
                      ])                      
                    )
                  ),
                  Expanded(
                    flex: 1,
                    child: Container()
                  ),
                ],), 
              //child: Colour()

              )
            ),           
          ],

        )
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
