import 'package:flutter/material.dart';

class SingleSongListView extends StatelessWidget {
  const SingleSongListView({
    Key key,
    @required this.song,
  }): super(key: key);

  final song;

  @override
  Widget build(BuildContext context) {
    debugPrint('song: $song');
    return Wrap(
      direction: Axis.vertical,
      children: < Widget > [
        Container(
          height: MediaQuery.of(context).size.height / 2.7,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(55)),
          ),
          child: Column(
            children: < Widget > [
              SizedBox(height: 15, ),
              Material(
                elevation: 8,
                color: Colors.pink,
                borderRadius: BorderRadius.circular(120),
                child: SizedBox(height: 220, width: 220, child: Center(
                  child: Container(
                    width: 90,
                    height: 90,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(120),
                    )
                  ),
                ), ),
              ),
              SizedBox(height: 25, ),
              Text('${song[2]}', style: TextStyle(color: Colors.pink, fontSize: 24, fontWeight: FontWeight.bold), ),
              Text('${song[1]}', style: TextStyle(color: Colors.black45, fontSize: 14), ),
              Text('${song[3]}', style: TextStyle(color: Colors.black45, fontSize: 14), ),
            ],
          ),
        ),


      ],
    );
  }
}