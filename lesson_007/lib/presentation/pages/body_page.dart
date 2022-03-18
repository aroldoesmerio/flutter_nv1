import 'package:flutter/material.dart';

class BodyPage extends StatefulWidget {
  final PageController pageController;

  const BodyPage({Key? key, required this.pageController}) : super(key: key);

  @override
  State<BodyPage> createState() => _BodyPageState();
}

class _BodyPageState extends State<BodyPage> {
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: widget.pageController,
      children: [
        Container(
          color: Colors.deepOrange,
        ),
        Container(
          color: Colors.deepPurple,
        ),
        Container(
          color: Colors.cyanAccent,
        )
      ],
    );
  }
}
