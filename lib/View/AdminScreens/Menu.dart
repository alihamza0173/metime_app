import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rating_dialog/rating_dialog.dart';

import '../UserScreen/FAQs.dart';
import 'ProfileInformation.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {

  final _dialog = RatingDialog(
    initialRating: 1.0,
    // your app's name?
    title: const Text(
      'Rate Event',
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.bold,
      ),
    ),
    // encourage your user to leave a high rating?
    message: const Text(
      'Please give the rating to event, And give your feedback to improve the event in future',
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: 15),
    ),
    // your app's logo?
    image: Image.asset('',height: 100,),

    submitButtonText: 'Submit',
    commentHint: 'Set your custom comment hint',
    onCancelled: () => print('cancelled'),
    enableComment: true,
    onSubmitted: (response) async{
      print('rating: ${response.rating}, comment: ${response.comment}');

    },
    starSize: 24,
  );

  final _dialog2 = RatingDialog(
    initialRating: 1.0,
    // your app's name?
    title: const Text(
      'Rating Dialog',
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.bold,
      ),
    ),
    // encourage your user to leave a high rating?
    message: const Text(
      'Tap a star to set your rating. Add more description here if you want.',
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: 15),
    ),
    // your app's logo?
    image: const FlutterLogo(size: 100),
    submitButtonText: 'Submit',
    commentHint: 'Set your custom comment hint',
    onCancelled: () => print('cancelled'),
    onSubmitted: (response) {
      print('rating: ${response.rating}, comment: ${response.comment}');
    },
  );


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              children: [
                Stack(
                  children: [
                    const CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://irp-cdn.multiscreensite.com/b385d0f1/dms3rep/multi/man-team-smiling-portrait-grey-background_jeans_shirt.jpg"),
                      radius: 60,
                    ),
                    Positioned(
                        right: 0.5,
                        bottom: 0.5,
                        child: InkWell(
                            onTap: () {
                              Get.to(()=>const ProfileInformationScreen());
                            },
                            child: const Icon(
                              Icons.add_circle,
                              size: 30,color: Colors.amber,
                            ))),
                  ],
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  "User",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            const Divider(
              color: Colors.grey,
              thickness: 0.5,
            ),
            const SizedBox(
              height: 30,
            ),
            const ListTile(
              title: Text(
                "Contact Us",
                style: TextStyle(fontSize: 18),
              ),
              leading: Icon(
                Icons.desk_outlined,
                color: Color(0xff3F3F3F),
              ),
            ),
            const ListTile(
              title: Text(
                "Setting",
                style: TextStyle(fontSize: 18),
              ),
              leading: Icon(
                Icons.settings,
                color: Color(0xff3F3F3F),
              ),
            ),
            ListTile(
              onTap: () {
                Get.to(()=>const FAQs());
              },
              title: const Text(
                "FAQ's",
                style: TextStyle(fontSize: 18),
              ),
              leading: const Icon(
                Icons.add_comment_outlined,
                color: Color(0xff3F3F3F),
              ),
            ),
            ListTile(
              onTap: () {
                // Get.to(()=>FAQs());
              },
              title: const Text(
                "SOS",
                style: TextStyle(fontSize: 18),
              ),
              leading: const Icon(
                Icons.sos,
                color: Color(0xff3F3F3F),
              ),
            ),
            ListTile(
              onTap: () {
                showDialog(
                  context: context,
                  barrierDismissible: true, // set to false if you want to force a rating
                  builder: (context) => _dialog2,
                );
              },
              title: const Text(
                "Rating & Feedback",
                style: TextStyle(fontSize: 18),
              ),
              leading: const Icon(
                Icons.star_rate,
                color: Color(0xff3F3F3F),
              ),
            ),
            const ListTile(
              title: Text(
                "Logout",
                style: TextStyle(fontSize: 18),
              ),
              leading: Icon(
                Icons.logout,
                color: Color(0xff3F3F3F),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
