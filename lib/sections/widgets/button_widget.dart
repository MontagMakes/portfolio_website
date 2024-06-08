import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ButtonWidget extends StatelessWidget {
  final String buttonName;
  final int buttonWidth;
  final IconData buttonIcon;
  const ButtonWidget({super.key, required this.buttonName, required this.buttonWidth, required this.buttonIcon});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
          );
  }
}