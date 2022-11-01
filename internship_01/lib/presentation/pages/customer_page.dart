import 'package:flutter/material.dart';
import 'package:intership_01/common/extension.dart';
import 'package:intership_01/common/style.dart';

class CustomerPage extends StatelessWidget {
  static const nameRoute = '/customer';
  const CustomerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
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
      ),
      appBar: AppBar(
        actions: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(60),
              border: Border.all(
                color: greyColor,
                width: 1,
              ),
            ),
            padding: const EdgeInsets.all(8),
            child: Row(
              children: [
                Image.asset(
                  'profile'.path,
                ),
                const SizedBox(
                  width: 27,
                ),
                const Text(
                  'Fulana',
                  style: TextStyle(fontSize: 18),
                ),
                const SizedBox(
                  width: 27,
                ),
                const Icon(Icons.arrow_drop_down),
              ],
            ),
          )
        ],
        backgroundColor: whiteColor,
        foregroundColor: blackColor,
        title: Text(
          'Data Nasabah',
          style: TextStyle(
            fontSize: 22,
            fontWeight: bold,
          ),
        ),
      ),
    );
  }
}
