import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserHomeScreen extends StatefulWidget {
  const UserHomeScreen({Key? key}) : super(key: key);

  @override
  State<UserHomeScreen> createState() => _UserHomeScreenState();
}

class _UserHomeScreenState extends State<UserHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Icon(Icons.navigate_before_outlined,size:35,),
            GestureDetector(
              onTap: (){
                showDialog(

                  context: context,
                  builder: (BuildContext context) {
                    return  AlertDialog(
                      title: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                'Select Location',
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600),
                              ),
                              InkWell(
                                  onTap: (){
                                    Get.back();
                                  },
                                  child: const Icon(Icons.close)),
                            ],
                          ),
                        ],
                      ),
                      actions: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Use Geo Location',
                              style: TextStyle(fontSize: 14, color: Color(0xffC2C2C2)),
                            ),
                            const SizedBox(height: 10,),
                            const Divider(
                              color: Colors.grey,
                              thickness: 1.0,
                            ),
                            const SizedBox(height: 10,),
                            Row(
                              children: [
                                Image.asset("assets/Location.png"),
                                const SizedBox(width: 5,),
                                const Text("Use Current Location"),
                              ],
                            ),
                            const SizedBox(height: 10,),
                            const Divider(
                              color: Colors.grey,
                              thickness: 1.0,
                            ),
                            const SizedBox(height: 10,),
                            const Text("Select City",style: TextStyle(fontSize: 14,color: Color(0xffC2C2C2)),),
                            const SizedBox(height: 10,),
                            const Divider(
                              color: Colors.grey,
                              thickness: 0.10,
                            ),
                            const SizedBox(height: 10,),
                            Row(
                              children: const [
                                Icon(Icons.location_pin,size: 14,),
                                SizedBox(width: 5,),
                                Text("Lahore",style: TextStyle(fontSize: 14, ),),
                              ],
                            ),
                            const SizedBox(height: 10,),
                            const Divider(
                              color: Colors.grey,
                              thickness: 1.0,
                            ),
                            const SizedBox(height: 10,),
                            Row(
                              children: const [
                                Icon(Icons.location_pin,size: 14,),
                                SizedBox(width: 5,),
                                Text("Islamabad",style: TextStyle(fontSize: 14, ),),
                              ],
                            ),
                            const SizedBox(height: 10,),
                            const Divider(
                              color: Colors.grey,
                              thickness: 1.0,
                            ),
                            const SizedBox(height: 10,),
                            Row(
                              children: const [
                                Icon(Icons.location_pin,size: 14,),
                                SizedBox(width: 5,),
                                Text("Multan",style: TextStyle(fontSize: 14, ),),
                              ],
                            ),
                            const SizedBox(height: 10,),
                            const Divider(
                              color: Colors.grey,
                              thickness: 1.0,
                            ),
                            const SizedBox(height: 10,),
                            Row(
                              children: const [
                                Icon(Icons.location_pin,size: 14,),
                                SizedBox(width: 5,),
                                Text("Faislabad",style: TextStyle(fontSize: 14, ),),
                              ],
                            ),
                            const SizedBox(height: 10,),
                            const Divider(
                              color: Colors.grey,
                              thickness: 1.0,
                            ),
                            const SizedBox(height: 10,),
                            Row(
                              children: const [
                                Icon(Icons.location_pin,size: 14,),
                                SizedBox(width: 5,),
                                Text("Rawalpindi",style: TextStyle(fontSize: 14, ),),
                                SizedBox(height: 10,),
                                Divider(
                                  color: Colors.grey,
                                  thickness: 1.0,
                                ),
                                SizedBox(height: 30,),
                              ],
                            ),
                          ],
                        ),
                      ],
                    );
                  },
                );
              },
              child: Row(
                children: const [
                  Icon(Icons.location_pin,color: Color(0xff33C2EE),),
                  Text("Location",  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xff3F3D56),
                  )),
                ],
              ),
            ),
          ],
        ),
      ),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
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
                const Text('Beauty Services',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),),
                // SizedBox(height: 15,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: (){
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return  AlertDialog(
                                title: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Text(
                                          'Select Service',
                                          style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w600),
                                        ),
                                        InkWell(
                                            onTap: (){
                                              Get.back();
                                            },
                                            child: const Icon(Icons.close)),
                                      ],
                                    ),
                                  ],
                                ),
                                actions: [
                                  Column(
                                    children: const [
                                      Padding(
                                        padding: EdgeInsets.symmetric(horizontal: 4.0,vertical: 4),
                                        child: Card(
                                          child: ListTile(
                                            title: Text("Hair Cut"),
                                            leading: Icon(Icons.check),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.symmetric(horizontal: 4.0,vertical: 4),
                                        child: Card(
                                          child: ListTile(
                                            title: Text("Massage"),
                                            leading: Icon(Icons.check),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.symmetric(horizontal: 4.0,vertical: 4),
                                        child: Card(
                                          child: ListTile(
                                            title: Text("Ficial"),
                                            leading: Icon(Icons.check),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              );
                            },
                          );
                        },
                        child: Column(
                          children: [
                            SizedBox(
                              height: 60,
                              width: 70,
                              child: Image.asset("assets/bodymassage.png"),
                            ),
                            const SizedBox(height: 10,),
                            const Text("Body Massage",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Color(0xff3F3D56),
                                )),
                          ],
                        ),
                      ),
                      const SizedBox(width: 10,),
                      Column(
                        children: [
                          SizedBox(
                            height: 50,
                            width: 60,
                            child: Image.asset(
                                    "assets/Facial.png"),),

                          const SizedBox(height: 15,),
                          const Text("Facial", style: TextStyle(
                                fontSize: 14,
                                color: Color(0xff3F3D56),
                              )),
                        ],
                      ),
                      const SizedBox(width: 10,),
                      Column(
                        children: [
                          SizedBox(
                            height: 70,
                            width: 70,
                            child: Image.asset(
                                    "assets/Hair.png")
                          ),
                          const Text("Hair",
                              style: TextStyle(
                                fontSize: 14,
                                color: Color(0xff3F3D56),
                              )),
                        ],
                      ),
                      const SizedBox(width: 10,),
                      Column(
                        children: [
                          SizedBox(
                            height: 70,
                            width: 70,
                            child: Image.asset(
                                    "assets/makeup.png")
                          ),
                          const Text("Make up",
                              style: TextStyle(
                                fontSize: 14,
                                color: Color(0xff3F3D56),
                              )),
                        ],
                      ),
                    ],
                  ),
                ),
                // SizedBox(height: 15,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          SizedBox(
                            height: 60,
                            width: 70,
                            child: Image.asset("assets/Scrub.png"),
                          ),
                          const SizedBox(height: 10,),
                          const Text("Scrub",
                              style: TextStyle(
                                fontSize: 14,
                                color: Color(0xff3F3D56),
                              )),
                        ],
                      ),
                      const SizedBox(width: 10,),
                      Column(
                        children: [
                          SizedBox(
                            height: 50,
                            width: 60,
                            child: Image.asset(
                                    "assets/Nail.png"),
                          ),
                          const SizedBox(height: 15,),
                          const Text("Nails", style: TextStyle(
                            fontSize: 14,
                            color: Color(0xff3F3D56),
                          )),
                        ],
                      ),
                      const SizedBox(width: 10,),
                      Column(
                        children: [
                          SizedBox(
                            height: 70,
                            width: 70,
                            child: Image.asset(
                                    "assets/Waxing.png")
                          ),
                          const Text("Waxing",
                              style: TextStyle(
                                fontSize: 14,
                                color: Color(0xff3F3D56),
                              )),
                        ],
                      ),
                      const SizedBox(width: 10,),
                      Column(
                        children: [
                          SizedBox(
                            height: 70,
                            width: 70,
                            child: Image.asset(
                                    "assets/Threading.png")
                          ),
                          const Text("Threading",
                              style: TextStyle(
                                fontSize: 14,
                                color: Color(0xff3F3D56),
                              )),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
  }
}
