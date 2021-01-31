import 'package:flutter/material.dart';
import 'package:responsive_graph_example/widgets/detail_button.dart';
import 'package:responsive_graph_example/widgets/donut_chart.dart';
import 'package:responsive_graph_example/widgets/rounded_button.dart';
import 'package:responsive_graph_example/widgets/title_text.dart';

import '../widgets/stacked_area_chart.dart';

class SalesPage extends StatefulWidget {
  @override
  _SalesPageState createState() => _SalesPageState();
}

class _SalesPageState extends State<SalesPage> {
  final int _selectedIndex = 4;

  TableRow _order({
    @required final String orderNumber,
    @required final String salesType,
    @required final String name,
    @required final String price,
  }) =>
      TableRow(
        children: [
          Padding(
            padding: const EdgeInsets.all(8),
            child: Text(orderNumber),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Text(salesType),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Text(name),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Text(price),
          ),
          ButtonTheme(
            minWidth: 0,
            buttonColor: Colors.grey[300],
            child: RaisedButton(
              padding: EdgeInsets.zero,
              onPressed: () {},
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              child: const Text('Details'),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: DropdownButton(
                isExpanded: true,
                value: 0,
                onChanged: (_) {},
                items: const [
                  DropdownMenuItem(
                    value: 0,
                    child: Text("Action"),
                  ),
                ],
              ),
            ),
          ),
        ],
      );

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.zero,
          child: Container(),
        ),
        body: Row(
          children: [
            NavigationRail(
              minWidth: 40,
              selectedIndex: _selectedIndex,
              labelType: NavigationRailLabelType.none,
              onDestinationSelected: (_) {},
              destinations: const [
                NavigationRailDestination(
                  icon: Icon(
                    Icons.account_circle,
                  ),
                  label: Text('Profile'),
                ),
                NavigationRailDestination(
                  icon: Icon(
                    Icons.home,
                  ),
                  label: Text('Home'),
                ),
                NavigationRailDestination(
                  icon: Icon(
                    Icons.mail,
                  ),
                  label: Text('Mail'),
                ),
                NavigationRailDestination(
                  icon: Icon(
                    Icons.search,
                  ),
                  label: Text('Search'),
                ),
                NavigationRailDestination(
                  icon: Icon(
                    Icons.insert_chart_outlined,
                  ),
                  label: Text('Chart'),
                ),
                NavigationRailDestination(
                  icon: Icon(
                    Icons.attach_money,
                  ),
                  label: Text('Money'),
                ),
                NavigationRailDestination(
                  icon: Icon(
                    Icons.settings,
                  ),
                  label: Text('Settings'),
                ),
              ],
            ),
            const VerticalDivider(thickness: 1, width: 1),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Sales',
                        style: TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(height: 16),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: const [
                            RoundedButton('Today'),
                            SizedBox(width: 8),
                            RoundedButton('7 Days'),
                            SizedBox(width: 8),
                            RoundedButton('30 Days'),
                            SizedBox(width: 8),
                            RoundedButton('Custom'),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: OverflowBar(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: SizedBox(
                                width: 600,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        const TitleText('SALES'),
                                        IconButton(
                                          icon: const Icon(Icons.settings),
                                          onPressed: () {},
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 300,
                                      child:
                                          StackedAreaLineChart.withSampleData(),
                                    ),
                                    const TitleText(
                                      'LATEST ORDERS',
                                      divider: false,
                                    ),
                                    SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: SizedBox(
                                        width: 600,
                                        child: Table(
                                          defaultVerticalAlignment:
                                              TableCellVerticalAlignment.middle,
                                          border: const TableBorder(
                                            horizontalInside: BorderSide(),
                                            top: BorderSide(),
                                            left: BorderSide(),
                                            right: BorderSide(),
                                            bottom: BorderSide(),
                                          ),
                                          children: [
                                            _order(
                                              orderNumber: '198798',
                                              salesType: 'Dine In',
                                              name: 'Joe Smith',
                                              price: '\$45.95',
                                            ),
                                            _order(
                                              orderNumber: '198797',
                                              salesType: 'Delivery',
                                              name: 'Dan Jones',
                                              price: '\$85.00',
                                            ),
                                            _order(
                                              orderNumber: '198796',
                                              salesType: 'Dine In',
                                              name: 'Zoe Fuller',
                                              price: '\$55.95',
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: SizedBox(
                                width: 400,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const TitleText('TOP CATEGORIES'),
                                    SizedBox(
                                      height: 300,
                                      child: DonutPieChart.withSampleData(),
                                    ),
                                    const TitleText('POPULAR ITEMS'),
                                    const SizedBox(height: 12),
                                    SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: Row(
                                        children: const [
                                          DetailButton(),
                                          SizedBox(width: 8),
                                          DetailButton(),
                                          SizedBox(width: 8),
                                          DetailButton(),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      );
}
