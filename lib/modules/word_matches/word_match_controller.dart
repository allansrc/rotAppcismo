import 'package:get/state_manager.dart';
import 'package:get_storage/get_storage.dart';

class WordMatchController extends GetxController {
  final storage = GetStorage();
  void updateBestScoreIfNecessary(int correctAnswers) async {
    String bestScore = storage.read("score");

    if (bestScore.isEmpty || bestScore == null) bestScore = 0.toString();
    if (int.parse(bestScore) < correctAnswers) storage.write("score", correctAnswers);
  }
}
