import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class ReadingBook extends StatefulWidget {
  final String pdfPath;

  ReadingBook({required this.pdfPath});

  @override
  _ReadingBookState createState() => _ReadingBookState();
}

class _ReadingBookState extends State<ReadingBook> {
  int totalPages = 0;
  int currentPage = 0;
  bool isFullScreen = false;
  late PdfViewerController _pdfViewerController;

  @override
  void initState() {
    super.initState();
    _pdfViewerController = PdfViewerController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: isFullScreen
          ? AppBar(
              leading: IconButton(
                icon: const Icon(Icons.close_fullscreen_outlined),
                onPressed: () {
                  setState(() {
                    isFullScreen = false;
                  });
                },
              ),
            )
          : AppBar(
              title: const Text('Reading Book'),
              actions: [
                IconButton(
                  icon: const Icon(Icons.fullscreen_outlined),
                  onPressed: () {
                    setState(() {
                      isFullScreen = true;
                    });
                  },
                ),
              ],
            ),
      body: Column(
        children: [
          Expanded(
            child: SfPdfViewer.asset(
              widget.pdfPath,
              controller: _pdfViewerController,
              onDocumentLoaded: (PdfDocumentLoadedDetails details) {
                setState(() {
                  totalPages = details.document.pages.count;
                });
              },
              onPageChanged: (PdfPageChangedDetails details) {
                setState(() {
                  currentPage = details.oldPageNumber;
                });
              },
            ),
          ),
          Visibility(
            visible: !isFullScreen,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  icon: const Icon(Icons.navigate_before),
                  onPressed: () {
                    _pdfViewerController.previousPage();
                  },
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Text(
                    'Page $currentPage of $totalPages',
                    style: const TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.navigate_next),
                  onPressed: () {
                    _pdfViewerController.nextPage();
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
