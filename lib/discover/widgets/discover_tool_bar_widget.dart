import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class DiscoverToolBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 5, bottom: 5),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          _ItemToolBar(Icons.library_music, "每日推荐", () {

          }),
          _ItemToolBar(Icons.today, "歌单", () {

          }),
          _ItemToolBar(Icons.show_chart, "排行榜", () {

          }),
          _ItemToolBar(Icons.radio, "电台", () {

          }),
          _ItemToolBar(Icons.live_tv, "直播", () {

          }),
        ],
      ),
    );
  }
}

class _ItemToolBar extends StatelessWidget {
  final IconData icon;

  final String text;

  final GestureTapCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        ClipOval(
          child: Container(
            width: 40,
            height: 40,
            color: Colors.red,
            child: Icon(
              icon,
              color: Colors.white,
            ),
          ),
        ),
        Padding(padding: EdgeInsets.only(top: 8)),
        Text(
          text,
          style: TextStyle(
            fontSize: 12,
            color: Colors.black,
            decoration: null,
            shadows: null,

          ),
        )
      ],
    );
  }

  _ItemToolBar(this.icon, this.text, this.onTap);
}