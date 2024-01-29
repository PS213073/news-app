import 'package:flutter/material.dart';
import 'package:getx_news_app/components/loading_container.dart';

class NewsTileLoading extends StatelessWidget {
  const NewsTileLoading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primaryContainer,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          const LoadingContainer(width: 120, height: 120),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
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
                      width: MediaQuery.of(context).size.width / 2.3,
                      height: 20,
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                LoadingContainer(
                  width: MediaQuery.of(context).size.width,
                  height: 15,
                ),
                const SizedBox(height: 15),
                LoadingContainer(
                  width: MediaQuery.of(context).size.width / 2,
                  height: 15,
                ),
                const SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    LoadingContainer(
                      width: MediaQuery.of(context).size.width / 6,
                      height: 10,
                    ),
                    LoadingContainer(
                      width: MediaQuery.of(context).size.width / 6,
                      height: 10,
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
