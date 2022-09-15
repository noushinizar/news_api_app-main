import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:news_api_app/model/article_model.dart';
import 'package:flutter/material.dart';

class ApiService
{
 Future<List<Article>> getArticle() async {
  final url = 'https://newsapi.org/v2/top-headlines?country=us&category=technology&apiKey=0d8611be4764443f9f13d7eaf7eafd13';
  var response = await http.get(Uri.parse(url));
  if (response.statusCode == 200) {
   var body = json.decode(response.body);
   //print(body);
   List<Article> _data = List<Article>.from(
       body["articles"].map((e) => Article.fromJson(e)).toList());

   return _data;
  }
  else {
   List<Article> _data = [];
   return _data;
  }
 }
}

