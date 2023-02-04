import 'package:flutter/material.dart';

class CustomWidgetLearn extends StatelessWidget {
  const CustomWidgetLearn({super.key});
  final data = "Add Food";
  final data2 = "Food";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 200),
          Padding(
            padding: ButtonPaddingItem().padding2X,
            child: CustomElevatedButton(data: data2),
          ),
          const Spacer(),
          Center(
            child: Padding(
              padding: ButtonPaddingItem().padding2X,
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: CustomElevatedButton(data: data),
              ),
            ),
          ),
          const SizedBox(height: 50),
        ],
      ),
    );
  }
}

//------------------------------------------------------------------------------

class ButtonColorItem {
  final Color white = Colors.white;
  final Color red = Colors.red;
}

class ButtonPaddingItem {
  final EdgeInsets paddingX = const EdgeInsets.all(8);
  final EdgeInsets padding2X = const EdgeInsets.all(16);
}

class CustomElevatedButton extends StatelessWidget with ButtonColorItem {
  CustomElevatedButton({
    super.key,
    required this.data,
  });

  final String data;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
          shape: const StadiumBorder(), backgroundColor: red),
      child: Padding(
        padding: ButtonPaddingItem().paddingX,
        child: Text(
          data,
          style: Theme.of(context)
              .textTheme
              .labelLarge
              ?.copyWith(color: white, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
