// ignore_for_file: file_names

import 'package:brain_book_admin/Core/Global_Controller/Global_controller.dart';
import 'package:brain_book_admin/Core/App-Utils/ElivatedButton/elevated_button.dart';
import 'package:brain_book_admin/Views/Screens/Dashboard_Home/Dashboard_home_widgets/dashboard_home_components.dart';
import 'package:brain_book_admin/Views/Screens/Countries_States/Sub_Catogry_Screen/Sub_Catagory_Screen_Controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SubCatagoryScreenBody extends GetView<SubCatagoryScreenController> {
  const SubCatagoryScreenBody({
    required this.categoryId,
    super.key,
  });
  final String categoryId;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Container(
        color: Colors.grey.shade200,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.only(left: 30),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20,
                ),
                const DashboardHomeText(
                  title1: 'State Sub Catagory',
                  title2:
                      'You can see the data related to the Catagory States and also you can add new data',
                  title3: '',
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const DashboardHomeText(
                      title1: 'Screen text',
                      title2: '',
                      title3: '',
                    ),
                    ButtonWidget(
                        title: 'Add new Text',
                        onTap: () {
                          Get.find<GlobalController>()
                              .StatesSubCatagoryAddTextDailogBox(
                            'Add New Text',
                            '',
                            categoryId,
                            'Add',
                          );
                        }),
                  ],
                ),
                ListView.builder(
                    shrinkWrap: true,
                    physics: const ScrollPhysics(),
                    itemCount: controller.subCatagoryTextResultList.length,
                    itemBuilder: ((context, index) {
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            controller.subCatagoryTextResultList[index].title
                                .toString(),
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                controller.subCatagoryTextResultList[index]
                                    .description
                                    .toString(),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    right: 20, bottom: 10),
                                child: GestureDetector(
                                  onTap: () {
                                    Get.find<GlobalController>()
                                        .SubCatagoryEditTextDailogBox(
                                      'Field Name',
                                      '',
                                      controller
                                          .subCatagoryTextResultList[index]
                                          .subCatagoryId
                                          .toString(),
                                      'Update',
                                    );
                                  },
                                  child: const Icon(Icons.edit),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                        ],
                      );
                    })),
                const SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const DashboardHomeText(
                        title1: 'Sub Tab', title2: '', title3: ''),
                    ButtonWidget(
                        title: 'Add New tab',
                        onTap: () {
                          Get.find<GlobalController>()
                              .SubCatagorySubTabDailogBox(
                                  'Add New Tab', categoryId, 'Add');
                        })
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 25),
                  child: GridView.builder(
                    physics: const ScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: controller.subCatagorySubTabResultList.length,
                    scrollDirection: Axis.vertical,
                    gridDelegate:
                        const SliverGridDelegateWithMaxCrossAxisExtent(
                      mainAxisExtent: 150,
                      mainAxisSpacing: 20,
                      maxCrossAxisExtent: 170,
                      crossAxisSpacing: 20,
                    ),
                    itemBuilder: (context, index) => InkWell(
                        onTap: () {},
                        child: Container(
                          height: 100,
                          width: 140,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(controller
                                  .subCatagorySubTabResultList[index].title
                                  .toString()),
                              const SizedBox(
                                height: 30,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  InkWell(
                                      onTap: () {
                                        Get.find<GlobalController>()
                                            .SubCatagoryEditSubTabDailogBox(
                                                'Edit Tab',
                                                controller
                                                    .subCatagorySubTabResultList[
                                                        index]
                                                    .subCatagoryId,
                                                'Update');
                                      },
                                      child: const Icon(Icons.edit)),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  InkWell(
                                    onTap: () {
                                      Get.find<GlobalController>()
                                          .SubCatagorySubTabDeleteDailogBox(
                                              'Delete Tab',
                                              'Are you sure you want to delete this Tab?',
                                              controller
                                                  .subCatagorySubTabResultList[
                                                      index]
                                                  .subCatagoryId);
                                    },
                                    // ignore: prefer_const_constructors
                                    child: Icon(
                                      CupertinoIcons.delete,
                                      color: Colors.red,
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        )),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
