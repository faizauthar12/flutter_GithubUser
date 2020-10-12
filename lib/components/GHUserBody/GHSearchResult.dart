import 'package:flutter/material.dart';
import 'package:github_user/components/data/UserList.dart';

class GHSearchResult extends StatelessWidget {
  const GHSearchResult({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: new ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: userList.length,
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
                      userList[index].avatar,
                      width: 85,
                    ),
                  ),
                  Text(userList[index].login)
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
