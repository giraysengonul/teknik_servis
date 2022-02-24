// ignore_for_file: deprecated_member_use, override_on_non_overriding_member

import 'package:flutter/material.dart';
import 'package:technical_service/ui/helper/responsive.dart';
import 'package:technical_service/ui/widget/customer_widget/custom_appbar.dart';

class AddDocumentPage extends StatefulWidget {
  static String routeName = "/AddDocumentPage";
  final GlobalKey<ScaffoldState> _scaffoldkey = GlobalKey<ScaffoldState>();

  @override
  _AddDocumentPageState createState() => _AddDocumentPageState();
}

class _AddDocumentPageState extends State<AddDocumentPage> {


  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      key: widget._scaffoldkey,
      appBar: AppBarWidget(
        title: "Ekle",
        onPressed: () {},
      ),
      body: Center(
          child: SizedBox(
        width: 300,
        height: 55,
        child: RaisedButton(
          color: Colors.teal,
          onPressed: () {
           widget._scaffoldkey.currentState?.showBottomSheet((context) => Container(
             height: 400.0,
             width: SizeConfig.screenWidth,
             decoration: BoxDecoration(
               borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0),topRight: Radius.circular(20.0),),
               color: Colors.grey[500],
             ),
             child: Row(
               mainAxisAlignment: MainAxisAlignment.center,
               crossAxisAlignment: CrossAxisAlignment.center,
               children: [
                 WidgetRaisedButton(title: "Resim çek",onPressed: (){}),
                 SizedBox(width: 20.0,),
                 WidgetRaisedButton(title: "Galariden ekle",onPressed: (){}),
               ],
             ),
           ));
          },
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25.0),
          ),
          textColor: Colors.white,
          child: Text(
            "Resim ekleme ve çekme yöntemleri",
            style: TextStyle(fontSize: 15.0),
          ),
        ),
      )),
    );
  }

  // ignore: non_constant_identifier_names
  Expanded WidgetRaisedButton({required String title,required VoidCallback onPressed}) {
    return Expanded(
      child: RaisedButton(

                     color: Colors.teal,
                    onPressed: onPressed,
                     shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(25.0),
                     ),
                     textColor: Colors.white,
                     child: Text(
                      title,
                       style: TextStyle(fontSize: 15.0),
                     ),
                   ),
    );
  }
}
