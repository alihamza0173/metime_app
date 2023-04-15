import 'package:flutter/material.dart';

class Cleaning extends StatefulWidget {
  const Cleaning({Key? key}) : super(key: key);

  @override
  State<Cleaning> createState() => _CleaningState();
}

class _CleaningState extends State<Cleaning> {
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
            const Icon(
              Icons.navigate_before_outlined,
              size: 35,
            ),
            Row(
              children: const [
                Icon(
                  Icons.location_pin,
                  color: Color(0xff33C2EE),
                ),
                Text("Location",
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0xff3F3D56),
                    )),
              ],
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Cleaning Services',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [

                  Column(
                    children: [
                      SizedBox(
                        height: 50,
                        width: 60,
                        child: Image.asset("assets/Moping.png"),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const Text("Mopping",
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xff3F3D56),
                          )),
                    ],
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Column(
                    children: [
                      SizedBox(
                          height: 70,
                          width: 70,
                          child: Image.asset("assets/laundry.png")),
                      const Text("laundry",
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xff3F3D56),
                          )),
                    ],
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Column(
                    children: [
                      SizedBox(
                          height: 70,
                          width: 70,
                          child: Image.asset("assets/cleaning.png")),
                      const Text("Cleaning",
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
