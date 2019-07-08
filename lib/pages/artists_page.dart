import 'package:flutter/material.dart';
import 'package:music_player_africa/fragments/all_artist_list.dart';
class ArtistsPage extends StatelessWidget {
  final List artists = [
    ['image', 'Ed Sheeran', '10'],
    ['image', 'M.anifest', '30'],
    ['image', 'Eminem', '50'],
    ['image', 'Drake', '50'],
    ['image', 'Cardi B', '50'],
    ['image', 'Nas', '50'],
    ['image', 'Jay Z', '50'],
    ['image', 'Nipsey Hussel', '50'],
    ['image', 'DMX', '100'],
    ['image', 'Migos', '50'],
    ['image', 'Kwesi Arthur', '15'],
    ['image', 'Sakordie', '70'],
    ['image', 'Eminem', '50'],
    ['image', 'Eminem', '50'],
    ['image', 'Eminem', '50'],
    ['image', 'Eminem', '50'],
    ['image', 'Eminem', '50'],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: AllArtistList(artists: artists)
      ),
    );
  }
}