import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:metime/Constants/constant.dart';
import 'package:metime/View/AdminScreens/bottom_navigation_bar.dart';
import 'package:metime/View/UserScreen/bottom_navigation_bar.dart';
import 'package:metime/Widgets/custom_dialog.dart';
import 'package:metime/Widgets/custom_snackbar.dart';
import 'package:metime/Widgets/custome_button.dart';
import 'package:metime/Widgets/custome_textfield.dart';
import 'package:metime/models/appuser.dart';
import 'package:metime/services/firebase_auth/firebase_auth.dart';

class AuthenticationScreen extends StatefulWidget {
  const AuthenticationScreen({Key? key}) : super(key: key);

  @override
  State<AuthenticationScreen> createState() => _AuthenticationScreenState();
}

class _AuthenticationScreenState extends State<AuthenticationScreen>
    with TickerProviderStateMixin {
  var _val = 0;

  final _firstNameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordNameController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  @override
  void dispose() {
    _firstNameController.dispose();
    _lastNameController.dispose();
    _emailController.dispose();
    _passwordNameController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

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
                          CustomeTextField(
                            controller: _emailController,
                            hintText: 'Email',
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          CustomeTextField(
                            controller: _passwordNameController,
                            hintText: 'Password',
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          CustomButton(
                            text: 'Sign in',
                            onPressed: () async {
                              showLoading(context);
                              final String response = await FirebaseAuthServices
                                  .signInWithEmailAndPassword(
                                      email: _emailController.text,
                                      password: _passwordNameController.text);
                              if (response == 'admin') {
                                Navigator.pop(context);
                                Get.to(() => const BottomNavigationBarScreen());
                              } else if (response == 'user') {
                                print('success');
                                Navigator.pop(context);
                                Get.to(
                                  () => const UserBottomNavigationBarScreen(),
                                );
                              } else {
                                Navigator.pop(context);
                                showCustomSnackBar(response);
                              }
                            },
                          ),
                        ],
                      ),
                    )
                  : Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        children: [
                          CustomeTextField(
                            controller: _firstNameController,
                            hintText: 'First name',
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          CustomeTextField(
                            hintText: 'Last name',
                            controller: _lastNameController,
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          CustomeTextField(
                            keyboardType: TextInputType.emailAddress,
                            controller: _emailController,
                            hintText: 'Email',
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          CustomeTextField(
                            controller: _passwordNameController,
                            hintText: 'Password',
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          CustomeTextField(
                            controller: _confirmPasswordController,
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
                              GestureDetector(
                                onTap: () async {
                                  if (_passwordNameController.text ==
                                      _confirmPasswordController.text) {
                                    AppUser appUser = AppUser(
                                        firstName: _firstNameController.text,
                                        lastName: _lastNameController.text,
                                        email: _emailController.text);
                                    showLoading(context);
                                    String response = await FirebaseAuthServices
                                        .signUpWithEmailAndPassword(
                                      appUser: appUser,
                                      password: _passwordNameController.text,
                                    );
                                    if (response == 'success') {
                                      Navigator.pop(context);
                                      Get.to(
                                        () =>
                                            const UserBottomNavigationBarScreen(),
                                      );
                                    } else {
                                      Navigator.pop(context);
                                      showCustomSnackBar(response);
                                    }
                                  } else {
                                    Get.snackbar(
                                        'Error', 'Password does not match');
                                  }
                                },
                                child: Container(
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
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
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
