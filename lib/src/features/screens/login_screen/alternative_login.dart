import 'package:flutter/material.dart';

class AlternativeLogin extends StatelessWidget {
  const AlternativeLogin({
    required this.signUpG,
    required this.haveAcc,
    required this.logIn,
    required this.goTo,
    Key? key,
  }) : super(key: key);

  final String signUpG;
  final String haveAcc;
  final String logIn;
  final Function goTo;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text("OR"),
            const SizedBox(height: 10.0,),

            SizedBox(
              width: double.infinity,
              child: OutlinedButton.icon(
                icon: const Image(image: AssetImage('assets/logo/google.png'),width: 20.0,),
                style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.black,
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  side: const BorderSide(color: Colors.black),
                  backgroundColor: Colors.white,
                ),
                onPressed: () {
                },
                label: Text(signUpG.toUpperCase()),
              ),
            ),
            const SizedBox(height: 10.0,),
            TextButton(
              onPressed: (){
                goTo();
              },

              child: Text.rich(
                TextSpan(
                    text: haveAcc,
                    style: Theme.of(context).textTheme.bodyText1,
                    children: [
                      TextSpan(
                        text: logIn,
                        style: const TextStyle(color: Colors.blue),
                      )
                    ]
                ),

              ),),
          ],
        ),
      ),
    );
  }
}
