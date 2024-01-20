import 'package:flutter/material.dart';
import 'package:news_app/components/atoms/custom_text.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  TextEditingController searchController = TextEditingController();

  clearSearchInput() {
    setState(() {
      searchController.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(
                top: 80,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.7,
                    decoration: const BoxDecoration(
                      color: Color(0xFFF0EFEF),
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    ),
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 1.5),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(5)),
                      ),
                      child: Row(
                        children: [
                          const Center(
                            child: Icon(
                              Icons.search_outlined,
                              color: Colors.grey,
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Expanded(
                            child: TextFormField(
                              style: CustomText.textStyle().merge(
                                const TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 19,
                                ),
                              ),
                              decoration: const InputDecoration(
                                contentPadding:
                                    EdgeInsets.symmetric(vertical: 10),
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                          Center(
                            child: IconButton(
                              icon: const Icon(
                                Icons.clear,
                                color: Colors.grey,
                              ),
                              onPressed: () => clearSearchInput(),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: TextButton(
                      onPressed: () => Navigator.pop(context),
                      child: CustomText(
                        "Cancel",
                        style: const TextStyle(
                          color: Colors.blue,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
