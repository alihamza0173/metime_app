import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:metime/Constants/constant.dart';
import 'package:metime/View/AdminScreens/bottom_navigation_bar.dart';
import 'package:metime/Widgets/custome_button.dart';
import 'package:metime/Widgets/custome_textfield.dart';

class UsersAuthenticationScreen extends StatefulWidget {
  const UsersAuthenticationScreen({Key? key}) : super(key: key);

  @override
  State<UsersAuthenticationScreen> createState() =>
      _UsersAuthenticationScreenState();
}

class _UsersAuthenticationScreenState extends State<UsersAuthenticationScreen>
    with TickerProviderStateMixin {
  var _val = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: _val,
      length: 2,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: whiteColor,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 70.0),
                child: TabBar(
                  indicatorColor: primaryColor,
                  controller:
                      TabController(length: 2, vsync: this, initialIndex: _val),
                  labelColor: primaryColor,
                  dividerColor: Colors.transparent,
                  labelStyle: customFontStyle(fontSize: 20.0),
                  unselectedLabelColor: greyColor,
                  unselectedLabelStyle: customFontStyle(fontSize: 20.0),
                  onTap: (v) {
                    setState(() {
                      _val = v;
                    });
                  },
                  tabs: const [
                    Tab(
                      text: 'Sign in',
                    ),
                    Tab(
                      text: 'Sign up',
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              _val == 0
                  ? Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        children: [
                          const CustomeTextField(
                            hintText: 'Phone number',
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          const CustomeTextField(
                            hintText: 'Email',
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          const CustomeTextField(
                            hintText: 'Password',
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          CustomButton(
                            text: 'Sign in',
                            onPressed: () {
                              Get.to(() => const BottomNavigationBarScreen());
                            },
                          ),
                        ],
                      ),
                    )
                  : Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        children: [
                          const CustomeTextField(
                            hintText: 'First name',
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          const CustomeTextField(
                            hintText: 'Last name',
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          const CustomeTextField(
                            hintText: 'Phone number',
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          const CustomeTextField(
                            hintText: 'Password',
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          const CustomeTextField(
                            hintText: 'Confirm Password',
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: 230,
                                child: CheckboxListTile(
                                  value: true,
                                  onChanged: (v) {},
                                  checkColor: whiteColor,
                                  activeColor: primaryColor,
                                  title: Text(
                                    'Terms & Conditions',
                                    style: blackFontStyle(
                                      fontSize: 14.0,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  color: primaryColor,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Center(
                                  child: Icon(
                                    Icons.arrow_forward_ios_outlined,
                                    color: whiteColor,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 30,
                            child: RichText(
                              text: TextSpan(
                                  text: 'Earn by becoming a care provider. ',
                                  style: blackFontStyle(fontSize: 14.0),
                                  children: const [
                                    TextSpan(text: 'Click here'),
                                  ]),
                            ),
                          ),
                        ],
                      ),
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
