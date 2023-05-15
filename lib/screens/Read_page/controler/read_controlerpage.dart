import 'package:expenceapp/utills/DBpage.dart';
import 'package:get/get.dart';

class Readcontroler extends GetxController
{
  RxList<Map> Traztionlist =<Map> [].obs;
  Future<void> raedtration()
  async {
    dbhelper db = dbhelper();
    Traztionlist.value = await db.readdata();
  }
}