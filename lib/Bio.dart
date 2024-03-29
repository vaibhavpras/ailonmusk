import 'package:flutter/material.dart';

class Bio extends StatelessWidget {
  final BuildContext ctx;

  Bio({this.ctx});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF15202b),
      child: LayoutBuilder(builder: (ctx, constraints) {
        return Stack(children: [
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Container(child: Image.network('assets/cover.jpg')),
            //Text("AiLon Musk", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
            Container(
              padding: EdgeInsets.only(top: constraints.maxWidth * 0.08),
              child: Container(
                child: Row(children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 2),
                    child: Text(
                      "AiLon Musk",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                      child: Image.network(
                    'assets/verified.png',
                    height: 20,
                    width: 20,
                  ))
                ]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                "@AiLonmusk",
                style: TextStyle(color: Color(0xff8899A6), fontSize: 12),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 3, top: 8),
                  child: Icon(Icons.calendar_today,
                      color: Color(0xff8899A6), size: 12),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Text("Joined June 2009",
                      style: TextStyle(color: Color(0xff8899A6), fontSize: 12)),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 8),
              child: Padding(
                padding: EdgeInsets.only(bottom: constraints.maxWidth * 0.04),
                child: Row(
                  children: [
                    Text("93",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 12)),
                    Padding(
                      padding: EdgeInsets.only(left: 3, right: 8),
                      child: Text("Following",
                          style: TextStyle(
                              color: Color(0xff8899A6), fontSize: 12)),
                    ),
                    Text("36.8M",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 12)),
                    Padding(
                      padding: const EdgeInsets.only(left: 3),
                      child: Text("Followers",
                          style: TextStyle(
                              color: Color(0xff8899A6), fontSize: 12)),
                    )
                  ],
                ),
              ),
            )
          ]),
          Positioned(
            top: constraints.maxWidth * 0.2,
            left: constraints.maxWidth * 0.01,
            child: Container(
                child: CircleAvatar(
                  backgroundImage: NetworkImage('assets/AiLonpfp.jpg'),
                  maxRadius: constraints.maxWidth * 0.11,
                ),
                width: constraints.maxWidth * 0.2,
                height: constraints.maxWidth * 0.2,
                padding: EdgeInsets.all(3.5), // borde width
                decoration: BoxDecoration(
                  color: Color(0xFF15202b), // border color
                  shape: BoxShape.circle,
                )),
          )
        ]);
      }),
    );
  }
}
