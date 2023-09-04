import 'package:flutter/material.dart';

class Forms extends StatefulWidget {
  const Forms({Key? key}) : super(key: key);

  @override
  State<Forms> createState() => _FormsState();
}

class _FormsState extends State<Forms> {
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Form")),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 0.0),
        child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextFormField(
                  decoration:
                      const InputDecoration(labelText: "Enter your name"),
                  validator: (value) {
                    if (value!.isNotEmpty ||
                        !RegExp(r'/^[A-Za-z]+$/').hasMatch(value!)) {
                      return "Enter the name correctly";
                    } else {
                      return null;
                    }
                  },
                ),
                TextFormField(
                  decoration:
                      const InputDecoration(labelText: "Enter your email"),
                  validator: (value) {
                    if (value!.isNotEmpty ||
                        !RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$')
                            .hasMatch(value)) {
                      return "Enter the email correctly";
                    } else {
                      return null;
                    }
                  },
                ),
                ElevatedButton(
                    onPressed: () {
                      print(formKey.currentState);
                      if (formKey.currentState!.validate()) {}
                    },
                    child: const Text("Submit"))
              ],
            )),
      ),
    );
  }
}
