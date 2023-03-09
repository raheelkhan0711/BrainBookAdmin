// ignore_for_file: file_names
import 'package:brain_book_admin/Views/Screens/Countries/Countries_Screen_Controller.dart';
import 'package:brain_book_admin/Views/Screens/Countries/Countries_Widgets/Countries_Screen_body.dart';
import 'package:brain_book_admin/Views/Screens/Dashboard/DashBoard-Widgets/dashboard_appBar.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class CountriesScreen extends GetView<CountryScreenController> {
  const CountriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    controller.contryScreenPath.add(CountryScreenBody());
    return SafeArea(
      child: Scaffold(

        appBar: AppBar(
          leading: InkWell(
              onTap: (){
                if(controller.contryScreenPath.length==1){
                  //
                }else{
                  controller.contryScreenPath.removeLast();
                  controller.update();
                }
              },
              child: controller.contryScreenPath.length<2?SizedBox():Icon(Icons.arrow_back,color: Colors.black,size: 20,)),
          elevation: 0,
          backgroundColor: Colors.transparent,
          actions: const [DashboardHomeBodyHeader()],
        ),
        body: GetBuilder<CountryScreenController>(
          init: CountryScreenController(),
          builder: (_) {
            return controller.contryScreenPath.last;
            // return CountryScreenBody();
          },
        ),
      ),
    );
  }
}
