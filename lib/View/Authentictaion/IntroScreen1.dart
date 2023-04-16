import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:metime/Constants/constant.dart';
import 'package:metime/Widgets/custome_button.dart';

import 'AuthenticationScreen.dart';

class IntroScreen1 extends StatefulWidget {
  const IntroScreen1({Key? key}) : super(key: key);

  @override
  State<IntroScreen1> createState() => _IntroScreen1State();
}

class _IntroScreen1State extends State<IntroScreen1> {
  int currentAnimation = 0;
  List gifList = [
    'assets/gifs/InShot_20230308_152727135.gif',
    'assets/gifs/InShot_20230308_170226305.gif',
    'assets/gifs/InShot_20230308_170443958.gif',
    'assets/gifs/InShot_20230308_170617824.gif',
    'assets/gifs/InShot_20230308_170931153.gif'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // pageview builder
              SizedBox(
                height: Get.height * 0.5,
                child: PageView.builder(
                    itemCount: 5,
                    onPageChanged: (value) {
                      setState(() {
                        currentAnimation = value;
                      });
                    },
                    itemBuilder: (ctx, i) {
                      return Image.asset(
                        gifList[i],
                        fit: BoxFit.fitWidth,
                      );
                    }),
              ),
              SizedBox(
                height: 20,
                child: ListView.builder(
                    itemCount: 5,
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemBuilder: (ctx, i) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 4.0),
                        child: Container(
                          height: 10,
                          width: 10,
                          decoration: BoxDecoration(
                            color: currentAnimation == i
                                ? Colors.orange
                                : Colors.grey,
                            shape: BoxShape.circle,
                          ),
                        ),
                      );
                    }),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: Get.width * 0.7,
                height: 25,
                child: Text(
                  'Treat Yourself!',
                  style: blackFontStyle(fontSize: 14.0),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                width: Get.width * 0.7,
                height: 50,
                child: Text(
                  'At the Convenience of Your Home today',
                  style: blackFontStyle(fontSize: 14.0),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomButton(
                    text: 'Login',
                    onPressed: () {
                      Get.off(() => const AuthenticationScreen());
                    },
                  ),
                  CustomButton(
                    text: 'Sign up',
                    onPressed: () {
                      Get.off(() => const AuthenticationScreen());
                    },
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Continue as a Guest',
                style: blackFontStyle(fontSize: 14.0),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
