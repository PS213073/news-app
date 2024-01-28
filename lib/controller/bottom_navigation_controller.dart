import 'package:get/get.dart';
import 'package:getx_news_app/pages/articlePage/article_page.dart';
import 'package:getx_news_app/pages/homePage/home_page.dart';
import 'package:getx_news_app/pages/profilePage/profile_page.dart';

class BottomNavigationController extends GetxController {
  RxInt index = 0.obs;

  var pages = [const HomePage(), const ArticlePage(), const ProfilePage()];
}
