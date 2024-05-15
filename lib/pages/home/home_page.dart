import 'package:flutter/material.dart';
import 'package:learnify/styles/color.dart';
import 'package:learnify/widgets/course_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

List<String> categories = [
  'Art',
  'Coding',
  'Design',
  'Finance',
  'History',
];

List<String> images = [
  'image1.png',
  'image2.png',
  'image3.png',
];

List<String> titles = [
  'UI UX Design Principle',
  'Grapic Design Fundamentals',
  'Motion Graphics Introduction',
];

List<String> prices = [
  '1800',
  '1200',
  '1500',
];
int currentIndex = 0;

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteBg,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Icon(
                      Icons.drag_handle,
                      size: 26,
                    ),
                    GestureDetector(
                      onTap: () => Navigator.pushNamed(context, '/notif'),
                      child: const Icon(
                        Icons.notifications_outlined,
                        size: 26,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 24,
                ),
                const Text(
                  'Hello User!',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: blackColor,
                  ),
                ),
                const SizedBox(
                  height: 4,
                ),
                const Text(
                  'What do you want to learn today?',
                  style: TextStyle(
                    fontSize: 14,
                    color: greyColor,
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search Course',
                      prefixIcon: const Icon(
                        Icons.search,
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Image.asset('assets/banner.png'),
                const SizedBox(
                  height: 24,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 40,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: categories.length,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            setState(() {
                              currentIndex = index;
                            });
                          },
                          child: Container(
                            alignment: Alignment.center,
                            margin: const EdgeInsets.only(right: 8),
                            decoration: BoxDecoration(
                                color: currentIndex == index
                                    ? primaryColor
                                    : secondaryColor,
                                borderRadius: BorderRadius.circular(12)),
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: Text(
                              categories[index],
                              style: TextStyle(
                                  fontSize: 14,
                                  color: currentIndex == index
                                      ? whiteColor
                                      : blackColor,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        );
                      }),
                ),
                const SizedBox(
                  height: 24,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 340,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: images.length,
                    itemBuilder: (context, index) {
                      return CourseWidget(
                          image: images[index],
                          title: titles[index],
                          price: prices[index]);
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
