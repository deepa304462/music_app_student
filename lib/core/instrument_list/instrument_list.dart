import 'package:flutter/material.dart';



class InstrumentList extends StatefulWidget {
  const InstrumentList({super.key});

  @override
  State<InstrumentList> createState() => _InstrumentListState();
}

class _InstrumentListState extends State<InstrumentList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            ListView.builder(
                itemBuilder: (context, index){
                  ListTile(
                    title: Row(
                      children: [
                        Column(
                          children: [
                            Text("lol")
                          ],
                        )
                      ],
                    ),
                  );

                })
          ],
        ),
      ),
    );
  }
}
