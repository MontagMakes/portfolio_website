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
    return MaterialApp(
      title: 'Arsalan K. Nizamani',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Color bgColor = const Color(0xFF202124);

  changeBackGroundColor() {
    setState(() {
      bgColor = bgColor == const Color(0xFF202124)
          ? const Color(0xFFFFFFFF)
          : const Color(0xFF202124);
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: bgColor,
        body: LayoutBuilder(builder: (context, constraints) {
          //web
          if (constraints.maxWidth > 1351 && constraints.maxWidth < 2000) {
            return _buildPage(800, 3, 100, 100);

            //tablet
          } else if (constraints.maxWidth > 931 &&
              constraints.maxWidth < 1350) {
            return _buildPage(500, 2, 50, 50);

            //mobile
          } else if (constraints.maxWidth < 930 && constraints.maxWidth > 711) {
            return SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(top: 100, left: 50, right: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const MainSection(
                      maxGridWidth: 300,
                      gridCount: 1,
                    ),
                    ProfileSection(
                      bgColor: bgColor,
                      maxProfileWidth: 330,
                    ),
                  ],
                ),
              ),
            );
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
                          bgColor: bgColor,
                          maxProfileWidth: 710,
                        ),
                      ),
                      const SizedBox(height: 15),
                      MainSection(
                        maxGridWidth: 380,
                        gridCount: 1,
                        changeBackGroundColor: changeBackGroundColor,
                      )
                    ],
                  ),
                ),
              ),
            );
          }
        }));
  }

  Widget _buildPage(gridWidth, gridCount, paddingLeft, paddingRight) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(
          top: 100,
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
            ),
            ProfileSection(
              bgColor: bgColor,
              maxProfileWidth: 330,
            )
          ],
        ),
      ),
    );
  }
}

List<List<String>> projects = [
  [
    "https://eyriscrafts.com/projects/advanced-news-app/bg.png",
    "/assets/icon.png",
    "NewsPak",
    "Superior news app with advanced features"
  ],
  [
    "https://eyriscrafts.com/projects/advanced-news-app/bg.png",
    "/assets/icon.png",
    "NewsPak",
    "Superior news app with advanced features"
  ],
  [
    "https://eyriscrafts.com/projects/advanced-news-app/bg.png",
    "/assets/icon.png",
    "NewsPak",
    "Superior news app with advanced features"
  ],
  [
    "https://eyriscrafts.com/projects/advanced-news-app/bg.png",
    "/assets/icon.png",
    "NewsPak",
    "Superior news app with advanced features"
  ],
];
