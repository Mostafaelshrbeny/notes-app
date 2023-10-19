import 'package:flutter/material.dart';

class Notes extends StatelessWidget {
  const Notes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                const Text('Notes'),
                const Spacer(),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.05),
                      borderRadius: BorderRadius.circular(16)),
                  child: IconButton(
                      onPressed: () {}, icon: const Icon(Icons.search)),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
