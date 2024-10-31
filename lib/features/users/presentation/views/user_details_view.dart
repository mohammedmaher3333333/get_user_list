import 'package:flutter/material.dart';
import 'package:get_user_list/features/users/data/users_model/users_model.dart';

class UserDetailPage extends StatelessWidget {
  final UserModel user;

  const UserDetailPage({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(user.name ?? 'User Details'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            // User ID
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.blue[100],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                'ID: ${user.id ?? 'N/A'}',
                style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueAccent),
              ),
            ),
            const SizedBox(height: 16),
            // User Name
            Text(
              'Name: ${user.name ?? 'Unknown'}',
              style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87),
            ),
            const SizedBox(height: 8),
            // Username
            Text(
              'Username: ${user.username ?? 'N/A'}',
              style: TextStyle(fontSize: 20, color: Colors.grey[700]),
            ),
            const SizedBox(height: 8),
            // Email
            Text(
              'Email: ${user.email ?? 'No Email'}',
              style: TextStyle(fontSize: 20, color: Colors.grey[700]),
            ),
            const SizedBox(height: 8),
            // Phone
            Text(
              'Phone: ${user.phone ?? 'No Phone'}',
              style: TextStyle(fontSize: 20, color: Colors.grey[700]),
            ),
            const SizedBox(height: 8),
            // Website
            Text(
              'Website: ${user.website ?? 'No Website'}',
              style: TextStyle(fontSize: 20, color: Colors.grey[700]),
            ),
            const SizedBox(height: 16),
            // Address Header
            const Text(
              'Address:',
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent),
            ),
            const SizedBox(height: 8),
            // Address Details
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Street: ${user.address?.street ?? 'N/A'}',
                      style: const TextStyle(fontSize: 18)),
                  Text('Suite: ${user.address?.suite ?? 'N/A'}',
                      style: const TextStyle(fontSize: 18)),
                  Text('City: ${user.address?.city ?? 'N/A'}',
                      style: const TextStyle(fontSize: 18)),
                  Text('Zipcode: ${user.address?.zipcode ?? 'N/A'}',
                      style: const TextStyle(fontSize: 18)),
                  Text('Latitude: ${user.address?.geo?.lat ?? 'N/A'}',
                      style: const TextStyle(fontSize: 18)),
                  Text('Longitude: ${user.address?.geo?.lng ?? 'N/A'}',
                      style: const TextStyle(fontSize: 18)),
                ],
              ),
            ),
            const SizedBox(height: 16),
            // Company Header
            const Text(
              'Company:',
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent),
            ),
            const SizedBox(height: 8),
            // Company Details
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Name: ${user.company?.name ?? 'N/A'}',
                      style: const TextStyle(fontSize: 18)),
                  Text('Catch Phrase: ${user.company?.catchPhrase ?? 'N/A'}',
                      style: const TextStyle(fontSize: 18)),
                  Text('BS: ${user.company?.bs ?? 'N/A'}',
                      style: const TextStyle(fontSize: 18)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
