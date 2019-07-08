import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class FavouritePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
          Icon(Entypo.getIconData('emoji-sad'),color:Colors.black45,size: 70),
          SizedBox(height: 15,),
          Text('You don\'t have a saved Song at the moment.',textAlign: TextAlign.center,style: TextStyle(color: Colors.black45),)
        ],),
      ),
    );
  }
}