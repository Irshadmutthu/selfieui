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
                padding: const EdgeInsets.fromLTRB(16, 15, 16, 15),
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
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TabBar(
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
                        Padding(
                          padding: EdgeInsets.only(top: 16, right: 25),
                          child: Container(
                            height: 500,
                            child: TabBarView(children: [
                              Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
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
                                    )
                                  ],
                                ),
                              ),
                              Text('bijin'),
                              Text('sarthaj')
                            ]),
                          ),
                        )
                      ],
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
