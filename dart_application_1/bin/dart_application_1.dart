import 'package:translator/translator.dart';

void main() async {
  final translator = GoogleTranslator();
  final input = "hello";

  // Using the Future API
  translator
      .translate(input, to: 'ar')
      .then((result) => print("Source: $input\nTranslated: $result"));
}