import 'package:flutter/material.dart';

class CategoryBox extends StatefulWidget {
  final int tasks;
  final String name;
  final double complete;
  const CategoryBox({
    super.key,
    required this.name,
    required this.tasks,
    required this.complete,
  });

  @override
  State<CategoryBox> createState() => _CategoryBoxState();
}

class _CategoryBoxState extends State<CategoryBox> {
  bool _menuExtended = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(13),
      margin: const EdgeInsets.only(right: 16),
      width: 180,
      height: 155,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color(0xffFAFAFA),
      ),
      //alignment: Alignment.center,
      child: Stack(
        children: [
          Positioned(
            right: 0,
            child: IconButton(
              onPressed: () {
                setState(() {
                  _menuExtended = !_menuExtended;
                });
              },
              icon: Icon(_menuExtended ? Icons.close : Icons.more_vert),
            ),
          ),
          _menuExtended
              ? Center(
                  child: Column(
                    children: [
                      const SizedBox(height: 12),
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
                      const SizedBox(height: 10),
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
                  ),
                )
              : Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "${widget.tasks} Tasks",
                      style: const TextStyle(
                        fontSize: 18,
                        color: Color(0xff9D9D9D),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      widget.name,
                      style: const TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 5),
                    SizedBox(
                      child: LinearProgressIndicator(
                        borderRadius: BorderRadius.circular(20),
                        backgroundColor: const Color(0xffD6D3FF),
                        color: const Color(0xff6C63FF),
                        value: widget.complete,
                        minHeight: 10,
                      ),
                    )
                  ],
                ),
        ],
      ),
    );
  }
}
