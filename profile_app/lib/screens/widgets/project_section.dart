import 'package:flutter/material.dart';

class ProjectSection extends StatelessWidget {
  const ProjectSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.work_outline,
                    size: 24,
                    color: Theme.of(
                      context,
                    ).colorScheme.primary.withValues(alpha: 0.5),
                  ),
                  const SizedBox(width: 8),
                  Text(
                    'Projects',
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              _buildProjectCard(
                context,
                'E-Commerce App',
                'A complete shopping app with cart, payments, and user management.',
                "",
                ['Flutter', 'Firebase', 'Stripe'],
              ),
              const SizedBox(height: 16),
              _buildProjectCard(
                context,
                'Weather App',
                'Beautiful weather app with location services and forecasts.',
                "",
                ['Flutter', 'APIs', 'Location'],
              ),
              const SizedBox(height: 16),
              _buildProjectCard(
                context,
                'Task Manager',
                'Productivity app for managing daily tasks and projects.',
                "",
                ['Flutter', 'SQLite', 'Notifications'],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _buildProjectCard(
  BuildContext context,
  String title,
  String description,
  String? imagePath,
  List<String>? technologies,
) {
  return Container(
    decoration: BoxDecoration(
      border: Border.all(color: Colors.grey.shade500),
      borderRadius: BorderRadius.circular(12),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadiusGeometry.vertical(top: Radius.circular(12)),
          child: Container(
            height: 120,
            width: double.infinity,
            color: Colors.grey.shade300,
            child: Icon(Icons.image, size: 40, color: Colors.grey),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: Theme.of(context).textTheme.titleMedium),
              const SizedBox(height: 8),
              Text(description, style: Theme.of(context).textTheme.bodyMedium),
              const SizedBox(height: 12),
              Wrap(
                runSpacing: 6,
                spacing: 6,
                children: technologies!
                    .map((tech) => _buildTechChip(context, tech))
                    .toList(),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

Widget _buildTechChip(context, String tech) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(12),
      color: Theme.of(context).colorScheme.primary.withValues(alpha: 0.5),
    ),
    child: Text(
      tech,
      style: Theme.of(
        context,
      ).textTheme.bodySmall?.copyWith(fontWeight: FontWeight.w600),
    ),
  );
}
