// ignore_for_file: file_names, avoid_print

import 'package:brain_book_admin/Core/Global_Controller/Global_controller.dart';
import 'package:brain_book_admin/Core/App-Utils/ElivatedButton/elevated_button.dart';
import 'package:brain_book_admin/Core/Services/API_MODELS/STATES/Catagory_Models/Catagory_Get_Model.dart';
import 'package:brain_book_admin/Views/Screens/Countries/Countries_Screen_Controller.dart';
import 'package:brain_book_admin/Views/Screens/Countries_States/TrespassersViewScreen/TrespassersScreen.dart';
import 'package:brain_book_admin/Views/Screens/Countries_States/TrespassersViewScreen/TrespassersScreen_Controller.dart';
import 'package:brain_book_admin/Views/Screens/Dashboard_Home/Dashboard_home_widgets/dashboard_home_components.dart';
import 'package:brain_book_admin/Views/Screens/Countries_States/Catagory_Screen/States_Catagory_Screen_Widgets/Catagory_Components.dart';
import 'package:brain_book_admin/Views/Screens/Countries_States/Catagory_Screen/Catagory_Screen_controller.dart';
import 'package:brain_book_admin/Views/Screens/Countries_States/Sub_Catogry_Screen/Sub_Catagory_Screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CatagoryScreenBody extends GetView<CatagoryScreenController> {
  CatagoryScreenBody({required this.townCityId, super.key});
  final String townCityId;
  final screenController= Get.find<CountryScreenController>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.grey.shade200,
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const DashboardHomeText(
                          title1: ' Catagory Name',
                          title2:
                              'You can see the data related to the Catagory and you can edit the data',
                          title3: '',
                        ),
                        ButtonWidget(
                            title: 'Add new Tab',
                            onTap: () {
                              Get.find<GlobalController>().CatagoryDailogBox(
                                'Add New Tab',
                                townCityId,
                                'Add',
                              );
                            }),
                      ],
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Flexible(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 25),
                        child: GetBuilder<CatagoryScreenController>(
                          builder: (_) {
                            return GridView.builder(
                              shrinkWrap: true,
                              itemCount: controller.catagoryResultList.length,
                              scrollDirection: Axis.vertical,
                              gridDelegate:
                                  const SliverGridDelegateWithMaxCrossAxisExtent(
                                mainAxisExtent: 160,
                                mainAxisSpacing: 20,
                                maxCrossAxisExtent: 180,
                                crossAxisSpacing: 20,
                              ),
                              itemBuilder: (context, index) => InkWell(
                                onTap: () {
                                  // StateCatagoryGetModel;
                                  if(controller
                                      .catagoryResultList[index].type=='Normal'){
                                    print('controller.catagoryResultList[index]');
                                    print(controller.catagoryResultList[index]);
                                    screenController.contryScreenPath.add(SubCatagoryScreen(
                                      categoryId: controller
                                          .catagoryResultList[index]
                                          .catagoryId
                                          .toString(),
                                    )
                                    );
                                    screenController.update();
                                  }else if(controller.catagoryResultList[index].type=='Tress Passers'){
                                    Get.put(TrespassersController());
                                    screenController.contryScreenPath.add(TrespassersScreen(townId: controller
                                        .catagoryResultList[index]
                                        .townCityId
                                        .toString(),));
                                    screenController.update();
                                  }else{
                                    var snackBar = SnackBar(duration:Duration(milliseconds: 600),content: Text('Cannot be opened due t its type ${controller.catagoryResultList[index].type}'));
                                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                                    // Get.snackbar('BrainBook', "",colorText: Colors.red);
                                    // print();
                                  }
                                },
                                child: CatagoryComponents(
                                  image: controller
                                      .catagoryResultList[index].imageUrl,
                                  title: controller
                                      .catagoryResultList[index].title
                                      .toString(),
                                  townCityId: townCityId,
                                  catagoryId: controller
                                      .catagoryResultList[index].catagoryId
                                      .toString(),
                                  edit: Icons.edit, model: controller
                                    .catagoryResultList[index],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
