// ignore_for_file: file_names, unnecessary_brace_in_string_interps

import 'package:brain_book_admin/Core/App-Utils/ElivatedButton/elevated_button.dart';
import 'package:brain_book_admin/Views/Screens/Dashboard_Home/Dashboard_home_widgets/dashboard_home_components.dart';
import 'package:brain_book_admin/Views/Screens/Users/UsersScreen_Widgets/new-users_screen_body.dart';
import 'package:brain_book_admin/Views/Screens/Users/UsersScreen_Widgets/admin_panel_user.dart';
import 'package:brain_book_admin/Views/Screens/Users/users_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'app_users.dart';

class UsersScreenBody extends GetView<UserScreenController> {
  const UsersScreenBody({
    Key? key,
  }) : super(key: key);
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
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 20,
                            ),
                            const DashboardHomeText(
                                title1: 'Users',
                                title2: 'You can see all the Users here',
                                title3: ''),
                            const SizedBox(
                              height: 25,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 25),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  const Text(
                                    'Admin Panel Users',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                        color: Colors.black),
                                  ),
                                  const SizedBox(
                                    width: 900,
                                  ),
                                  Expanded(
                                    child: SizedBox(
                                      height: 45,
                                      child: TextFormField(
                                        keyboardType: TextInputType.text,
                                        maxLines: 1,
                                        decoration: InputDecoration(
                                            hintText: 'search here',
                                            hintMaxLines: 1,
                                            border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              borderSide:
                                                  const BorderSide(width: 4.0),
                                            ),
                                            suffixIcon:
                                                const Icon(Icons.search)),
                                      ),
                                    ),
                                  ),
                                  ButtonWidget(
                                      title: 'Add New Users',
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const NewUsersScreenBody()));
                                      }),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 50,
                            ),
                            const AdminPanelUser(adminUserId: ''
                                //  controller
                                //     .adminUserResultList[index].adminUserId
                                //     .toString(),
                                ),
                            const SizedBox(
                              height: 50,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 50),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  const Text(
                                    'App Users',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                        color: Colors.black),
                                  ),
                                  const Spacer(
                                    flex: 5,
                                  ),
                                  Expanded(
                                    child: SizedBox(
                                      height: 45,
                                      child: TextFormField(
                                        keyboardType: TextInputType.text,
                                        maxLines: 1,
                                        decoration: InputDecoration(
                                            hintText: 'search here',
                                            hintMaxLines: 1,
                                            border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              borderSide:
                                                  const BorderSide(width: 4.0),
                                            ),
                                            suffixIcon:
                                                const Icon(Icons.search)),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            const AppUsers(),
                            const SizedBox(
                              height: 20,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
