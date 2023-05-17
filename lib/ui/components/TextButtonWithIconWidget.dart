import 'package:flutter/material.dart';
import 'package:scoutlance/style/my_theme.dart';

class TextButtonWithIconWidget extends StatelessWidget {
  final String text;
  final IconData icon;
  final Function()? onPressed;
  const TextButtonWithIconWidget(
      {Key? key,
      required this.text,
      required this.onPressed,
      required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 10,
          backgroundColor: MyTheme.primary.shade100,
          child: Icon(
            icon,
            size: 12,
            color: MyTheme.primary,
          ),
        ),
        Container(
          margin: EdgeInsets.zero,
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: GestureDetector(
            onTap: onPressed,
            child: Text(
              text,
              style: Theme.of(context).textTheme.titleSmall!.copyWith(
                  color: text == "n/a" ? Colors.grey : MyTheme.primary),
            ),
          ),
        )
      ],
    );
  }
}
