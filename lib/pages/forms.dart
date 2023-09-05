import 'package:flutter/material.dart';

class Forms extends StatefulWidget {
  const Forms({Key? key}) : super(key: key);

  @override
  State<Forms> createState() => _FormsState();
}

class _FormsState extends State<Forms> {
  final formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final emailController = TextEditingController();
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
                  controller: nameController,
                  validator: (value) {
                    if (value!.isEmpty || !RegExp('[a-zA-Z]').hasMatch(value)) {
                      return "Enter the name correctly";
                    } else {
                      return null;
                    }
                  },
                ),
                TextFormField(
                  decoration:
                      const InputDecoration(labelText: "Enter your email"),
                  controller: emailController,
                  validator: (value) {
                    if (value!.isEmpty ||
                        !RegExp(r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
                            .hasMatch(value)) {
                      return "Enter the email correctly";
                    } else {
                      return null;
                    }
                  },
                ),
                ElevatedButton(
                    onPressed: () {
                      print(nameController.text);
                      print(emailController.text);
                      // if (formKey.currentState!.validate()) {}
                    },
                    child: const Text("Submit"))
              ],
            )),
      ),
    );
  }
}
