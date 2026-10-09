import 'package:flutter/material.dart';

void main() {
  runApp(const PersonalIdCardApp());
}

/// The root application widget.
class PersonalIdCardApp extends StatelessWidget {
  const PersonalIdCardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Personal Identity Card',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFFD9467A),
        ),
        useMaterial3: true,
      ),
      home: const IdCardScreen(),
    );
  }
}

/// The main ID Card screen implementing the requested widget structure:
/// Scaffold
/// └── AppBar
/// └── Center
///     └── Container
///         └── Column
///             ├── CircleAvatar
///             ├── Text → Name
///             ├── Text → Profession
///             ├── SizedBox
///             ├── Row
///             │   ├── Column (Icon + Text → Age)
///             │   ├── Column (Icon + Text → ID No.)
///             │   └── Column (Icon + Text → Blood Group)
///             ├── SizedBox
///             └── Container
///                 └── Row (Icon → Email + Text → Email Address)
class IdCardScreen extends StatelessWidget {
  const IdCardScreen({super.key});

  // Personal Information details as specified in the assignment
  static const String name = 'Saumya C';
  static const String profession = 'Software Developer';
  static const String location = 'Mumbai, India';
  static const String age = '21 Years';
  static const String idNo = 'ID2026001';
  static const String bloodGroup = 'O+';
  static const String email = 'saumyach100@gmail.com';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF5F8), // Soft cute blush background
      appBar: AppBar(
        title: const Text(
          'Personal Identity Card',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            letterSpacing: 0.5,
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFFD9467A), // Cute berry rose
        foregroundColor: Colors.white,
        elevation: 2,
      ),
      body: Center(
        child: Container(
          width: 360,
          margin: const EdgeInsets.symmetric(horizontal: 16),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 32),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(24),
            border: Border.all(
              color: const Color(0xFFFCE7F3), // Cute pastel pink border
              width: 1.5,
            ),
            boxShadow: const [
              BoxShadow(
                color: Color(0x1ADB2777), // Soft rose glow shadow
                blurRadius: 24,
                offset: Offset(0, 10),
              ),
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Profile Avatar
              const CircleAvatar(
                radius: 48,
                backgroundColor: Color(0xFFF472B6), // Cute candy pink
                child: Icon(
                  Icons.person,
                  size: 52,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 16),

              // Person's Name
              const Text(
                name,
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF1F2937),
                  letterSpacing: 0.3,
                ),
              ),
              const SizedBox(height: 4),

              // Person's Profession
              const Text(
                profession,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFFD9467A), // Cute rose accent
                  letterSpacing: 0.2,
                ),
              ),
              const SizedBox(height: 4),

              // Location
              const Text(
                location,
                style: TextStyle(
                  fontSize: 13,
                  color: Color(0xFF6B7280),
                  fontWeight: FontWeight.w500,
                ),
              ),

              // Spacing before statistics
              const SizedBox(height: 24),

              // Personal Statistics Row
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // Statistic 1: Age
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.cake,
                        color: Color(0xFFF59E0B),
                        size: 26,
                      ),
                      SizedBox(height: 6),
                      Text(
                        age,
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF374151),
                        ),
                      ),
                    ],
                  ),

                  // Statistic 2: ID No.
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.badge,
                        color: Color(0xFFD9467A),
                        size: 26,
                      ),
                      SizedBox(height: 6),
                      Text(
                        idNo,
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF374151),
                        ),
                      ),
                    ],
                  ),

                  // Statistic 3: Blood Group
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.bloodtype,
                        color: Color(0xFFE11D48),
                        size: 26,
                      ),
                      SizedBox(height: 6),
                      Text(
                        bloodGroup,
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF374151),
                        ),
                      ),
                    ],
                  ),
                ],
              ),

              // Spacing before email section
              const SizedBox(height: 28),

              // Bottom Email Address Badge / Container
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 12,
                ),
                decoration: BoxDecoration(
                  color: const Color(0xFFFDF2F8), // Soft blush container
                  borderRadius: BorderRadius.circular(14),
                  border: Border.all(
                    color: const Color(0xFFFBCFE8), // Pastel pink border
                  ),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.email,
                      color: Color(0xFFD9467A),
                      size: 18,
                    ),
                    SizedBox(width: 8),
                    Flexible(
                      child: Text(
                        email,
                        style: TextStyle(
                          fontSize: 12.5,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF831843),
                        ),
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
