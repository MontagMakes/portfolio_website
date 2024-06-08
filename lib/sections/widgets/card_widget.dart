import 'package:flutter/material.dart';
import 'package:portfolio_website/main.dart';

class CardWidget extends StatelessWidget {
  final int index;
  const CardWidget({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
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
              projects[index][0],
            ),
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
                      padding: WidgetStateProperty.all<EdgeInsets>(
                          const EdgeInsets.only(
                              left: 5, right: 5, top: 5, bottom: 5)),
                      shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6.0))),
                      backgroundColor: WidgetStateColor.resolveWith(
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
