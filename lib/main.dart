import 'dart:io';

import 'package:flutter/material.dart';
import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:music_player_africa/pages/artists_page.dart';
import 'package:music_player_africa/pages/browse_songs_page.dart';
import 'package:music_player_africa/pages/favourits_page.dart';
import 'package:music_player_africa/pages/online_radio_page.dart';
import 'package:music_player_africa/pages/search_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Music Player Africa',
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.pink,
      ),
      home: MyHomePage(title: 'Musiga'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final GlobalKey<ScaffoldState> _globalKey = new GlobalKey<ScaffoldState>();
  int currentIndex;
  List artists = [];
    final List<Widget> _children = [
    ArtistsPage(),
    FavouritePage(),
    BrowseSongsPage(),
    OnlineRadioPage(),
    SearchPage()
  ];

@override
  void initState() {
    currentIndex = 0;
    super.initState();
  }

   void changePage(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      backgroundColor: Colors.white.withOpacity(0.92),
      extendBody: true,
      appBar: AppBar(
        elevation: Platform.isIOS ? 0 : 4,
        backgroundColor: Colors.white,
        title: Text('Musiga',style: TextStyle(color: Colors.black),),
        leading: IconButton(
          onPressed: (){
            _globalKey.currentState.openDrawer();
          },
          icon: Icon(SimpleLineIcons.getIconData('settings'),color: Colors.pink),
        ),
        actions: <Widget>[IconButton(
          onPressed: (){},
          icon: Icon(Icons.sort,color:Colors.pink),
        )],
      ),
      body: SafeArea(
          child: AnimatedContainer(
            duration: Duration(milliseconds: 300),
            curve: Curves.easeInOut,
            child: Center(
              child: _children[currentIndex],
            ),
          ),
        ),
        drawer: Drawer(
          child: Container(
            color: Platform.isIOS?Colors.white:Colors.pink,
            child: ListView(
              children: <Widget>[
                DrawerHeader(
                  curve: Curves.elasticInOut,
                  duration: Duration(milliseconds: 8000),
                  decoration: BoxDecoration(
                    color: Platform.isIOS?Colors.white:Colors.pink,
                  ),
                  child: Center(child: Text('Musiga',style: TextStyle( color: Platform.isIOS?Colors.pink:Colors.white,fontSize: 22),)),
                ),
                Divider(color: Platform.isIOS?Colors.pink:Colors.white,),
                Container(
                  color: Colors.white,
                  height: MediaQuery.of(context).size.height,
                  child: ListView(
                    children: <Widget>[
                      ListTile(
                        leading: Icon(SimpleLineIcons.getIconData('equalizer'),color: Platform.isIOS?Colors.pink:Colors.white,),
                        title: Text('Equalizer',style: TextStyle(color: Colors.pink),),
                      ),
       ListTile(
                        leading: Icon(SimpleLineIcons.getIconData('playlist'),color: Platform.isIOS?Colors.pink:Colors.white,),
                        title: Text('Playlists',style: TextStyle(color: Colors.pink),),
                      ),
       ListTile(
                        leading: Icon(SimpleLineIcons.getIconData('folder'),color: Platform.isIOS?Colors.pink:Colors.white,),
                        title: Text('Folders',style: TextStyle(color: Colors.pink),),
                      ),
   ListTile(
                        leading: Icon(FontAwesome.getIconData('newspaper-o'),color: Platform.isIOS?Colors.pink:Colors.white,),
                        title: Text('About',style: TextStyle(color: Colors.pink),),
                      ),
                         ListTile(
                        leading: Icon(Ionicons.getIconData('ios-person'),color: Platform.isIOS?Colors.pink:Colors.white,),
                        title: Text('Developer',style: TextStyle(color: Colors.pink),),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
     bottomNavigationBar: BubbleBottomBar(
        opacity: .2,
        currentIndex: currentIndex,
        onTap: changePage,
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
        elevation: Platform.isIOS ? 0 : 4,
        hasInk: true ,
        inkColor: Colors.black12,
        items: <BubbleBottomBarItem>[
            BubbleBottomBarItem(backgroundColor: Colors.pink, icon: Icon(Icons.queue_music, color: Colors.black,), activeIcon: Icon(Icons.queue_music, color: Colors.pink,), title: Text("Artists")),
            BubbleBottomBarItem(backgroundColor: Colors.pink, icon: Icon(Icons.favorite_border, color: Colors.black,), activeIcon: Icon(Icons.favorite_border, color: Colors.pink,), title: Text("For You")),
            BubbleBottomBarItem(backgroundColor: Colors.pink, icon: Icon(SimpleLineIcons.getIconData('music-tone-alt'), color: Colors.black,), activeIcon: Icon(SimpleLineIcons.getIconData('music-tone-alt'), color: Colors.pink,), title: Text("Songs")),
            BubbleBottomBarItem(backgroundColor: Colors.pink, icon: Icon(Octicons.getIconData('radio-tower'), color: Colors.black,), activeIcon: Icon(Octicons.getIconData('radio-tower'), color: Colors.pink,), title: Text("Radio")),
             BubbleBottomBarItem(backgroundColor: Colors.pink, icon: Icon(Octicons.getIconData('search'), color: Colors.black,), activeIcon: Icon(Icons.search, color: Colors.pink,), title: Text("Search"))
        ],
      ),
    );
  }
}


