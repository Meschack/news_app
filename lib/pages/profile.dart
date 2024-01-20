import 'package:flutter/material.dart';
import 'package:news_app/class/profile_page_links_group.dart';

import '../components/atoms/custom_text.dart';
import '../config/sizes.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final List<ProfilePageLinksGroup> otherElements = [
    ProfilePageLinksGroup(
      "Reading History",
      [
        "Clapped Articles",
        "Read Articles",
      ],
    ),
    ProfilePageLinksGroup(
      "Settings",
      [
        "My Account",
        "Privacy Settings",
        "Offline Reading",
        "About Us",
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 80),
            child: Column(
              children: [
                Row(
                  children: [
                    const Image(
                      image: AssetImage("lib/assets/images/avatar.png"),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                          "Dianne Russell",
                          style: const TextStyle(
                            fontSize: Sizes.lg,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.collections_bookmark_outlined,
                              color: Colors.blue,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            CustomText(
                              "Bookworm",
                              style: const TextStyle(
                                color: Colors.blue,
                              ),
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                          "Article Read",
                          style: const TextStyle(
                            color: Colors.grey,
                            fontSize: Sizes.sm,
                          ),
                        ),
                        CustomText(
                          "320",
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: Sizes.lg,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                          "Streak",
                          style: const TextStyle(
                            color: Colors.grey,
                            fontSize: Sizes.sm,
                          ),
                        ),
                        CustomText(
                          "345 days",
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: Sizes.lg,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                          "Level",
                          style: const TextStyle(
                            color: Colors.grey,
                            fontSize: Sizes.sm,
                          ),
                        ),
                        CustomText(
                          "125",
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: Sizes.lg,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                const Divider(),
                const SizedBox(
                  height: 15,
                ),
                Column(
                  children: otherElements
                      .map(
                        (e) => Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomText(
                              e.title,
                              style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Column(
                              children: e.subElements
                                  .map((element) => GestureDetector(
                                        onTap: null,
                                        child: Container(
                                          margin:
                                              const EdgeInsets.only(top: 20),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              CustomText(
                                                element,
                                                style: const TextStyle(
                                                  fontSize: 16,
                                                ),
                                              ),
                                              const Icon(
                                                Icons.arrow_forward_ios_rounded,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ))
                                  .toList(),
                            ),
                            const SizedBox(
                              height: 25,
                            ),
                          ],
                        ),
                      )
                      .toList(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
