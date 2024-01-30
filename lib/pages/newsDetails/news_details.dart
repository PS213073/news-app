import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_news_app/model/news_model.dart';
import 'package:timeago/timeago.dart' as timeago;

class NewsDetailsPage extends StatelessWidget {
  final NewsModel news;
  const NewsDetailsPage({super.key, required this.news});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 10),
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Get.back();
                      },
                      // ignore: avoid_unnecessary_containers
                      child: Container(
                        child: const Row(
                          children: [
                            Icon(Icons.arrow_back_ios_new),
                            Text("Back"),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Container(
                  // height: 330,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.network(
                            news.urlToImage ??
                                "https://www.pacificfoodmachinery.com.au/media/catalog/product/placeholder/default/no-product-image-400x400.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  news.title!,
                  style: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Text(
                      timeago.format(DateTime.parse(news.publishedAt!)),
                      style: Theme.of(context).textTheme.labelSmall,
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 15,
                      backgroundColor: Colors.red,
                      child: Text(
                          // (news.author != null && news.author!.isNotEmpty)
                          //     ? news.author![0]
                          //     : "U",
                          news.author![0]),
                    ),
                    const SizedBox(width: 10),
                    Text(
                      (news.author?.length ?? 0) > 20
                          ? '${news.author!.substring(0, 20)}...'
                          : news.author ?? "Unknown",

                      // news.author ?? "unknown",
                      style: TextStyle(
                          fontSize: 18,
                          color:
                              Theme.of(context).colorScheme.secondaryContainer),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Text(
                  news.content!,
                  style: TextStyle(
                      fontSize: 18,
                      color: Theme.of(context).colorScheme.secondaryContainer),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
