import 'package:flutter/material.dart';

class SchedulerItem extends StatefulWidget {
  const SchedulerItem({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _SchedulerItemState();
}

class _SchedulerItemState extends State<SchedulerItem> {
  bool? isChecked = true;

  @override
  Widget build(BuildContext context) {

    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.green;
      }
      return Colors.green;
    }

    void checkboxCallback(bool? checkboxState) {
      if (checkboxState != null) {
        setState(() {
          isChecked = checkboxState;
        });
      }
    }

    return Row(
      children: [
        Text('00:00 ~ 23:00'),
        const SizedBox(width: 4,),
        Checkbox(
          checkColor: Colors.white,
          value: isChecked,
          onChanged: checkboxCallback,
          side: MaterialStateBorderSide.resolveWith(
                (states) => const BorderSide(
                width: 1, color: Color(0xff43a047)),
          ),
          fillColor: MaterialStateProperty.resolveWith(getColor),
        ),
      ],
    );
  }
}
