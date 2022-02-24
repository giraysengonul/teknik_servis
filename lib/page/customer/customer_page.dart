// ignore_for_file: avoid_types_as_parameter_names, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:technical_service/model/customer_model/customer_model.dart';
import 'package:technical_service/ui/helper/color.dart';
import 'package:technical_service/ui/helper/responsive.dart';
import 'package:technical_service/ui/widget/customer_widget/custom_appbar.dart';
import 'package:technical_service/ui/widget/home_widget/home_drawer_widget.dart';


class CustomerPage extends StatelessWidget {
  static String routeName = "/CustomerPage";
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      drawer: homeDrawerWidget(context),
      appBar: AppBarWidget(
        title: "Müşteri Listesi",
        onPressed: () {},
      ),
      body: SizedBox(
        height: SizeConfig.screenHeight,
        width: SizeConfig.screenWidth,
        child: ListView.builder(
            itemCount: customerModelList.length,
            itemBuilder: (BuildContext, index) {
              return Card(
                child: Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 10.0,
                          ),
                          Text(customerModelList[index].institutional == true
                              ? "Kurumsal"
                              : "Sahıs"),
                          ListTile(
                            leading: Icon(
                              Icons.person_outline_outlined,
                              color: primaryColor,
                            ),
                            title: Text(
                              customerModelList[index].name.toString(),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          ListTile(
                            leading: Icon(
                              Icons.phone_outlined,
                              color: primaryColor,
                            ),
                            title: Text(
                              customerModelList[index].phone.toString(),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          ListTile(
                            leading: Icon(
                              Icons.location_on_outlined,
                              color: primaryColor,
                            ),
                            title: Text(
                              customerModelList[index].address.toString(),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                        flex: 1,
                        child: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.arrow_forward_ios_outlined)))
                  ],
                ),
              );
            }),
      ),
    );
  }
}
