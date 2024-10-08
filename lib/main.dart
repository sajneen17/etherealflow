import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/foundation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size(375, 124),
          child: CustomAppBar(),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Center(child: Text('Reports Page Content')),
            BottomActionBar(),
          ],
        ),
      ),
    );
  }
}

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0xFFE6F0F2),
      elevation: 0, // No shadow
      flexibleSpace: SafeArea(
        child: Container(
          width: 375,
          height: 124,
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                decoration: const BoxDecoration(
                  color: Color(0xFFE6F0F2),
                ),
                width: 375,
                height: 82,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    Row(
                      children: [

                        SvgPicture.asset(
                          'assets/icons/x.svg',
                          color: const Color(0xFF1B6A75),
                          width: 24,
                          height: 24,
                        ),
                        const SizedBox(width: 8),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              children: const [
                                Text(
                                  'Azad (Branch)',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF1B6A75),
                                  ),
                                ),
                                Icon(Icons.keyboard_arrow_down, color: Color(0xFF1B6A75)),
                              ],
                            ),
                            const SizedBox(height: 4),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.grey[300],
                                borderRadius: BorderRadius.circular(4),
                              ),
                              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                              child: const Text(
                                'Admin',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Color(0xFF1B6A75),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),

                    Row(
                      children: [
                        Stack(
                          children: [
                            SvgPicture.asset(
                              'assets/icons/notification03.svg',
                              color: const Color(0xFF1B6A75),
                              width: 24,
                              height: 24,
                            ),
                            const Positioned(
                              right: 0,
                              child: CircleAvatar(
                                radius: 5,
                                backgroundColor: Colors.red, // Red notification dot
                              ),
                            )
                          ],
                        ),
                        const SizedBox(width: 8),

                        Container(
                          width: 24,
                          height: 24,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: const Color(0xFF004B5B),
                              width: 0.5,
                            ),
                            image: const DecorationImage(
                              image: AssetImage('images/ellipse1.png'), // Replace with the actual image
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              Container(
                width: 375,
                height: 42,
                color: const Color(0xFF006778),
                child: Row(
                  children: const [
                    IconButton(
                      onPressed: null,
                      icon: Icon(Icons.arrow_back, color: Colors.white),
                    ),
                    Text(
                      'Reports',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BottomActionBar extends StatelessWidget {
  const BottomActionBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      color: const Color(0xFFF8F9FA), // Add const
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [

          Expanded(
            child: PopupMenuButton<String>(
              onSelected: (value) {
                // Handle CSV/PDF selection
                if (kDebugMode) {
                  print('Selected: $value');
                }
              },
              itemBuilder: (context) => [
                const PopupMenuItem(
                  value: 'CSV',
                  child: Text('CSV'),
                ),
                const PopupMenuItem(
                  value: 'PDF',
                  child: Text('PDF'),
                ),
              ],
              offset: const Offset(0, -100),
              child: Container(
                height: 44,
                decoration: BoxDecoration(
                  color: const Color(0xFF006980),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Export Report as',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Icon(Icons.arrow_drop_down, color: Colors.white),
                    ],
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(width: 8),

          Row(
            children: [

              Container(
                width: 44,
                height: 44,
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: const Color(0xFFE6F0F2),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: SvgPicture.asset(
                  'assets/icons/mail01.svg',
                  color: const Color(0xFF006980),
                ),
              ),
              const SizedBox(width: 4),


              Container(
                width: 44,
                height: 44,
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: const Color(0xFFE6F0F2),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: SvgPicture.asset(
                  'assets/icons/printer.svg',
                  color: const Color(0xFF006980),
                ),
              ),
              const SizedBox(width: 4),


              Container(
                width: 44,
                height: 44,
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: const Color(0xFFE6F0F2),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: SvgPicture.asset(
                  'assets/icons/share08.svg',
                  color: const Color(0xFF006980),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
