import 'package:flutter/material.dart';

class LoadingOverlayController {
  static final LoadingOverlayController _instance =
      LoadingOverlayController._internal();
  factory LoadingOverlayController() => _instance;
  LoadingOverlayController._internal();

  static LoadingOverlayController get instance => _instance;

  OverlayEntry? _overlayEntry;

  void show(BuildContext context) {
    if (_overlayEntry != null) return;

    _overlayEntry = OverlayEntry(
      builder: (_) => Stack(
        children: [
          ModalBarrier(
            color: Colors.black.withValues(alpha: 0.5),
            dismissible: false,
          ),
          const Center(
            child: CircularProgressIndicator(),
          ),
        ],
      ),
    );

    Overlay.of(context, rootOverlay: true).insert(_overlayEntry!);
  }

  void hide() {
    _overlayEntry?.remove();
    _overlayEntry = null;
  }
}
