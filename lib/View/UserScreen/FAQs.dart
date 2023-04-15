import 'package:flutter/material.dart';
import 'package:metime/Constants/constant.dart';

class FAQs extends StatefulWidget {
  const FAQs({Key? key}) : super(key: key);

  @override
  State<FAQs> createState() => _FAQsState();
}

class _FAQsState extends State<FAQs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FAQs'),
      ),
      body: ListView.builder(itemBuilder: (ctx,i){
        return Card( child: ListTile(title: Text('Question $i',style: blackFontStyle(fontSize: 14.0,fontWeight: FontWeight.bold),),));}),
    );
  }
}
