import 'package:flutter/material.dart';
import 'package:local_auth/local_auth.dart';
import 'package:flutter_screen_lock/flutter_screen_lock.dart';

class homepage extends StatefulWidget {
  homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    Future<void> localAuth(BuildContext context) async {
      final localAuth = LocalAuthentication();
      final didAuthenticate = await localAuth.authenticateWithBiometrics(
          localizedReason: 'Please authenticate');
      if (didAuthenticate) {
        Navigator.pop(context);
      }
    }

    WidgetsBinding.instance.addPostFrameCallback((_) {
      screenLock(
        context: context,
        correctString: '9033',
        canCancel: true,
        customizedButtonChild: Icon(
          Icons.fingerprint,
        ),
        customizedButtonTap: () async {
          await localAuth(context);
        },
        didOpened: () async {
          await localAuth(context);
        },
      );

      // Add Your Code here.
    });

    return Scaffold(
      body: Center(
        child: Text("Welcome"),
      ),
    );
  }
}
