// stateful widget for conversation view
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:metime/Constants/constant.dart';

class Conversation extends StatefulWidget {
  const Conversation({super.key});

  @override
  _ConversationState createState() => _ConversationState();
}

class _ConversationState extends State<Conversation> {
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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const CircleAvatar(
                  radius: 40,
                  backgroundImage: NetworkImage(
                      "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__340.jpg"),
                ),
                const SizedBox(width: 10),
                const Text("Henry David Thoreau",style: TextStyle(fontSize: 16),),
                const SizedBox(width: 10),
                IconButton(
                  icon: const Icon(Icons.call,size: 34),
                  onPressed: () {},
                )
              ],
            ),

            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                itemCount: conversationData.length,
                itemBuilder: (context, index) {
                  return GestureDetector(

                    child: Row(
                      mainAxisAlignment: conversationData[index].isMe!
                          ? MainAxisAlignment.end
                          : MainAxisAlignment.start,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.75,
                          decoration: BoxDecoration(
                            color: conversationData[index].isMe!
                                ? primaryColor
                                : greyColor,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          margin: const EdgeInsets.symmetric(vertical: 6),
                          padding: const EdgeInsets.all(10),
                          child: Text(conversationData[index].message!,style: whiteFontStyle(
                            fontSize: 14.0,
                          ),),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),

          ],
        ),
      ),
      bottomNavigationBar: CupertinoTextField(
        placeholder: "Type a message",
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(10),
        ),
        suffix: IconButton(
          icon: const Icon(Icons.send),
          onPressed: () {},
        ),
      ),
    );
  }

  // fake conversation data for testing purposes only
  List<ConversationData> conversationData = [
    ConversationData(
      sender: "Henry David Thoreau",
      message: "hello there, how are you?",
      time: "12:00 PM",
      isMe: false,
    ),
    ConversationData(
      sender: "Henry David Thoreau",
      message: "hello there, how are you?",
      time: "12:00 PM",
      isMe: true,
    ),
    ConversationData(
      sender: "Henry David Thoreau",
      message: "hello there, how are you? hello there, how are you",
      time: "12:00 PM",
      isMe: false,
    ),
    ConversationData(
      sender: "Henry David Thoreau",
      message: "hello there, how are you hello there, how are you hello there, how are you?",
      time: "12:00 PM",
      isMe: true,
    ),
    ConversationData(
      sender: "Henry David Thoreau",
      message: "hello  ",
      time: "12:00 PM",
      isMe: false,
    ),
    ConversationData(
      sender: "Henry David Thoreau",
      message: "hello there, how are you?",
      time: "12:00 PM",
      isMe: true,
    ),
    ConversationData(
      sender: "Henry David Thoreau",
      message: "hello there, how are you?",
      time: "12:00 PM",
      isMe: false,
    ),
    ConversationData(
      sender: "Henry David Thoreau",
      message: "hello there, how are you?",
      time: "12:00 PM",
      isMe: true,
    ),
    ConversationData(
      sender: "Henry David Thoreau",
      message: "hello there, how are you?",
      time: "12:00 PM",
      isMe: false,
    ),
    ConversationData(
      sender: "Henry David Thoreau",
      message: "hello there, how are you?",
      time: "12:00 PM",
      isMe: true,
    ),
  ];
}

class ConversationData {
  final String? sender;
  final String? message;
  final String? time;
  final bool? isMe;

  ConversationData({
    this.sender,
    this.message,
    this.time,
    this.isMe,
  });

}