import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tes1/constant.dart';
import 'package:tes1/ui/screens/chart_page.dart';
import 'package:tes1/ui/screens/widgets/profile_widget.dart';

class ProfilePage extends StatelessWidget{
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: Center(
          child: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.all(16),
              height: size.height,
              width: size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: 150,
                    child: const CircleAvatar(
                      radius: 60,
                      backgroundImage:
                        ExactAssetImage('assets/images/profile.jpg'),
                    ),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                      color: Constants.primaryColor.withOpacity(.5),
                      width: 5.0,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    width: size.width * .4,
                    child: Row(
                      children: [
                        Text(
                          'Lee Haechan',
                          style: TextStyle(
                          color: Constants.blackColor,
                          fontSize: 20,
                          ),
                        ),
                        SizedBox(
                          height: 24,
                          child: Image.asset(
                            "assets/images/verified.png"
                          )
                        ),
                      ],
                    ),
                  ),
                  Text(
                    'leehaechan@never.com',
                    style: TextStyle(
                    color: Constants.blackColor.withOpacity(.3),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ProfileWidget(
                        icon: Icons.person,
                        title: 'My Profile', //onPressed: () {null;},
                      ),
                      ProfileWidget(
                        icon: Icons.settings,
                        title: 'Settings', //onPressed: () {null;},
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => ChartPage()),
                          );
                        },
                        child: ProfileWidget(
                          icon: Icons.add_chart,
                          title: 'Expense Chart',
                        ),
                      ),
                      ProfileWidget(
                        icon: Icons.chat,
                        title: 'FAQs', //onPressed: () {null;},
                      ),
                      ProfileWidget(
                        icon: Icons.share,
                        title: 'Share', //onPressed: () {null;},
                      ),
                      GestureDetector(
                        onTap: () {
                          SystemNavigator.pop();
                        },
                        child: ProfileWidget(
                          icon: Icons.logout,
                          title: 'Logout',
                        ),
                      ),

                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
