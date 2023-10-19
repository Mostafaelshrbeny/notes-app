import 'package:flutter/material.dart';

import '../widgets/notestools.dart';

class Notes extends StatelessWidget {
  const Notes({super.key});

  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> formkey = GlobalKey();
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Row(
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
              ),
              const Expanded(child: Noteslist())
            ],
          ),
        ),
      ),
      floatingActionButton: Builder(builder: (context) {
        return FloatingActionButton(
          onPressed: () {
            showBottomSheet(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(32)),
              context: context,
              builder: (context) {
                return Addnote(
                  formkey: formkey,
                );
              },
            );
          },
          child: const Icon(Icons.edit),
        );
      }),
    );
  }
}
