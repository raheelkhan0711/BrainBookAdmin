// ignore_for_file: file_names

import 'package:brain_book_admin/Core/Global_Controller/Global_controller.dart';
import 'package:brain_book_admin/Core/App-Utils/ElivatedButton/elevated_button.dart';
import 'package:brain_book_admin/Views/Screens/Countries/Countries_Screen_Controller.dart';
import 'package:brain_book_admin/Views/Screens/Countries_States/Second_Level_Catogry_Screen/Sub_Catagory_Screen.dart';
import 'package:brain_book_admin/Views/Screens/Countries_States/Second_Level_Catogry_Screen/Sub_Catagory_Screen_Controller.dart';
import 'package:brain_book_admin/Views/Screens/Countries_States/TrespassersViewScreen/TrespassersScreen_Controller.dart';
import 'package:brain_book_admin/Views/Screens/Dashboard_Home/Dashboard_home_widgets/dashboard_home_components.dart';
import 'package:brain_book_admin/Views/Screens/Countries_States/Sub_Catogry_Screen/Sub_Catagory_Screen_Controller.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TrespassersScreenBody extends GetView<TrespassersController> {
  TrespassersScreenBody({
    required this.categoryId,
    super.key,
  });
  final String categoryId;
  final screenController= Get.find<CountryScreenController>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Container(
        color: Colors.grey.shade200,
        height: Get.height,
        width: Get.width,
        child: Padding(
          padding: const EdgeInsets.only(left: 30),
          child: SingleChildScrollView(
            child: GetBuilder<TrespassersController>(
              builder: (cont) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    GridView.builder(
                      // itemCount: 1,
                      itemCount: controller.tresPassersList.length,
                      shrinkWrap: true,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisSpacing: 10,
                            childAspectRatio: 3/2.8,
                            crossAxisCount: 3,
                          mainAxisSpacing: 10
                        ),
                        itemBuilder: (context,index){
                          return Container(
                            height: Get.height*0.3,
                            width: Get.height*0.3,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  FittedBox(
                                    fit: BoxFit.fitWidth,
                                    child: Row(
                                      children: [
                                        Card(
                                          //color: Colors.red,
                                            shape: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(10),
                                                borderSide: BorderSide(color: Colors.white)),
                                            // margin: EdgeInsets.symmetric(
                                            //   horizontal: 7,
                                            // ),
                                            child:
                                            Center(
                                              child: Padding(
                                                padding: const EdgeInsets.all(8.0),
                                                child: Container(
                                                  height: 80,
                                                  width: 80,
                                                  child: ClipRRect(
                                                    borderRadius: BorderRadius.circular(50),
                                                    child: CachedNetworkImage(
                                                      progressIndicatorBuilder: (context, url, progress) => Center(
                                                        child: CircularProgressIndicator(
                                                          value: progress.progress,
                                                        ),
                                                      ),
                                                      imageUrl:
                                                      controller.tresPassersList[index].profile!,
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            )
                                          // Image.asset(
                                          //   Get.arguments,
                                          //   width: 330,
                                          //   height: 110,
                                          // )
                                        ),
                                        SizedBox(width: 30,),
                                        Column(
                                          children: [
                                            Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text("Name",style: TextStyle(fontWeight: FontWeight.bold),),
                                                SizedBox(height: 10,),
                                                Text(controller.tresPassersList[index].trespasserName!),
                                              ],
                                            ),
                                            SizedBox(height: 30,),
                                            Padding(
                                              padding: const EdgeInsets.only(right: 45.0),
                                              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Text("Location",style: TextStyle(fontWeight: FontWeight.bold)),
                                                  SizedBox(height: 10,),
                                                  Text(controller.tresPassersList[index].locationName!),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                        Column(
                                          mainAxisAlignment: MainAxisAlignment.end,
                                          crossAxisAlignment: CrossAxisAlignment.end,
                                          children: [
                                            InkWell(
                                                onTap:(){
                                                  controller.tresPassersDialouge(controller.tresPassersList[index]);
                                                },
                                                child: Text('Edit',style: TextStyle(color: Colors.green),)),
                                            InkWell(
                                                onTap:(){
                                                  controller.deleteTrespasser(controller.tresPassersList[index]);
                                                },
                                                child: Text('Delete',style: TextStyle(color: Colors.red),)),

                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 20,),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 40.0),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text("Address",style: TextStyle(fontWeight: FontWeight.bold)),
                                            SizedBox(height: 10,),
                                            Text(controller.tresPassersList[index].address!),
                                          ],
                                        ),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text("Police Department",style: TextStyle(fontWeight: FontWeight.bold)),
                                            SizedBox(height: 10,),
                                            Text(controller.tresPassersList[index].policeDepartment!),
                                          ],
                                        ),

                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 20,),
                                  Center(
                                    child: Column(
                                      children: [
                                        Text("Other Notes",style: TextStyle(fontWeight: FontWeight.bold)),
                                        SizedBox(height: 10,),
                                        Text(controller.tresPassersList[index].otherNote!),
                                      ],
                                    ),
                                  )

                                ],
                              ),
                            ),
                          );
                        })
                  ],
                );
              }
            ),
          ),
        ),
      ),
    );
  }
}
