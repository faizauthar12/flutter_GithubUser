import 'package:flutter/material.dart';
import 'components/GHUserBody.dart';
import 'components/GHSearchBox.dart';

class GHUserHome extends StatefulWidget {
  @override
  _GHUserHomeState createState() => _GHUserHomeState();
}

class _GHUserHomeState extends State<GHUserHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: GHUserBody(),
    );
  }
}

AppBar buildAppBar() {
  return AppBar(
    elevation: 0,
    backgroundColor: Colors.transparent,
    title: GHSearchBox(),
  );
}
