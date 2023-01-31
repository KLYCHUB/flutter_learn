import 'package:flutter/material.dart';

class TextLearnView extends StatelessWidget {
  TextLearnView({super.key, this.adminName});
  final String userName = "Eren";
  final String? adminName;

  final ProjectKeys keys = ProjectKeys();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Wellcome $userName ${userName.length} ",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: TextStyle(
                  color: ProjectColors.wellcomeColor,
                  decoration: TextDecoration.underline,
                  fontSize: 15,
                  letterSpacing: 2,
                  wordSpacing: 5,
                  fontWeight: FontWeight.bold),
            ),
            Text("${adminName ?? ""}"),
            Text(
              "Wellcome $userName",
              style: ProjectTextStyle().projectStyle,
            ),
            Text(
              "${keys.Wellcome} $userName",
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    color: Colors.amber,
                    backgroundColor: Colors.redAccent,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProjectTextStyle {
  final TextStyle projectStyle = TextStyle(
      color: Colors.white,
      decoration: TextDecoration.underline,
      fontSize: 15,
      letterSpacing: 2,
      wordSpacing: 5,
      fontWeight: FontWeight.bold);
}

class ProjectColors {
  static Color wellcomeColor = Colors.red;
}

class ProjectKeys {
  final String Wellcome = "Merhaba";
}
