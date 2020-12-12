import 'package:http/http.dart' as http;
// import 'package:news_app_api/models/article.dart';
import 'package:task7_aplikasi_kesehatan/models/article.dart';
import 'package:task7_aplikasi_kesehatan/models/word.dart';
import 'dart:convert';

// import 'package:news_app_api/secret.dart';
import 'package:task7_aplikasi_kesehatan/secret.dart';

class WordDao {

  List<Word> words  = [];

  Future<void> getWords() async{

    String url = "http://192.168.1.7/api_task_7_flutter/get_kata.php";

    var response = await http.get(url);

    var jsonData = jsonDecode(response.body);
    print(jsonData);

    bool _statusData;
    _statusData = jsonData['isSuccess'];

    if(_statusData == true){
      jsonData["data"].forEach((element){
        Word word = Word(
          id : element['id'],
          kata : element['kata'],
          arti_kata : element['arti_kata'],
        );
        words.add(word);
    });

    // print(jsonData);
  }
}


}