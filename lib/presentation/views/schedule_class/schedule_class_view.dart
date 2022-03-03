import 'package:flutter/material.dart';
import 'package:vup/presentation/core/app_text_styles.dart';

class ScheduleClassView extends StatefulWidget {
  const ScheduleClassView({Key? key}) : super(key: key);

  @override
  State<ScheduleClassView> createState() => _ScheduleClassViewState();
}

class _ScheduleClassViewState extends State<ScheduleClassView> {
  DateTime? _dateTimePicked;
  String gymSelected = 'Max Forma';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text(
            "Agendar treino",
            style: AppTextStyles.smallBoldTitleStyle,
          ),
          ListTile(
            leading: Icon(Icons.date_range),
            onTap: () async {
              DateTime? dt = await showDatePicker(
                context: context,
                initialDate: DateTime.now(),
                firstDate: DateTime(2022),
                lastDate: DateTime(2023),
              );
              setState(() {
                _dateTimePicked = dt ?? DateTime.now();
              });
            },
            title: Text("Escolher data"),
          ),
          Text("Professor: Fernando"),
          Row(
            children: [
              Text("Academia: "),
              DropdownButton<String>(
                value: gymSelected,
                onChanged: (v) {
                  setState(() {
                    gymSelected = v ?? 'Acquafit';
                  });
                },
                items: const <DropdownMenuItem<String>>[
                  DropdownMenuItem<String>(
                    child: Text('Acquafit'),
                    value: 'Acquafit',
                  ),
                  DropdownMenuItem<String>(
                    child: Text('Max Forma'),
                    value: 'Max Forma',
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
