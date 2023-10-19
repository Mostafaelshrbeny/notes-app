import 'package:flutter/material.dart';

class Noteitem extends StatelessWidget {
  const Noteitem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 3),
      padding: const EdgeInsets.only(left: 5, top: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16), color: Colors.blue),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: const Text(
              'My Notes App',
              style: TextStyle(color: Colors.black),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Text(
                'You can write your Notes here',
                style: TextStyle(color: Colors.black.withOpacity(0.6)),
              ),
            ),
            trailing: const Icon(
              Icons.delete,
              color: Colors.black,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              '19 October 2023',
              style: TextStyle(color: Colors.black.withOpacity(0.6)),
            ),
          )
        ],
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
    );
  }
}

class Addnote extends StatelessWidget {
  const Addnote({super.key, required this.formkey});
  final GlobalKey formkey;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: Form(
        key: formkey,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30.0, horizontal: 5),
          child: Column(children: [
            const Customtextfield(
              label: 'Note Title',
              hint: 'Enter your Note body',
            ),
            const SizedBox(height: 15),
            const Customtextfield(
              label: 'Note body',
              hint: 'Enter your Note',
              lines: 8,
            ),
            const SizedBox(
              height: 15,
            ),
            InkWell(
              onTap: () {},
              child: Container(
                  height: 40,
                  decoration: BoxDecoration(
                      color: Colors.teal,
                      borderRadius: BorderRadius.circular(16)),
                  width: MediaQuery.of(context).size.width,
                  child: const Center(
                    child: Text('Add'),
                  )),
            ),
          ]),
        ),
      ),
    );
  }
}

class Customtextfield extends StatelessWidget {
  const Customtextfield({
    super.key,
    required this.label,
    required this.hint,
    this.lines = 1,
  });
  final String label;
  final String hint;
  final int lines;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: Colors.teal,
      maxLines: lines,
      decoration: InputDecoration(
        label: Text(label),
        labelStyle: const TextStyle(color: Colors.white),
        hintText: hint,
        hintStyle: const TextStyle(color: Colors.teal),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
        enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(16)),
        focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.teal),
            borderRadius: BorderRadius.circular(16)),
      ),
    );
  }
}
