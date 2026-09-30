import 'package:flutter/material.dart';
import '../widgets/room_card.dart';

class RoomsScreen extends StatelessWidget {
  const RoomsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: const Text('Live Rooms'),
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          ],
        ),
        body: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            FilledButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.add),
              label: const Text('Create Room'),
            ),
            const SizedBox(height: 18),
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 6,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
                childAspectRatio: .90,
              ),
              itemBuilder: (_, i) => RoomCard(
                title: 'Vibez Room ${i + 1}',
                host: 'Host ${i + 1}',
                listeners: 10 + i * 7,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
