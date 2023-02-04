import 'dart:math';

import 'package:flutter/material.dart';

class TrainerPage extends StatefulWidget {
  const TrainerPage({super.key});

  @override
  State<TrainerPage> createState() => _TrainerPageState();
}

class _TrainerPageState extends State<TrainerPage> {
  final DataTableSource data = TrainerTable();
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red.shade50,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 25,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 165, 204, 157),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Center(
                child: RichText(
                  text: TextSpan(
                    text: "Trainer of the ",
                    style: const TextStyle(fontSize: 20, color: Colors.black),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Year',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.amber[600],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: MediaQuery.of(context).size.height / 2.8,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.red.shade50, Colors.yellow.shade200],
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              child: Container(
                                height: 150,
                                width: 110,
                                decoration: BoxDecoration(
                                  image: const DecorationImage(
                                    fit: BoxFit.fill,
                                    image: NetworkImage(
                                      "https://images.unsplash.com/photo-1606902965551-dce093cda6e7?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8dHJhaW5lcnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
                                    ),
                                  ),
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 40,
                              width: 40,
                              child: Image.asset('assets/images/second.png'),
                            ),
                            const Padding(
                              padding: EdgeInsets.symmetric(vertical: 8.0),
                              child: Text(
                                "Julia Rekamie",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              child: Container(
                                height: 150,
                                width: 110,
                                decoration: BoxDecoration(
                                  image: const DecorationImage(
                                    fit: BoxFit.fill,
                                    image: NetworkImage(
                                      "https://images.unsplash.com/photo-1622107151292-d4309c81121c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8dHJhaW5lcnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
                                    ),
                                  ),
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 40,
                              width: 40,
                              child: Image.asset('assets/images/first.png'),
                            ),
                            const Padding(
                              padding: EdgeInsets.symmetric(vertical: 30),
                              child: Text(
                                "ABDALLA M",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              child: Container(
                                height: 150,
                                width: 110,
                                decoration: BoxDecoration(
                                  image: const DecorationImage(
                                    fit: BoxFit.fill,
                                    image: NetworkImage(
                                      "https://images.unsplash.com/photo-1599566150163-29194dcaad36?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
                                    ),
                                  ),
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 35,
                              width: 40,
                              child: Image.asset('assets/images/thired.png'),
                            ),
                            const Padding(
                              padding: EdgeInsets.symmetric(vertical: 2),
                              child: Text(
                                "Vicky Hladynets",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              alignment: Alignment.topLeft,
              child: const Text(
                "List of Trainer",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
            ),
            Divider(
              color: Colors.black.withOpacity(0.2),
              indent: 20.0,
              endIndent: 20.0,
              thickness: 3,
              height: 20,
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: PaginatedDataTable(
                  source: data,
                  columns: const [
                    DataColumn(
                      label: Text('RANK'),
                    ),
                    DataColumn(
                      label: Text('NAME'),
                    ),
                    DataColumn(
                      label: Text('PRICE'),
                    ),
                  ],
                  columnSpacing: 60,
                  horizontalMargin: 60,
                  initialFirstRowIndex: 4,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TrainerTable extends DataTableSource {
  final List<Map<String, dynamic>> data = List.generate(
    50,
    (index) => {
      "Rank": index,
      "Name": "Trainer $index",
      "Price": Random().nextInt(1000)
    },
  );

  @override
  DataRow? getRow(int index) {
    return DataRow(
      cells: [
        DataCell(
          Text(
            data[index]['Rank'].toString(),
          ),
        ),
        DataCell(
          Text(
            data[index]['Name'],
          ),
        ),
        DataCell(
          Text(
            data[index]['Price'].toString(),
          ),
        ),
      ],
    );
  }

  @override
  bool get isRowCountApproximate => false;

  @override
  int get rowCount => data.length;

  @override
  int get selectedRowCount => 0;
}
