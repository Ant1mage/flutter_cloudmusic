import 'package:flutter/material.dart';


class SearchBarWidget extends StatelessWidget {

  final String hint;

  const SearchBarWidget({Key key, this.hint = ''}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      padding: EdgeInsets.fromLTRB(0,0,0,0),
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: Color(0xffEDEDED),
          borderRadius: BorderRadius.circular(15)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Icon(
              Icons.search,
              size: 20,
              color: Color(0xffa9a9a9),
            ),
            padding: EdgeInsets.only(right: 5),
          ),
          Container(
            child: Text(
              this.hint ?? '猜你喜欢',
              style: TextStyle(fontSize: 14, color: Colors.grey),
            ),
          ),
        ],
      ),
    );
  }
}
