import 'package:flutter/material.dart';
import 'package:metime/Constants/constant.dart';

class CategoriesServices extends StatefulWidget {
  const CategoriesServices({Key? key}) : super(key: key);

  @override
  State<CategoriesServices> createState() => _CategoriesServicesState();
}

class _CategoriesServicesState extends State<CategoriesServices> with TickerProviderStateMixin {
  List<String> services = ['Body Polish', 'Facial', 'Hair', 'Make up', 'Skin Polish'];
  List<Tab> tabs = [];
  var _val = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    for (var element in services) {
      tabs.add(Tab(
        text: element,
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        backgroundColor: whiteColor,
        actions: const [
          CircleAvatar(
              backgroundColor: Colors.black,
              child: Icon(Icons.shopping_cart,color: Colors.white,size: 30,)),
        ],
      ),
      body: DefaultTabController(
        initialIndex: 0,
        length: services.length,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: TabBar(
                indicatorColor: primaryColor,
                controller: TabController(length: services.length, vsync: this, initialIndex: _val),
                labelColor: primaryColor,
                dividerColor: Colors.transparent,
                labelStyle: customFontStyle(fontSize: 16.0),
                unselectedLabelColor: greyColor,
                unselectedLabelStyle: customFontStyle(fontSize: 16.0),
                isScrollable: true,
                onTap: (v) {
                  setState(() {
                    _val = v;
                  });
                },
                tabs: tabs,
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Expanded(child: ListView.builder(itemBuilder: (ctx, i) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Full arm polish',
                      style: blackFontStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('RS 240',style: customFontStyle(
                          color: primaryColor,

                        ),),
                        Text('add-ons',style: customFontStyle(
                          color: Colors.purple,
                        ),),
                        Icon(Icons.add_box,color: greyColor,),
                      ],
                    )
                  ],
                ),
              );
            })),
          ],
        ),
      ),
    );
  }
}
