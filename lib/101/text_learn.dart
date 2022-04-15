import 'package:flutter/material.dart';

class TextLearnView extends StatelessWidget {
  TextLearnView({Key? key}) : super(key: key);
  final String name = 'Mücahit';
  final ProjectKeys keys = ProjectKeys();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: Text(
            ('Welcome $name ${name.length}'),
            maxLines: 2, // En fazla 2 satır gösterilecek.
            overflow: TextOverflow
                .ellipsis, // 2 satırdan sonrası ... olarak gösterilecek.
            textAlign: TextAlign.right, // Yazı sağa yatık gösterilecek.
            style: ProjectStyles.welcomeStyle,
          )),
          Text(('Hello $name ${name.length}'),
              maxLines: 2, // En fazla 2 satır gösterilecek.
              overflow: TextOverflow
                  .ellipsis, // 2 satırdan sonrası ... olarak gösterilecek.
              textAlign: TextAlign.right, // Yazı sağa yatık gösterilecek.
              style: Theme.of(context).textTheme.headline5?.copyWith(
                  color: ProjectColors.welcomeColor)), // Material typeography
          Text(
            keys.welcome,
            style: TextStyle(color: ProjectColors.welcomeColor),
          ),
        ],
      ),
    );
  }
}

class ProjectStyles {
  static TextStyle welcomeStyle = const TextStyle(
      decoration: TextDecoration.underline,
      fontStyle: FontStyle.italic,
      wordSpacing: 2,
      letterSpacing: 2,
      fontSize: 16,
      color: Color.fromARGB(255, 63, 18, 187),
      fontWeight: FontWeight.w600);
}

class ProjectColors {
  static Color welcomeColor = Colors.deepPurple.shade900;
}

class ProjectKeys {
  final String welcome = 'Merhaba';
}
