// ignore_for_file: unnecessary_brace_in_string_interps

import 'package:brain_book_admin/Core/Global_Controller/Global_controller.dart';
import 'package:brain_book_admin/Views/Screens/Users/users_screen_controller.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import '../../../../Core/App-Utils/AppColor/colors.dart';

class AdminPanelUser extends GetView<UserScreenController> {
  const AdminPanelUser({
    required this.adminUserId,
    Key? key,
  }) : super(key: key);
  final String adminUserId;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 300,
        // width: 1400,
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(15))),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 50, top: 15),
                child: SizedBox(
                  width: Get.width,
                  child: Row(
                    children:[
                      SizedBox(
                        width: Get.width*0.1,
                        child: Text(
                          'ID',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        width: Get.width*0.2,
                        child: Text(
                          'Name',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        width: Get.width*0.14,
                        child: Text(
                          'Email',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        width: Get.width*0.16,
                        child: Text(
                          'Mobile Number',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        width: Get.width*0.1,
                        child: Text(
                          'Action',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Divider(),
              GetBuilder<UserScreenController>(
                init: UserScreenController(),
                builder: (_) {
                  return ListView.builder(
                      shrinkWrap: true,
                      // itemCount: controller.adminUserResultList.length,
                      itemCount: 1,
                      itemBuilder: (context, index) {
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:[
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: SizedBox(
                                width: Get.width*0.06,
                                child: Text(
                                  'ID',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: Get.width*0.18,
                              child: Text(
                                '${adminUserId}',
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            SizedBox(
                              width: Get.width*0.14,
                              child: Text(
                                'Email',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                            SizedBox(
                              width: Get.width*0.16,
                              child: Text(
                                'Mobile Number',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                            SizedBox(
                              width: Get.width*0.1,
                              child: Text(
                                'Action',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                            SizedBox(
                              width: Get.width*0.008,
                            )
                          ],
                        );
                      });
                },
              ),
            ],
          ),
        ));
  }
}
