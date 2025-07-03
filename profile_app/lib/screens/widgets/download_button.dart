import 'package:flutter/material.dart';

enum DownloadStatus { notDownloaded, fetchingDownload, downloading, downloaded }

@immutable
class DownloadButton extends StatelessWidget {
  const DownloadButton({
    super.key,
    required this.status,
    this.transitionDuration = const Duration(milliseconds: 200),
  });

  final DownloadStatus status;
  final Duration transitionDuration;

  bool get _isDownloading => status == DownloadStatus.downloading;
  bool get _isFetching => status == DownloadStatus.fetchingDownload;
  bool get _isDownloaded => status == DownloadStatus.downloaded;

  @override
  Widget build(BuildContext context) {
    return ButtonShapeWidget(
      transitionDuration: transitionDuration,
      isDownloading: _isDownloading,
      isFetching: _isFetching,
      isDownloaded: _isDownloaded,
    );
  }
}

class ButtonShapeWidget extends StatelessWidget {
  const ButtonShapeWidget({
    super.key,
    required this.isDownloading,
    required this.isDownloaded,
    required this.isFetching,
    required this.transitionDuration,
  });

  final bool isDownloading;
  final bool isDownloaded;
  final bool isFetching;
  final Duration transitionDuration;

  @override
  Widget build(BuildContext context) {
    final ShapeDecoration shape;
    if (isDownloading || isFetching) {
      shape = const ShapeDecoration(
        shape: CircleBorder(),
        color: Colors.transparent,
      );
    } else {
      shape = const ShapeDecoration(shape: StadiumBorder(), color: Colors.grey);
    }
    return AnimatedContainer(
      duration: transitionDuration,
      decoration: shape,
      curve: Curves.easeInOut,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 6),
        child: AnimatedOpacity(
          opacity: isDownloading || isFetching ? 0.0 : 1.0,
          duration: transitionDuration,
          curve: Curves.ease,
          child: Text(
            isDownloaded ? 'Open' : 'Get',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.labelLarge?.copyWith(
              color: Theme.of(context).colorScheme.onSurface,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
