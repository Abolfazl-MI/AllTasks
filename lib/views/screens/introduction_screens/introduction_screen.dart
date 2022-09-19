import 'package:alltask/gen/assets.gen.dart';
import 'package:alltask/views/constants/constants.dart';
import 'package:alltask/views/screens/screens.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class AppIntroductionScreen extends StatefulWidget {
  const AppIntroductionScreen({Key? key}) : super(key: key);

  @override
  State<AppIntroductionScreen> createState() => _AppIntroductionScreenState();
}

class _AppIntroductionScreenState extends State<AppIntroductionScreen> {
  PageController pageController =
      PageController(initialPage: 0, viewportFraction: 0.75);
  int pageChanged = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: IntroductionScreen(
      onDone: () {},
      done: Text("done"),
      next: Text("Skip"),
      skip: Text(
        'skio',
        style: TextStyle(color: Colors.amber),
      ),
      onSkip: () {},
      gScound: SolidColors.white,
      gfirst: SolidColors.lightBlue,
      pages: [
        PageViewModel(
          title: 'Check it daily ',
          body:
              'List of task with cool customization to make your plan Exactly what you want',
          image: Image.asset(
            Assets.images.checklist.path,
          ),
        ),
        PageViewModel(
            title: 'Challenge Yourself',
            body:
                'it’s you vs you .track your goals daily and be the best version of yourself',
            image: Image.asset(
              Assets.images.success.path,
            )),
        PageViewModel(
            title: 'Analyse Progress',
            body:
                'Compare your productivity with your Last month with coins that you achive after Compelet a activity!',
            image: Image.asset(Assets.images.target.path))
      ],
      // globalBackgroundColor: ,
    ));
  }
}
