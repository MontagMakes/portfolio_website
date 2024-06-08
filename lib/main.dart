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

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black87,
        body: Padding(
          padding: const EdgeInsets.only(left: 100, right: 20, top: 0, bottom: 0),
          child: LayoutBuilder(builder: (context, constraints) {
            //web
            if (constraints.maxWidth > 1141 && constraints.maxWidth < 2000) {
              return const SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.only(top: 100),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [MainSection(maxGridWidth: 800, gridCount: 3,), ProfileSection()],
                  ),
                ),
              );
          
              //tablet
            } else if (constraints.maxWidth > 841 &&
                constraints.maxWidth < 1140) {
              return const SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.only(top: 100),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [MainSection(maxGridWidth: 500, gridCount: 2,), ProfileSection()],
                  ),
                ),
              );
          
              //mobile
            } else {
              return const SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.only(top: 100),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [ ProfileSection(), MainSection(maxGridWidth: 300, gridCount: 1,)],
                  ),
                ),
              );
            }
          }),
        ));
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
