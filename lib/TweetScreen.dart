import './tweet_item.dart';
import 'package:flutter/material.dart';

class TweetScreen extends StatefulWidget {
  final List<String> myData;
  final bool isDesktop;
  final mediaQuery;

  TweetScreen(this.myData, this.isDesktop, this.mediaQuery);
  @override
  _TweetScreenState createState() => _TweetScreenState();
}

class _TweetScreenState extends State<TweetScreen> {
  @override
  Widget build(BuildContext context) {
    return widget.myData.isEmpty
        ? Container(
            width: widget.isDesktop ? 500 : widget.mediaQuery.size.width * 1,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(50.0),
                child: Text("No tweets yet",
                    style: TextStyle(color: Color(0xff8899A6), fontSize: 12)),
              ),
            ),
          )
        : Container(
            width: widget.isDesktop ? 500 : widget.mediaQuery.size.width * 1,
            child: ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                reverse: true,
                shrinkWrap: true,
                itemCount: widget.myData.length,
                itemBuilder: (ctx, index) {
                  return TweetItem(text: widget.myData[index]);
                }),
          );
  }
}
