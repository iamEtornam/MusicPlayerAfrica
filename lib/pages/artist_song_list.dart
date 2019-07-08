import 'dart:io';

import 'package:flutter/material.dart';

class ArtistSongList extends StatelessWidget {
  final songs;

  ArtistSongList({
    this.songs
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.92),
      extendBody: true,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        elevation: Platform.isIOS ? 0 : 4,
        backgroundColor: Colors.pink,
        title: Text('Musiga', style: TextStyle(color: Colors.white), ),

      ),
      body: ListView.builder(
        itemCount: 1,
        itemBuilder: (context, index) {
          return Wrap(
            direction: Axis.vertical,
            children: < Widget > [
              Container(
                height: MediaQuery.of(context).size.height / 2.7,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.pink,
                  borderRadius: BorderRadius.vertical(bottom: Radius.circular(55)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: < Widget > [
                        Text('${songs[1]}', style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold), ),
                        Text('${songs[2]} songs', style: TextStyle(color: Colors.white, fontSize: 14), ),
                      ],
                    ),
                ),
              ),


            ],
          );
        }, ),
    );
  }
}