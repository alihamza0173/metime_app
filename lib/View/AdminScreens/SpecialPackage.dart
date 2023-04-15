import 'package:flutter/material.dart';
import 'package:metime/Widgets/custome_textfield.dart';

class SpecialPackagesScreen extends StatefulWidget {
  const SpecialPackagesScreen({Key? key}) : super(key: key);

  @override
  State<SpecialPackagesScreen> createState() => _SpecialPackagesScreenState();
}

class _SpecialPackagesScreenState extends State<SpecialPackagesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Special package",
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(
              height: 15,
            ),
            const SizedBox(
              height: 50,
              width: double.infinity,
              child: CustomeTextField(
                hintText: 'Package',
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              "Pricing",
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(
              height: 15,
            ),
            const SizedBox(
              height: 50,
              width: double.infinity,
              child: CustomeTextField(
                hintText: '1000 PKR',
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              "Additional Add-On",
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  alignment: Alignment.center,
                  height: 50,
                  width: 160,
                  decoration: BoxDecoration(
                    color: const Color(0xffF4F4F4),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const SizedBox(
                    height: 50,
                    width: double.infinity,
                    child: CustomeTextField(
                      hintText: 'Name',
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  height: 50,
                  width: 160,
                  decoration: BoxDecoration(
                    color: const Color(0xffF4F4F4),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const SizedBox(
                    height: 50,
                    width: double.infinity,
                    child: CustomeTextField(
                      hintText: 'Pricing',
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              "Payment Method",
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              alignment: Alignment.center,
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color(0xffF4F4F4),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text(
                "1000-PKR",
                style: TextStyle(fontSize: 14, color: Color(0xff606060)),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Notify 1-hour before arrival",
                  style: TextStyle(color: Color(0xff606060), fontSize: 16),
                ),
                const SizedBox(
                  width: 10,
                ),
                Radio(
                    activeColor: const Color(0xffFF8801),
                    value: "radio value",
                    groupValue: "group value",
                    onChanged: (value) {
                      print(value); //selected value
                    }),
                Radio(
                    activeColor: const Color(0xffFF8801),
                    value: "radio value",
                    groupValue: "group value",
                    onChanged: (value) {
                      print(value); //selected value
                    }),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Service at home",
                  style: TextStyle(color: Color(0xff606060), fontSize: 16),
                ),
                const SizedBox(
                  width: 10,
                ),
                Radio(
                    activeColor: const Color(0xffFF8801),
                    value: "radio value",
                    groupValue: "group value",
                    onChanged: (value) {
                      print(value); //selected value
                    }),
                Radio(
                    activeColor: const Color(0xffFF8801),
                    value: "radio value",
                    groupValue: "group value",
                    onChanged: (value) {
                      print(value); //selected value
                    }),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              alignment: Alignment.center,
              height: 40,
              width: 250,
              decoration: BoxDecoration(
                color: const Color(0xffFF8801),
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Text(
                "Publish",
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
