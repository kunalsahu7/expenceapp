import 'package:expenceapp/screens/Read_page/controler/read_controlerpage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class reeadscreen extends StatefulWidget {
  const reeadscreen({Key? key}) : super(key: key);

  @override
  State<reeadscreen> createState() => _reeadscreenState();
}
class _reeadscreenState extends State<reeadscreen> {
  Readcontroler h1 = Get.put(Readcontroler());
  @override
  void initState() {
    super.initState();
    h1.raedtration();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Obx(
          () => ListView.builder(itemBuilder: (context, index) {
            return ListTile(
              title:Text("${h1.Traztionlist[index]['category']}"),
              subtitle: Text("${h1.Traztionlist[index]['amount']}"),
            );
          },itemCount: h1.Traztionlist.length,),
        ),
      ),
    );
  }
}
