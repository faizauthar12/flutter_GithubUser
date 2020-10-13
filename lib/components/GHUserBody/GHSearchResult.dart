import 'package:flutter/material.dart';
import 'package:github_user/components/data/model.dart';

class GHSearchResult extends StatefulWidget {
  const GHSearchResult({
    Key key,
  }) : super(key: key);

  @override
  _GHSearchResultState createState() => _GHSearchResultState();
}

class _GHSearchResultState extends State<GHSearchResult> {
  List<User> _results = List();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: new ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: _results.length,
        shrinkWrap: true,
        itemBuilder: (BuildContext context, int index) {
          return Center(
            child: Container(
              padding: EdgeInsets.all(20),
              child: Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(right: 15),
                    child: Image.asset(
                      _results[index].avatar,
                      width: 85,
                    ),
                  ),
                  Text(_results[index].login)
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
