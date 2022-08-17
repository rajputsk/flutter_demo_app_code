import 'package:flutter/material.dart';

class GridViewScreen extends StatefulWidget {
  const GridViewScreen({Key? key}) : super(key: key);

  @override
  State<GridViewScreen> createState() => _GridViewScreenState();
}

class _GridViewScreenState extends State<GridViewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GridView"),
      ),
      body: Container(
        color: Colors.grey,
        padding: EdgeInsets.all(10),
        child: GridView.builder(
          itemCount: 10,
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            mainAxisExtent: 240
          ),
          itemBuilder: (context, index) {
            return _buildChild(index);
          },
        ),
      ),
    );
  }

  Widget _buildChild(int index) {
    return Container(
      color: Colors.red,
      child: Column(
        children: const [
          Image(
            height: 180,
            image: NetworkImage('https://m.media-amazon.com/images/I/61PYpMTndmL._SL1000_.jpg'),
          ),
          Text(
            "Price - 299",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          Text(
            "Item available - 200",
            style: TextStyle(color: Colors.white, fontSize: 20),
          )
        ],
      ),
    );
  }
}
