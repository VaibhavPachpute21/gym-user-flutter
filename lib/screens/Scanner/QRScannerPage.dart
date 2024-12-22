import 'package:flutter/material.dart';
import 'package:gym_app/common/CommonWidgets.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:qr_code_dart_scan/qr_code_dart_scan.dart';

class QRScannerPage extends StatefulWidget {
  const QRScannerPage({super.key});

  @override
  State<QRScannerPage> createState() => _QRScannerPageState();
}

class _QRScannerPageState extends State<QRScannerPage> {
  _checkPermiessions() async {
    var status = await Permission.camera.status;
    if (status.isGranted) {
      print("Permissions given");
    } else {
      var result = await Permission.camera.request();
      if (!result.isGranted) {
        Navigator.pop(context);
      }
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _checkPermiessions();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: SecondaryAppBar(title: "Mark Attendance")),
      body: QRCodeDartScanView(
        typeScan: TypeScan.takePicture,
        scanInvertedQRCode: true,
        onCapture: (Result result) {
          print("object");
          print(result.text);
          print(result);
          print("object");
          Navigator.pop(context);
        },
      ),
    );
  }
}
