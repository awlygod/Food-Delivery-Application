import 'package:flutter/material.dart';
import 'package:food_delivery_app/common/color_extension.dart';
import 'package:food_delivery_app/common_widget/tab_button.dart';
import 'package:food_delivery_app/view/home/home_view.dart';
import 'package:food_delivery_app/view/menu/menu_view.dart';

class MainTabView extends StatefulWidget {
  const MainTabView({super.key});

  @override
  State<MainTabView> createState() => _MainTabViewState();
}

class _MainTabViewState extends State<MainTabView> {
  int selectedTab = 2;
  PageStorageBucket storageBucket = PageStorageBucket();
  Widget selectedPageView = const HomeView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        bucket: storageBucket,
        child: selectedPageView,
      ),
      backgroundColor: const Color(0xfff5f5f5),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      floatingActionButton: SizedBox(
        width: 65,
        height: 65,
        child: FloatingActionButton(
          onPressed: () {
            setState(() {
              selectedTab = 2;
              selectedPageView = const HomeView();
            });
          },
          shape: const CircleBorder(),
          backgroundColor:
              selectedTab == 2 ? TColor.primary : TColor.placeholder,
          child: Image.asset(
            "assets/imgs/tab_home.png",
            width: 35,
            height: 35,
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        surfaceTintColor: Colors.white,
        shadowColor: Colors.black,
        elevation: 1,
        notchMargin: 12,
        height: 64,
        shape: const CircularNotchedRectangle(),
        child: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TabButton(
                title: "Menu",
                isSelected: selectedTab == 0,
                onTap: () {
                  setState(() {
                    selectedTab = 0;
                    selectedPageView = const MenuView();
                  });
                },
                icon: "assets/imgs/tab_menu.png",
              ),
              TabButton(
                title: "Offer",
                isSelected: selectedTab == 1,
                onTap: () {
                  setState(() {
                    selectedTab = 1;
                    selectedPageView = Container(); // Replace with actual page
                  });
                },
                icon: "assets/imgs/tab_offer.png",
              ),
              const SizedBox(
                width: 50,
                height: 50,
              ),
              TabButton(
                title: "Profile",
                isSelected: selectedTab == 3,
                onTap: () {
                  setState(() {
                    selectedTab = 3;
                    selectedPageView = Container(); // Replace with actual page
                  });
                },
                icon: "assets/imgs/tab_profile.png",
              ),
              TabButton(
                title: "More",
                isSelected: selectedTab == 4,
                onTap: () {
                  setState(() {
                    selectedTab = 4;
                    selectedPageView = Container(); // Replace with actual page
                  });
                },
                icon: "assets/imgs/tab_more.png",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
