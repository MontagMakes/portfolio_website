import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio_website/sections/widgets/card_widget.dart';

class MainSection extends StatelessWidget {
  final double maxGridWidth;
  final int gridCount;
  const MainSection(
      {super.key, required this.maxGridWidth, required this.gridCount});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(maxWidth: maxGridWidth),
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
            crossAxisCount: gridCount,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            children: List.generate(4, (index) {
              return CardWidget(index: index);
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
              direction: Axis.horizontal,
              alignment: WrapAlignment.start,
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
}
