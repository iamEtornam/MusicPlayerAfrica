import 'package:flutter/material.dart';
import 'package:music_player_africa/fragments/single_browse_list_view.dart';

class BrowseSongsPage extends StatelessWidget {
  final List songs = [
    ['image', 'Nipsey', 'Victory Lap', '2:13'],
    ['image', 'Lucas Joyner', 'ISIS', '4:02'],
    ['image', 'Migos', 'Tripping', '4:02'],
    ['image', 'Drake', 'God\'s Plan', '4:02'],
    ['image', 'Cardi B', 'Money Bag', '4:02'],
    ['image', 'Rick Ross', 'Act a Fool', '4:02'],
    ['image', 'Stonebwoy ft Beenie Man', 'Shuga', '4:02'],
    ['image', 'Nipsey Hussel', 'Effortless', '4:02'],
    ['image', 'DMX', 'Ruff Riders Anthem', '4:02'],
    ['image', 'Migos', 'Bad & Bojee', '4:02'],
    ['image', 'Kwesi Arthur', 'Anthem', '4:02'],
    ['image', 'Sakordie', 'Alpha', '4:02'],
    ['image', 'Eminem', 'Like You', '4:02'],
    ['image', 'Fameye', 'Nothing I get', '4:02'],
    ['image', 'DMX', 'The Rain', '4:02'],
    ['image', 'Lil Wayne', 'Dedicate', '4:02'],
    ['image', 'Rick Ross ft Future', 'Green Gucci Suit', '4:02'],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleBrowseListView(songs: songs)
      ),
    );
  }
}