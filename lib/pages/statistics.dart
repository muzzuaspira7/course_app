import 'package:flutter/material.dart';

class Statistics extends StatefulWidget {
  const Statistics({super.key});

  @override
  State<Statistics> createState() => _StatisticsState();
}

class _StatisticsState extends State<Statistics> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Row(
              children: [
                Icon(
                  Icons.alarm,
                  color: Colors.grey,
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Statistics',
              style: TextStyle(
                  fontSize: 22,
                  color: Colors.black,
                  fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    color: const Color(0xffebf5ff),
                    height: 140,
                    width: 140,
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                            width: 100,
                            child: Text(
                              'Courses Completed',
                              style: TextStyle(color: Colors.grey),
                            )),
                        Padding(
                          padding: EdgeInsets.only(left: 15, right: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(
                                Icons.ac_unit_rounded,
                                color: Colors.blue,
                              ),
                              Text(
                                '02',
                                style: TextStyle(
                                    fontSize: 33, color: Color(0xff006ed3)),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    color: const Color(0xffebf5ff),
                    height: 140,
                    width: 140,
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                            width: 100,
                            child: Text(
                              'Courses Completed',
                              style: TextStyle(color: Colors.grey),
                            )),
                        Padding(
                          padding: EdgeInsets.only(left: 15, right: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(
                                Icons.ac_unit_rounded,
                                color: Colors.blue,
                              ),
                              Text(
                                '02',
                                style: TextStyle(
                                    fontSize: 33, color: Color(0xff006ed3)),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    color: const Color(0xffebf5ff),
                    height: 140,
                    width: 140,
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                            width: 100,
                            child: Text(
                              'Courses Completed',
                              style: TextStyle(color: Colors.grey),
                            )),
                        Padding(
                          padding: EdgeInsets.only(left: 15, right: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(
                                Icons.ac_unit_rounded,
                                color: Colors.blue,
                              ),
                              Text(
                                '02',
                                style: TextStyle(
                                    fontSize: 33, color: Color(0xff006ed3)),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    color: const Color(0xffebf5ff),
                    height: 140,
                    width: 140,
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                            width: 100,
                            child: Text(
                              'Courses Completed',
                              style: TextStyle(color: Colors.grey),
                            )),
                        Padding(
                          padding: EdgeInsets.only(left: 15, right: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(
                                Icons.ac_unit_rounded,
                                color: Colors.blue,
                              ),
                              Text(
                                '02',
                                style: TextStyle(
                                    fontSize: 33, color: Color(0xff006ed3)),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
