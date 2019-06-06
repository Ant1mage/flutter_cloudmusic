import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cloudmusic/discover/model/recommend_list_model.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_cloudmusic/utils/helper/number.dart';

class DiscoverRecommend extends StatelessWidget {

  List<RecommendList> list = [];

  DiscoverRecommend({Key key, this.list}) : super(key: key);


  @override
  Widget build(BuildContext context) {

    return Container(
      padding: EdgeInsets.fromLTRB(15, 20, 10, 20),
      child: Column(
        children: <Widget>[
          _title(),
          _list()
        ],
      ),
    );
  }

  Widget _title () {
    return Flex(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      direction: Axis.horizontal,
      children: <Widget>[
        Text(
          '推荐歌单',
          style: TextStyle(
              fontSize: 18,
              color: Colors.black,
              fontWeight: FontWeight.w500
          ),
        ),
        Container(
          decoration: BoxDecoration(
            border: Border.all(
                color: Colors.grey,
                width: 1
            ),
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          padding: EdgeInsets.fromLTRB(10, 3, 10, 3),
          child: Text('歌单广场', style: TextStyle(fontSize: 12),),
        )
      ],
    );
  }

  Widget _list() {
    if(list.isEmpty) {
      return Container();
    }else {
      return GridView.count(
          padding: EdgeInsets.only(top: 10),
          primary: false,
          shrinkWrap: true,
          crossAxisCount: 3,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
          childAspectRatio: 4 / 5.5,
          children: _listItems()
      );
    }

  }

  List<Widget> _listItems() {
    List<Widget> items = [];
    this.list.forEach((model) {
      Widget w = Column(
        mainAxisAlignment: MainAxisAlignment.start,
//        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Expanded(
              flex: 0,
              child: Stack(
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image(image: new CachedNetworkImageProvider(model.picUrl)),
                  ),
                  Positioned(
                    right: 10,
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.play_arrow,
                          color: Colors.white,
                          size: 12,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 3),
                        ),
                        Text(
                          getFormattedNumber(model.playCount.toInt()),
                          style: TextStyle(
                              fontSize: 12,
                              color: Colors.white
                          ),
                        ),
                      ],
                    )
                  )
                ],
              )
          ),
          Padding(
            padding: EdgeInsets.only(top: 3),
          ),
          Text(model.name, style: TextStyle(fontSize: 12), maxLines: 2,)
        ],
      );
      items.add(w);
    });
    return items;
  }

}

