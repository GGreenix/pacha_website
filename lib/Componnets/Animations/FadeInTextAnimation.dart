import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:resume/constants.dart';

class FadeInAnimatedText extends AnimatedText {
  final double fadeInEnd;

  FadeInAnimatedText(
    String text, {
    TextAlign textAlign = TextAlign.start,
    TextStyle? textStyle,
    Duration duration = const Duration(milliseconds: 800),
    this.fadeInEnd = 0.5,
  })  : 
        super(
          text: text,
          textAlign: textAlign,
          textStyle: textStyle,
          duration: duration,
        );

  late Animation<double> _fadeIn;

  @override
  void initAnimation(AnimationController controller) {
    _fadeIn = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: controller,
        curve: Interval(0.0, fadeInEnd, curve: Curves.linear),
      ),
    );

    
  }

  @override
  Widget completeText(BuildContext context) => const Text(Constants.description);

  @override
  Widget animatedBuilder(BuildContext context, Widget? child) {
    return Opacity(
      opacity: _fadeIn.value,
      child: textWidget(text),
    );
  }
}
