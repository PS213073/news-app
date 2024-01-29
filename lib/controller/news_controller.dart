import 'dart:convert';

import 'package:get/get.dart';
import 'package:getx_news_app/model/news_model.dart';
import 'package:http/http.dart' as http;

class NewsController extends GetxController {
  RxList<NewsModel> trendingNewsList = <NewsModel>[].obs;
  RxList<NewsModel> newsForYou = <NewsModel>[].obs;
  RxList<NewsModel> newsForYou5 = <NewsModel>[].obs;
  RxList<NewsModel> appleNews = <NewsModel>[].obs;
  RxList<NewsModel> appleNews5 = <NewsModel>[].obs;
  RxList<NewsModel> teslaNews = <NewsModel>[].obs;
  RxList<NewsModel> teslaNews5 = <NewsModel>[].obs;
  RxList<NewsModel> businessNews = <NewsModel>[].obs;
  RxList<NewsModel> businessNews5 = <NewsModel>[].obs;
  RxBool isTrendingNewsLoading = false.obs;
  RxBool isNewsForYouLoading = false.obs;
  RxBool isAppleNewsLoading = false.obs;
  RxBool isTeslaNewsLoading = false.obs;
  RxBool isBusinessNewsLoading = false.obs;

  @override
  void onInit() async {
    super.onInit();
    getTrendingNews();
    getNewsForYou();
    getAppleNews();
    getTeslaNews();
    getBusinesNews();
  }

  Future<void> getTrendingNews() async {
    isTrendingNewsLoading.value = true;
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
        // print(body);
      } else {
        print("Somethings went wrong in trending news");
      }

      // print(trendingNewsList);
    } catch (ex) {
      print(ex);
    }
    isTrendingNewsLoading.value = false;
  }

  Future<void> getNewsForYou() async {
    isNewsForYouLoading.value = true;
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
        newsForYou5.value = newsForYou.sublist(0, 5).obs;
      } else {
        print("Somethings went wrong in trending news");
      }
    } catch (ex) {
      print(ex);
    }
    isNewsForYouLoading.value = false;
  }

  Future<void> getAppleNews() async {
    isAppleNewsLoading.value = true;
    var baseUrl =
        "https://newsapi.org/v2/everything?q=apple&from=2024-01-28&to=2024-01-28&sortBy=popularity&apiKey=59bf9a6d3e9e46b9a24993889c9218c4";

    try {
      var response = await http.get(Uri.parse(baseUrl));
      print(response);
      if (response.statusCode == 200) {
        var body = jsonDecode(response.body);
        var articles = body["articles"];

        for (var news in articles) {
          appleNews.add(NewsModel.fromJson(news));
        }
        appleNews5.value = appleNews.sublist(0, 5).obs;
      } else {
        print("Somethings went wrong in trending news");
      }
    } catch (ex) {
      print(ex);
    }
    isAppleNewsLoading.value = false;
  }

  Future<void> getTeslaNews() async {
    isTeslaNewsLoading.value = true;
    var baseUrl =
        "https://newsapi.org/v2/everything?q=tesla&from=2023-12-29&sortBy=publishedAt&apiKey=59bf9a6d3e9e46b9a24993889c9218c4";

    try {
      var response = await http.get(Uri.parse(baseUrl));
      print(response);
      if (response.statusCode == 200) {
        var body = jsonDecode(response.body);
        var articles = body["articles"];

        for (var news in articles) {
          teslaNews.add(NewsModel.fromJson(news));
        }
        teslaNews5.value = teslaNews.sublist(0, 5).obs;
      } else {
        print("Somethings went wrong in trending news");
      }
    } catch (ex) {
      print(ex);
    }
    isTeslaNewsLoading.value = false;
  }

  Future<void> getBusinesNews() async {
    isBusinessNewsLoading.value = true;
    var baseUrl =
        "https://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=59bf9a6d3e9e46b9a24993889c9218c4";

    try {
      var response = await http.get(Uri.parse(baseUrl));
      print(response);
      if (response.statusCode == 200) {
        var body = jsonDecode(response.body);
        var articles = body["articles"];

        for (var news in articles) {
          businessNews.add(NewsModel.fromJson(news));
        }
        businessNews5.value = businessNews.sublist(0, 5).obs;
      } else {
        print("Somethings went wrong in trending news");
      }
    } catch (ex) {
      print(ex);
    }
    isBusinessNewsLoading.value = false;
  }
}
