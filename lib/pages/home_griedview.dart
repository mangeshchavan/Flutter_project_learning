// ignore_for_file: sort_child_properties_last, prefer_const_constructors, avoid_print
import 'package:flutter/material.dart';

class HomeGriedView extends StatelessWidget {
  const HomeGriedView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 420,
        //color: Colors.amber,
        child: GridView(
          primary: false,
          padding: EdgeInsets.all(15),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
          ),
          children: [
            Column(
              children: [
                InkWell(
                  child: Container(
                    height: 150,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(11.0),
                      image: DecorationImage(
                        image: NetworkImage(
                            "https://api.happythoughts.in/assets/fbb06e64-dad3-4036-ab34-dbffebf6fe11"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  onTap: () => {
                    print("container 1 clicked"),
                  },
                ),
                Text("Self Shivir")
              ],
            ),
            Column(
              children: [
                InkWell(
                  child: Container(
                    height: 150,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(11.0),
                      image: DecorationImage(
                        image: NetworkImage(
                            "https://api.happythoughts.in/assets/ba96ebaf-6dec-4604-a485-4d05afdc90a7"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  onTap: () => {
                    print("container 2 clicked"),
                  },
                ),
                Text("Health")
              ],
            ),
            Column(
              children: [
                InkWell(
                  child: Container(
                    height: 150,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(11.0),
                      image: DecorationImage(
                        image: NetworkImage(
                            "https://api.happythoughts.in/assets/723d643a-d1f5-43b8-a7bf-6a186d926ffe"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  onTap: () => {
                    print("container 3 clicked"),
                  },
                ),
                Text("Donation")
              ],
            ),
            Column(
              children: [
                InkWell(
                  child: Container(
                    height: 150,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(11.0),
                      image: DecorationImage(
                        image: NetworkImage(
                            "https://api.happythoughts.in/assets/0586ea7d-776f-4092-94ad-e9cd8eb2409e"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  onTap: () => {
                    print("container 4 clicked"),
                  },
                ),
                Text("Intensive Seeker")
              ],
            ),
          ],
        ),
      ),
    );
  }
}


// GridView.extent(
//         maxCrossAxisExtent: 250,
//         padding: const EdgeInsets.all(10),
//         mainAxisSpacing: 0,
//         crossAxisSpacing: 25,
//         children: _buildGridTileList(4),
//       ),

// child: SizedBox(
//         height: 200,
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: GridView(
//             primary: false,
//             padding: EdgeInsets.all(10),
//             gridDelegate:
//                 SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
//             children: <Widget>[
//               Container(
//                 padding: const EdgeInsets.all(8),
//                 child: const Text("Tile 1"),
//                 color: Colors.orange[200],
//               ),
//               Container(
//                 padding: const EdgeInsets.all(8),
//                 child: const Text("Tile 2"),
//                 color: Colors.green[200],
//               ),
//               Container(
//                 padding: const EdgeInsets.all(8),
//                 child: const Text("Tile 3"),
//                 color: Colors.red[200],
//               ),
//               Container(
//                 padding: const EdgeInsets.all(8),
//                 child: const Text("Tile 4"),
//                 color: Colors.purple[200],
//               ),
//             ],
//           ),
//         ),
//       ),