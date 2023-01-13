// ignore_for_file: unnecessary_brace_in_string_interps

import 'package:brain_book_admin/Global_Controller/Global_controller.dart';
import 'package:brain_book_admin/Views/Screens/Users/users_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../OverAll-App-Widgets/AppColor/colors.dart';

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
        width: 1400,
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(15))),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 50, top: 15),
                child: Row(
                  children: const [
                    Text(
                      'ID',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 110,
                    ),
                    Text(
                      'Name',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 235,
                    ),
                    Text(
                      'Email',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 235,
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 10, left: 20),
                      child: Text(
                        'Mobile Number',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      width: 380,
                    ),
                    Text(
                      'Action',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              const Divider(),
              GetBuilder<UserScreenController>(
                init: UserScreenController(),
                builder: (_) {
                  return ListView.builder(
                      shrinkWrap: true,
                      itemCount: controller.adminUserResultList.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  '${index}',
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(
                                  width: 110,
                                ),
                                SizedBox(
                                  width: 100,
                                  child: Text(
                                    controller.adminUserResultList[index].name
                                        .toString(),
                                  ),
                                ),
                                const SizedBox(
                                  width: 170,
                                ),
                                SizedBox(
                                  width: 150,
                                  child: Text(
                                    controller.adminUserResultList[index].email
                                        .toString(),
                                  ),
                                ),
                                const SizedBox(
                                  width: 150,
                                ),
                                SizedBox(
                                  width: 100,
                                  child: Text(
                                    controller.adminUserResultList[index].phone
                                        .toString(),
                                  ),
                                ),
                                const SizedBox(
                                  width: 330,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 80),
                                  child: SizedBox(
                                    width: 140,
                                    child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            backgroundColor:
                                                bottomImageSelectedColor),
                                        onPressed: () {
                                          Get.find<GlobalController>()
                                              .AdminUsersDetailsDailogBox(
                                                  'Users Details',
                                                  adminUserId,
                                                  'Close');
                                        },
                                        child: const Text('Action')),
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      });
                },
              ),
            ],
          ),
        ));
  }
}
