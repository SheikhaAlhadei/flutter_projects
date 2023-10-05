import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class PdfScreen extends StatefulWidget {
  const PdfScreen({super.key});

  @override
  State<PdfScreen> createState() => _PdfScreenState();
}



class _PdfScreenState extends State<PdfScreen> {

    final GlobalKey<SfPdfViewerState> _pdfViewerKay = GlobalKey();




  @override

void initState(){super.initState();}


  





  Widget build(BuildContext context) {
    return  Scaffold(
 appBar: AppBar(title: Text("Pdf Viewer"),
 actions: [IconButton(icon : const Icon(Icons.bookmark , color: Colors.white,semanticLabel: "Book Mark",),onPressed:(){ _pdfViewerKay.currentState?.openBookmarkView();}  )],
 
 
 ),
     
    

body: SfPdfViewer.network("https://cdn.syncfusion.com/content/PDFViewer/flutter-succinctly.pdf" , 
key: _pdfViewerKay,

),




















    );
  }
}