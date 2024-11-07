import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Craigslist Template',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueGrey),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Craigslist'),
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary,
              ),
              child: const Text(
                'Categories',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Housing'),
              onTap: () {
                // Handle category navigation
              },
            ),
            ListTile(
              leading: const Icon(Icons.directions_car),
              title: const Text('Cars'),
              onTap: () {
                // Handle category navigation
              },
            ),
            ListTile(
              leading: const Icon(Icons.work),
              title: const Text('Jobs'),
              onTap: () {
                // Handle category navigation
              },
            ),
            ListTile(
              leading: const Icon(Icons.shopping_cart),
              title: const Text('For Sale'),
              onTap: () {
                // Handle category navigation
              },
            ),
          ],
        ),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(8.0),
        itemCount: 10, // Example number of listings
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              leading: Icon(Icons.list),
              title: Text('Listing ${index + 1}'),
              subtitle: Text('Description of item ${index + 1}...'),
              onTap: () {
                // Handle listing click
              },
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add new listing
        },
        tooltip: 'Add Listing',
        child: const Icon(Icons.add),
      ),
    );
  }
}

