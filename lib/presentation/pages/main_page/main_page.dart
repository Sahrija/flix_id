import 'package:flutter/material.dart';

import 'package:flix_id/domain/entities/user.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key, required this.user});

  final User user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Main Page'),
      ),
      body: Center(
        child: Text(user.toString()),
      ),
    );
  }
}
