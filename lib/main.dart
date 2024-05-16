import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 120, right: 35, top: 100),
            child: Stack(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [_leftSection(), const ProfileSection()],
                )
              ],
            ),
          ),
        ));
  }

  ConstrainedBox _leftSection() {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 800, maxHeight: 1000),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.all(0),
            padding: const EdgeInsets.all(0),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                FontAwesomeIcons.moon,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Projects",
            style: TextStyle(fontSize: 20, color: Colors.grey),
          ),

          //Project Grid
          GridView.count(
            childAspectRatio: 0.85,
            crossAxisCount: 3,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            children: List.generate(4, (index) {
              return _cardWidget();
            }),
          ),

          //Project Grid
          const SizedBox(
            height: 100,
          ),

          const Text(
            "Tech",
            style: TextStyle(color: Color(0xffA4A4A4), fontSize: 20),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
              children: List.generate(
                  10,
                  (index) => Container(
                        margin: const EdgeInsets.only(right: 10),
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: const Color(0xff1B1C1F),
                            borderRadius: BorderRadius.circular(10)),
                        child: Text(
                          "Tech $index",
                          style: const TextStyle(color: Colors.grey),
                        ),
                      )))
        ],
      ),
    );
  }

  Widget _cardWidget() {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      margin: const EdgeInsets.all(10),
      color: const Color(0xff1B1C1F),
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Stack(
          children: [
            Image.network(
              "https://eyriscrafts.com/projects/advanced-news-app/bg.png",
            ),
            const Positioned(
              bottom: 90,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.play_arrow,
                  ),
                  Text(
                    "News Pak",
                    style: TextStyle(color: Color(0xffA4A4A4)),
                  ),
                ],
              ),
            ),
            const Positioned(
                bottom: 56,
                child: SizedBox(
                  width: 230,
                  child: Text("Superior news app with advanced features",
                      style: TextStyle(color: Colors.grey, fontSize: 12)),
                )),
            Positioned(
              bottom: 0,
              child: SizedBox(
                height: 25,
                width: 80,
                child: FilledButton(
                  onPressed: () {},
                  style: ButtonStyle(
                      padding: MaterialStateProperty.all<EdgeInsets>(
                          const EdgeInsets.only(
                              left: 5, right: 5, top: 5, bottom: 5)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6.0))),
                      backgroundColor: MaterialStateColor.resolveWith(
                          (states) => const Color(0xff0e0f11))),
                  child: const Text(
                    "PlayStore",
                    style: TextStyle(
                        color: Color(0xffA4A4A4),
                        fontWeight: FontWeight.bold,
                        fontSize: 12),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
