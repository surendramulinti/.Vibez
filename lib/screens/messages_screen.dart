import 'package:flutter/material.dart';

class MessagesScreen extends StatelessWidget {
  const MessagesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const _Placeholder(
      icon: Icons.chat_bubble_outline,
      title: 'Messages',
      subtitle: 'Private messaging will be connected to Firebase in V2.',
    );
  }
}

class _Placeholder extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;

  const _Placeholder({required this.icon, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, size: 64, color: const Color(0xFFB68CFF)),
              const SizedBox(height: 18),
              Text(title, style: const TextStyle(fontSize: 26, fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              Text(subtitle, textAlign: TextAlign.center, style: const TextStyle(color: Colors.white60)),
            ],
          ),
        ),
      ),
    );
  }
}
