import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:technical_service/provider/lpg_state.dart';
import 'package:technical_service/ui/helper/color.dart';
import 'package:technical_service/ui/helper/responsive.dart';

class LpgStatePage extends StatefulWidget {
  static String routeName = "/LpgStatePage";
  const LpgStatePage({Key? key}) : super(key: key);

  @override
  _LpgStatePageState createState() => _LpgStatePageState();
}

class _LpgStatePageState extends State<LpgStatePage> {
  @override
  void initState() {
    context.read<LpgStateProvider>().lpgStateRequest();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: ListView.builder(
          itemCount:
              context.read<LpgStateProvider>().lpgStateModel.result?.length ??
                  0,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 100.0,
                width: 200.0,
                color: Colors.red,
                child: Consumer<LpgStateProvider>(
                  builder: (context, model, child) =>
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            "City : ",
                            style: TextStyle(color: Colors.red),
                          ),
                          Text(model.lpgStateModel.lastupdate.toString()),
                        ],
                      ),
                      Row(
                        children: [
                          Text("Marka : "),
                          Text(model.lpgStateModel.result?[index].marka ?? ""),
                        ],
                      ),
                      Row(
                        children: [
                          Text("Benzin : "),
                          Text(model.lpgStateModel.result?[index].benzin
                                  .toString() ??
                              ""),
                        ],
                      ),

                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }
}
