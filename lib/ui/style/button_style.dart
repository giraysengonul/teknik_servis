import 'package:flutter/material.dart';

InkWell loginInkWellButton({
  required VoidCallback onTap,
  required String title,
  required IconData icon,
}) {
  return InkWell(
    onTap: onTap,
    child: Container(
      height: 70.0,
      width: 170.0,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.teal),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              title,
              style: TextStyle(color: Colors.white, fontSize: 25.0),
            ),
            SizedBox(
              width: 10.0,
            ),
            Icon(
              icon,
              color: Colors.white,
              size: 25.0,
            ),
          ],
        ),
      ),
    ),
  );
}
