import 'package:flutter/material.dart';
import 'package:learnify/styles/color.dart';
import 'package:learnify/widgets/lesson_widget.dart';
import 'package:learnify/widgets/resource_widget.dart';

class CoursePage extends StatefulWidget {
  const CoursePage({super.key});

  @override
  State<CoursePage> createState() => _CoursePageState();
}

class _CoursePageState extends State<CoursePage> with TickerProviderStateMixin {
  late TabController tabController1;
  late TabController tabController2;

  @override
  void initState() {
    tabController1 = TabController(length: 2, vsync: this);
    tabController2 = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    tabController1.dispose();
    tabController2.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteBg,
      body: Stack(
        children: [
          Image.asset('assets/shape_course.png'),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () => Navigator.pop(context),
                        child: const Icon(
                          Icons.arrow_back,
                          size: 26,
                          color: whiteColor,
                        ),
                      ),
                      const Text(
                        'UI UX Design Principle',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: whiteColor,
                        ),
                      ),
                      const SizedBox()
                    ],
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 260,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: Image.asset(
                        'assets/image1.png',
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: secondaryColor,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 8),
                        child: const Text(
                          'Beginner Level',
                          style: TextStyle(
                            fontSize: 12,
                            color: blackColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: secondaryColor,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 8),
                        child: const Text(
                          'Design',
                          style: TextStyle(
                            fontSize: 12,
                            color: blackColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: secondaryColor,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 8),
                        child: const Text(
                          'UX',
                          style: TextStyle(
                            fontSize: 12,
                            color: blackColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  tabs(),
                  const SizedBox(
                    height: 20,
                  ),
                  tabView(),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        color: whiteColor,
        padding: const EdgeInsets.symmetric(horizontal: 24),
        width: double.infinity,
        height: 100,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              '\$1800',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: primaryColor,
              ),
            ),
            SizedBox(
              width: 120,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  backgroundColor: primaryColor,
                ),
                onPressed: () {},
                child: const Text(
                  'Enroll',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: whiteColor,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget tabs() {
    return Container(
      decoration: BoxDecoration(
          color: whiteColor, borderRadius: BorderRadius.circular(12)),
      child: TabBar(
        controller: tabController1,
        indicator: BoxDecoration(
          borderRadius: BorderRadius.circular(
            12,
          ),
          color: primaryColor,
        ),
        indicatorSize: TabBarIndicatorSize.tab,
        labelColor: whiteColor,
        labelStyle: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.bold,
          color: whiteColor,
        ),
        unselectedLabelStyle: const TextStyle(
            fontSize: 14, fontWeight: FontWeight.w500, color: greyColor),
        dividerColor: Colors.transparent,
        tabs: const [
          Tab(
            text: 'Overview',
          ),
          Tab(
            text: 'Course Content',
          ),
        ],
      ),
    );
  }

  Widget tabView() {
    return Expanded(
      child: TabBarView(
        controller: tabController1,
        children: [
          overviewTab(),
          courseContentTab(),
        ],
      ),
    );
  }

  Widget overviewTab() {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 24,
            ),
            width: double.infinity,
            decoration: BoxDecoration(
              color: whiteColor,
              borderRadius: BorderRadius.circular(12),
            ),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'About Course',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: blackColor,
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Text(
                    'Dive into the world of user-centered design, understanding user behavior, and crafting seamless digital experiences. Learn essential techniques for creating intuitive interfaces, optimizing user flows, and designing visually appealing layouts. Elevate your skills and create engaging digital products that delight users and drive success.')
              ],
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 24,
            ),
            width: double.infinity,
            decoration: BoxDecoration(
              color: whiteColor,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 56,
                      height: 56,
                      child: Image.asset('assets/user_avatar.png'),
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Rahul',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: blackColor,
                          ),
                        ),
                        Text(
                          'Ex-Employee at Google',
                          style: TextStyle(
                            fontSize: 12,
                            color: blackColor,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 12,
                ),
                const Text(
                  'About Instructor',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: blackColor,
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                const Text(
                    'Meet Rahul, your guide to mastering UI/UX Design Principles. With 10 years of experience in the field and a passion for creating user-centric designs, Rahul brings a wealth of knowledge to the table. As a seasoned professional, he has worked on numerous projects, honing his skills in crafting intuitive interfaces and delightful user experiences. With his expertise and dedication, Rahul is committed to helping you unlock your potential in the exciting world of UI/UX design. Join his course today and embark on a transformative learning journey!'),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget courseContentTab() {
    return Column(
      children: [
        SizedBox(
          child: TabBar(
            controller: tabController2,
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorColor: primaryColor,
            labelColor: primaryColor,
            unselectedLabelColor: blackColor,
            tabs: const [
              Tab(
                text: 'Lessons',
              ),
              Tab(
                text: 'Resource',
              )
            ],
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        Expanded(
          child: TabBarView(
            controller: tabController2,
            children: [
              lessonList(),
              resourceList(),
            ],
          ),
        )
      ],
    );
  }

  Widget lessonList() {
    return const SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          LessonWidget(
            number: 1,
            title: 'Introduction to UI/UX Design',
            time: '10',
            done: true,
          ),
          Text(
            'Get a glimpse of what the course offers. Watch the Introduction chapter for free',
            style: TextStyle(
              fontSize: 10,
              color: blackColor,
              fontStyle: FontStyle.italic,
            ),
          ),
          SizedBox(
            height: 12,
          ),
          LessonWidget(
            number: 2,
            title: 'Understanding User Psychology',
            time: '15',
            done: false,
          ),
          LessonWidget(
            number: 3,
            title: 'User Research Methods',
            time: '1hr 30',
            done: false,
          ),
          LessonWidget(
            number: 4,
            title: 'Creating User Personas',
            time: '45',
            done: false,
          ),
          LessonWidget(
            number: 5,
            title: 'Information Architecture Fundamentals',
            time: '1hr 15',
            done: false,
          ),
          LessonWidget(
            number: 6,
            title: 'Wireframing Techniques',
            time: '2hr 30',
            done: false,
          ),
        ],
      ),
    );
  }

  Widget resourceList() {
    return const SingleChildScrollView(
      child: Column(
        children: [
          ResourceWidget(
            image: 'assets/src1.png',
            title: 'The Importance of User-Centered Design in UI/UX',
            status: '3 min read',
          ),
          ResourceWidget(
            image: 'assets/image1.png',
            title: 'Mastering Typography for Improved User Experience',
            status: '3 min read',
          ),
          ResourceWidget(
            image: 'assets/src2.png',
            title: 'The Future of UI/UX: Trends to Watch Out For',
            status: '3 min read',
          ),
        ],
      ),
    );
  }
}
