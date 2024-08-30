part of '../review_questions_screen.dart';

class AnimatedClipRect extends StatefulWidget {
  const AnimatedClipRect({
    super.key,
    this.open = false,
    this.child,
  });

  final bool open;
  final Widget? child;

  @override
  State<AnimatedClipRect> createState() => _AnimatedClipRectState();
}

class _AnimatedClipRectState extends State<AnimatedClipRect>
    with TickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation _animation;

  @override
  void initState() {
    _animationController = AnimationController(
        duration: const Duration(milliseconds: 300),
        reverseDuration: const Duration(milliseconds: 300),
        vsync: this,
        value: widget.open ? 1.0 : 0.0,
        animationBehavior: AnimationBehavior.normal);
    _animation = Tween(begin: 0.0, end: 1.0).animate(CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeInOut,
      reverseCurve: Curves.easeOut,
    ));
    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    widget.open
        ? _animationController.forward()
        : _animationController.reverse();
    return ClipRect(
      child: AnimatedBuilder(
        animation: _animationController,
        builder: (_, child) {
          return Align(
            alignment: Alignment.center,
            heightFactor: _animation.value,
            child: child,
          );
        },
        child: widget.child,
      ),
    );
  }
}
