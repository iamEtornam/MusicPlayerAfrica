import 'package:flutter/material.dart';
import 'package:music_player_africa/pages/artist_song_list.dart';
import 'package:search_widget/search_widget.dart';

class SearchPage extends StatelessWidget {
  final List < SongList > list = < SongList > [
    SongList("They Said It.", 'Acehood', 'Single'),
    SongList("Victory Lap", 'Nipsey Hussle', 'Victory Lap'),
    SongList("Greatest", 'Eminem', 'Kamakaze'),
    SongList("ISIS", 'Lucas Joyner', 'ADHD'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(vertical: 16.0),
            child: Column(
              children: < Widget > [
                SizedBox(
                  height: 8.0,
                ),
                SearchWidget < SongList > (
                  dataList: list,
                  hideSearchBoxWhenItemSelected: false,
                  listContainerHeight: MediaQuery.of(context).size.height / 4,
                  queryBuilder: (String query, List < SongList > list) {
                    return list.where((SongList item) => item.songname.toLowerCase().contains(query.toLowerCase())).toList();
                  },
                  popupListItemBuilder: (SongList item) {
                    return PopupListItemWidget(item);
                  },
                  selectedItemBuilder: (SongList selectedItem, VoidCallback deleteSelectedItem) {
                    return SelectedItemWidget(selectedItem, deleteSelectedItem);
                  },
                  // widget customization
                  noItemsFoundWidget: NoItemsFound(),
                  textFieldBuilder: (TextEditingController controller, FocusNode focusNode) {
                    return MyTextField(controller, focusNode);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SongList {
  final String songname;
  final String songartist;
  final String songalbum;


  SongList(this.songname, this.songartist, this.songalbum);
}

class SelectedItemWidget extends StatelessWidget {
  final SongList selectedItem;
  final VoidCallback deleteSelectedItem;

  SelectedItemWidget(this.selectedItem, this.deleteSelectedItem);

  @override
  Widget build(BuildContext context) {
    debugPrint('selected: ${selectedItem.songname}');
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 2.0,
        horizontal: 4.0,
      ),
      child: Row(
        children: < Widget > [
          Expanded(
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ArtistSongList(songs: selectedItem, ),
                  ),
                );
              },
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 16,
                    right: 16,
                    top: 8,
                    bottom: 8,
                  ),
                  child: Text(
                    selectedItem.songname,
                    style: TextStyle(fontSize: 14),
                  ),
              ),
            ),
          ),
          IconButton(
            icon: Icon(Icons.delete_outline, size: 22),
            color: Colors.grey[700],
            onPressed: deleteSelectedItem,
          ),
        ],
      ),
    );
  }
}

class MyTextField extends StatelessWidget {
  final TextEditingController controller;
  final FocusNode focusNode;

  MyTextField(this.controller, this.focusNode);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: TextField(
        controller: controller,
        focusNode: focusNode,
        style: new TextStyle(fontSize: 16, color: Colors.grey[600]),
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0x4437474F)),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Theme
              .of(context)
              .primaryColor),
          ),
          suffixIcon: Icon(Icons.search),
          border: InputBorder.none,
          hintText: "Search here...",
          contentPadding: EdgeInsets.only(
            left: 16,
            right: 20,
            top: 14,
            bottom: 14,
          ),
        ),
      ),
    );
  }
}

class NoItemsFound extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: < Widget > [
          Icon(
            Icons.folder_open,
            size: 24,
            color: Colors.grey[900].withOpacity(0.7),
          ),
          SizedBox(width: 10.0),
          Text(
            "No Items Found",
            style: TextStyle(
              fontSize: 16.0,
              color: Colors.grey[900].withOpacity(0.7),
            ),
          ),
        ],
      ),
    );
  }
}

class PopupListItemWidget extends StatelessWidget {
  final SongList item;

  PopupListItemWidget(this.item);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12.0),
        child: Text(
          item.songname,
          style: TextStyle(fontSize: 16.0),
        ),
    );
  }
}