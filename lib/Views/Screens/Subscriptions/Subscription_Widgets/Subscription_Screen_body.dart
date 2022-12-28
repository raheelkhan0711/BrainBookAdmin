// ignore_for_file: file_names

import 'package:brain_book_admin/Global_Controller/Global_controller.dart';
import 'package:brain_book_admin/Views/OverAll-App-Widgets/AppColor/colors.dart';
import 'package:brain_book_admin/Views/OverAll-App-Widgets/ElivatedButton/elevated_button.dart';
import 'package:brain_book_admin/Views/Screens/Subscriptions/subscriptionScreen_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../Dashboard_Home/Dashboard_home_widgets/dashboard_home_components.dart';

class SubscriptionScreenBody extends GetView<SubscriptionScreenController> {
  const SubscriptionScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: ClipRect(
        child: Navigator(
          onGenerateRoute: (settings) => MaterialPageRoute(
            builder: (context) => SingleChildScrollView(
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
                                  title1: 'Subscription',
                                  title2:
                                      'You can see all the Subscription Package here and also you can add new Subscription package',
                                  title3: ''),
                              ButtonWidget(
                                  title: 'Add New States',
                                  onTap: () {
                                    Get.find<GlobalController>()
                                        .SubscriptionDailogBox(
                                            'Add New Package', 'Add');
                                  })
                            ],
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 25),
                            child: GetBuilder<SubscriptionScreenController>(
                              init: SubscriptionScreenController(),
                              builder: (_) {
                                return GridView.builder(
                                  shrinkWrap: true,
                                  physics: const ScrollPhysics(),
                                  itemCount:
                                      controller.subscriptionResultList.length,
                                  scrollDirection: Axis.vertical,
                                  gridDelegate:
                                      const SliverGridDelegateWithMaxCrossAxisExtent(
                                    mainAxisExtent: 210,
                                    mainAxisSpacing: 20,
                                    maxCrossAxisExtent: 190,
                                    crossAxisSpacing: 20,
                                  ),
                                  itemBuilder: (context, index) => InkWell(
                                    onTap: () {},
                                    child: Container(
                                      height: 200,
                                      width: 180,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: Colors.white),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                            controller
                                                .subscriptionResultList[index]
                                                .packageTitle
                                                .toString(),
                                            style: const TextStyle(
                                              color: fontColorDark,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 15,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 20),
                                            child: Text(
                                              controller
                                                  .subscriptionResultList[index]
                                                  .description
                                                  .toString(),
                                              style: const TextStyle(
                                                color: Colors.grey,
                                              ),
                                              textAlign: TextAlign.start,
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 15,
                                          ),
                                          Text(
                                            controller
                                                .subscriptionResultList[index]
                                                .price
                                                .toString(),
                                            style: const TextStyle(
                                              color: fontColorDark,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 15,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              InkWell(
                                                  onTap: () {
                                                    Get.find<GlobalController>()
                                                        .SubscriptionEditDailogBox(
                                                            'Edit Package',
                                                            controller
                                                                .subscriptionResultList[
                                                                    index]
                                                                .id,
                                                            'Update');
                                                  },
                                                  child:
                                                      const Icon(Icons.edit)),
                                              const SizedBox(
                                                width: 35,
                                              ),
                                              InkWell(
                                                onTap: () {
                                                  Get.find<GlobalController>()
                                                      .SubscriptionDeleteDailogBox(
                                                    'Delete Package',
                                                    'Are you sure you want to delete this Package?',
                                                    controller
                                                        .subscriptionResultList[
                                                            index]
                                                        .id,
                                                  );
                                                },
                                                child: const Icon(
                                                  CupertinoIcons.delete,
                                                  color: Colors.red,
                                                ),
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
