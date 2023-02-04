import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class NoteAppDemo extends StatelessWidget {
  NoteAppDemo({super.key});

  final data = "1461 Trabzonu Tanı";
  final data2 = "lorem impuso ciyano fatte beyne" * 10;
  final data3 = "İçeriği Oku";
  final data4 = "Not Ekle";
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: ProjectColor().blueGrey50,
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle.light,
      ),
      body: Padding(
        padding: ProjectPadding().horizontalPadding,
        child: Column(
          children: [
            const CustomLogo(projectLogo: "assets/png/1461.png"),
            sizedBox20Space(),
            CustomHead(data: data),
            sizedBox15Spacer(),
            CustomSubtitleText(data2: data2),
            const Spacer(),
            CustomElevatedButton(data3: data3),
            CustomTextButton(data4: data4),
            const Spacer()
          ],
        ),
      ),
    );
  }

  SizedBox sizedBox20Space() => const SizedBox(height: 20);
  SizedBox sizedBox15Spacer() => const SizedBox(height: 15);
}

class CustomLogo extends StatelessWidget {
  const CustomLogo({
    super.key,
    required this.projectLogo,
  });

  final String projectLogo;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: ProjectPadding().verticalPadding,
        child: SizedBox(
          height: 200,
          width: 200,
          child: Image.asset(projectLogo),
        ),
      ),
    );
  }
}

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    super.key,
    required this.data3,
  });

  final String data3;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: const ButtonStyle(
        backgroundColor: MaterialStatePropertyAll(Colors.blueGrey),
      ),
      child: SizedBox(
        height: 60,
        width: 250,
        child: Center(
          child: Text(
            data3,
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.w800,
                color: Colors.blueGrey[50],
                letterSpacing: 1),
          ),
        ),
      ),
    );
  }
}

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    super.key,
    required this.data4,
  });

  final String data4;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Text(
        data4,
        style: Theme.of(context)
            .textTheme
            .bodyLarge
            ?.copyWith(color: Colors.blueGrey),
      ),
    );
  }
}

class CustomSubtitleText extends StatelessWidget {
  const CustomSubtitleText({
    super.key,
    required this.data2,
  });

  final String data2;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: ProjectPadding().horizontalPadding,
      child: Text(
        data2,
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.labelLarge?.copyWith(
            color: ProjectColor().black54, fontWeight: FontWeight.w700),
      ),
    );
  }
}

class CustomHead extends StatelessWidget {
  const CustomHead({
    super.key,
    required this.data,
  });

  final String data;

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: Theme.of(context).textTheme.titleLarge?.copyWith(
            fontWeight: FontWeight.w800,
            color: ProjectColor().black54,
          ),
    );
  }
}

class ProjectColor {
  final Color? blueGrey50 = Colors.blueGrey[50];
  final Color? black54 = Colors.black54;
}

class ProjectPadding {
  final EdgeInsets horizontalPadding =
      const EdgeInsets.symmetric(horizontal: 15);
  final EdgeInsets verticalPadding = const EdgeInsets.symmetric(vertical: 20);
}
