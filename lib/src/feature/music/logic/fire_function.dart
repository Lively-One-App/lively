import 'package:cloud_functions/cloud_functions.dart';

class FireFunction {
  final firebaseFunctions = FirebaseFunctions.instance;

  void writeLike(final String doc) async {
    await firebaseFunctions.httpsCallable('writeToFirestore').call(doc);
  }
}
