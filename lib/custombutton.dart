import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  
  final Color customBlue = Color(0xFF1A237E);
  final Color customRed = Color(0xFFDD2C00);
  final Color customGrey = (Colors.grey[400] as Color);
  final Color customWhite = Colors.white;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: () {},
      fillColor: customRed,
      splashColor: Color(0xFFFF1744),
      //shape: StadiumBorder(),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
      child: Container(
        padding: EdgeInsets.all(10.0),
        width: 150.0,
        //height: 40.0,
        
        
        child: Column(
          children: [
            Text(
              'Add Request',
              style: TextStyle(color: customWhite, fontFamily: 'Montesserat'),
            ),
          ],
        ),
      ),
    );
  }
}
