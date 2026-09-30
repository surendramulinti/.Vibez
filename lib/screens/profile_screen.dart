import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          const SizedBox(height: 20),
          const CircleAvatar(
            radius: 52,
            backgroundColor: Color(0xFF251A3A),
            child: Icon(Icons.person, size: 54, color: Color(0xFFB68CFF)),
          ),
          const SizedBox(height: 14),
          const Center(child: Text('Vibez User', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold))),
          const SizedBox(height: 4),
          const Center(child: Text('Vibez ID: 100001', style: TextStyle(color: Colors.white60))),
          const SizedBox(height: 18),
          FilledButton.icon(onPressed: () {}, icon: const Icon(Icons.edit), label: const Text('Edit Profile')),
          const SizedBox(height: 20),
          Card(
            color: Color(0xFF12121C),
            child: Column(
              children: const [
                ListTile(leading: Icon(Icons.person_outline), title: Text('Bio'), subtitle: Text('Welcome to .Vibez')),
                ListTile(leading: Icon(Icons.people_outline), title: Text('Followers'), trailing: Text('0')),
                ListTile(leading: Icon(Icons.favorite_border), title: Text('Following'), trailing: Text('0')),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
