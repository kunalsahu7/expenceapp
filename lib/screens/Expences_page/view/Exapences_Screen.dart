import 'package:expenceapp/screens/Expences_page/controler/controlerpage.dart';
import 'package:expenceapp/utills/DBpage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Expences_homescreen extends StatefulWidget {
  const Expences_homescreen({Key? key}) : super(key: key);

  @override
  State<Expences_homescreen> createState() => _Expences_homescreenState();
}

class _Expences_homescreenState extends State<Expences_homescreen> {
  Homecontroler h1 = Get.put(Homecontroler(),);

   @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              TextField(
                controller:h1.txtcategory,
                decoration: (InputDecoration(
                  label: Text("category"),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                )),
              ),
              SizedBox(height: 8,),
              TextField(
                controller:h1.txtamount,
                decoration: (InputDecoration(
                    label: Text("amount"),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    )
                )),
              ),
              SizedBox(height: 8,),
              TextField(
                controller:h1.txtdate,
                decoration: (InputDecoration(
                    label: Text("date"),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    )
                )),
              ),
              SizedBox(height: 8,),
              TextField(
                controller:h1.txtpaytypes,
                decoration: (InputDecoration(
                    label: Text("paytypes"),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    )
                )),
              ),
              // TextField(
              //   controller:h1.txtststs,
              //   decoration: (InputDecoration(
              //       label: Text("status"),
              //       border: OutlineInputBorder(
              //         borderRadius: BorderRadius.circular(10),
              //       )
              //   )),
              // ),
              SizedBox(height: 10),
              Center(
                child: ElevatedButton(
                    onPressed: () {
                      dbhelper db = dbhelper();
                      db.insertdb(
                          category: "${h1.txtcategory.text}",
                          amount: "${h1.txtamount.text}",
                          date: "${h1.txtdate.text}",
                          paytypes: "${h1.txtpaytypes.text}",
                          stats: "${h1.txtststs.text}");
                    },
                    child: Text("enter")),
              ),
          Center(
            child: ElevatedButton(
                onPressed: () {
                  Get.toNamed('/read');
                },
                child: Text("Read")),),
            ],
          ),
        ),
      ),
    );
  }
}
