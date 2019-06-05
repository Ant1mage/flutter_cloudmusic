import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cloudmusic/discover/widgets/discover_banner_widget.dart';
import 'package:flutter_cloudmusic/discover/widgets/discover_tool_bar_widget.dart';
import 'package:flutter_cloudmusic/global/widgets/search_bar.dart';
import 'package:flutter/cupertino.dart';
import 'action.dart';
import 'state.dart';

Widget buildView(DiscoverState state, Dispatch dispatch, ViewService viewService) {
  return CupertinoPageScaffold(
      backgroundColor: Colors.white,
      navigationBar: CupertinoNavigationBar(
        leading: Icon(
          Icons.mic,
          size: 24,
          color: Colors.black87,
        ),
        middle: Padding(
          padding: EdgeInsets.only(left: 10, right: 10),
          child: new SearchBarWidget(hint: '猜你喜欢'),
        ),
        trailing: Icon(
          Icons.multiline_chart,
          size: 24,
          color: Colors.black87,
        ),
      ),
      child: ListView(
        children: <Widget>[
          new DiscoverPageBanner(bannerList: state.bannerList),
          new DiscoverToolBar()
        ],
      )
  );
}
