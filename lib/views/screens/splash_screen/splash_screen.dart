import 'package:alltask/gen/assets.gen.dart';
import 'package:alltask/views/constants/solid_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [SolidColors.lightBlue, SolidColors.white],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              child: Center(
                child: Image.asset(
                  Assets.icons.allTaskLogo.path,
                ),
              ),
              top: MediaQuery.of(context).size.height / 6,
              left: MediaQuery.of(context).size.width / 11,
            ),
            Positioned(
              bottom: MediaQuery.of(context).size.height / 8,
              left: MediaQuery.of(context).size.width / 2.5,
              child: const Center(
                child: SpinKitWave(
                  color: SolidColors.lightBlue,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
