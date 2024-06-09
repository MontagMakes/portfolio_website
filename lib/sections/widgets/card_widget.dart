import 'package:flutter/material.dart';
import 'package:portfolio_website/main.dart';

class CardWidget extends StatelessWidget {
  final int index;
  final Color bgColor;
  const CardWidget({super.key, required this.index, required this.bgColor});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      margin: const EdgeInsets.all(10),
      color: bgColor == const Color(0xFF202124)
          ? const Color(0xff1b1c1f)
          : const Color(0xFFFFFFFF),
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Stack(
          children: [
            SizedBox(
                height: 150,
                width: 300,
                child: projects[index][4] == "asset"
                    ? Image.asset(projects[index][0])
                    : Image.network(
                        projects[index][0],
                      )),
            // projects[index][4] == "asset"
            //     ? Image.asset(projects[index][0])
            //     : Image.network(
            //         projects[index][0],
            //       ),
            Positioned(
              bottom: 90,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Icon(
                    Icons.play_arrow,
                  ),
                  Text(
                    projects[index][2],
                    style: const TextStyle(color: Color(0xffA4A4A4)),
                  ),
                ],
              ),
            ),
            Positioned(
                bottom: 56,
                child: SizedBox(
                  width: 230,
                  child: Text(projects[index][3],
                      style: const TextStyle(color: Colors.grey, fontSize: 12)),
                )),
            Positioned(
              bottom: 0,
              child: SizedBox(
                height: 25,
                width: 80,
                child: FilledButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    elevation: WidgetStateProperty.all<double>(10),
                    side: WidgetStateProperty.all<BorderSide>(
                        const BorderSide(color: Color(0xffA4A4A4))),
                      padding: WidgetStateProperty.all<EdgeInsets>(
                          const EdgeInsets.only(
                              left: 5, right: 5, top: 5, bottom: 5)),
                      shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6.0))),
                      backgroundColor: WidgetStateColor.resolveWith(
                          (states) => bgColor == const Color(0xFF202124)
                              ? const Color(0xff1b1c1f)
                              : const Color(0xFFFFFFFF))),
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
