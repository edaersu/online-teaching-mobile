import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:online_teaching_mobile/app/model/subject_model.dart';
import 'package:online_teaching_mobile/app/service/interfaces/ISubject.dart';
import 'package:online_teaching_mobile/app/service/subject_service.dart';
import 'package:online_teaching_mobile/app/view/splash_screen/splash_screen.dart';
import 'package:online_teaching_mobile/core/constant/app_constant.dart';
import 'package:online_teaching_mobile/core/logger/logger.dart';
import 'package:online_teaching_mobile/core/init/navigation/navigation_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class SplashViewModel extends State<Splash> with BaseViewModel {
  final logger =
      Logger(printer: SimpleLogPrinter('splash_screen_view_model.dart'));
  SharedPreferences preferences;

  List<String> myQuizIdList = [];
  List<String> myQuizNoteList = [];
  double ort;
  @override
  void initState() {
    super.initState();

    Future.delayed(
        Duration(
          seconds: 3,
        ), () {
      logger.i("splash");
    });
  }

/*  Future<void> getQuizIdandQuizNote() async {
    try {
      preferences = await SharedPreferences.getInstance();
      myQuizNoteList = preferences.getStringList("quizNote");
      int sum = 0;
      int i = 0;
      for (i = 1; i < myQuizNoteList.length; i++) {
        sum += int.parse(myQuizNoteList[i]);
      }
      ort = sum / (myQuizNoteList.length - 1);

      return 99999;
    } catch (e) {
      ort = 0;
    }
  }*/
}

/// categories ı çekip const a at
abstract class BaseViewModel {
  NavigationService navigation = NavigationService.instance;
}
