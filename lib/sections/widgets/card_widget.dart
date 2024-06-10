import 'package:flutter/material.dart';
import 'package:portfolio_website/data.dart';
import 'package:url_launcher/url_launcher.dart';

class CardWidget extends StatelessWidget {
  final int index;
  final Color bgColor;
  const CardWidget({super.key, required this.index, required this.bgColor});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      margin: const EdgeInsets.all(10),
      color: bgColor == const Color(0xFF202124)
          ? const Color(0xff1b1c1f)
          : const Color(0xFFFFFFFF),
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: SizedBox(
                  width: 400,
                  child: Image.asset(projects1[index]["asset"].toString())),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                projects1[index]["isLogo"] == "logo"
                    ? Image.asset(projects1[index]["playLogo"].toString(), height: 20, width: 23,)
                    : const Icon(Icons.play_arrow),
                Text(
                  projects1[index]["title"].toString(),
                  style: const TextStyle(color: Color(0xffA4A4A4)),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              width: 230,
              child: Text(projects1[index]["description"].toString(),
                  style: const TextStyle(color: Colors.grey, fontSize: 12)),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                projects1[index]["playLink"] == ""
                    ? const SizedBox()
                    : SizedBox(
                        height: 25,
                        width: 80,
                        child: FilledButton(
                          onPressed: () async {
                            Uri url = Uri.parse(projects1[index]["playLink"]
                                as String); // replace with your URL
                            if (await canLaunchUrl(url)) {
                              await launchUrl(url);
                            } else {
                              throw 'Could not launch $url';
                            }
                          },
                          style: ButtonStyle(
                              elevation: WidgetStateProperty.all<double>(3),
                              padding: WidgetStateProperty.all<EdgeInsets>(
                                  const EdgeInsets.only(
                                      left: 5, right: 5, top: 5, bottom: 5)),
                              shape: WidgetStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(6.0))),
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
                projects1[index]["webLink"] == ""
                    ? const SizedBox()
                    : SizedBox(
                        height: 25,
                        width: 80,
                        child: FilledButton(
                          onPressed: () async {
                            Uri url = Uri.parse(projects1[index]["webLink"]
                                as String); // replace with your URL
                            if (await canLaunchUrl(url)) {
                              await launchUrl(url);
                            } else {
                              throw 'Could not launch $url';
                            }
                          },
                          style: ButtonStyle(
                              elevation: WidgetStateProperty.all<double>(3),
                              padding: WidgetStateProperty.all<EdgeInsets>(
                                  const EdgeInsets.only(
                                      left: 5, right: 5, top: 5, bottom: 5)),
                              shape: WidgetStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(6.0))),
                              backgroundColor: WidgetStateColor.resolveWith(
                                  (states) => bgColor == const Color(0xFF202124)
                                      ? const Color(0xff1b1c1f)
                                      : const Color(0xFFFFFFFF))),
                          child: const Text(
                            "Demo",
                            style: TextStyle(
                                color: Color(0xffA4A4A4),
                                fontWeight: FontWeight.bold,
                                fontSize: 12),
                          ),
                        ),
                      ),
                const SizedBox(
                  width: 10,
                ),
                projects1[index]["gitLink"] == ""
                    ? const SizedBox()
                    : SizedBox(
                        height: 25,
                        width: 80,
                        child: FilledButton(
                          onPressed: () async {
                            Uri url = Uri.parse(projects1[index]["gitLink"]
                                as String); // replace with your URL
                            if (await canLaunchUrl(url)) {
                              await launchUrl(url);
                            } else {
                              throw 'Could not launch $url';
                            }
                          },
                          style: ButtonStyle(
                              elevation: WidgetStateProperty.all<double>(3),
                              padding: WidgetStateProperty.all<EdgeInsets>(
                                  const EdgeInsets.only(
                                      left: 5, right: 5, top: 5, bottom: 5)),
                              shape: WidgetStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(6.0))),
                              backgroundColor: WidgetStateColor.resolveWith(
                                  (states) => bgColor == const Color(0xFF202124)
                                      ? const Color(0xff1b1c1f)
                                      : const Color(0xFFFFFFFF))),
                          child: const Text(
                            "Github",
                            style: TextStyle(
                                color: Color(0xffA4A4A4),
                                fontWeight: FontWeight.bold,
                                fontSize: 12),
                          ),
                        ),
                      ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
