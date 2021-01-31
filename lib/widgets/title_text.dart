import 'package:flutter/material.dart';

class TitleText extends StatelessWidget {
  const TitleText(
    this.title, {
    this.divider = true,
  });

  final String title;
  final bool divider;

  @override
  Widget build(BuildContext context) => Directionality(
        textDirection: TextDirection.ltr,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Text(
                title,
                style: Theme.of(context).textTheme.headline5.merge(
                      const TextStyle(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
              ),
            ),
            if (divider)
              const SizedBox(
                width: 120,
                child: Divider(
                  thickness: 2,
                ),
              ),
          ],
        ),
      );
}
