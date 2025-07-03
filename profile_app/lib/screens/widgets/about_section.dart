import 'package:flutter/material.dart';
import 'package:profile_app/screens/widgets/download_button.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.person,
                    size: 24,
                    color: Theme.of(
                      context,
                    ).colorScheme.primary.withValues(alpha: 0.5),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'About Me',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  Spacer(),
                  SizedBox(
                    width: 80,
                    child: ButtonShapeWidget(
                      isDownloading: false,
                      isDownloaded: false,
                      isFetching: true,
                      transitionDuration: const Duration(milliseconds: 200),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Text(
                'Passionate Flutter developer with a love for creating beautiful, functional mobile applications. I enjoy solving complex problems and turning ideas into reality through clean, efficient code.',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              Wrap(
                spacing: 8,
                runSpacing: 8,
                children: [
                  _buildInterestChip(context, 'Mobile Development'),
                  _buildInterestChip(context, 'UI/UX Design'),
                  _buildInterestChip(context, 'Problem Solving'),
                  _buildInterestChip(context, 'Learning'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _buildInterestChip(BuildContext context, String content) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      color: Theme.of(context).colorScheme.surface,
      border: Border.all(
        color: Theme.of(context).colorScheme.primary.withValues(alpha: 0.5),
      ),
    ),
    child: Text(
      content,
      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
        fontWeight: FontWeight.w500,
        color: Theme.of(context).colorScheme.primary,
      ),
    ),
  );
}
