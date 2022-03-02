import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class LoadingIndicator extends StatelessWidget {
  const LoadingIndicator({
    Key? key,
    this.size = 60,
  }) : super(key: key);

  final double size;

  @override
  Widget build(BuildContext context) {
    return LoadingAnimationWidget.inkDrop(
      size: size,
      color: Theme.of(context).primaryColor,
    );
  }
}
