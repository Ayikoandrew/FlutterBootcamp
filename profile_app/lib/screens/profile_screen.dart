import 'package:flutter/material.dart';
import 'package:profile_app/screens/widgets/about_section.dart';
import 'package:profile_app/screens/widgets/contact_section.dart';
import 'package:profile_app/screens/widgets/profile_header.dart';
import 'package:profile_app/screens/widgets/project_section.dart';
import 'package:profile_app/screens/widgets/skill_section.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ProfileHeader(),
            SizedBox(height: 20),
            AboutSection(),
            SizedBox(height: 20),
            SkillSection(),
            SizedBox(height: 20),
            ContactSection(),
            SizedBox(height: 20),
            ProjectSection(),
          ],
        ),
      ),
    );
  }
}
