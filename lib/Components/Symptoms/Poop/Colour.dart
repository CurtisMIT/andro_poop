import 'package:flutter/material.dart';

Color hexToColor(String code) {
  return new Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
}

class Colour extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: Container(
        decoration: new BoxDecoration(
          
          ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,   
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15.0),
              child: Text(
              'Colour',
              style: TextStyle(
                fontSize: 20,
                color:  hexToColor('#767E90'),
                fontWeight: FontWeight.bold,                              
              )
              ),
            ),   
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15.0),
              child: 
                          Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[                                  
                  SizedBox(
                  height: 75, 
                  width: 105,
                  child: ColourBox(
                    color: hexToColor('#572C1F')
                  )
                ),
                    SizedBox(
                  height: 75, 
                  width: 105,
                  child: ColourBox(
                    color: hexToColor('#02413B')
                  )
                ),
                                    SizedBox(
                  height: 75, 
                  width: 105,
                  child: ColourBox(
                    color: hexToColor('#B6A933')
                  )
                ) 
            ],),
              ),

              Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[                                  
                  SizedBox(
                  height: 75, 
                  width: 105,
                  child: ColourBox(
                    color: hexToColor('#F10000')
                  )
                ),
                    SizedBox(
                  height: 75, 
                  width: 105,
                  child: ColourBox(
                    color: hexToColor('#E2E0CF')
                  )
                ),
                                    SizedBox(
                  height: 75, 
                  width: 105,
                  child: ColourBox(
                    color: hexToColor('#A31616')
                  )
                ) 
            ],),
                        Padding(
              padding: const EdgeInsets.symmetric(vertical: 15.0),
              child: 
                          Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[                                  
                  SizedBox(
                  height: 75, 
                  width: 105,
                  child: ColourBox(
                    color: hexToColor('#572C1F')
                  )
                ),
                    SizedBox(
                  height: 75, 
                  width: 105,
                  child: Container(
                    width: 105,
                    height: 75,
                    decoration: new BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      )
                    )
                ),
                                    SizedBox(
                  height: 75, 
                  width: 105,
                  child: ColourBox(
                      color: Color.fromRGBO(255, 255, 255, 0.5),
                  )
                ) 
            ],),
              ),
        ],)

      )


    );
  }
}

class ColourBox extends StatelessWidget {
  ColourBox({this.color});

  final Color color;

  @override
  Widget build(BuildContext context) {
    const radius = const Radius.circular(10.0);
    return Scaffold(
      body: Container(
        width: 105,
        height: 75,
        decoration: new BoxDecoration(
          color: color,
          borderRadius: BorderRadius.all(radius)        
        )
      )
    );
  }
}