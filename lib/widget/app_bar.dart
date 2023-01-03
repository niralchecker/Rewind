import 'package:flutter/material.dart';

class MyAppBarView extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBarView({
    super.key,
    this.title,
    required this.onTapBack,
    this.color,
    this.profilePic,
    this.isDashboardAppBar = false,
    this.city,
    this.country,
  });

  final String? title;
  final VoidCallback onTapBack;
  final Color? color;
  final String? profilePic;
  final bool isDashboardAppBar;
  final String? city;
  final String? country;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: color,
        height: kToolbarHeight,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            !isDashboardAppBar
                ? Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: onTapBack,
                        child: Container(
                          height: kToolbarHeight,
                          margin: const EdgeInsets.only(left: 15.0, right: 12),
                          child: const Icon(
                            Icons.arrow_back_sharp,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  )
                : Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      InkWell(
                        onTap: onTapBack,
                        child: Container(
                            height: kToolbarHeight,
                            margin:
                                const EdgeInsets.only(left: 24.0, right: 12),
                            child: Icon(Icons.arrow_back_rounded)),
                      ),
                    ],
                  ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
