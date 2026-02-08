import 'package:flutter/material.dart';
import '../../core/widgets/bottom_nav.dart';
import '../../core/utils/responsive.dart';
import '../../core/widgets/feature_card.dart';
import '../../core/theme/app_colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final features = FeatureData.items;

    return Scaffold(
      backgroundColor: const Color(0xffF5F7FB),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        toolbarHeight: 160,
        centerTitle: true,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xff2E315F), Color(0xff3A3E78)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
        title: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'SignSight',
              style: TextStyle(
                fontSize: Responsive.textSize(context, 24, 28, 32),
                fontWeight: FontWeight.bold,
                color: Colors.white,
                shadows: const [
                  Shadow(
                    color: Colors.black26,
                    blurRadius: 4,
                    offset: Offset(2, 2),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Bridging Communication with Sign Language Translation',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: Responsive.textSize(context, 12, 14, 16),
                color: Colors.white.withOpacity(0.85),
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const MainBottomNav(currentIndex: 0),
      body: LayoutBuilder(
        builder: (context, constraints) {
          int crossAxisCount = Responsive.gridCount(context);
          if (constraints.maxWidth < 600) crossAxisCount = 1;

          return SingleChildScrollView(
            padding: Responsive.padding(context),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: ConstrainedBox(
                    constraints: const BoxConstraints(maxWidth: 800),
                    child: GridView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: features.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: crossAxisCount,
                        mainAxisSpacing: 16,
                        crossAxisSpacing: 16,
                        childAspectRatio: 0.9,
                      ),
                      itemBuilder: (context, index) {
                        return FeatureCard(feature: features[index]);
                      },
                    ),
                  ),
                ),
                const SizedBox(height: 28),
                Container(
                  width: double.infinity,
                  padding: Responsive.padding(context),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 6,
                        offset: Offset(0, 4),
                      ),
                    ],
                    border: Border.all(color: Colors.grey.shade200),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      SizedBox(height: 12),
                      Text(
                        'How it works',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text('1. Open the camera and start translating sign language.'),
                      SizedBox(height: 8),
                      Text('2. View text or voice translation instantly.'),
                      SizedBox(height: 8),
                      Text('3. Access previous translations anytime.'),
                      SizedBox(height: 12),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Wrap(
                  spacing: 12,
                  runSpacing: 12,
                  alignment: WrapAlignment.center,
                  children: [
                    SizedBox(
                      width: Responsive.buttonWidth(context),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(vertical: 14),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          elevation: 4,
                          backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                        ),
                        onPressed: () {},
                        child: const Text('View History'),
                      ),
                    ),
                    SizedBox(
                      width: Responsive.buttonWidth(context),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(vertical: 14),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          elevation: 4,
                          backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                        ),
                        onPressed: () {},
                        child: const Text('Start Translating'),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 36),
              ],
            ),
          );
        },
      ),
    );
  }
}
