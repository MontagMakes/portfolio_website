import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfileSection extends StatelessWidget {
  final double maxProfileWidth;
  final Color bgColor;
  const ProfileSection({
    super.key,
    required this.maxProfileWidth,
    required this.bgColor,
  });

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(maxWidth: maxProfileWidth),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CircleAvatar(
            radius: 70,
            foregroundImage: AssetImage('assets/avatar.jpeg'),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'Arsalan K. Nizamani',
            style: TextStyle(fontSize: 20, color: Color(0xffA4A4A4)),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'Software Engineer with a keen Interest in Economy, Science and Gaming',
            maxLines: 3,
            style: TextStyle(fontSize: 13, color: Colors.grey),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'More about me',
            style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.bold,
                color: Color(0xff374151)),
          ),
          const SizedBox(
            height: 20,
          ),
          Wrap(
            alignment: WrapAlignment.center,
            runSpacing: 10,
            spacing: 10,
            children: [
              SizedBox(
                width: 140,
                child: FilledButton(
                  style: ButtonStyle(
                      backgroundColor: bgColor == const Color(0xFF202124)
                          ? WidgetStateProperty.all(const Color(0xff1b1c1f))
                          : WidgetStateProperty.all(const Color(0xFFFFFFFF))),
                  onPressed: () {},
                  child: const Row(
                    children: [
                      Icon(
                        FontAwesomeIcons.googlePlay,
                        color: Color(0xffA4A4A4),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text('PlayStore',
                          style: TextStyle(color: Color(0xffA4A4A4))),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 140,
                child: FilledButton(
                  style: ButtonStyle(
                      backgroundColor:
                          WidgetStateProperty.all(const Color(0xff1b1c1f))),
                  onPressed: () {},
                  child: const Row(
                    children: [
                      Icon(
                        FontAwesomeIcons.github,
                        color: Color(0xffA4A4A4),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text('Github',
                          style: TextStyle(color: Color(0xffA4A4A4))),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 140,
                child: FilledButton(
                  style: ButtonStyle(
                      backgroundColor:
                          WidgetStateProperty.all(const Color(0xff1b1c1f))),
                  onPressed: () {},
                  child: const Row(
                    children: [
                      Icon(FontAwesomeIcons.linkedin, color: Color(0xffA4A4A4)),
                      SizedBox(
                        width: 5,
                      ),
                      Text('Linkedin',
                          style: TextStyle(color: Color(0xffA4A4A4))),
                    ],
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
