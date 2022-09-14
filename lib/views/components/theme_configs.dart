import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ColorPallet {
  //* main colors
  static const Color primary = Color.fromARGB(255, 85, 186, 185);
  static const Color black = Color.fromARGB(255, 0, 0, 0);
  static const Color white = Color.fromARGB(255, 255, 255, 255);
  static const Color grey = Color.fromARGB(255, 157, 157, 157);
  static const Color lightgrey = Color.fromARGB(200, 157, 157, 157);
  static const Color secendary = Color.fromARGB(255, 61, 162, 150);
  static const Color taskCart = Color.fromARGB(255, 235, 247, 255);
  static const Color yellow = Color.fromARGB(255, 255, 208, 0);
  static const Color backgroundMainCarts = Color.fromARGB(255, 203, 233, 233);

  //*  catagory background colors
  static Color? catTask = Colors.grey[350];
  static Color? catQuit = Colors.orange[100];
  static Color? catMeditation = Colors.purple[100];
  static Color? catSport = Colors.blue[100];
  static Color? catHome = Colors.cyanAccent[100];
  static Color? catStudy = Colors.pink[100];
  static Color? catHealth = Colors.greenAccent[100];
  static Color? catSocial = Colors.teal[200];
  static Color? catwork = Colors.redAccent[100];

  //* catagory icon colors
  static Color? icoTask = const Color.fromARGB(255, 0, 0, 0);
  static Color? icoQuit = const Color.fromARGB(255, 255, 132, 0);
  static Color? icoMeditation = const Color.fromARGB(255, 217, 0, 255);
  static Color? icoSport = const Color.fromARGB(255, 0, 8, 255);
  static Color? icoHome = const Color.fromARGB(255, 0, 255, 255);
  static Color? icoStudy = const Color.fromARGB(255, 255, 21, 103);
  static Color? icoHealth = const Color.fromARGB(255, 0, 255, 72);
  static Color? icoSocial = const Color.fromARGB(255, 12, 232, 170);
  static Color? icowork = const Color.fromARGB(255, 255, 0, 0);

  //* priordy background
  static Color? lowPriordyBack = const Color.fromARGB(255, 201, 219, 246);
  static Color? mediumePriordyBack = const Color.fromARGB(255, 255, 198, 135);
  static Color? highPriordyBack = const Color.fromARGB(255, 255, 173, 173);

  //* priordy Icon
  static Color? lowPriordyicon = const Color.fromARGB(255, 0, 102, 255);
  static Color? mediumePriordyicon = const Color.fromARGB(255, 255, 136, 0);
  static Color? highPriordyicon = const Color.fromARGB(255, 255, 0, 0);
}

class AppIcons {
  //! priorty part
  static dynamic highPriorty = Icon(
    CupertinoIcons.flame,
    color: ColorPallet.highPriordyicon,
  );
  static dynamic lowPriorty = Icon(
    CupertinoIcons.thermometer_snowflake,
    color: ColorPallet.lowPriordyicon,
  );
  static dynamic mediumePriorty = Icon(
    CupertinoIcons.hand_thumbsup_fill,
    color: ColorPallet.highPriordyicon,
  );

  //! category part
  static dynamic taskCAT = Icon(
    CupertinoIcons.check_mark_circled,
    color: ColorPallet.icoTask,
  );
  static dynamic quitCAT = Icon(
    CupertinoIcons.nosign,
    color: ColorPallet.icoQuit,
  );
  static dynamic studykCAT = Icon(
    Icons.school,
    color: ColorPallet.icoStudy,
  );
  static dynamic meditationCAT = Icon(
    Icons.self_improvement,
    color: ColorPallet.icoMeditation,
  );
  static dynamic sportCAT = Icon(
    Icons.fitness_center_outlined,
    color: ColorPallet.icoSport,
  );
  static dynamic homeCAT = Icon(
    CupertinoIcons.home,
    color: ColorPallet.icoHome,
  );
  static dynamic healthCAT = Icon(
    Icons.health_and_safety,
    color: ColorPallet.icoHealth,
  );
  static dynamic socialCAT = Icon(
    CupertinoIcons.chat_bubble_2,
    color: ColorPallet.icoSocial,
  );
  static dynamic workCAT = Icon(
    CupertinoIcons.briefcase_fill,
    color: ColorPallet.icowork,
  );

  //! navigation part
  static dynamic todayNav = const Icon(
    Icons.calendar_today_outlined,
    color: ColorPallet.white,
  );
  static dynamic todayNavClicked = const Icon(
    Icons.calendar_today_outlined,
    color: ColorPallet.black,
  );
  static dynamic taskNav = const Icon(
    Icons.task,
    color: ColorPallet.white,
  );
  static dynamic taskNavClicked = const Icon(
    Icons.task,
    color: ColorPallet.black,
  );
  static dynamic addNav = const Icon(
    CupertinoIcons.plus,
    color: ColorPallet.white,
  );
  static dynamic challengeNav = const Icon(
    CupertinoIcons.scope,
    color: ColorPallet.white,
  );
  static dynamic challengeNavClicked = const Icon(
    CupertinoIcons.scope,
    color: ColorPallet.black,
  );
  static dynamic analyzeNav = const Icon(
    Icons.insert_chart_outlined_rounded,
    color: ColorPallet.white,
  );
  static dynamic analyzeNavClicked = const Icon(
    Icons.insert_chart_outlined_rounded,
    color: ColorPallet.black,
  );

  //! recurring
  static dynamic onceREP = const Icon(
    Icons.repeat_one,
    color: ColorPallet.grey,
  );
  static dynamic dailyREP = const Icon(
    Icons.repeat,
    color: ColorPallet.grey,
  );
  static dynamic weeklyREP = const Icon(
    Icons.event_repeat_outlined,
    color: ColorPallet.grey,
  );
  static dynamic monthREP = const Icon(
    Icons.sunny,
    color: ColorPallet.grey,
  );

  //! add task part
  static dynamic timeTASK = const Icon(
    CupertinoIcons.clock,
    color: ColorPallet.secendary,
  );
  static dynamic dateTASK = const Icon(
    CupertinoIcons.calendar,
    color: ColorPallet.secendary,
  );
  static dynamic personTASK = const Icon(
    CupertinoIcons.person_fill,
    color: ColorPallet.secendary,
  );
  static dynamic repeatTASK = const Icon(
    Icons.repeat,
    color: ColorPallet.secendary,
  );

  //! main icon part
  static dynamic edit = const Icon(
    Icons.edit,
    color: ColorPallet.grey,
  );
  static dynamic star = const Icon(
    Icons.star,
    color: ColorPallet.yellow,
  );
  static dynamic menu = const Icon(
    Icons.menu_outlined,
    color: ColorPallet.primary,
  );
}

class AppTextStyle {
  //static TextStyle analyzeNav =  GoogleFonts.inter();
}
