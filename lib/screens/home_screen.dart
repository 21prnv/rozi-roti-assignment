import "package:flutter/material.dart";

import "../widgets/custom_text_field.dart";

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> images = [
    'https://plus.unsplash.com/premium_photo-1673502752899-04caa9541a5c?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    'https://plus.unsplash.com/premium_photo-1673502752899-04caa9541a5c?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    'https://plus.unsplash.com/premium_photo-1673502752899-04caa9541a5c?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  ];
  int currentPage = 0;
  final List<Map<String, dynamic>> items = [
    {'icon': Icons.security_sharp, 'label': 'Clothes'},
    {'icon': Icons.book, 'label': 'Shoes'},
    {'icon': Icons.card_travel, 'label': 'Bags'},
    {'icon': Icons.electric_bolt, 'label': 'Electronics'},
    {'icon': Icons.watch, 'label': 'Watch'},
    {'icon': Icons.diamond, 'label': 'Jewelry'},
    {'icon': Icons.cookie, 'label': 'Kithen'},
    {'icon': Icons.toys, 'label': 'Toys'},
  ];
  List<String> categories = ['All', 'Clothes', 'Shoes', 'Bags', 'Accessories'];
  String selectedCategory = 'All';
  Widget _buildItemWidget(Map<String, dynamic> item) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(40)),
              color: Color.fromARGB(255, 218, 216, 216)),
          child: Icon(
            item['icon'],
            size: 30,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          item['label'],
          style: const TextStyle(
              fontSize: 12,
              color: Color.fromARGB(255, 108, 107, 107),
              fontWeight: FontWeight.bold),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.grey,
                      ),
                      const SizedBox(
                        width: 9,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Good Morning 👋",
                            style: TextStyle(
                                color: Color.fromARGB(255, 119, 118, 118)),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Andrew Ainsley",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: const [
                      Icon(
                        Icons.notifications_none,
                        color: Color.fromARGB(255, 119, 118, 118),
                      ),
                      SizedBox(
                        width: 9,
                      ),
                      Icon(Icons.favorite_border,
                          color: Color.fromARGB(255, 119, 118, 118)),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              const CustomTextField(
                hintText: 'Search....',
                prefixIcon: Icons.search,
                suffixIcon: Icons.filter_list,
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Special Offers",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "See All",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                height: 150,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(12)),
                child: PageView.builder(
                  itemCount: images.length,
                  onPageChanged: (index) {
                    setState(() {
                      currentPage = index;
                    });
                  },
                  itemBuilder: (context, index) {
                    return Stack(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(right: 5),
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(images[index]),
                                  fit: BoxFit.cover),
                              borderRadius: BorderRadius.circular(15)),
                        ),
                        Positioned(
                          bottom: 1,
                          left: 0,
                          right: 0,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: List<Widget>.generate(images.length,
                                (int index) {
                              return Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: AnimatedContainer(
                                  duration: const Duration(milliseconds: 150),
                                  width: currentPage == index ? 25 : 8.0,
                                  height: 6.0,
                                  decoration: BoxDecoration(
                                    color: currentPage == index
                                        ? Colors.black
                                        : Colors.white,
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                ),
                              );
                            }),
                          ),
                        )
                      ],
                    );
                  },
                ),
              ),
              const SizedBox(height: 20.0),
              SizedBox(
                height: 180,
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                  ),
                  itemCount: items.length,
                  itemBuilder: (BuildContext context, int index) {
                    return _buildItemWidget(items[index]);
                  },
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Special Offers",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "See All",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: categories.map((category) {
                    bool isSelected = category == selectedCategory;
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            selectedCategory = category;
                          });
                        },
                        style: ButtonStyle(
                          elevation: const MaterialStatePropertyAll(0),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                                side: BorderSide(
                                  color:
                                      isSelected ? Colors.black : Colors.black,
                                )),
                          ),
                          backgroundColor: MaterialStateProperty.all(
                            isSelected ? Colors.black : Colors.white,
                          ),
                        ),
                        child: Text(
                          category,
                          style: TextStyle(
                              color: isSelected ? Colors.white : Colors.black),
                        ),
                      ),
                    );
                  }).toList(),
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
