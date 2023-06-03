import 'package:allpay/src/constant/app_setting.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

class ScanPage extends StatelessWidget {
  const ScanPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: Colors.grey,
        elevation: 0,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.grey,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              const Text(
                'Scan and Pay',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const Text(
                'Please point the camera at the QR code',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  height: 2,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const Spacer(),
              Stack(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.width - 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.blue,
                    ),
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: MobileScanner(
                      controller: MobileScannerController(
                          detectionSpeed: DetectionSpeed.noDuplicates),
                      onDetect: (barcodes) {
                        if (barcodes.raw == null) {
                          debugPrint('Failed to scan barcodes');
                        } else {
                          final String code = barcodes.raw!;
                          debugPrint('Barcode found! $code');
                        }
                      },
                    ),
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    decoration: const BoxDecoration(
                      // color: Colors.white,
                      borderRadius:
                          BorderRadius.only(topLeft: Radius.circular(20)),
                      border: Border(
                          left: BorderSide(
                              width: 5, color: AppColor.primaryColor),
                          top: BorderSide(
                              width: 5, color: AppColor.primaryColor)),
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: const Color(0xFFE9F0FF),
                    child: SvgPicture.asset('assets/svg/image.svg'),
                  ),
                  const SizedBox(width: 20),
                  Material(
                    color: AppColor.primaryColor,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    borderRadius: BorderRadius.circular(40),
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        height: 80,
                        width: 80,
                        padding: const EdgeInsets.all(20),
                        child: SvgPicture.asset(
                          'assets/svg/scan.svg',
                          height: 30,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 20),
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: const Color(0xFFE9F0FF),
                    child: SvgPicture.asset('assets/svg/folder.svg'),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
