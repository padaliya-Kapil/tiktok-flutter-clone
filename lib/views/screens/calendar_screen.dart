import 'package:clean_nepali_calendar/clean_nepali_calendar.dart';
import 'package:flutter/material.dart';

class NepaliCalendarScreen extends StatelessWidget {
  final NepaliCalendarController _nepaliCalendarController =
      NepaliCalendarController();

  @override
  Widget build(BuildContext context) {
    final NepaliDateTime first = NepaliDateTime(1970, 1);
    final NepaliDateTime last = NepaliDateTime(2100, 12);

    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CleanNepaliCalendar(
                controller: _nepaliCalendarController,
                headerDayBuilder: (_, index) {
                  return Align(
                    alignment: Alignment.topCenter,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 5.0),
                      child: Text(
                        '$_',
                        style:
                            TextStyle(color: (index == 6) ? Colors.red : null),
                      ),
                    ),
                  );
                },
                dateCellBuilder: (isToday, isSelected, isDisabled, nepaliDate,
                        label, text, calendarStyle, isWeekend) =>
                    cellBuilder(context, isToday, isSelected, isDisabled,
                        nepaliDate, label, text, calendarStyle, isWeekend),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget cellBuilder(
    BuildContext context,
    bool isToday,
    bool isSelected,
    bool isDisabled,
    NepaliDateTime nepaliDate,
    String label,
    String text,
    CalendarStyle calendarStyle,
    bool isWeekend,
  ) {
    Decoration _buildCellDecoration() {
      if (isSelected && isToday) {
        return BoxDecoration(
            // shape: BoxShape.circle,
            borderRadius: BorderRadius.circular(5),
            color: Colors.blue,
            border: Border.all(color: calendarStyle.selectedColor));
      }
      if (isSelected) {
        return BoxDecoration(
            // shape: BoxShape.circle,
            borderRadius: BorderRadius.circular(5),
            border: Border.all(color: calendarStyle.selectedColor));
      } else if (isToday && calendarStyle.highlightToday) {
        return BoxDecoration(
          // shape: BoxShape.circle,
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: Colors.transparent),
          color: Colors.blue,
        );
      } else {
        return BoxDecoration(
          // shape: BoxShape.circle,
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: Colors.transparent),
        );
      }
    }

    return AnimatedContainer(
      padding: EdgeInsets.all(3),
      duration: Duration(milliseconds: 2000),
      decoration: _buildCellDecoration(),
      child: Center(
        child: Expanded(
          child: Column(
            children: [
              Text(text,
                  style: TextStyle(
                      fontSize: 20, color: isWeekend ? Colors.red : null)),
              Align(
                  alignment: Alignment.bottomCenter,
                  child: CircleAvatar(
                    radius: 1,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
