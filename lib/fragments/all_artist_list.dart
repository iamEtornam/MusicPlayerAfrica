import 'package:flutter/material.dart';
import 'package:music_player_africa/pages/artist_song_list.dart';


class AllArtistList extends StatelessWidget {
  const AllArtistList({
    Key key,
    @required this.artists,
  }): super(key: key);

  final List artists;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: artists.length == 0 ? 0 : artists.length,
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ArtistSongList(songs: artists[index], ),
              ),
            );
          },
          child: Container(
            margin: const EdgeInsets.symmetric(vertical: 5),
              child: Row(
                children: < Widget > [
                  Container(
                    width: 70,
                    height: 70,
                    margin: const EdgeInsets.fromLTRB(15, 4, 15, 4),
                      decoration: BoxDecoration(
                        color: Colors.pink,
                        borderRadius: BorderRadius.all(Radius.circular(15))
                      ),

                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: < Widget > [
                      Text('${artists[index][1]}',
                        textAlign: TextAlign.left,
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold), ),
                      SizedBox(height: 5, ),
                      Text('${artists[index][2]} songs',
                        textAlign: TextAlign.left,
                        style: TextStyle(color: Colors.black45), )
                    ],
                  )
                ],
              ),
          ),
        );
      },
    );
  }
}