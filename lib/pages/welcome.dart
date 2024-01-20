import 'package:flutter/material.dart';
import 'package:news_app/config/sizes.dart';
import 'package:news_app/pages/base.dart';

import '../components/atoms/custom_text.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTextStyle.merge(
        style: const TextStyle(fontFamily: 'PlusJakartaSans'),
        child: Stack(
          children: [
            Container(
              color: Colors.blue,
              height: MediaQuery.of(context).size.height,
            ),
            Positioned(
              top: MediaQuery.of(context).size.height / 30,
              left: 0,
              child: const Image(
                image: AssetImage('lib/assets/images/welcome-hero.png'),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    topRight: Radius.circular(30.0),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 15.0,
                    vertical: 30,
                  ),
                  child: Column(
                    children: [
                      CustomText(
                        "Get The Latest News And Updates",
                        style: const TextStyle(
                          fontSize: Sizes.xs,
                          fontWeight: FontWeight.w600,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      CustomText(
                        'From Politics to Entertainment: Your One-Stop Source for Comprehensive Coverage of the Latest News and Developments Across the Glob will be right on your hand.',
                        style: const TextStyle(
                          fontSize: Sizes.md,
                          fontWeight: FontWeight.w500,
                          color: Colors.blueGrey,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      ElevatedButton.icon(
                        icon: const Icon(Icons.arrow_forward),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const MainPagesBaseScreen(
                                  initialPageLabel: 'home'),
                            ),
                          );
                        },
                        style: ButtonStyle(
                          padding: const MaterialStatePropertyAll<EdgeInsets>(
                            EdgeInsets.symmetric(
                              vertical: 15,
                              horizontal: 20,
                            ),
                          ),
                          backgroundColor:
                              const MaterialStatePropertyAll(Colors.blue),
                          foregroundColor:
                              const MaterialStatePropertyAll(Colors.white),
                          shape: MaterialStatePropertyAll(
                            OutlinedBorder.lerp(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50),
                              ),
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50),
                              ),
                              0.5,
                            ),
                          ),
                          textStyle: const MaterialStatePropertyAll<TextStyle>(
                            TextStyle(
                              fontSize: Sizes.xs,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        label: CustomText("Explore"),
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                    ],
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
