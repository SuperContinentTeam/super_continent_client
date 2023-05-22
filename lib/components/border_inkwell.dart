import 'package:flutter/material.dart';

class BorderInkWell extends StatelessWidget {
  const BorderInkWell({
    Key? key,
    required this.onTap,
    required this.child,
  }) : super(key: key);

  final void Function()? onTap;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(border: Border.all(color: Colors.black)),
      child: InkWell(
        onTap: onTap,
        child: child,
      ),
    );
  }
}
