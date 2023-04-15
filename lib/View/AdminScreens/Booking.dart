import 'package:flutter/material.dart';

class AdminHistory extends StatefulWidget {
  const AdminHistory({Key? key}) : super(key: key);

  @override
  State<AdminHistory> createState() => _AdminHistoryState();
}

class _AdminHistoryState extends State<AdminHistory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Future Appointments",
                    style: TextStyle(color: Color(0xff000000), fontSize: 16),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 300,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: const Color(0xffF4F4F4),
                        borderRadius: BorderRadius.circular(15)),
                    child: Column(
                      children: [
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "Underarm+fullArm",
                                      style: TextStyle(
                                          color: Color(0xff606060), fontSize: 16),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    const Text(
                                      "RS 1250",
                                      style: TextStyle(
                                          color: Color(0xffFF8801), fontSize: 16),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        const Text(
                                          "Work Hours",
                                          style: TextStyle(
                                            color: Color(0xff606060),
                                            fontSize: 16,
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        Container(
                                          alignment: Alignment.center,
                                          height: 20,
                                          width: 20,
                                          decoration: BoxDecoration(
                                            color: const Color(0xffD9D9D9),
                                            borderRadius: BorderRadius.circular(5),
                                          ),
                                          child: const Text(
                                            "+",
                                            style: TextStyle(fontSize: 15),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 15,
                                        ),
                                        const Text(
                                          "4",
                                          style: TextStyle(
                                              color: Color(0xffFF8801), fontSize: 16),
                                        ),
                                        const SizedBox(
                                          width: 15,
                                        ),
                                        Container(
                                          alignment: Alignment.center,
                                          height: 20,
                                          width: 20,
                                          decoration: BoxDecoration(
                                            color: const Color(0xffD9D9D9),
                                            borderRadius: BorderRadius.circular(5),
                                          ),
                                          child: const Text(
                                            "-",
                                            style: TextStyle(fontSize: 15),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ]),
                        const Divider(
                          color: Colors.grey,
                          thickness: 0.5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                const Text(
                                  "Additional work",
                                  style:
                                  TextStyle(color: Color(0xff606060), fontSize: 20),
                                ),
                                Radio(
                                    activeColor: const Color(0xffFF8801),
                                    value: "radio value",
                                    groupValue: "group value",
                                    onChanged: (value){
                                      print(value); //selected value
                                    }

                                ),
                              ],
                            ),
                            Row(
                              children: [
                                const Text(
                                  "Misbehave",
                                  style:
                                  TextStyle(color: Color(0xff606060), fontSize: 20),
                                ),
                                Radio(
                                    activeColor: const Color(0xffFF8801),
                                    value: "radio value",
                                    groupValue: "group value",
                                    onChanged: (value){
                                      print(value); //selected value
                                    }

                                ),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                const Text(
                                  "Service at home",
                                  style:
                                  TextStyle(color: Color(0xff606060), fontSize: 20),
                                ),
                                Radio(
                                    activeColor: const Color(0xffFF8801),
                                    value: "radio value",
                                    groupValue: "group value",
                                    onChanged: (value){
                                      print(value); //selected value
                                    }

                                ),
                              ],
                            ),
                            Row(
                              children: [
                                const Text(
                                  "Payment",
                                  style:
                                  TextStyle(color: Color(0xff606060), fontSize: 20),
                                ),
                                Radio(
                                    activeColor: const Color(0xffFF8801),
                                    value: "radio value",
                                    groupValue: "group value",
                                    onChanged: (value){
                                      print(value); //selected value
                                    }

                                ),
                              ],
                            ),
                          ],
                        ),
                        const Divider(
                          color: Colors.grey,
                          thickness: 0.5,
                        ),
                        const Spacer(),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Container(
                              alignment: Alignment.center,
                              height: 35,
                              width: 100,
                              decoration: BoxDecoration(
                                  color: const Color(0xffFF8801),
                                  borderRadius: BorderRadius.circular(15)
                              ),
                              child: const Text("Done",style: TextStyle(fontSize: 16,color: Colors.white),),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
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
                                style: TextStyle(
                                    color: Color(0xff606060), fontSize: 16),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Text(
                                "RS 1250",
                                style: TextStyle(
                                    color: Color(0xffFF8801), fontSize: 16),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Container(
                                height: 40,
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
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Icon(
                                      Icons.delete,
                                      color: Color(0xffD70000),
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
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
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
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
