import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:marketi/features/layout/home/data/model/popular_response_body.dart';

class BuildPopularItem extends StatelessWidget {
  final ListOfProducts product;

  const BuildPopularItem({required this.product, super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 2,
      shadowColor: const Color(0xffD9E6FF),
      child: Container(
        height: 144.h,
        width: 160.w,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10.r)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              alignment: AlignmentDirectional.topStart,
              children: [
                Stack(
                  alignment: AlignmentDirectional.center,
                  children: [
                    Card(
                      elevation: 0,
                      child: Container(
                        height: 96.h,
                        width: 152.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.r),
                          color: const Color(0xffD9E6FF),
                        ),
                      ),
                    ),
                    Container(
                      width: 90.w,
                      height: 90.h,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(product.images!.isNotEmpty
                            ? product.images![0]
                            : 'https://via.placeholder.com/90'),
                      )),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.all(4.h),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 80.w,
                        height: 24.h,
                        decoration: BoxDecoration(
                          color: Color(0xffB2CCFF),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(4.r),
                            bottomLeft: Radius.circular(4.r),
                            bottomRight: Radius.elliptical(100.r, 50.r),
                          ),
                        ),
                        child: Text(
                          '${product.discount}% OFF',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff3F80FF),
                          ),
                        ),
                      ),
                      const Spacer(),
                      Padding(
                        padding: EdgeInsets.all(4.h),
                        child: CircleAvatar(
                          radius: 13.r,
                          backgroundColor: Colors.white,
                          child: Icon(
                            FontAwesomeIcons.heart,
                            size: 15.sp,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 5.w,
              ),
              child: Row(
                children: [
                  Text(
                    '${product.price} LE',
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Spacer(),
                  Icon(
                    FontAwesomeIcons.star,
                    size: 14.sp,
                  ),
                  SizedBox(
                    width: 5.w,
                    height: 4.h,
                  ),
                  Text(
                    '${product.rating}',
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 2.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 5.w,
              ),
              child: Text(
                product.title ?? 'No Title',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 12.sp,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
