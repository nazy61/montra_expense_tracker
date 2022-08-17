import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../utils/utils.dart';

class YouAreSetPage extends StatefulWidget {
  const YouAreSetPage({Key? key}) : super(key: key);

  @override
  State<YouAreSetPage> createState() => _YouAreSetPageState();
}

class _YouAreSetPageState extends State<YouAreSetPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(20.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.gpp_good,
                  size: 100.0,
                  color: Colors.green[900],
                ),
                SizedBox(
                  height: 32.0,
                ),
                Text(
                  "You are set",
                  style: title2Dark75,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
