import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: AccountBalance(),
      ),
    );
  }
}
class AccountBalance extends StatefulWidget {
  @override
  AccountBalanceState createState() => AccountBalanceState();
}
class AccountBalanceState extends State<AccountBalance> {
  double balance = 20000.0;
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Color.fromARGB(255, 231, 201, 14), // Dark blue background color
        child: Column(
           children: [
              const Padding(
                 padding: EdgeInsets.only(top: 16.0),
                 child: Text(
                       'Account Balance',
                        style: TextStyle(
                            color:Colors.white,
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                            ),
                          ),
                   ),
                   const SizedBox(height: 16.0),
                    Expanded (
                     child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                           Text(
                              '\$${balance.toStringAsFixed(2)}',
                              style: const TextStyle(
                                color: Color.fromARGB(255, 0, 0, 0),
                                fontSize: 24.0,
                                fontWeight: FontWeight.bold,
                                ),
                              ),
                             const SizedBox(height: 16.0),
                             Row(
                               mainAxisAlignment: MainAxisAlignment.center,
                               children: [
                                  GestureDetector(
                                     onTap: () {
                                      setState(() {
                                       balance += 500.0;
                                    });
                                  },
                                      child: Container(
                                        width: 80.0,
                                        height: 80.0,
                                        decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Color.fromARGB(255, 26, 23, 23),
                                        ),
                                        child: const Center(
                                          child: Icon(
                                            Icons.arrow_upward,
                                            color: Color.fromARGB(255, 16, 112, 207),
                                            size: 40.0,
                                          ),
                                        ),
                                     ),
                                  ),
                                   const SizedBox(width: 16.0),
                                   GestureDetector(
                                       onTap: () {
                                        setState(() {
                                             balance = 00.0;
                                        });
                                   },
                                   child: Container(
                                     width: 80.0,
                                     height: 80.0,
                                     decoration: const BoxDecoration(
                                       shape: BoxShape.circle,
                                       color: Color.fromARGB(255, 31, 33, 35),
                                     ),
                                     child: const Center(
                                    child: Icon(
                                      Icons.arrow_downward,
                                      color: Color.fromRGBO(11, 82, 225, 1),
                                      size: 40.0,
                                   ),
                                 ),
                               ),
                             ),
                           ],
                          ),
                       ],
                     ),
                    ),
                 ),
               ],
             ),
           );
        }
     }