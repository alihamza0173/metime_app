import 'package:flutter/cupertino.dart';

void showLoading(BuildContext context) {
  showCupertinoDialog(
    barrierDismissible: false,
    context: context,
    builder: (_) => const Center(
      child: CupertinoActivityIndicator(),
    ),
  );
}
