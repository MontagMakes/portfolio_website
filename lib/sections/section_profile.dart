import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

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
                fontSize: 13, fontWeight: FontWeight.bold, color: Colors.grey),
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
                      elevation: WidgetStateProperty.all(3),
                      shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                      backgroundColor: bgColor == const Color(0xFF202124)
                          ? WidgetStateProperty.all(const Color(0xff1b1c1f))
                          : WidgetStateProperty.all(const Color(0xFFF5F5F5))),
                  onPressed: () async {
                    await launchUrl(Uri.parse(
                        "https://play.google.com/store/apps/developer?id=MontagMakes"));
                  },
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
                      elevation: WidgetStateProperty.all(3),
                      shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                      backgroundColor: bgColor == const Color(0xFF202124)
                          ? WidgetStateProperty.all(const Color(0xff1b1c1f))
                          : WidgetStateProperty.all(const Color(0xFFF5F5F5))),
                  onPressed: () async {
                    await launchUrl(
                        Uri.parse("https://github.com/MontagMakes"));
                  },
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
                      elevation: WidgetStateProperty.all(3),
                      shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                      backgroundColor: bgColor == const Color(0xFF202124)
                          ? WidgetStateProperty.all(const Color(0xff1b1c1f))
                          : WidgetStateProperty.all(const Color(0xFFF5F5F5))),
                  onPressed: () async {
                    await launchUrl(Uri.parse(
                        "https://www.linkedin.com/in/arsalan-khan-87392b252/"));
                  },
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
