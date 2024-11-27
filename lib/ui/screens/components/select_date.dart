import 'package:flutter/material.dart';
import 'package:omni_datetime_picker/omni_datetime_picker.dart';

class SelectDateTime extends StatefulWidget {
  const SelectDateTime({
    super.key,
  });

  @override
  State<SelectDateTime> createState() => _SelectDateTimeState();
}

class _SelectDateTimeState extends State<SelectDateTime> {
  String _textDateTime = "DateTime";

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: GestureDetector(
        onTap: () async {
          final DateTime? dateTime =
              await showOmniDateTimePicker(context: context);

          if (dateTime != null) {
            _textDateTime =
                "${dateTime.day}/${dateTime.month}/${dateTime.year}  ${dateTime.hour}:${dateTime.minute}";
          } else {
            _textDateTime = "DateTime";
          }
          setState(() {});
        },
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(7),
              decoration: BoxDecoration(
                color: const Color(0xff6158Ff),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Icon(
                Icons.edit_calendar,
                color: Colors.white,
              ),
            ),
            const SizedBox(width: 7),
            Text(
              _textDateTime,
              style: _textDateTime != "DateTime"
                  ? const TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                    )
                  : null,
            ),
            _textDateTime != "DateTime"
                ? IconButton(
                    padding: const EdgeInsets.all(0),
                    onPressed: () {
                      setState(() {
                        _textDateTime = "DateTime";
                      });
                    },
                    icon: const Icon(
                      Icons.restore_outlined,
                    ),
                  )
                : Container(),
          ],
        ),
      ),
    );
  }
}
