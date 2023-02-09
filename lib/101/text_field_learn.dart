import 'package:flutter/material.dart';
import 'package:flutter_learn/product/lang/langue_items.dart';

class TextfieldLearn extends StatefulWidget {
  const TextfieldLearn({super.key});

  @override
  State<TextfieldLearn> createState() => _TextfieldLearnState();
}

class _TextfieldLearnState extends State<TextfieldLearn> {
  final key = GlobalKey();

  FocusNode focusNodeTextfieldOne = FocusNode();
  FocusNode focusNodeTextfieldTwo = FocusNode();

  final int maxLength2 = 100;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextField(
              maxLength: maxLength2,
              buildCounter: (BuildContext context,
                  {int? currentLength, bool? isFocused, int? maxLength}) {
                return _animatedContanier(currentLength);
              },
              keyboardType: TextInputType.emailAddress,
              autofillHints: const [AutofillHints.email],
              textInputAction: TextInputAction.next,
              focusNode: focusNodeTextfieldOne,
              //inputFormatters: [],
              style: TextStyle(color: TextfiedlColors().redAccentText),
              decoration: InputDecarationTextfield()._inputDecaration),
          TextFormField(
            focusNode: focusNodeTextfieldTwo,
            style: TextStyle(color: TextfiedlColors().redAccentText),
          ),
        ],
      ),
    );
  }

  AnimatedContainer _animatedContanier(int? currentLength) {
    return AnimatedContainer(
      key: key,
      duration: const Duration(seconds: 1),
      height: 10,
      width: 10.0 * (currentLength ?? 0),
      color: Colors.green[100 * ((currentLength ?? 0) ~/ 2)],
    );
  }
}

class InputDecarationTextfield {
  final _inputDecaration = InputDecoration(
    prefixIcon: const Icon(Icons.mail),
    border: const OutlineInputBorder(),
    label: Text(LngueItems().textfieldText),
    hintText: LngueItems().textfieldHintText,
  );
}

class TextfiedlColors {
  final Color redAccentText = Colors.redAccent;
}
