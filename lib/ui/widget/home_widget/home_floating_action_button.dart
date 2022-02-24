import 'package:flutter/material.dart';

FloatingActionButton buildFloatingActionButton(
  VoidCallback _onPressed,
) {
  return FloatingActionButton(

    onPressed: _onPressed,
    child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        child: Icon(Icons.add_box_outlined),
        decoration: BoxDecoration(
            border: Border.all(color: Colors.white, width: 3.0),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10.0),
              bottomRight: Radius.circular(10.0),
            )),
      ),
    ),
  );
}
