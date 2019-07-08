import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class OnlineRadioPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
          Icon(Octicons.getIconData('radio-tower'),color:Colors.black45,size: 70),
          SizedBox(height: 15,),
          Text('No Radio Station Avaliable in your Region.',textAlign: TextAlign.center,style: TextStyle(color: Colors.black45),)
        ],),
      ),
    );
  }
}