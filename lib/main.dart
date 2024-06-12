import 'package:flutter/material.dart';
import 'package:portfolio_website/sections/section_main.dart';
import 'package:portfolio_website/sections/section_profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Arsalan K. Nizamani',
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  Color? bgColor = const Color(0xFFF5F5F5);
  late AnimationController _controller;
  late Animation<Color?> _colorAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 200), value: 1.0);
    _colorAnimation =
        ColorTween(begin: const Color(0xFF202124), end: const Color(0xFFF5F5F5))
            .animate(_controller);

    _controller.addListener(() {
      bgColor = _colorAnimation.value;
      setState(() {});
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  changeBackGroundColor() {
    if (_controller.status == AnimationStatus.completed) {
      _controller.reverse();
    } else if (_controller.status == AnimationStatus.dismissed) {
      _controller.forward();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: bgColor,
        body: LayoutBuilder(builder: (context, constraints) {
          //web
          if (constraints.maxWidth > 1351) {
            return _buildPage(800, 3, 100, 100);

            //tablet
          } else if (constraints.maxWidth > 931 &&
              constraints.maxWidth < 1350) {
            return _buildPage(500, 2, 50, 50);

            //mobile
          } else if (constraints.maxWidth < 930 && constraints.maxWidth > 711) {
            return _buildPage(300, 1, 50, 25);
          } else {
            return SizedBox(
              width: 710,
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.only(top: 100, left: 50, right: 50),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: ProfileSection(
                          bgColor: bgColor as Color,
                          maxProfileWidth: 710,
                        ),
                      ),
                      const SizedBox(height: 15),
                      MainSection(
                        maxGridWidth: 380,
                        gridCount: 1,
                        changeBackGroundColor: changeBackGroundColor,
                        bgColor: bgColor as Color,
                      )
                    ],
                  ),
                ),
              ),
            );
          }
        }));
  }

  Widget _buildPage(double gridWidth, int gridCount, double paddingLeft,
      double paddingRight) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(
          top: 50,
          left: paddingLeft,
          right: paddingRight,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            MainSection(
              maxGridWidth: gridWidth,
              gridCount: gridCount,
              changeBackGroundColor: changeBackGroundColor,
              bgColor: bgColor as Color,
            ),
            ProfileSection(
              bgColor: bgColor as Color,
              maxProfileWidth: 330,
            )
          ],
        ),
      ),
    );
  }
}
