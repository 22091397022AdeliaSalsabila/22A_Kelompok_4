import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:tes1/constant.dart';
import 'package:tes1/models/tshirt.dart';
import 'package:tes1/ui/scan_page.dart';
import 'package:tes1/ui/screens/cart_page.dart';
import 'package:tes1/ui/screens/favorite_page.dart';
import 'package:tes1/ui/screens/home_page.dart';
import 'package:tes1/ui/screens/profile_page.dart';

class RootPage extends StatefulWidget {
  const RootPage ({Key? key}) : super(key: key);

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  List<Tshirt> favorites = [];
  List<Tshirt> myCart = [];

  int _bottomNavIndex = 0;

  //list halaman apk
  List<Widget> _widgetOptions(){
    return [
      const HomePage(),
      FavoritePage(favoritedTshirt: favorites,),
      CartPage(addedToCartTshirt: myCart,),
      const ProfilePage(),
    ];
  }

  //list halaman icon
  List<IconData> iconList = [
    Icons.home,
    Icons.favorite,
    Icons.shopping_cart,
    Icons.person,
  ];

  //list judul halaman
  List<String> titleList = [
    'Home',
    'Favorite',
    'Cart',
    'Profile',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              titleList[_bottomNavIndex],
              style: TextStyle(
                color: Constants.blackColor,
                fontWeight: FontWeight.w500,
                fontSize: 24,
              ),
            ),
            Icon(
                Icons.notifications,
            color: Constants.blackColor,
            size: 30,
            )
          ],
        ),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0.0,
      ),

      body: IndexedStack(
        index: _bottomNavIndex,
        children: _widgetOptions(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(
              context,
              PageTransition(
                  child: const ScanPage(),
                  type: PageTransitionType.bottomToTop
              )
          );
        },
        child: Image.asset(
            'assets/images/scanning.png',
            height: 30,
        ),
        backgroundColor: Constants.primaryColor,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
        splashColor: Constants.primaryColor,
        activeColor: Constants.primaryColor,
        inactiveColor: Colors.black.withOpacity(.5),
        icons: iconList,
        activeIndex: _bottomNavIndex,
        gapLocation: GapLocation.center,
        notchSmoothness: NotchSmoothness.softEdge,
        onTap: (index) {
          setState(() {
            _bottomNavIndex = index;
            final List<Tshirt> favoritedTshirt = Tshirt.getFavoritedTshirts();
            final List<Tshirt> addedToCartTshirt = Tshirt.addedToCartTshirts();

            favorites = favoritedTshirt;
            myCart = addedToCartTshirt.toSet().toList();
          });
        }
      ),
    );
  }
}