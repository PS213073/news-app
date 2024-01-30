import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_news_app/controller/news_controller.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    NewsController newsController = Get.put(NewsController());
    TextEditingController searchController = TextEditingController();

    return Container(
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Theme.of(context).colorScheme.primaryContainer,
      ),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: searchController,
              decoration: InputDecoration(
                  hintText: "Search news ...",
                  fillColor: Theme.of(context).colorScheme.primaryContainer,
                  border: InputBorder.none),
            ),
          ),
          Obx(
            () => newsController.isNewsForYouLoading.value
                ? Container(
                    width: 50,
                    height: 50,
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.primary,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const CircularProgressIndicator(
                      color: Colors.white,
                    ),
                  )
                : InkWell(
                    onTap: () {
                      newsController.searchNews(searchController.text);
                    },
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.primary,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Icon(Icons.search),
                    ),
                  ),
          ),
        ],
      ),
    );
  }
}
