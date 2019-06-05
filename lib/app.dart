import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_cloudmusic/account/page.dart';
import 'package:flutter_cloudmusic/discover/page.dart';
import 'package:flutter_cloudmusic/friends/page.dart';
import 'package:flutter_cloudmusic/global/page.dart';
import 'package:flutter_cloudmusic/video/page.dart';



Widget createApp() {
  final AbstractRoutes routes = HybridRoutes(routes: <AbstractRoutes>[
    PageRoutes(
      pages: <String, Page<Object, dynamic>>{
        'main_page': GlobalPage(),
        'discover_page': DiscoverPage(),
        'video_page': VideoPage(),
        'friends_page': FriendsPage(),
        'account_page': AccountPage(),
      },
    ),
  ]);

  return CupertinoApp(
    title: '网易云音乐',
    debugShowCheckedModeBanner: false,
    home: routes.buildPage('main_page', null),
    onGenerateRoute: (RouteSettings settings) {
      return MaterialPageRoute<Object>(builder: (BuildContext context) {
        return routes.buildPage(settings.name, settings.arguments);
      });
    },
  );
}
