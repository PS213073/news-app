import 'package:flutter/material.dart';
import 'package:getx_news_app/pages/homePage/widgets/news_tile.dart';
import 'package:getx_news_app/pages/homePage/widgets/trending_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Geo News",
          style: Theme.of(context).textTheme.headlineLarge,
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            children: [
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
              const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    TrendingCard(
                      imageUrl:
                          'https://duet-cdn.vox-cdn.com/thumbor/0x0:2040x1360/828x552/filters:focal(1020x680:1021x681):format(webp)/cdn.vox-cdn.com/uploads/chorus_asset/file/23598986/VRG_Illo_5258_K_Radtke_WWDC.jpg',
                      tag: 'Trending no 1',
                      time: '2 Days ago',
                      title:
                          'Apple opens App Store to game streaming services.',
                      author: 'Daniel Shahzada',
                    ),
                    TrendingCard(
                      imageUrl:
                          'https://duet-cdn.vox-cdn.com/thumbor/0x0:2040x1360/828x552/filters:focal(1020x680:1021x681):format(webp)/cdn.vox-cdn.com/uploads/chorus_asset/file/13292779/acastro_181017_1777_brain_ai_0002.jpg',
                      tag: 'Trending no 1',
                      time: '2 Days ago',
                      title:
                          'Google’s Hugging Face deal puts ‘supercomputer’ power behind open-source AI.',
                      author: 'Daniel Shahzad',
                    ),
                    TrendingCard(
                      imageUrl:
                          'https://duet-cdn.vox-cdn.com/thumbor/0x0:1114x996/2400x1600/filters:focal(557x498:558x499):format(webp)/cdn.vox-cdn.com/uploads/chorus_asset/file/25246444/Screen_Shot_2024_01_24_at_12.08.31_PM.png',
                      tag: 'Trending no 1',
                      time: '2 Days ago',
                      title:
                          'This Qi2 car mount is cheaper than a MagSafe charger and can fast-charge your iPhone 15.',
                      author: 'Daniel Shahzad',
                    ),
                    TrendingCard(
                      imageUrl:
                          'https://media.wired.com/photos/65a98786f018bab7d5c0df71/master/w_1280,c_limit/moot-space-court-main.jpg',
                      tag: 'Trending no 1',
                      time: '2 Days ago',
                      title:
                          'Two Nations, a Horrible Accident, and the Urgent Need to Understand the Laws of Space.',
                      author: 'Daniel Shahzad',
                    ),
                    TrendingCard(
                      imageUrl:
                          'https://media.wired.com/photos/65b1be205f4a6537c6308790/master/w_1280,c_limit/People-Using-AI-Bots-To-Date-Business-1349387719.jpg',
                      tag: 'Trending no 1',
                      time: '2 Days ago',
                      title:
                          'We Tried a Dating App That Lets a Chatbot Break the Ice for You. It Got Weird.',
                      author: 'Daniel Shahzad',
                    ),
                  ],
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
              const Column(
                children: [
                  NewsTile(
                    imageUrl:
                        "https://duet-cdn.vox-cdn.com/thumbor/0x0:2040x1360/828x552/filters:focal(1020x680:1021x681):format(webp)/cdn.vox-cdn.com/uploads/chorus_asset/file/23598986/VRG_Illo_5258_K_Radtke_WWDC.jpg",
                    title:
                        "We Tried a Dating App That Lets a Chatbot Break the Ice for You. It Got Weird.",
                    time: "2 Days ago",
                    author: "Daniel Shahzada",
                  ),
                  NewsTile(
                    imageUrl:
                        "https://media.wired.com/photos/65a98786f018bab7d5c0df71/master/w_1280,c_limit/moot-space-court-main.jpg",
                    title:
                        "We Tried a Dating App That Lets a Chatbot Break the Ice for You. It Got Weird.",
                    time: "2 Days ago",
                    author: "Daniel Shahzada",
                  ),
                  NewsTile(
                    imageUrl:
                        "https://duet-cdn.vox-cdn.com/thumbor/0x0:2040x1360/828x552/filters:focal(1020x680:1021x681):format(webp)/cdn.vox-cdn.com/uploads/chorus_asset/file/13292779/acastro_181017_1777_brain_ai_0002.jpg",
                    title:
                        "We Tried a Dating App That Lets a Chatbot Break the Ice for You. It Got Weird.",
                    time: "2 Days ago",
                    author: "Daniel Shahzada",
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
