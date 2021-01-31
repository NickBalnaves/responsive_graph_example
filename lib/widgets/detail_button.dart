import 'package:flutter/material.dart';
import 'package:responsive_graph_example/widgets/rounded_button.dart';

class DetailButton extends StatelessWidget {
  const DetailButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Directionality(
        textDirection: TextDirection.ltr,
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.grey,
            ),
            borderRadius: BorderRadius.circular(24),
          ),
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              children: const [
                SizedBox(
                  width: 80,
                  height: 40,
                  child: Placeholder(),
                ),
                SizedBox(height: 4),
                Text('Cheeseburger'),
                RoundedButton('Details'),
              ],
            ),
          ),
        ),
      );
}
