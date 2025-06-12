import 'package:flutter/material.dart';

class LearnScreen extends StatelessWidget {
  const LearnScreen({super.key});

  void _navigateToCategory(BuildContext context, String category) {
    // Placeholder for category navigation
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('$category content coming soon!'),
        duration: const Duration(seconds: 2),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Learn About Dinosaurs'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          _buildCategoryCard(
            context,
            'Dinosaur Eras',
            'Learn about different time periods when dinosaurs roamed the Earth',
            Icons.access_time,
          ),
          const SizedBox(height: 16),
          _buildCategoryCard(
            context,
            'Dinosaur Diets',
            'Discover what different dinosaurs ate and how they hunted',
            Icons.restaurant,
          ),
          const SizedBox(height: 16),
          _buildCategoryCard(
            context,
            'Dinosaur Habitats',
            'Explore where dinosaurs lived and their environments',
            Icons.landscape,
          ),
        ],
      ),
    );
  }

  Widget _buildCategoryCard(
    BuildContext context,
    String title,
    String description,
    IconData icon,
  ) {
    return Card(
      child: ListTile(
        leading: Icon(icon, size: 32),
        title: Text(
          title,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(description),
        trailing: const Icon(Icons.arrow_forward_ios),
        onTap: () => _navigateToCategory(context, title),
      ),
    );
  }
} 