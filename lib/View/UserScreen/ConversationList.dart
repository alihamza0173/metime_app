// stateful widget for conversation list view
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:metime/Constants/constant.dart';

import 'ChatScreen.dart';

class ConversationList extends StatelessWidget {
  const ConversationList({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: whiteColor,
        iconTheme: IconThemeData(
            color: primaryColor
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Messages",style: TextStyle(fontSize: 32), ),
              ListView.builder(
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                itemCount: 10,
                itemBuilder: (context, index) {
                  return ListTile(
                    onTap: (){
                      Get.to(()=>const Conversation());
                    },
                    leading: const CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__340.jpg"),
                    ),
                    title: const Text("Henry David Thoreau"),
                    subtitle: const Text("hello there, how are you?"),
                    trailing: const Text("12:00 PM"),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}