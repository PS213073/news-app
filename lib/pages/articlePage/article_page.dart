import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_news_app/pages/articlePage/widgets/search_widget.dart';
import 'package:getx_news_app/pages/homePage/widgets/news_tile.dart';
import 'package:getx_news_app/pages/newsDetails/news_details.dart';

class ArticlePage extends StatelessWidget {
  const ArticlePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: ListView(
            children: [
              SizedBox(height: 10),
              SearchWidget(),
              SizedBox(height: 20),
              Column(
                children: [
                  NewsTile(
                    imageUrl:
                        "https://duet-cdn.vox-cdn.com/thumbor/0x0:2040x1360/828x552/filters:focal(1020x680:1021x681):format(webp)/cdn.vox-cdn.com/uploads/chorus_asset/file/23598986/VRG_Illo_5258_K_Radtke_WWDC.jpg",
                    title:
                        "We Tried a Dating App That Lets a Chatbot Break the Ice for You. It Got Weird.",
                    time: "2 Days ago",
                    author: "Daniel Shahzada",
                    ontap: () {
                      Get.to(const NewsDetailsPage());
                    },
                  ),
                  NewsTile(
                    imageUrl:
                        "https://media.wired.com/photos/65a98786f018bab7d5c0df71/master/w_1280,c_limit/moot-space-court-main.jpg",
                    title:
                        "We Tried a Dating App That Lets a Chatbot Break the Ice for You. It Got Weird.",
                    time: "2 Days ago",
                    author: "Daniel Shahzada",
                    ontap: () {
                      Get.to(const NewsDetailsPage());
                    },
                  ),
                  NewsTile(
                    imageUrl:
                        "https://duet-cdn.vox-cdn.com/thumbor/0x0:2040x1360/828x552/filters:focal(1020x680:1021x681):format(webp)/cdn.vox-cdn.com/uploads/chorus_asset/file/13292779/acastro_181017_1777_brain_ai_0002.jpg",
                    title:
                        "We Tried a Dating App That Lets a Chatbot Break the Ice for You. It Got Weird.",
                    time: "2 Days ago",
                    author: "Daniel Shahzada",
                    ontap: () {
                      Get.to(const NewsDetailsPage());
                    },
                  ),
                  NewsTile(
                    imageUrl:
                        "https://media.wired.com/photos/65a98786f018bab7d5c0df71/master/w_1280,c_limit/moot-space-court-main.jpg",
                    title:
                        "We Tried a Dating App That Lets a Chatbot Break the Ice for You. It Got Weird.",
                    time: "2 Days ago",
                    author: "Daniel Shahzada",
                    ontap: () {
                      Get.to(const NewsDetailsPage());
                    },
                  ),
                  NewsTile(
                    imageUrl:
                        "https://duet-cdn.vox-cdn.com/thumbor/0x0:2040x1360/828x552/filters:focal(1020x680:1021x681):format(webp)/cdn.vox-cdn.com/uploads/chorus_asset/file/13292779/acastro_181017_1777_brain_ai_0002.jpg",
                    title:
                        "We Tried a Dating App That Lets a Chatbot Break the Ice for You. It Got Weird.",
                    time: "2 Days ago",
                    author: "Daniel Shahzada",
                    ontap: () {
                      Get.to(const NewsDetailsPage());
                    },
                  ),
                  NewsTile(
                    imageUrl:
                        "https://duet-cdn.vox-cdn.com/thumbor/0x0:2040x1360/828x552/filters:focal(1020x680:1021x681):format(webp)/cdn.vox-cdn.com/uploads/chorus_asset/file/23598986/VRG_Illo_5258_K_Radtke_WWDC.jpg",
                    title:
                        "We Tried a Dating App That Lets a Chatbot Break the Ice for You. It Got Weird.",
                    time: "2 Days ago",
                    author: "Daniel Shahzada",
                    ontap: () {
                      Get.to(const NewsDetailsPage());
                    },
                  ),
                  NewsTile(
                    imageUrl:
                        "https://media.wired.com/photos/65a98786f018bab7d5c0df71/master/w_1280,c_limit/moot-space-court-main.jpg",
                    title:
                        "We Tried a Dating App That Lets a Chatbot Break the Ice for You. It Got Weird.",
                    time: "2 Days ago",
                    author: "Daniel Shahzada",
                    ontap: () {
                      Get.to(const NewsDetailsPage());
                    },
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
