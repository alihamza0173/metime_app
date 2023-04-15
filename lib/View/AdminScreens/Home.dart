import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:metime/Constants/constant.dart';

import 'Availability.dart';



class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const ListTile(
                horizontalTitleGap: 0.0,
                minLeadingWidth: 0.0,
                leading: Icon(
                  Icons.location_pin,
                  color: Color(0xff33C2EE),
                ),
                title: Text("Location"),
                trailing: Icon(
                  Icons.sms,
                  color: Color(0xffFF8801),
                ),
              ),
              Container(
                height: 140,
                width: double.infinity,
                color: const Color(0xffD9D9D9),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      "THAND NAHI,",
                      style: TextStyle(color: Color(0xff3B83EE), fontSize: 16),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      " SALE LAG GAI ! ,",
                      style: TextStyle(color: Color(0xff3C83EE), fontSize: 24),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "up to 25% off \n 14 feb,",
                      style: TextStyle(color: Color(0xff000000), fontSize: 14),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 60,
              ),
              const Text(
                "Services",
                style: TextStyle(
                    color: Color(0xff000000),
                    fontSize: 18,
                    fontWeight: FontWeight.w600),
              ),
              const Text(
                "Your Services you can edit them",
                style: TextStyle(
                  color: Color(0xff000000),
                  fontSize: 14,
                ),
              ),
              const SizedBox(
                height: 60,
              ),
              Row(
                children: [
                  const SizedBox(width: 20,),
                  GestureDetector(
                    onTap: (){
                      Get.dialog(
                          AlertDialog(
                            backgroundColor: Colors.white,
                            title: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text(
                                      'Add New SubCategory',
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    InkWell(
                                        onTap: (){
                                          navigator?.pop();
                                        },
                                        child: const Icon(Icons.close)),
                                  ],
                                ),
                              ],
                            ),
                            content: Container(
                              height: Get.height * 0.5,
                              width: Get.width * 0.8,
                              color: whiteColor,
                              child: GridView.builder(
                                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 3,
                                    crossAxisSpacing: 10,
                                    mainAxisSpacing: 10,),
                                itemCount: 10,
                                itemBuilder: (context, index) {
                                  return Card(
                                    color: Colors.white,
                                    elevation: 10.0,
                                    shadowColor: Colors.grey.shade800,
                                    child: Container(
                                        height: 50,
                                        width: 50,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                          color: Colors.white,
                                          border: Border.all(color: primaryColor,),
                                        ),
                                        child:const Center(child: Text('services'))
                                    ),
                                  );
                                },
                              ),
                            ),
                            actions: [
                              MaterialButton(
                                color: primaryColor,
                                onPressed: (){
                                Get.back();
                                Get.to(()=>const AvailabilityScreen());
                              },
                              child: const Icon(Icons.arrow_forward_ios_outlined,color: Colors.white,),
                              ),
                            ],
                          ),
                      );

                    },
                    child: Card(
                      color: Colors.white,
                      elevation: 10.0,
                      shadowColor: Colors.grey.shade800,
                      child: Container(
                        height: 80,
                        width: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            border: Border.all(color: primaryColor,),
                          ),
                        child:const Center(child: Text('Theorapy'))
                      ),
                    ),
                  ),
                  Card(
                    color: Colors.white,
                    elevation: 10.0,
                    shadowColor: Colors.grey.shade800,
                    child: Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          border: Border.all(color: primaryColor,),
                        ),
                        child:const Center(child: Text('services'))
                    ),
                  ),
                  Card(
                    color: Colors.white,
                    elevation: 10.0,
                    shadowColor: Colors.grey.shade800,
                    child: Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          border: Border.all(color: primaryColor,),
                        ),
                        child:const Center(child: Text('Beauty'))
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: primaryColor,
        child: Icon(Icons.add,color: whiteColor,),
      ),
    );
  }
}
