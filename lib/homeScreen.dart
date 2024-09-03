import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: const BoxDecoration(color: Colors.pink),
      padding: const EdgeInsets.only(left: 10, top: 30, right: 10),
      child: Column(
        children: [
          Container(
            child: Column(
              children: [
                Row(
                  children: [
                    IconButton(
                        onPressed: () {}, icon: const Icon(Icons.arrow_back)),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        const Text(
                          "Resturants",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                        Text("in yemen",
                            style: TextStyle(color: Colors.white, fontSize: 9)),
                      ],
                    ),
                    SizedBox(
                      width: 200,
                      height: 150,
                      child: Image.asset("assets/images/pizzaVegetabels.png",
                          height: 100, width: 100, fit: BoxFit.fill),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Column(
            children: [
              Container(
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(20),
                  // borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.error,
                      color: Colors.grey,
                    ),
                    Text(
                      "Campagin info",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "press here",
                      style: TextStyle(color: Colors.grey),
                    ),
                    Icon(
                      Icons.arrow_forward,
                      color: Colors.grey,
                    )
                  ],
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height - 348,
                //width: MediaQuery.of(context).size.width - 5,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
                child: ListView.builder(
                  itemCount: 6,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: SizedBox(
                        height: 100,
                        width: 50,
                        child: Image.asset(
                          "assets/images/kabsa.png",
                          height: 100,
                          width: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        //crossAxisAlignment: CrossAxisAlignment.s,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Kabsa Resturant",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                              Text("Rice food", style: TextStyle(fontSize: 9)),
                              Text("Syiun city", style: TextStyle(fontSize: 9)),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.star_border)),
                                  IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.star_border)),
                                  IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.star_border)),
                                  IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.star_border)),
                                ],
                              )
                            ],
                          ),
                          IconButton(
                              onPressed: () {}, icon: Icon(Icons.favorite))
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          )
        ],
      ),
    ));
  }
}
