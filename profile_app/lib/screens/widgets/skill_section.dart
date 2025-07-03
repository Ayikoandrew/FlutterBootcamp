import 'package:flutter/material.dart';

class SkillSection extends StatelessWidget {
  const SkillSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Row(
                children: [
                  Icon(
                    Icons.code,
                    size: 24,
                    color: Theme.of(
                      context,
                    ).colorScheme.primary.withValues(alpha: 0.5),
                  ),
                  const SizedBox(width: 8),
                  Text('Skills', style: Theme.of(context).textTheme.titleLarge),
                ],
              ),
              const SizedBox(height: 20),
              _buildSkillItem(context, 'Flutter', 0.85),
              _buildSkillItem(context, 'Dart', 0.80),
              _buildSkillItem(context, 'Firebase', 0.70),
              _buildSkillItem(context, 'Rest APIs', 0.80),
              _buildSkillItem(context, 'Git', 0.70),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _buildSkillItem(BuildContext context, String skill, double progress) {
  return Container(
    padding: const EdgeInsets.only(bottom: 16),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              skill,
              style: Theme.of(
                context,
              ).textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.w500),
            ),
            Text(
              '${(progress * 100).toInt()}%',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
        const SizedBox(height: 8),
        LinearProgressIndicator(
          value: progress,
          backgroundColor: Colors.grey[300],
          valueColor: AlwaysStoppedAnimation<Color>(
            Theme.of(context).colorScheme.primary,
          ),
          minHeight: 6,
        ),
      ],
    ),
  );
}
