import 'package:flutter/material.dart';

class BluetoothListingScreen extends StatelessWidget {
  const BluetoothListingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {},
            child: const Text('Search'),
          ),
          ListView.separated(
              shrinkWrap: true,
              separatorBuilder: (context, index) {
                return const Divider();
              },
              itemCount: 10,
              itemBuilder: (context, index) {
                return const ListTile(
                  title: Text('Device 001'),
                );
              }),
        ],
      ),
    );
  }
}
