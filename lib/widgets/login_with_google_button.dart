import 'package:flutter/material.dart';

import '../google_sign_in.dart';

class LoginWithGoogleButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    void _showDialog(String username) {
      showDialog(
          context: context,
          builder: (BuildContext context) => AlertDialog(
              title: const Text('Logged in with google'),
              content: Center(child: Text('Welcome $username'))));
    }

    return OutlineButton(
      splashColor: Colors.grey,
      onPressed: () async {
        var user = await signInWithGoogle();
        debugPrint(user.displayName);
      },
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      borderSide: BorderSide(color: Colors.grey),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image(image: AssetImage("assets/google_logo.png"), height: 20.0),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                'Sign in with Google',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.grey,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
