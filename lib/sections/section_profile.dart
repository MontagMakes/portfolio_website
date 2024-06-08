import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfileSection extends StatelessWidget {
  const ProfileSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: Column(
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
            height: 15,
          ),
          const Center(
            child: Text(
              textWidthBasis: TextWidthBasis.longestLine,
              'Software Engineer with a keen Interest in Economy, Science and Gaming',
              style: TextStyle(fontSize: 13, color: Colors.grey),
            ),
          ),
          const SizedBox(
            height: 20,
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
          SizedBox(
            width: 300,
            child: Row(
              children: [
                FilledButton(
                  style: ButtonStyle(
                      backgroundColor:
                          WidgetStateProperty.all(const Color(0xff1b1c1f))),
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
                      Text('PlayStore', style: TextStyle(color: Color(0xffA4A4A4))),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                FilledButton(
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
                      Text('Github', style: TextStyle(color: Color(0xffA4A4A4))),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            width: 133,
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
                  Text('Linkedin', style: TextStyle(color: Color(0xffA4A4A4))),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
