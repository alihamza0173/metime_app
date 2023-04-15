import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:metime/Constants/constant.dart';
import 'package:metime/View/Authentictaion/AuthenticationScreen.dart';
import 'package:metime/View/UserScreen/AuthenticationScreen.dart';
import 'package:metime/View/UserScreen/bottom_navigation_bar.dart';

class IntroScreen2 extends StatefulWidget {
  const IntroScreen2({Key? key}) : super(key: key);

  @override
  State<IntroScreen2> createState() => _IntroScreen2State();
}

class _IntroScreen2State extends State<IntroScreen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 100,),
              SizedBox(
                width: Get.width * 0.7,
                child: Text(' Choose as',style: blackFontStyle(
                    fontSize: 14.0
                ),
                  textAlign: TextAlign.center,),
              ),
              const SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Card(
                    child: GestureDetector(
                      onTap: (){
                        Get.to(()=>const AuthenticationScreen());
                      },
                      child: Container(
                        height: 120,
                        width: 125,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: whiteColor
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            children: [
                              const CircleAvatar(
                                radius: 35,
                                backgroundImage: AssetImage('assets/customer.png'),
                              ),
                              Text('Customer',style: blackFontStyle(fontSize: 12.0),),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Card(
                    child: GestureDetector(
                      onTap: (){
                        Get.to(()=>const UsersAuthenticationScreen());
                      },
                      child: Container(
                        height: 120,
                        width: 125,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: whiteColor
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            children: [
                              const CircleAvatar(
                                radius: 35,
                                backgroundImage: AssetImage('assets/provider.png'),
                              ),
                              Text('Services',style: blackFontStyle(fontSize: 12.0),),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 200,),
              GestureDetector(
                onTap: (){
                  Get.off(()=>const UserBottomNavigationBarScreen());
                },
                child: Text('Continue as a Guest',style: blackFontStyle(
                    fontSize: 14.0
                ),
                  textAlign: TextAlign.center,),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
