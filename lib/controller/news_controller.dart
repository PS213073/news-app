import 'dart:convert';

import 'package:get/get.dart';
import 'package:getx_news_app/model/news_model.dart';
import 'package:http/http.dart' as http;

class NewsController extends GetxController {
  RxList<NewsModel> trendingNewsList = <NewsModel>[].obs;
  RxList<NewsModel> newsForYou = <NewsModel>[].obs;

  @override
  void onInit() async {
    super.onInit();
    getTrendingNews();
    getNewsForYou();
  }

  Future<void> getTrendingNews() async {
    var baseUrl =
        "https://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=59bf9a6d3e9e46b9a24993889c9218c4";

    try {
      var response = await http.get(Uri.parse(baseUrl));
      print(response);
      if (response.statusCode == 200) {
        var body = jsonDecode(response.body);
        var articles = body["articles"];

        for (var news in articles) {
          trendingNewsList.add(NewsModel.fromJson(news));
        }
        print(body);
      } else {
        print("Somethings went wrong in trending news");
      }

      // print(trendingNewsList);
    } catch (ex) {
      print(ex);
    }
  }

  Future<void> getNewsForYou() async {
    var baseUrl =
        "https://newsapi.org/v2/everything?domains=wsj.com&apiKey=59bf9a6d3e9e46b9a24993889c9218c4";

    try {
      var response = await http.get(Uri.parse(baseUrl));
      print(response);
      if (response.statusCode == 200) {
        var body = jsonDecode(response.body);
        var articles = body["articles"];

        for (var news in articles) {
          newsForYou.add(NewsModel.fromJson(news));
        }
        print(body);
      } else {
        print("Somethings went wrong in trending news");
      }
      // print(trendingNewsList);
    } catch (ex) {
      print(ex);
    }
  }
}
