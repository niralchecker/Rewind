import 'package:flutter/material.dart';

class DrawerItem extends StatelessWidget implements PreferredSizeWidget {
  DrawerItem(
      {super.key, this.icon, this.text, this.onTap, this.isSelected = false});

  IconData? icon;
  String? text;
  GestureTapCallback? onTap;
  bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Ink(
      child: Container(
        color: isSelected ? Colors.black : Colors.white,
        child: ListTile(
          selected: true,
          title: Row(
            children: <Widget>[
              Icon(
                icon,
                color: isSelected ? Colors.white : Colors.black,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(
                  text!,
                  style: TextStyle(
                      color: isSelected ? Colors.white : Colors.black),
                ),
              )
            ],
          ),
          onTap: onTap,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
