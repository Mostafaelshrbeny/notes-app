import 'package:flutter/material.dart';

import '../widgets/notestools.dart';

class Notes extends StatelessWidget {
  const Notes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Column(
            children: [
              Row(
                children: [
                  const Text(
                    'Notes',
                    style: TextStyle(fontSize: 25),
                  ),
                  const Spacer(),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.05),
                        borderRadius: BorderRadius.circular(16)),
                    child: IconButton(
                        onPressed: () {}, icon: const Icon(Icons.search)),
                  ),
                ],
              ),
              const Expanded(child: Noteslist())
            ],
          ),
        ),
      ),
    );
  }
}

class Noteslist extends StatelessWidget {
  const Noteslist({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) => const Noteitem(),
      itemCount: 5,
    );
  }
}
