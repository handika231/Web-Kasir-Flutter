import 'package:flutter/material.dart';

import '../../../common/extension.dart';
import '../../../common/style.dart';

class BuildDrawerWidget extends StatelessWidget {
  const BuildDrawerWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: blackColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DrawerHeader(
            child: Row(
              children: [
                Image.asset(
                  'logo'.path,
                  width: 52,
                ),
                const SizedBox(
                  width: 18,
                ),
                Text(
                  'GMJ\nTamanan',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: bold,
                    color: whiteColor,
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Text(
              'Menu',
              style: TextStyle(
                fontSize: 18,
                fontWeight: bold,
                color: whiteColor,
              ),
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          ListTile(
            leading: Image.asset(
              'docs'.path,
              width: 15,
              height: 20,
            ),
            title: Text(
              'Data Nasabah',
              style: TextStyle(
                color: whiteColor,
                fontSize: 16,
              ),
            ),
            visualDensity: VisualDensity.comfortable,
          ),
        ],
      ),
    );
  }
}
