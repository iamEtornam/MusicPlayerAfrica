import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:music_player_africa/pages/artist_song_list.dart';


class SingleBrowseListView extends StatelessWidget {
  const SingleBrowseListView({
    Key key,
    @required this.songs,
  }): super(key: key);

  final List songs;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: songs.length == 0 ? 0 : songs.length,
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ArtistSongList(songs: songs[index], ),
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
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: < Widget > [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: < Widget > [
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 1.8,
                              child: Text('${songs[index][2]} - ${songs[index][1]}',
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                                textAlign: TextAlign.left,
                                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold), ),
                            ),
                            SizedBox(height: 5, ),
                            Text('${songs[index][3]}}',
                              textAlign: TextAlign.left,
                              style: TextStyle(color: Colors.black45), )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10.0),
                            child: IconButton(
                              icon: Icon(SimpleLineIcons.getIconData('control-play'), color: Colors.pink, ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => ArtistSongList(songs: songs[index], ),
                                  ),
                                );
                              },
                            ),
                        )
                      ],
                    ),
                  ),

                ],
              ),
          ),
        );
      },
    );
  }
}