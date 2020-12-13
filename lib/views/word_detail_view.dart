import 'package:flutter/material.dart';
import 'package:task7_aplikasi_kesehatan/helper/widgets.dart';

class WordDetailView extends StatefulWidget {
  String kata, arti_kata;
  WordDetailView({this.kata, this.arti_kata});
  @override
  _WordDetailViewState createState() => _WordDetailViewState();
}

class _WordDetailViewState extends State<WordDetailView> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      body: SingleChildScrollView(
          child : Container(
            child: Center(
              child: Column(
                children: <Widget>[
                  Text(widget.kata,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,),),
                  SizedBox(height: 15,),
                  Text(widget.arti_kata,
                      textAlign: TextAlign.justify,
                      style: TextStyle(fontSize: 15,)
                  ),
                ],
              ),
            ),
          )
      ),
    );
  }
}
