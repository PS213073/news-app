import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_news_app/components/navigationbar.dart';
import 'package:getx_news_app/controller/bottom_navigation_controller.dart';

class HomePageController extends StatelessWidget {
  const HomePageController({super.key});

  @override
  Widget build(BuildContext context) {
    BottomNavigationController bottomNavigationController =
        Get.put(BottomNavigationController());
    return Scaffold(
      floatingActionButton: const MyBottomNav(),
      body: Obx(
        () => bottomNavigationController
            .pages[bottomNavigationController.index.value],
      ),
    );
  }
}
