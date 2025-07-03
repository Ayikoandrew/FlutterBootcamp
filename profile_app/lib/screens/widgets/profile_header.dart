import 'package:flutter/material.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: Stack(
        children: [
          Container(
            height: 200,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Theme.of(context).colorScheme.primary,
                  Theme.of(context).colorScheme.secondary,
                ],
                begin: Alignment.topRight,
                end: Alignment.bottomRight,
              ),
            ),
            child: Container(
              padding: const EdgeInsets.only(bottom: 8, top: 8),
              decoration: BoxDecoration(
                color: Colors.black.withValues(),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    'https://lh3.googleusercontent.com/a/ACg8ocKzqI-0PJHF1E9Jy6bVOfT8Ik6T_6hXAsMTxzDcvQRtLblFo2-j=s288-c-no',
                  ),
                ),
              ),
            ),
          ),

          Positioned(
            bottom: 10,
            left: 0,
            right: 0,
            child: Column(
              children: [
                Text(
                  'Ayiko Andrew',
                  style: Theme.of(context).textTheme.headlineMedium,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 4),
                Text(
                  'Flutter Developer',
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    fontWeight: FontWeight.w500,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
