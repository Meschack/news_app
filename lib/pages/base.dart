import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app/class/page.dart';
import 'package:news_app/components/atoms/custom_text.dart';
import 'package:news_app/pages/bookmark.dart';
import 'package:news_app/pages/explore.dart';
import 'package:news_app/pages/home.dart';
import 'package:news_app/pages/profile.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class MainPagesBaseScreen extends StatefulWidget {
  const MainPagesBaseScreen({super.key, required this.initialPageLabel});

  final String initialPageLabel;

  @override
  State<MainPagesBaseScreen> createState() => _MainPagesBaseScreenState();
}

class _MainPagesBaseScreenState extends State<MainPagesBaseScreen> {
  late int _currentIndex;

  List<CustomPage> pages = [
    CustomPage(
      const HomeScreen(),
      const Icon(Icons.home),
      "Home",
      'home',
    ),
    CustomPage(
      const ExploreScreen(),
      const Icon(CupertinoIcons.globe),
      "Explore",
      'explore',
    ),
    CustomPage(
      const BookmarkScreen(),
      const Icon(Icons.bookmark_added),
      "Bookmark",
      'bookmark',
    ),
    CustomPage(
      const ProfileScreen(),
      const Icon(Icons.person_2_outlined),
      "Profile",
      'profile',
    ),
  ];

  @override
  void initState() {
    super.initState();

    setState(() {
      _currentIndex = pages.indexWhere(
        (element) => element.label == widget.initialPageLabel,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(child: pages[_currentIndex].page),
      bottomNavigationBar: SalomonBottomBar(
        backgroundColor: const Color.fromRGBO(252, 233, 238, 0.80),
        selectedItemColor: Colors.black,
        selectedColorOpacity: .1,
        currentIndex: _currentIndex,
        onTap: (i) => setState(() => _currentIndex = i),
        items: pages
            .map(
              (page) => SalomonBottomBarItem(
                icon: page.icon,
                title: CustomText(page.title),
              ),
            )
            .toList(),
      ),
    );
  }
}
