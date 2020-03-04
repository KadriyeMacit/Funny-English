import 'package:funny_english/services/alert.dart';
import 'package:funny_english/services/board.dart';
import 'package:funny_english/services/sound.dart';
import 'package:get_it/get_it.dart';


GetIt locator = new GetIt();

void setupLocator() {
  locator.registerSingleton(BoardService());
  locator.registerSingleton(SoundService());
  locator.registerSingleton(AlertService());
}