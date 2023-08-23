import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  late TabController _tabController;
  late TextEditingController _name;
  late TextEditingController _mobileNumber;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    _name = TextEditingController();
    _mobileNumber = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        // leading: const Icon(Icons.arrow_back),

        toolbarHeight: 200,
        flexibleSpace: SafeArea(
          child: Column(
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                //crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.arrow_back),
                  Expanded(
                    child: Center(
                      child: Text(
                        'Create Account',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                        //textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: height * .02,
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        //
                        height: height * .16, // Adjust image height as needed
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15),
                            bottomLeft: Radius.circular(15),
                          ),
                          color: Color.fromARGB(255, 10, 51, 85),
                        ),
                        child: const Icon(
                          Icons.home_filled,
                          size: 60,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(15),
                            bottomRight: Radius.circular(15),
                          ),
                          color: Color.fromARGB(255, 10, 51, 85),
                        ),

                        height: height * .16,
                        padding: const EdgeInsets.all(
                            16), // Adjust padding as needed
                        // color: const Color.fromARGB(255, 10, 51, 85),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Register',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                            SizedBox(height: 10),
                            Text(
                              'Line 2 of TextLine 1 of Text kfjg kjfkj kjhg',
                              softWrap: true,
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(14.0),
        child: SingleChildScrollView(
          // physics: const NeverScrollableScrollPhysics(),
          child: SizedBox(
            height: height,
            child: Column(
              // mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: MediaQuery.of(context).size.height * .45,
                  height: MediaQuery.of(context).size.height * .06,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(35),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: TabBar(
                      unselectedLabelColor: Colors.grey,
                      labelColor: Colors.black,
                      indicatorColor: Colors.white,
                      indicatorWeight: 2,
                      indicator: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      controller: _tabController,
                      tabs: const [
                        Text(
                          'Register',
                          style: TextStyle(),
                        ),
                        Text('Login'),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: height * .03,
                ),
                Expanded(
                  child: TabBarView(
                    controller: _tabController,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text('Full Name'),
                            TextField(
                              controller: _name,
                              decoration: const InputDecoration(
                                hintText: 'Enter full name herer',
                                fillColor: Colors.white,
                                border: OutlineInputBorder(),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5.0)),
                                  borderSide: BorderSide(color: Colors.blue),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: height * .04,
                            ),
                            const Text('Number'),
                            Row(
                              children: [
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  height: height * 0.07,
                                  decoration: BoxDecoration(
                                    border: Border.all(),
                                  ),
                                  child: Center(
                                    child: Text(
                                      '+91',
                                      style: TextStyle(fontSize: height * 0.03),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: height * .01,
                                ),
                                Flexible(
                                  child: TextField(
                                    controller: _mobileNumber,
                                    decoration: const InputDecoration(
                                      hintText: 'Enter number herer',
                                      fillColor: Colors.white,
                                      border: OutlineInputBorder(),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(5.0)),
                                        borderSide:
                                            BorderSide(color: Colors.blue),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: height * .02,
                            ),
                            SizedBox(
                              width: width * .88,
                              child: ElevatedButton(
                                onPressed: () {},
                                child: const Text(
                                  'Continue',
                                  style: TextStyle(),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: height * .3,
                            ),
                          ],
                        ),
                      ),
                      const Text('For LoginScreen'),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

//

// Container(
//           color: Colors.blue,
//           child: const
