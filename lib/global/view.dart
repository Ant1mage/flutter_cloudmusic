import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cloudmusic/account/page.dart';
import 'package:flutter_cloudmusic/discover/page.dart';
import 'package:flutter_cloudmusic/friends/page.dart';
import 'package:flutter_cloudmusic/mine/page.dart';
import 'package:flutter_cloudmusic/video/page.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(GlobalState state, Dispatch dispatch, ViewService viewService) {
  return CupertinoTabScaffold(
    tabBar: CupertinoTabBar(
      activeColor: Colors.red,
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.radio, size: 24,), title: Text('发现')),
        BottomNavigationBarItem(icon: Icon(Icons.videocam, size: 24,), title: Text('视频')),
        BottomNavigationBarItem(icon: Icon(Icons.music_note, size: 24,), title: Text('我的')),
        BottomNavigationBarItem(icon: Icon(Icons.people, size: 24,), title: Text('朋友')),
        BottomNavigationBarItem(icon: Icon(Icons.person, size: 24,), title: Text('账号')),
      ],
    ),
    tabBuilder: (context, index){
      return CupertinoTabView(
        builder: (context) {
          switch (index) {
            case 0:
              return DiscoverPage().buildPage(null);
              break;
            case 1:
              return VideoPage().buildPage(null);
              break;
            case 2:
              return MinePage().buildPage(null);
              break;
            case 3:
              return FriendsPage().buildPage(null);
              break;
            case 4:
              return AccountPage().buildPage(null);
              break;
          }
        },
      );
    },
  );
}
