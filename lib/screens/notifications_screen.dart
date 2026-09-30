import 'package:flutter/material.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Center(
        child: Text('Notifications\n\nFirebase FCM will be added later.',
            textAlign: TextAlign.center, style: TextStyle(fontSize: 20)),
      ),
    );
  }
}
