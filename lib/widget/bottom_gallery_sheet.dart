import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rewind/modules/utils/helper.dart';
import 'package:rewind/values/text_style.dart';

class ModelBottomSheet {
  bottom(
    String header,
    String? title,
    String? title1,
    String? title2,
    IconData? icon,
    IconData? icon1,
    IconData? icon2,
    GestureTapCallback? onTapCamera,
    GestureTapCallback? onTapGallery,
    GestureTapCallback? onTapCancle,
  ) {
    showModalBottomSheet(
        context: Get.context!,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(25.0),
          ),
        ),
        //backgroundColor: Color(0xFFE18183),
        builder: (context) {
          return Container(
            // height: MediaQuery.of(context).size.height * 0.30,
            margin: const EdgeInsets.only(top: 10, bottom: 15),
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  verticalSpacing(5),
                  Container(
                    height: 4,
                    width: 96,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: Colors.black,
                    ),
                  ),
                  verticalSpacing(5),
                  Text(
                    header,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: textStyle15,
                    textAlign: TextAlign.center,
                  ),
                  verticalSpacing(5),
                  ListTile(
                    leading: Icon(
                      icon,
                      color: Colors.black,
                    ),
                    title: Text(title!),
                    onTap: onTapCamera,
                  ),
                  ListTile(
                    leading: Icon(
                      icon1,
                      color: Colors.black,
                    ),
                    title: Text(title1!),
                    onTap: onTapGallery,
                  ),
                  ListTile(
                    leading: Icon(
                      icon2,
                      color: Colors.black,
                    ),
                    title: Text(title2!),
                    onTap: onTapCancle,
                  ),
                ],
              ),
            ),
          );
        });
  }
}
