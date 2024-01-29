import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_news_app/controller/news_controller.dart';
import 'package:getx_news_app/pages/articlePage/widgets/search_widget.dart';
import 'package:getx_news_app/pages/homePage/widgets/news_tile.dart';
import 'package:getx_news_app/pages/newsDetails/news_details.dart';
import 'package:timeago/timeago.dart' as timeago;

class ArticlePage extends StatelessWidget {
  const ArticlePage({super.key});

  @override
  Widget build(BuildContext context) {
    NewsController newsController = Get.put(NewsController());
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: ListView(
            children: [
              const SizedBox(height: 10),
              const SearchWidget(),
              const SizedBox(height: 20),
              newsController.isNewsForYouLoading.value
                  ? const CircularProgressIndicator()
                  : Column(
                      children: newsController.newsForYou
                          .take(10)
                          .map(
                            (e) => NewsTile(
                              imageUrl: e.urlToImage ??
                                  "https://www.pacificfoodmachinery.com.au/media/catalog/product/placeholder/default/no-product-image-400x400.png",
                              title: e.title!,
                              time: timeago
                                  .format(DateTime.parse(e.publishedAt!)),
                              author: (e.author?.length ?? 0) > 20
                                  ? '${e.author!.substring(0, 20)}...'
                                  : e.author ?? "Unknown",
                              ontap: () {
                                Get.to(NewsDetailsPage(
                                  news: e,
                                ));
                              },
                            ),
                          )
                          .toList(),
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
