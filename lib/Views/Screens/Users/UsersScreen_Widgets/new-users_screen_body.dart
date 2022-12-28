// ignore_for_file: file_names
import 'package:brain_book_admin/Views/OverAll-App-Widgets/AppColor/colors.dart';
import 'package:brain_book_admin/Views/OverAll-App-Widgets/ElivatedButton/elevated_button.dart';
import 'package:brain_book_admin/Views/Screens/Dashboard_Home/Dashboard_home_widgets/dashboard_home_components.dart';
import 'package:brain_book_admin/Views/Screens/Users/UsersScreen_Widgets/Users_Screen_body.dart';
import 'package:brain_book_admin/Views/Screens/Users/users_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/get.dart';

class NewUsersScreenBody extends GetView<UserScreenController> {
  const NewUsersScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<UserScreenController>(
        init: UserScreenController(),
        builder: (_) {
          return Padding(
            padding: const EdgeInsets.only(top: 10),
            child: ClipRect(
              child: Navigator(
                onGenerateRoute: (settings) => MaterialPageRoute(
                  builder: (context) => SingleChildScrollView(
                    child: Container(
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
                            const DashboardHomeText(
                                title1: 'Users',
                                title2:
                                    'Please add the new users admin detail here',
                                title3: ''),
                            const SizedBox(
                              height: 10,
                            ),
                            const Text(
                              'Users Details',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  color: Colors.black),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 200),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: SizedBox(
                                      height: 45,
                                      child: TextFormField(
                                        controller: controller
                                            .adminUserNamePostController,
                                        keyboardType: TextInputType.text,
                                        maxLines: 1,
                                        decoration: InputDecoration(
                                          hintText: 'name',
                                          hintMaxLines: 1,
                                          border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            borderSide:
                                                const BorderSide(width: 4.0),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 25,
                                  ),
                                  Expanded(
                                    child: SizedBox(
                                      height: 45,
                                      child: TextFormField(
                                        controller: controller
                                            .adminUserEmailPostController,
                                        keyboardType:
                                            TextInputType.emailAddress,
                                        maxLines: 1,
                                        decoration: InputDecoration(
                                          hintText: 'email',
                                          hintMaxLines: 1,
                                          border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            borderSide:
                                                const BorderSide(width: 4.0),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 25,
                                  ),
                                  Expanded(
                                    child: SizedBox(
                                      height: 45,
                                      child: TextFormField(
                                        controller: controller
                                            .adminUserPhonePostController,
                                        keyboardType: TextInputType.text,
                                        maxLines: 1,
                                        decoration: InputDecoration(
                                          hintText: 'mobile number',
                                          hintMaxLines: 1,
                                          border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            borderSide:
                                                const BorderSide(width: 4.0),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 25,
                                  ),
                                  // Expanded(
                                  //   child: SizedBox(
                                  //     height: 45,
                                  //     child: TextFormField(
                                  //       controller: controller
                                  //           .adminUserEmailPostController,
                                  //       keyboardType: TextInputType.text,
                                  //       maxLines: 1,
                                  //       decoration: InputDecoration(
                                  //         hintText: 'password',
                                  //         hintMaxLines: 1,
                                  //         border: OutlineInputBorder(
                                  //           borderRadius:
                                  //               BorderRadius.circular(10),
                                  //           borderSide:
                                  //               const BorderSide(width: 4.0),
                                  //         ),
                                  //       ),
                                  //     ),
                                  //   ),
                                  // ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            const Text(
                              'Permissions',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Colors.black),
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                const Padding(
                                  padding: EdgeInsets.only(left: 252),
                                  child: SizedBox(
                                    width: 200,
                                    child: CheckboxListTile(
                                      activeColor: Colors.white,
                                      //checkColor: bottomImageSelectedColor,
                                      title: Text(
                                        "View",
                                        style: TextStyle(color: Colors.black),
                                      ),
                                      value: false,
                                      controlAffinity:
                                          ListTileControlAffinity.leading,
                                      onChanged: null,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 200,
                                  child: CheckboxListTile(
                                    activeColor: Colors.white,
                                    //checkColor: bottomImageSelectedColor,
                                    title: Text(
                                      "Create",
                                      style: TextStyle(color: Colors.black),
                                    ),
                                    value: false,
                                    controlAffinity:
                                        ListTileControlAffinity.leading,
                                    onChanged: null,
                                  ),
                                ),
                                const SizedBox(
                                  width: 200,
                                  child: CheckboxListTile(
                                    activeColor: Colors.white,
                                    //checkColor: bottomImageSelectedColor,
                                    title: Text(
                                      "Edit",
                                      style: TextStyle(color: Colors.black),
                                    ),
                                    value: false,
                                    controlAffinity:
                                        ListTileControlAffinity.leading,
                                    onChanged: null,
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(right: 345),
                                  child: SizedBox(
                                    width: 200,
                                    child: CheckboxListTile(
                                      activeColor: Colors.white,
                                      //checkColor: bottomImageSelectedColor,
                                      title: Text(
                                        "Delete",
                                        style: TextStyle(color: Colors.black),
                                      ),
                                      value: false,
                                      controlAffinity:
                                          ListTileControlAffinity.leading,
                                      onChanged: null,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 50),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.only(left: 0),
                                    child: SizedBox(
                                      width: 200,
                                      child: CheckboxListTile(
                                        activeColor: Colors.white,
                                        //checkColor: bottomImageSelectedColor,
                                        title: Text(
                                          "Dashboard",
                                          style: TextStyle(color: Colors.black),
                                        ),
                                        value: false,
                                        controlAffinity:
                                            ListTileControlAffinity.leading,
                                        onChanged: null,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 125,
                                  ),
                                  SizedBox(
                                    width: 200,
                                    child: CheckboxListTile(
                                      activeColor: bottomImageSelectedColor,
                                      //checkColor: bottomImageSelectedColor,
                                      title: const Text(""),
                                      value: false,
                                      // selectedTileColor: bottomImageSelectedColor,
                                      controlAffinity:
                                          ListTileControlAffinity.leading,
                                      onChanged: (newValue) {},
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 73,
                                  ),
                                  SizedBox(
                                    width: 200,
                                    child: CheckboxListTile(
                                      activeColor: Colors.white,
                                      title: const Text(""),
                                      value: true,
                                      controlAffinity:
                                          ListTileControlAffinity.leading,
                                      onChanged: (newValue) {},
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 73,
                                  ),
                                  SizedBox(
                                    width: 200,
                                    child: CheckboxListTile(
                                      activeColor: Colors.white,
                                      title: const Text(""),
                                      value: true,
                                      controlAffinity:
                                          ListTileControlAffinity.leading,
                                      onChanged: (newValue) {},
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 73,
                                  ),
                                  SizedBox(
                                    width: 200,
                                    child: CheckboxListTile(
                                      activeColor: Colors.white,
                                      title: const Text(""),
                                      value: true,
                                      controlAffinity:
                                          ListTileControlAffinity.leading,
                                      onChanged: (newValue) {},
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 50),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.only(left: 0),
                                    child: SizedBox(
                                      width: 200,
                                      child: CheckboxListTile(
                                        activeColor: Colors.white,
                                        //checkColor: bottomImageSelectedColor,
                                        title: Text(
                                          "States",
                                          style: TextStyle(color: Colors.black),
                                        ),
                                        value: false,
                                        controlAffinity:
                                            ListTileControlAffinity.leading,
                                        onChanged: null,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 125,
                                  ),
                                  SizedBox(
                                    width: 200,
                                    child: CheckboxListTile(
                                      activeColor: bottomImageSelectedColor,
                                      //checkColor: bottomImageSelectedColor,
                                      title: const Text(""),
                                      value: true,
                                      // selectedTileColor: bottomImageSelectedColor,
                                      controlAffinity:
                                          ListTileControlAffinity.leading,
                                      onChanged: (newValue) {},
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 73,
                                  ),
                                  SizedBox(
                                    width: 200,
                                    child: CheckboxListTile(
                                      activeColor: Colors.white,
                                      title: const Text(""),
                                      value: true,
                                      controlAffinity:
                                          ListTileControlAffinity.leading,
                                      onChanged: (newValue) {},
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 73,
                                  ),
                                  SizedBox(
                                    width: 200,
                                    child: CheckboxListTile(
                                      activeColor: bottomImageSelectedColor,
                                      title: const Text(""),
                                      value: true,
                                      controlAffinity:
                                          ListTileControlAffinity.leading,
                                      onChanged: (newValue) {},
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 73,
                                  ),
                                  SizedBox(
                                    width: 200,
                                    child: CheckboxListTile(
                                      activeColor: Colors.white,
                                      title: const Text(""),
                                      value: true,
                                      controlAffinity:
                                          ListTileControlAffinity.leading,
                                      onChanged: (newValue) {},
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 50),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.only(left: 0),
                                    child: SizedBox(
                                      width: 200,
                                      child: CheckboxListTile(
                                        activeColor: Colors.white,
                                        title: Text(
                                          "Subscriptions",
                                          style: TextStyle(color: Colors.black),
                                        ),
                                        value: false,
                                        controlAffinity:
                                            ListTileControlAffinity.leading,
                                        onChanged: null,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 125,
                                  ),
                                  SizedBox(
                                    width: 200,
                                    child: CheckboxListTile(
                                      activeColor: bottomImageSelectedColor,
                                      title: const Text(""),
                                      value: true,
                                      controlAffinity:
                                          ListTileControlAffinity.leading,
                                      onChanged: (newValue) {},
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 73,
                                  ),
                                  SizedBox(
                                    width: 200,
                                    child: CheckboxListTile(
                                      activeColor: bottomImageSelectedColor,
                                      title: const Text(""),
                                      value: true,
                                      controlAffinity:
                                          ListTileControlAffinity.leading,
                                      onChanged: (newValue) {},
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 73,
                                  ),
                                  SizedBox(
                                    width: 200,
                                    child: CheckboxListTile(
                                      activeColor: Colors.white,
                                      title: const Text(""),
                                      value: true,
                                      controlAffinity:
                                          ListTileControlAffinity.leading,
                                      onChanged: (newValue) {},
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 73,
                                  ),
                                  SizedBox(
                                    width: 200,
                                    child: CheckboxListTile(
                                      activeColor: bottomImageSelectedColor,
                                      title: const Text(""),
                                      value: true,
                                      controlAffinity:
                                          ListTileControlAffinity.leading,
                                      onChanged: (newValue) {},
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 50),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.only(left: 0),
                                    child: SizedBox(
                                      width: 200,
                                      child: CheckboxListTile(
                                        activeColor: Colors.white,
                                        //checkColor: bottomImageSelectedColor,
                                        title: Text(
                                          "Users",
                                          style: TextStyle(color: Colors.black),
                                        ),
                                        value: false,
                                        controlAffinity:
                                            ListTileControlAffinity.leading,
                                        onChanged: null,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 125,
                                  ),
                                  SizedBox(
                                    width: 200,
                                    child: CheckboxListTile(
                                      activeColor: bottomImageSelectedColor,
                                      //checkColor: bottomImageSelectedColor,
                                      title: const Text(""),
                                      value: true,
                                      // selectedTileColor: bottomImageSelectedColor,
                                      controlAffinity:
                                          ListTileControlAffinity.leading,
                                      onChanged: (newValue) {},
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 73,
                                  ),
                                  SizedBox(
                                    width: 200,
                                    child: CheckboxListTile(
                                      activeColor: Colors.white,
                                      title: const Text(""),
                                      value: true,
                                      controlAffinity:
                                          ListTileControlAffinity.leading,
                                      onChanged: (newValue) {},
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 73,
                                  ),
                                  SizedBox(
                                    width: 200,
                                    child: CheckboxListTile(
                                      activeColor: bottomImageSelectedColor,
                                      title: const Text(""),
                                      value: true,
                                      controlAffinity:
                                          ListTileControlAffinity.leading,
                                      onChanged: (newValue) {},
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 73,
                                  ),
                                  SizedBox(
                                    width: 200,
                                    child: CheckboxListTile(
                                      activeColor: Colors.white,
                                      title: const Text(""),
                                      value: true,
                                      controlAffinity:
                                          ListTileControlAffinity.leading,
                                      onChanged: (newValue) {},
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 250,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 450, right: 550),
                              child: ButtonWidget(
                                  title: 'Add',
                                  onTap: () {
                                    controller.createAdminUser();
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const UsersScreenBody()));
                                    // Navigator.pop(Get.context!);
                                  }),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
