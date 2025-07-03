import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.contact_mail,
                    size: 24,
                    color: Theme.of(
                      context,
                    ).colorScheme.primary.withValues(alpha: 0.5),
                  ),
                  const SizedBox(width: 8),

                  Text(
                    'Contact Me',
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: _buildContactButton(
                      context,
                      'Email',
                      Icons.email,
                      _launchEmail,
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: _buildContactButton(
                      context,
                      'LinkedIn',
                      FontAwesomeIcons.linkedin,
                      _launchLinkedIn,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              Row(
                children: [
                  Expanded(
                    child: _buildContactButton(
                      context,
                      'Github',
                      FontAwesomeIcons.github,
                      _launchGithub,
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: _buildContactButton(
                      context,
                      'X',
                      FontAwesomeIcons.x,
                      _launchX,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _buildContactButton(
  BuildContext context,
  String label,
  IconData icon,
  VoidCallback callback,
) {
  return OutlinedButton.icon(
    onPressed: callback,
    label: Text(label),
    icon: Icon(icon, size: 18),
    style: OutlinedButton.styleFrom(
      padding: const EdgeInsets.symmetric(vertical: 12),
    ),
  );
}

Future<void> _launchEmail() async {
  final emailUri = Uri(
    scheme: 'mailto',
    path: 'andrewayiko15@gmail.com',
    query: 'Subject=Hello',
  );

  if (await canLaunchUrl(emailUri)) {
    await launchUrl(emailUri);
  }
}

Future<void> _launchLinkedIn() async {
  final url = 'https://www.linkedin.com/in/ayiko-andrew-aa9885239/';

  if (await canLaunchUrl(Uri.parse(url))) {
    await launchUrl(Uri.parse(url));
  }
}

Future<void> _launchGithub() async {
  final url = 'https://github.com/Ayikoandrew';

  if (await canLaunchUrl(Uri.parse(url))) {
    await launchUrl(Uri.parse(url));
  }
}

Future<void> _launchX() async {
  final url = 'https://x.com/realAyiko';

  if (await canLaunchUrl(Uri.parse(url))) {
    await launchUrl(Uri.parse(url));
  }
}
