import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio_website/data.dart';
import 'package:portfolio_website/sections/widgets/card_widget.dart';

class MainSection extends StatefulWidget {
  final double maxGridWidth;
  final int gridCount;
  final VoidCallback changeBackGroundColor;
  final Color bgColor;
  const MainSection(
      {super.key,
      required this.maxGridWidth,
      required this.gridCount,
      this.changeBackGroundColor = emptyFunction,
      required this.bgColor});

  static void emptyFunction() {}

  @override
  State<MainSection> createState() => _MainSectionState();
}

class _MainSectionState extends State<MainSection> {
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(maxWidth: widget.maxGridWidth),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.all(0),
            padding: const EdgeInsets.all(0),
            child: IconButton(
              onPressed: () {
                widget.changeBackGroundColor();
              },
              icon: Icon(
                widget.bgColor == const Color(0xFF202124)
                    ? FontAwesomeIcons.sun
                    : FontAwesomeIcons.moon,
                color: const Color(0xffA4A4A4),
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
            crossAxisCount: widget.gridCount,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            children: List.generate(projects1.length, (index) {
              return CardWidget(
                index: index,
                bgColor: widget.bgColor,
              );
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

          Wrap(
              spacing: 10,
              runSpacing: 10,
              direction: Axis.horizontal,
              alignment: WrapAlignment.start,
              children: List.generate(
                  10,
                  (index) => Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.1),
                                spreadRadius: 1,
                                blurRadius: 1,
                                offset: const Offset(
                                    0, 2), // changes position of shadow
                              ),
                            ],
                            color: widget.bgColor == const Color(0xFF202124)
                                ? const Color(0xff1b1c1f)
                                : const Color(0xFFFFFFFF),
                            borderRadius: BorderRadius.circular(10)),
                        child: Text(
                          techStack[index],
                          style: const TextStyle(color: Colors.grey),
                        ),
                      ))),
          const SizedBox(
            height: 50,
          )
        ],
      ),
    );
  }
}
