import 'package:flutter/material.dart';
import 'package:task_app/ui/screens/tasks_screen/widgets/button_filter.dart';

class FilterTasks extends StatefulWidget {
  const FilterTasks({super.key});

  @override
  State<FilterTasks> createState() => _FilterTasksState();
}

class _FilterTasksState extends State<FilterTasks> {
  String _setActive = "All";

  void setActiveFilter(String filterActive) {
    setState(() {
      _setActive = filterActive;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ButtonFilter(
          text: "All",
          active: _setActive == "All",
          onPress: () => setActiveFilter("All"),
        ),
        const SizedBox(width: 6),
        ButtonFilter(
          text: "Recent",
          active: _setActive == "Recent",
          onPress: () => setActiveFilter("Recent"),
        ),
        const SizedBox(width: 6),
        ButtonFilter(
          text: "Complete",
          active: _setActive == "Complete",
          onPress: () => setActiveFilter("Complete"),
        ),
      ],
    );
  }
}
