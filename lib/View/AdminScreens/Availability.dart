import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:metime/Widgets/custome_textfield.dart';

import 'SpecialPackage.dart';

class AvailabilityScreen extends StatefulWidget {
  const AvailabilityScreen({Key? key}) : super(key: key);

  @override
  State<AvailabilityScreen> createState() => _AvailabilityScreenState();
}

class _AvailabilityScreenState extends State<AvailabilityScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const Text(
              "Availability",
              style: TextStyle(fontSize: 15),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    const Text("From"),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      alignment: Alignment.center,
                      height: 50,
                      width: 130,
                      decoration: BoxDecoration(
                        color: const Color(0xffF4F4F4),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Text("00:00 pm | day"),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 10,
                ),
                Row(
                  children: [
                    const Text("Till"),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      alignment: Alignment.center,
                      height: 50,
                      width: 130,
                      decoration: BoxDecoration(
                        color: const Color(0xffF4F4F4),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Text("00:00 pm | day"),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              "Location",
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(
              height: 10,
            ),
            const SizedBox(
              height: 50,
              width: double.infinity,
              child: CustomeTextField(
                hintText: 'Location',
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Contact Details",
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(
              height: 10,
            ),
            const SizedBox(
              height: 50,
              width: double.infinity,
              child: CustomeTextField(
                hintText: '+9234567890',
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Your Place",
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(
              height: 10,
            ),
            const SizedBox(
              height: 50,
              width: double.infinity,
              child: CustomeTextField(
                hintText: '------------',
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Special Instructions",
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(
              height: 10,
            ),
            const SizedBox(
              height: 50,
              width: double.infinity,
              child: CustomeTextField(
                hintText: 'Write your text here',
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            GestureDetector(
              onTap: () {
                Get.to(() => const SpecialPackagesScreen());
              },
              child: Container(
                alignment: Alignment.center,
                height: 40,
                width: 250,
                decoration: BoxDecoration(
                  color: const Color(0xffFF8801),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Text(
                  "Next",
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
