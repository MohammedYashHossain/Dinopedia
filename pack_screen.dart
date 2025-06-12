import 'package:flutter/material.dart';

class PackScreen extends StatelessWidget {
  const PackScreen({super.key});

  void _openPack(BuildContext context) {
    // Placeholder for pack opening logic
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Pack opening coming soon!'),
        duration: Duration(seconds: 2),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Open Packs'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Next free pack available in:',
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 8),
            const Text(
              '6:00:00',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 32),
            ElevatedButton.icon(
              onPressed: () => _openPack(context),
              icon: const Icon(Icons.card_giftcard),
              label: const Text('Open Pack'),
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                  horizontal: 32,
                  vertical: 16,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
} 