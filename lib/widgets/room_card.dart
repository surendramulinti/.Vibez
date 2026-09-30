import 'package:flutter/material.dart';

class RoomCard extends StatelessWidget {
  final String title;
  final String host;
  final int listeners;

  const RoomCard({
    super.key,
    required this.title,
    required this.host,
    required this.listeners,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 190,
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Color(0xFF251A3A), Color(0xFF12121C)],
        ),
        border: Border.all(color: Colors.white10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 90,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: const Color(0xFF191323),
            ),
            child: const Center(
              child: Icon(Icons.graphic_eq, size: 42, color: Color(0xFFB68CFF)),
            ),
          ),
          const SizedBox(height: 10),
          Text(title, maxLines: 1, overflow: TextOverflow.ellipsis,
              style: const TextStyle(fontWeight: FontWeight.bold)),
          const SizedBox(height: 4),
          Text(host, style: const TextStyle(color: Colors.white60)),
          const SizedBox(height: 8),
          Row(
            children: [
              const Icon(Icons.people_outline, size: 16, color: Colors.white60),
              const SizedBox(width: 4),
              Text('$listeners', style: const TextStyle(color: Colors.white60)),
              const Spacer(),
              const Icon(Icons.circle, size: 8, color: Colors.greenAccent),
              const SizedBox(width: 4),
              const Text('LIVE', style: TextStyle(fontSize: 11)),
            ],
          ),
        ],
      ),
    );
  }
}
