import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class MonthlyPaymentCard extends StatelessWidget {
  const MonthlyPaymentCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
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
        SizedBox(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: const [Text('Prox. Vencim.'), Text("20/02")],
          ),
        )
      ],
    );
  }
}
