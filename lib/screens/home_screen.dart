import 'package:flutter/material.dart';
import '../widgets/room_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            backgroundColor: const Color(0xFF09090F),
            title: const Text('.Vibez', style: TextStyle(fontWeight: FontWeight.w800)),
            actions: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
              IconButton(onPressed: () {}, icon: const Icon(Icons.notifications_none)),
            ],
          ),
          SliverPadding(
            padding: const EdgeInsets.fromLTRB(16, 8, 16, 24),
            sliver: SliverList(
              delegate: SliverChildListDelegate([
                const Text('Live now', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                const SizedBox(height: 12),
                SizedBox(
                  height: 205,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemCount: 4,
                    separatorBuilder: (_, __) => const SizedBox(width: 12),
                    itemBuilder: (_, i) => RoomCard(
                      title: ['Late Night Vibes', 'Music Lounge', 'Friends Zone', 'Chill Talk'][i],
                      host: ['Vibez Host', 'Music Lover', 'Friends', 'Chill Room'][i],
                      listeners: [128, 74, 42, 19][i],
                    ),
                  ),
                ),
                const SizedBox(height: 28),
                const Text('Recommended', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                const SizedBox(height: 12),
                _FeatureTile(icon: Icons.mic, title: 'Create a live room', subtitle: 'Talk with your community'),
                _FeatureTile(icon: Icons.people_alt_outlined, title: 'Meet people', subtitle: 'Discover new Vibez users'),
                _FeatureTile(icon: Icons.card_giftcard, title: 'Send gifts', subtitle: 'Coming in the next version'),
              ]),
            ),
          ),
        ],
      ),
    );
  }
}

class _FeatureTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;

  const _FeatureTile({required this.icon, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xFF12121C),
      margin: const EdgeInsets.only(bottom: 10),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: const Color(0xFF251A3A),
          child: Icon(icon, color: const Color(0xFFB68CFF)),
        ),
        title: Text(title, style: const TextStyle(fontWeight: FontWeight.w600)),
        subtitle: Text(subtitle),
        trailing: const Icon(Icons.chevron_right),
      ),
    );
  }
}
