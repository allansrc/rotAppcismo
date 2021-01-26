import 'package:get/get.dart';
import 'package:rotappcismo/modules/home/home_page.dart';
import 'package:rotappcismo/modules/memo_g/memo_game_page.dart';
import 'package:rotappcismo/modules/word_complete/word_complete_page.dart';
import 'package:rotappcismo/modules/word_matches/word_match.dart';
import 'package:rotappcismo/routes/app_routes.dart';

class AppPages {
  static final pages = [
    GetPage(name: AppRoutes.initial, page: () => HomePage()),
    GetPage(name: AppRoutes.memog, page: () => MemogamePage()),
    GetPage(name: AppRoutes.wordcomp, page: () => WordCompletePage()),
    GetPage(name: AppRoutes.wordmatch, page: () => WordMatchPage()),
  ];
}
