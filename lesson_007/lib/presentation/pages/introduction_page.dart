import 'package:flutter/material.dart';
import 'package:lesson_007/presentation/pages/body_page.dart';

class IntroductionPage extends StatefulWidget {
  const IntroductionPage({Key? key}) : super(key: key);

  @override
  State<IntroductionPage> createState() => _IntroductionPageState();
}

class _IntroductionPageState extends State<IntroductionPage> {
  PageController introductionPageController = PageController();
  int introductionPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lesson 7'),
        centerTitle: true,
      ),
      body: BodyPage(
        pageController: introductionPageController,
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: introductionPageIndex,
          onTap: (int index) {
            setState(() {
              introductionPageIndex = index;
            });

            introductionPageController.animateToPage(index,
                duration: const Duration(milliseconds: 500),
                curve: Curves.easeInCirc);
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.mood),
              label: 'deepOrange',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.mood),
              label: 'deepPurple',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.mood),
              label: 'cyanAccent',
            ),
          ]),
    );
  }
}
