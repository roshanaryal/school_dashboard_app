import 'package:flutter/material.dart';


class DetailPage extends StatefulWidget {
  final String detail;

  const DetailPage({Key key, this.detail}) : super(key: key);
  @override
  _DetailPageState createState() => _DetailPageState(detail);
}

class _DetailPageState extends State<DetailPage> {
  final String detail;

  _DetailPageState(this.detail);
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(title: Text(detail),

      ),


    );
  }
}
