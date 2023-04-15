import 'package:flutter/material.dart';

class ProfileInformationScreen extends StatefulWidget {
  const ProfileInformationScreen({Key? key}) : super(key: key);

  @override
  State<ProfileInformationScreen> createState() => _ProfileInformationScreenState();
}

class _ProfileInformationScreenState extends State<ProfileInformationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:  SingleChildScrollView( 
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CircleAvatar(
                  backgroundImage: NetworkImage("https://irp-cdn.multiscreensite.com/b385d0f1/dms3rep/multi/man-team-smiling-portrait-grey-background_jeans_shirt.jpg"),
                  radius: 60,
                ),
                const SizedBox(height: 10,),
                const Text("User",style: TextStyle(fontSize: 25),),
                const SizedBox(height: 25,),
                const Text("Name",style: TextStyle(fontSize: 16),),
                const SizedBox(height: 10,),
                Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: const Color(0xffF4F4F4),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                const SizedBox(height: 10,),
                const Text("Password",style: TextStyle(fontSize: 16),),
                const SizedBox(height: 10,),
                Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: const Color(0xffF4F4F4),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                const SizedBox(height: 10,),
                const Text("Email",style: TextStyle(fontSize: 16),),
                const SizedBox(height: 10,),
                Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: const Color(0xffF4F4F4),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                const SizedBox(height: 10,),
                const SizedBox(height: 10,),
                const Text("Address",style: TextStyle(fontSize: 16),),
                const SizedBox(height: 10,),
                Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: const Color(0xffF4F4F4),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
