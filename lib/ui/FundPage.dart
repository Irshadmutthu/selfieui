import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:funds/ui/goto.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:google_fonts/google_fonts.dart';

class FundPage extends StatelessWidget {
  const FundPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 30),
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(5, 5, 16, 5),
                child: Row(
                  children: [
                    IconButton(
                        icon: Icon(Icons.arrow_back),
                        onPressed: () => Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => GoTo()))),
                    Text(
                      'Funds',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              child: DefaultTabController(
                  length: 3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 16, bottom: 16),
                        child: TabBar(
                          isScrollable: true,
                          indicatorColor: HexColor("#07877B"),
                          labelColor: HexColor("#07877B"),
                          unselectedLabelColor: Colors.grey,
                          tabs: [
                            Tab(
                                child: Text(
                              'Funds',
                            )),
                            Tab(
                              child: Text(
                                'Allocation',
                              ),
                            ),
                            Tab(
                              child: Text(
                                'Pledge',
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 530,
                        child: TabBarView(children: [
                          SingleChildScrollView(
                            child: Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 16, right: 16),
                                    child: Container(
                                      width: MediaQuery.of(context).size.width,
                                      decoration: BoxDecoration(
                                        color: Color(0xffF5F8FA),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.all(16),
                                        child: Container(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "AVAILABLE MARGIN (CASH + COLLATERAL))",
                                                style: TextStyle(
                                                  fontFamily: 'Open Sans',
                                                  fontSize: 12,
                                                  color: Color(0xff7A828F),
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                              SizedBox(
                                                height: 8,
                                              ),
                                              Text(
                                                "₹ 1,004,123",
                                                style: TextStyle(
                                                  color: Color(0xff292C33),
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 20,
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 12,
                                  ),
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 16, right: 16),
                                        child: Container(
                                          color: Color(0xffF5F8FA),
                                          child: Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                16, 16, 22, 16),
                                            child: Container(
                                              child: Column(
                                                children: [
                                                  Text(
                                                    "AVAILABLE CASH",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontSize: 12,
                                                        color:
                                                            Color(0xff7A828F)),
                                                  ),
                                                  SizedBox(height: 8),
                                                  Text(
                                                    '₹ 30,104,333',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        fontSize: 20,
                                                        color:
                                                            Color(0xff292C33)),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 12,
                                      ),
                                      Expanded(
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(right: 16),
                                          child: Container(
                                            color: Color(0xffF5F8FA),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.fromLTRB(
                                                      16, 16, 80, 16),
                                              child: Container(
                                                child: Column(
                                                  children: [
                                                    Text(
                                                      'USED MARGIN',
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          fontSize: 12,
                                                          color: Color(
                                                              0xff7A828F)),
                                                    ),
                                                    SizedBox(height: 8),
                                                    Text(
                                                      '₹ 43,000',
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w700,
                                                          fontSize: 20,
                                                          color: Color(
                                                              0xff292C33)),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(height: 24),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 16, right: 16),
                                    child: Divider(
                                      thickness: 2,
                                      color: Color(0xffE8EBED),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 16,
                                  ),
                                  Column(
                                    children: [
                                      Container(
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              left: 16, top: 10, bottom: 10),
                                          child: Row(
                                            children: [
                                              Text(
                                                'Margin Balance',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 14,
                                                    color: Color(0xff292C33)),
                                              ),
                                              SizedBox(
                                                width: 4,
                                              ),
                                              Icon(
                                                Icons.info_outline_rounded,
                                                size: 20,
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 16, right: 16),
                                        child: Container(
                                          child: Column(
                                            children: [
                                              Container(
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: Row(
                                                    children: [
                                                      Text(
                                                        'Equity Cash Segment',
                                                        style: TextStyle(
                                                            color: Color(
                                                                0xff7A828F),
                                                            fontSize: 12,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w400),
                                                      ),
                                                      Expanded(
                                                          child: SizedBox()),
                                                      Text(
                                                        "₹ 12,872.00",
                                                        style: TextStyle(
                                                            color: Color(
                                                                0xff292C33),
                                                            fontSize: 12,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w600),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                color: Color(0xffF5F8FA),
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: Row(
                                                    children: [
                                                      Text(
                                                        'Equity F&O',
                                                        style: TextStyle(
                                                            color: Color(
                                                                0xff7A828F),
                                                            fontSize: 12,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w400),
                                                      ),
                                                      Expanded(
                                                          child: SizedBox()),
                                                      Text(
                                                        "₹123.12",
                                                        style: TextStyle(
                                                            color: Color(
                                                                0xff292C33),
                                                            fontSize: 12,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w600),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: Row(
                                                    children: [
                                                      Text(
                                                        'Currency',
                                                        style: TextStyle(
                                                            color: Color(
                                                                0xff7A828F),
                                                            fontSize: 12,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w400),
                                                      ),
                                                      Expanded(
                                                          child: SizedBox()),
                                                      Text(
                                                        "₹ 891.11",
                                                        style: TextStyle(
                                                            color: Color(
                                                                0xff292C33),
                                                            fontSize: 12,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w600),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                color: Color(0xffF5F8FA),
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: Row(
                                                    children: [
                                                      Text(
                                                        'Commodity',
                                                        style: TextStyle(
                                                            color: Color(
                                                                0xff7A828F),
                                                            fontSize: 12,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w400),
                                                      ),
                                                      Expanded(
                                                          child: SizedBox()),
                                                      Text(
                                                        "₹ 101,219,121",
                                                        style: TextStyle(
                                                            color: Color(
                                                                0xff292C33),
                                                            fontSize: 12,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w600),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 16,
                                  ),
                                  ExpansionTile(
                                    childrenPadding:
                                        EdgeInsets.only(left: 16, right: 16),
                                    title: Row(
                                      children: [
                                        Text(
                                          'Margin Utilized',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 14,
                                              color: Color(0xff292C33)),
                                        ),
                                        SizedBox(width: 4),
                                        Icon(
                                          Icons.info_outline_rounded,
                                          color: Color(0xff292C33),
                                          size: 20,
                                        )
                                      ],
                                    ),
                                    children: [
                                      Column(
                                        children: [
                                          Container(
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Row(
                                                children: [
                                                  Text(
                                                    'Equity Cash Segment',
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xff7A828F),
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.w400),
                                                  ),
                                                  Expanded(child: SizedBox()),
                                                  Text(
                                                    "₹ 12,872.00",
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xff292C33),
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.w600),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Container(
                                            color: Color(0xffF5F8FA),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Row(
                                                children: [
                                                  Text(
                                                    'Equity F&O',
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xff7A828F),
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.w400),
                                                  ),
                                                  Expanded(child: SizedBox()),
                                                  Text(
                                                    "₹123.12",
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xff292C33),
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.w600),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Container(
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Row(
                                                children: [
                                                  Text(
                                                    'Currency',
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xff7A828F),
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.w400),
                                                  ),
                                                  Expanded(child: SizedBox()),
                                                  Text(
                                                    "₹ 891.11",
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xff292C33),
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.w600),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Container(
                                            color: Color(0xffF5F8FA),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Row(
                                                children: [
                                                  Text(
                                                    'Commodity',
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xff7A828F),
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.w400),
                                                  ),
                                                  Expanded(child: SizedBox()),
                                                  Text(
                                                    "₹ 101,219,121",
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xff292C33),
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.w600),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                  ExpansionTile(
                                    childrenPadding:
                                        EdgeInsets.only(left: 16, right: 16),
                                    title: Row(
                                      children: [
                                        Text(
                                          'Blocked Margin',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 14,
                                              color: Color(0xff292C33)),
                                        ),
                                        SizedBox(width: 4),
                                        Icon(
                                          Icons.info_outline_rounded,
                                          color: Color(0xff292C33),
                                          size: 20,
                                        )
                                      ],
                                    ),
                                    children: [
                                      Column(
                                        children: [
                                          Container(
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Row(
                                                children: [
                                                  Text(
                                                    'Equity Cash Segment',
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xff7A828F),
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.w400),
                                                  ),
                                                  Expanded(child: SizedBox()),
                                                  Text(
                                                    "₹ 12,872.00",
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xff292C33),
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.w600),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Container(
                                            color: Color(0xffF5F8FA),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Row(
                                                children: [
                                                  Text(
                                                    'Equity F&O',
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xff7A828F),
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.w400),
                                                  ),
                                                  Expanded(child: SizedBox()),
                                                  Text(
                                                    "₹123.12",
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xff292C33),
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.w600),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Container(
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Row(
                                                children: [
                                                  Text(
                                                    'Currency',
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xff7A828F),
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.w400),
                                                  ),
                                                  Expanded(child: SizedBox()),
                                                  Text(
                                                    "₹ 891.11",
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xff292C33),
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.w600),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Container(
                                            color: Color(0xffF5F8FA),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Row(
                                                children: [
                                                  Text(
                                                    'Commodity',
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xff7A828F),
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.w400),
                                                  ),
                                                  Expanded(child: SizedBox()),
                                                  Text(
                                                    "₹ 101,219,121",
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xff292C33),
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.w600),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 24,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 16, right: 16),
                                    child: ElevatedButton(
                                      style: ButtonStyle(
                                          backgroundColor: Color(0xffE8EBED)),
                                      onPressed: () {},
                                      child: Row(
                                        children: [
                                          Text('Payout Status Tab'),
                                          Expanded(child: SizedBox()),
                                          Icon(Icons.launch),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Text('bijin'),
                          Text('sarthaj')
                        ]),
                      )
                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
