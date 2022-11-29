import 'package:flutter/material.dart';
import 'package:flutterfire_ui/auth.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ProfileScreen(
      providerConfigs: const [
        EmailProviderConfiguration(),
      ],
      actions: [
        SignedOutAction(
          (context) {
            Navigator.pushReplacementNamed(context, '/');
          },
        ),
      ],
      avatarPlaceholderColor: const Color.fromARGB(255, 149, 186, 215),
      avatarSize: 150,
    );
  }
}
