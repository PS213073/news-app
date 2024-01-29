import 'package:flutter/material.dart';
import 'package:getx_news_app/components/loading_container.dart';

class TrendingLoadingCard extends StatelessWidget {
  const TrendingLoadingCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      padding: const EdgeInsets.all(6),
      // height: 300,
      width: 280,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Theme.of(context).colorScheme.primaryContainer,
      ),
      child: Column(
        children: [
          LoadingContainer(
            width: MediaQuery.of(context).size.width,
            height: 200,
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                LoadingContainer(
                  width: MediaQuery.of(context).size.width / 5,
                  height: 10,
                ),
                LoadingContainer(
                  width: MediaQuery.of(context).size.width / 5,
                  height: 10,
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: LoadingContainer(
                      width: MediaQuery.of(context).size.width / 1, height: 20),
                ),
                const SizedBox(height: 10),
                Align(
                  alignment: Alignment.centerLeft,
                  child: LoadingContainer(
                      width: MediaQuery.of(context).size.width / 2, height: 20),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 15,
                  backgroundColor: Theme.of(context).colorScheme.primary,
                  child: LoadingContainer(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                  ),
                ),
                const SizedBox(width: 10),
                LoadingContainer(
                  width: MediaQuery.of(context).size.width / 5,
                  height: 10,
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
