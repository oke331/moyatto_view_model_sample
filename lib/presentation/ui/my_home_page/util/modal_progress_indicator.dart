import 'package:flutter/material.dart';

class ModalProgressIndicator extends StatelessWidget {
  const ModalProgressIndicator({
    Key? key,
    required this.child,
    required this.isLoading,
  }) : super(key: key);

  final bool isLoading;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    if (!isLoading) {
      return child;
    }

    return WillPopScope(
      onWillPop: () async => false,
      child: Stack(
        children: [
          child,
          const Opacity(
            child: ModalBarrier(dismissible: false, color: Colors.black),
            opacity: 0.3,
          ),
          const Center(child: CircularProgressIndicator()),
        ],
      ),
    );
  }
}
