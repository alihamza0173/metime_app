import 'package:flutter/material.dart';

class Schedul extends StatefulWidget {
  const Schedul({Key? key}) : super(key: key);

  @override
  State<Schedul> createState() => _SchedulState();
}

class _SchedulState extends State<Schedul> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ListTile(
              trailing: Icon(
                Icons.sms,
                color: Color(0xffFF8801),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              "Future Appointments",
              style: TextStyle(color: Color(0xff000000), fontSize: 14),
            ),
            const SizedBox(height: 25,),
            Container(
              height: 140,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: const Color(0xffF4F4F4),
                  borderRadius: BorderRadius.circular(15)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Underarm+fullArm",
                          style: TextStyle(color: Color(0xff606060), fontSize: 16),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          "RS 1250",
                          style: TextStyle(color: Color(0xffFF8801), fontSize: 16),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 35,
                          width: 110,
                          decoration: BoxDecoration(
                              color: const Color(0xffFFFFFF),
                              borderRadius: BorderRadius.circular(15)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                "Approve",
                                style: TextStyle(
                                    color: Color(0xff606060),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600),
                              ),
                              SizedBox(width: 5,),
                              Icon(
                                Icons.done,
                                color: Color(0xffFF8801),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: const [
                            Icon(
                              Icons.timer,
                              color: Color(0xff606060),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text("9 Thu 2023",
                                style: TextStyle(
                                  color: Color(0xff606060),
                                  fontSize: 14,
                                )),
                          ],
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Container(
                          height: 35,
                          width: 110,
                          decoration: BoxDecoration(
                              color: const Color(0xffFFFFFF),
                              borderRadius: BorderRadius.circular(15)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                "Cancle",
                                style: TextStyle(
                                    color: Color(0xff606060),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600),
                              ),
                              SizedBox(width: 5,),
                              Icon(
                                Icons.delete,
                                color: Color(0xffFF8801),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
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
