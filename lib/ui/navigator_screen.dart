import 'package:flutter/material.dart';
import 'package:three_monkeys/ui/chat_screen/ChatScreen.dart';
import 'package:three_monkeys/ui/explore_screen/ExploreScreen.dart';
import 'package:three_monkeys/ui/home_screen/HomeScreen.dart';
import 'package:three_monkeys/ui/settings_screen/ProfileScreen.dart';
import 'package:three_monkeys/ui/theme/app_pallete.dart';
import 'package:three_monkeys/ui/widgets/CustomNavigationItem.dart';
import 'package:three_monkeys/ui/wishlist_screen/WishlistScreen.dart';

class NavigatorScreen extends StatefulWidget {

  static route() => MaterialPageRoute(
    builder: (context) => const NavigatorScreen(),
  );
  const NavigatorScreen({super.key});

  @override
  State<NavigatorScreen> createState() => _NavigatorScreenState();
}

class _NavigatorScreenState extends State<NavigatorScreen> {
  final PageController _pageController = PageController(initialPage: 0);


  int _index = 0;
  final List<Widget> _pages = [
    Homescreen(),
    Explorescreen(),
    Wishlistscreen(),
    Chatscreen(),
    Profilescreen()
  ];

  set movePage(int index) {
    setState(() => _index = index);
    _pageController.jumpToPage(index);
  }

  set changeIndex(int index) {
    setState(() => _index = index);
  }

  int get currentPosition => _index;

  List<Widget> get pages => _pages;

  PageController get pageController => _pageController;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:Container(
        height: 100.0,
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(
              color: AppPallete.darkGrey,
            ),
          ),
        ),


        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomNavigationItem(icon: 'images/home_icon.svg',
                label: "home",
                isSelected: _index == 0,
                onTap: () => movePage = 0),
            CustomNavigationItem(icon: 'images/burger.svg',
                label: "Offer",
                isSelected: _index == 1,
                onTap: () => movePage = 1),
            CustomNavigationItem(icon: 'images/heart_1.svg',
                label: "Wishlist",
                isSelected: _index == 2,
                onTap: () => movePage = 2),
            CustomNavigationItem(icon: 'images/chat_2.svg',
                label: "Chat",
                isSelected: _index == 3,
                onTap: () => movePage = 3),
            CustomNavigationItem(icon: 'images/person.svg',
                label: "Profile",
                isSelected: _index == 4,
                onTap: () => movePage = 4)
          ],
        ),
      ),
      body: SafeArea(
        child: Stack(
            children: [
              PageView(
                controller: _pageController,
                onPageChanged: (int newPage) {
                  changeIndex = newPage;
                },
                children: _pages,
              ),

            ]
        ),
      ),
    );
  }
}