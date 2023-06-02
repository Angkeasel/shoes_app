import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomCard extends StatelessWidget {
  final String? nameCard;
  final String? number;
  final String? name;
  final double? height;
  final double? width;
  final Color? colors;
  final String? date;
  final GestureTapCallback? onTap;
  const CustomCard(
      {Key? key,
      this.nameCard,
      this.number,
      this.name,
      this.date,
      this.colors,
      this.onTap,
      this.height,
      this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: colors,
        ),
        child: Stack(
          children: [
            Positioned(
              left: -50,
              top: -50,
              child: Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white.withOpacity(0.1),
                ),
              ),
            ),
            Positioned(
              left: 80,
              top: -100,
              child: Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white.withOpacity(0.1),
                  )),
            ),
            Container(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        nameCard!,
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                      const Spacer(),
                      SvgPicture.asset('assets/svg/cib_visa.svg'),
                    ],
                  ),
                  Text(
                    number!,
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      height: 2,
                      color: Colors.white,
                    ),
                  ),
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Text(
                            'Card Holder name',
                            style: GoogleFonts.poppins(
                                fontSize: 12,
                                height: 2,
                                fontWeight: FontWeight.w400,
                                color: Colors.white),
                          ),
                          Text(
                            name!,
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                              height: 2,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            'Expiry date',
                            style: GoogleFonts.poppins(
                                fontSize: 12,
                                height: 2,
                                fontWeight: FontWeight.w400,
                                color: Colors.white),
                          ),
                          Text(
                            date!,
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                              height: 2,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      SvgPicture.asset(
                        'assets/svg/Group 4.svg',
                        color: Colors.white,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
