// ignore_for_file: unnecessary_brace_in_string_interps

import 'package:brain_book_admin/Global_Controller/Global_controller.dart';
import 'package:brain_book_admin/Views/Screens/Users/users_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../OverAll-App-Widgets/AppColor/colors.dart';

class AppUsers extends GetView<UserScreenController> {
  const AppUsers({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 350,
        width: 1600,
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(15))),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 50, top: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'ID',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 100,
                    ),
                    Text(
                      'Name',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 200,
                    ),
                    Text(
                      'Email',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 235,
                    ),
                    Text(
                      'State',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 380,
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 140),
                      child: Text(
                        'Action',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
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
                      itemCount: controller.appUserResultList.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(
                              left: 20, right: 60, top: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '${index}',
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                width: 150,
                              ),
                              SizedBox(
                                width: 100,
                                child: Text(
                                  controller.appUserResultList[index].name
                                      .toString(),
                                ),
                              ),
                              const SizedBox(
                                width: 170,
                              ),
                              SizedBox(
                                width: 150,
                                child: Text(
                                  controller.appUserResultList[index].email
                                      .toString(),
                                ),
                              ),
                              const SizedBox(
                                width: 200,
                              ),
                              SizedBox(
                                width: 100,
                                child: Text(
                                  controller.appUserResultList[index].phone
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
                                            .AppUsersDeatilsDailogBox(
                                                'Users Details', 'Close');
                                      },
                                      child: const Text('Action')),
                                ),
                              )
                            ],
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
