import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_news_app/components/news_tile_loading.dart';
import 'package:getx_news_app/components/trending_loading_card.dart';
import 'package:getx_news_app/controller/news_controller.dart';
import 'package:getx_news_app/pages/homePage/widgets/news_tile.dart';
import 'package:getx_news_app/pages/homePage/widgets/trending_card.dart';
import 'package:getx_news_app/pages/newsDetails/news_details.dart';
import 'package:timeago/timeago.dart' as timeago;

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    NewsController newsController = Get.put(NewsController());
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.primaryContainer,
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: const Icon(
                      Icons.dashboard,
                    ),
                  ),
                  const Text(
                    "Fake News",
                    style: TextStyle(
                        fontSize: 25,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1.5),
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.primaryContainer,
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: InkWell(
                      onTap: () {
                        newsController.getTrendingNews();
                      },
                      child: const Icon(
                        Icons.person,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Hotest News",
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  Text(
                    "See All",
                    style: Theme.of(context).textTheme.labelSmall,
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Obx(
                () => SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: newsController.isTrendingNewsLoading.value
                      ? const Row(
                          children: [
                            TrendingLoadingCard(),
                            TrendingLoadingCard(),
                          ],
                        )
                      : Row(
                          children: newsController.trendingNewsList
                              .map(
                                (e) => TrendingCard(
                                  imageUrl: e.urlToImage ??
                                      "https://www.pacificfoodmachinery.com.au/media/catalog/product/placeholder/default/no-product-image-400x400.png",
                                  tag: 'Trending no 1',
                                  time: timeago
                                      .format(DateTime.parse(e.publishedAt!)),
                                  title: e.title!,
                                  author: e.author ?? "Unknown",
                                  ontap: () {
                                    Get.to(NewsDetailsPage(news: e));
                                  },
                                ),
                              )
                              .toList(),
                        ),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "News For You",
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  Text(
                    "See All",
                    style: Theme.of(context).textTheme.labelSmall,
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Obx(
                () => newsController.isNewsForYouLoading.value
                    ? const Column(
                        children: [
                          NewsTileLoading(),
                          NewsTileLoading(),
                          NewsTileLoading(),
                        ],
                      )
                    : Column(
                        children: newsController.newsForYou5
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
                                  Get.to(NewsDetailsPage(news: e));
                                },
                              ),
                            )
                            .toList(),
                      ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Apple News",
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  Text(
                    "See All",
                    style: Theme.of(context).textTheme.labelSmall,
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Obx(
                () => newsController.isAppleNewsLoading.value
                    ? const Column(
                        children: [
                          NewsTileLoading(),
                          NewsTileLoading(),
                          NewsTileLoading(),
                        ],
                      )
                    : Column(
                        children: newsController.appleNews5
                            .map(
                              (e) => NewsTile(
                                imageUrl: e.urlToImage ??
                                    "https://duet-cdn.vox-cdn.com/thumbor/0x0:2040x1360/828x552/filters:focal(1020x680:1021x681):format(webp)/cdn.vox-cdn.com/uploads/chorus_asset/file/23598986/VRG_Illo_5258_K_Radtke_WWDC.jpg",
                                title: e.title!,
                                time: timeago
                                    .format(DateTime.parse(e.publishedAt!)),
                                author: (e.author?.length ?? 0) > 20
                                    ? '${e.author!.substring(0, 20)}...'
                                    : e.author ?? "Unknown",
                                ontap: () {
                                  Get.to(NewsDetailsPage(news: e));
                                },
                              ),
                            )
                            .toList(),
                      ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Tesla News",
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  Text(
                    "See All",
                    style: Theme.of(context).textTheme.labelSmall,
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Obx(
                () => newsController.isTeslaNewsLoading.value
                    ? const Column(
                        children: [
                          NewsTileLoading(),
                          NewsTileLoading(),
                          NewsTileLoading(),
                        ],
                      )
                    : Column(
                        children: newsController.teslaNews5
                            .map(
                              (e) => NewsTile(
                                imageUrl: e.urlToImage ??
                                    "https://www.teslarati.com/wp-content/uploads/2019/07/tesla-model-3-model-x-andres-ge-41-1024x683.jpg",
                                title: e.title!,
                                time: timeago
                                    .format(DateTime.parse(e.publishedAt!)),
                                author: (e.author?.length ?? 0) > 20
                                    ? '${e.author!.substring(0, 20)}...'
                                    : e.author ?? "Unknown",
                                ontap: () {
                                  Get.to(NewsDetailsPage(news: e));
                                },
                              ),
                            )
                            .toList(),
                      ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Business News",
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  Text(
                    "See All",
                    style: Theme.of(context).textTheme.labelSmall,
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Obx(
                () => newsController.isBusinessNewsLoading.value
                    ? const Column(
                        children: [
                          NewsTileLoading(),
                          NewsTileLoading(),
                          NewsTileLoading(),
                        ],
                      )
                    : Column(
                        children: newsController.businessNews5
                            .map(
                              (e) => NewsTile(
                                imageUrl: e.urlToImage ??
                                    "https://www.ft.com/__origami/service/image/v2/images/raw/https%3A%2F%2Fd1e00ek4ebabms.cloudfront.net%2Fproduction%2F32ddf8bc-a069-437d-af09-48b055f7bb16.jpg?source=next-home-page&dpr=2&width=580&fit=scale-down",
                                title: e.title!,
                                time: timeago
                                    .format(DateTime.parse(e.publishedAt!)),
                                author: (e.author?.length ?? 0) > 20
                                    ? '${e.author!.substring(0, 20)}...'
                                    : e.author ?? "Unknown",
                                ontap: () {
                                  Get.to(NewsDetailsPage(news: e));
                                },
                              ),
                            )
                            .toList(),
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
