import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:localvue/homepage/event_details/event_detail_noida.dart';
import 'package:localvue/homepage/home_page_background.dart';
import 'package:localvue/homepage/category_widget.dart';
import 'package:localvue/app_state.dart';
import 'package:provider/provider.dart';
import 'package:localvue/model/category.dart';
import 'package:localvue/model/event.dart';
import 'package:localvue/homepage/event_widget.dart';
import 'package:localvue/homepage/event_details/event_details_page.dart';
import 'package:localvue/homepage/mumbai.dart';
import 'package:localvue/homepage/noida.dart';

import '../model/event_noida.dart';
import '../views/auth/login_signup.dart';
import '../views/onboarding_screen.dart';
import 'event_widget_noida.dart';
import 'home_page.dart';

class NoidaPage extends StatelessWidget {
  const NoidaPage({Key? key});





  @override
  Widget build(BuildContext context) {
    User? user = FirebaseAuth.instance.currentUser;
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

    return Scaffold(
      key: _scaffoldKey,
      body: ChangeNotifierProvider(
        create: (_) => AppState(),
        child: Stack(
          children: <Widget>[
            HomePageBackground(
              screenHeight: MediaQuery.of(context).size.height,
            ),
            SafeArea(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 32.0),
                      child: Row(
                        children: <Widget>[
                          Text(
                            "LOCALVUE",
                            style: TextStyle(color: Colors.white.withOpacity(0.6)),
                          ),
                          const Spacer(),
                          IconButton(
                            icon: Icon(
                              Icons.menu,
                              color: Color(0x99FFFFFF),
                              size: 30,
                            ),
                            onPressed: () {
                              // Open the sidebar menu
                              _scaffoldKey.currentState!.openEndDrawer();
                            },
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 32.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Noida",
                            style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "What's Up ${user!.displayName}",
                            style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: <Widget>[
                          for (final category in categories) CategoryWidget(category: category)
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Consumer<AppState>(
                        builder: (context, appState, _) => Column(
                          children: <Widget>[
                            for (final eventN in eventsN.where((e) => e.categoryIds.contains(appState.selectedCategoryId)))
                              GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) => EventDetailsPageN(eventN: eventN),
                                    ),
                                  );
                                },
                                child: EventWidgetN(
                                  eventN: eventN,
                                ),
                              )
                          ],
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
      endDrawer: Drawer(
        child: Container(
          color: Colors.black.withOpacity(0.1), // Adjust the transparency here
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.deepOrange,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // User profile image and name
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundImage: NetworkImage(user!.photoURL ?? ''), // Use the user's profile image URL
                          ),
                          SizedBox(width: 10),
                          Text(
                            user.displayName ?? '', // Display the user's name
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                          value: 'Noida',
                          onChanged: (String? newValue) {
                            if (newValue == 'Delhi') {
                              Get.to(() => HomePage());
                            } else if (newValue == 'Noida') {
                              Get.to(() => NoidaPage());
                            } else if (newValue == 'Mumbai') {
                              Get.to(() => MumbaiPage());
                            }
                          },
                          items: <String>['Delhi', 'Noida', 'Mumbai']
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(
                                value,
                                style: TextStyle(color: Colors.black),
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              ListTile(
                leading: Icon(Icons.account_circle),
                title: Text('Profile'),
                onTap: () {
                  // Navigate to profile image screen

                },
              ),
              ListTile(
                leading: Icon(Icons.contact_mail),
                title: Text('Contact Us'),
                onTap: () {
                  // Navigate to contact us screen

                },
              ),
              ElevatedButton(
                onPressed: () async {
                  // Sign out the user from Firebase Authentication
                  await FirebaseAuth.instance.signOut();
                  // Navigate to the OnBoardingScreen
                  Get.offAll(OnBoardingScreen());
                },
                child: Text('Log Out'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
