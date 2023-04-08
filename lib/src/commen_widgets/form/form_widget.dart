import 'package:flutter/material.dart';
class LoginForm extends StatelessWidget {
  const LoginForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Container(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              decoration: const InputDecoration(
                hintText: "E-mail",
                labelText: "E-mail",
                prefixIcon: Icon(Icons.person_outline_outlined),
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            TextFormField(
              decoration: const InputDecoration(
                hintText: "Password",
                labelText: "Password",
                prefixIcon: Icon(Icons.fingerprint),
                suffixIcon: Icon(Icons.remove_red_eye),
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 10.0,),
            Align(
                alignment: AlignmentDirectional.center,
                child: TextButton(
                  onPressed: () {},
                  child: const Text("Forget Password ?"),
                )),
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  side: const BorderSide(color: Colors.black),
                  backgroundColor: Colors.black,
                ),
                onPressed: () {
                },
                child: Text("Login".toUpperCase()),
              ),
            ),
          ],
        ),
      ),
    );
  }
}