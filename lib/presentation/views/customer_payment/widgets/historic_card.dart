import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class HistoricCard extends StatelessWidget {
  const HistoricCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const Icon(Icons.monetization_on_outlined),
              SizedBox(width: 1.w),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text('Academia'),
                  Text(
                    "Mensalidade Academia Max",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Row(
                children: const [
                  Text('- R\$ '),
                  Text(
                    '50,00',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ),
              const Text("20/02")
            ],
          )
        ],
      ),
    );
  }
}
