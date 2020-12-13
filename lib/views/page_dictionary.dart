import 'package:flutter/material.dart';
import 'package:task7_aplikasi_kesehatan/helper/widgets.dart';
import 'package:task7_aplikasi_kesehatan/helper/word_dao.dart';
import 'package:task7_aplikasi_kesehatan/models/word.dart';

class KamusKesehatan extends StatefulWidget {
  @override
  _KamusKesehatanState createState() => _KamusKesehatanState();
}

class _KamusKesehatanState extends State<KamusKesehatan> {
  bool _loading;
  var wordslist;
  bool  _statusData;
  void getWords() async {
    WordDao wordDao = WordDao();
    await wordDao.getWords();
    wordslist = wordDao.words;
    setState(() {
      _loading = false;
    });
  }

  @override
  void initState() {
    _loading = true;
    super.initState();
    getWords();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      body: SafeArea(
        child: _loading ?
        Center(
          child: CircularProgressIndicator(),
        ) : SingleChildScrollView(
          child: Container(
            child: Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 16),
                  child: ListView.builder(
                      itemCount: wordslist.length,
                      shrinkWrap: true,
                      physics: ClampingScrollPhysics(),
                      itemBuilder: (context, index) {
                        return WordTile(
                          // id: wordslist[index].id ?? "0",
                          kata: wordslist[index].kata ?? "-",
                          arti_kata: wordslist[index].arti_kata ?? "-",
                        );
                      }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
