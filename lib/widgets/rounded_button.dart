import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton(this.title);
  final String title;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Directionality(
      textDirection: TextDirection.ltr,
      child: FlatButton(
        minWidth: 100,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18.0),
          side: BorderSide(color: theme.primaryColor),
        ),
        onPressed: () {},
        child: Text(
          title,
          style: const TextStyle(
            fontSize: 14.0,
          ),
        ),
      ),
    );
  }
}
