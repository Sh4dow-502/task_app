import 'package:flutter/material.dart';

class TaskBox extends StatefulWidget {
  final bool complete;
  final String task;
  final DateTime? date;
  final VoidCallback? onDelete;
  final VoidCallback? onEdit;
  const TaskBox({
    super.key,
    this.date,
    this.onDelete,
    this.onEdit,
    required this.task,
    required this.complete,
  });

  @override
  State<TaskBox> createState() => _TaskBoxState();
}

class _TaskBoxState extends State<TaskBox> {
  bool showOptions = false;
  bool _completTask = false;

  @override
  void initState() {
    _completTask = widget.complete;
    super.initState();
  }

  void enabledOptions() {
    setState(() {
      showOptions = !showOptions;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 7),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color(0xffFAFAFA),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          showOptions
              ? Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.greenAccent,
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.edit,
                          color: Colors.white,
                        ),
                        padding: const EdgeInsets.all(0),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.pinkAccent,
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.delete,
                          color: Colors.white,
                        ),
                        padding: const EdgeInsets.all(0),
                      ),
                    ),
                  ],
                )
              : Row(
                  children: [
                    RawMaterialButton(
                      onPressed: () {
                        setState(() {
                          _completTask = !_completTask;
                        });
                      },
                      elevation: 0,
                      fillColor:
                          _completTask ? const Color(0xff6C63FF) : Colors.grey,
                      padding: const EdgeInsets.all(8),
                      shape: const CircleBorder(),
                      constraints:
                          const BoxConstraints(minWidth: 30, minHeight: 30),
                      child: const Icon(
                        Icons.check_rounded,
                        color: Colors.white,
                        size: 25,
                        weight: 20,
                      ),
                    ),
                    const SizedBox(width: 15),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.task,
                          style: TextStyle(
                            color: _completTask ? Colors.grey : null,
                            fontSize: 19,
                            fontWeight: FontWeight.w500,
                            decoration: _completTask
                                ? TextDecoration.lineThrough
                                : TextDecoration.none,
                            decorationColor: Colors.black38,
                            decorationThickness: 2,
                          ),
                        ),
                        if (widget.date != null)
                          Text(
                            "${widget.date!.day}/${widget.date!.month}/${widget.date!.year}   ${widget.date!.hour}:${widget.date!.minute}",
                            style: const TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Colors.grey,
                              fontSize: 14,
                            ),
                          ),
                      ],
                    ),
                  ],
                ),
          IconButton(
            onPressed: () {
              enabledOptions();
            },
            icon: const Icon(
              Icons.more_vert,
              size: 35,
              color: Color(0xff9F9F9F),
            ),
          )
        ],
      ),
    );
  }
}
