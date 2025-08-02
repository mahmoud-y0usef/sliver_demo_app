import 'package:flutter/material.dart';
import 'widgets/buildTransactionTile.dart';
import 'widgets/buildQuickAction.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.white,
            toolbarHeight: 100,
            flexibleSpace: FlexibleSpaceBar(
                background: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    children: [
                      Column(
                        children: [
                          Text(
                            "Welcome Back!",
                            style: TextStyle(
                                fontSize: 18, color: Colors.grey[600]),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            "Jhon Doe",
                            style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Colors.black87),
                          )
                        ],
                      ),
                      Spacer(),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.notifications_outlined,
                          color: Colors.deepPurple,
                          size: 28,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )),
          ),
          SliverAppBar(
            backgroundColor: Colors.deepPurple,
            expandedHeight: 200,
            floating: true,
            flexibleSpace: FlexibleSpaceBar(
              titlePadding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              background: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "\$0",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Current Balance",
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 16,
                    ),
                  )
                ],
              ),
              title: Text(
                "Wallet",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              centerTitle: false,
            ),
          ),
          SliverAppBar(
            backgroundColor: Colors.white,
            expandedHeight: 170,
            toolbarHeight: 170,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Quick actions",
                      style: TextStyle(
                          color: Colors.black87,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        buildQuickAction(icon: Icons.send, label: "Send"),
                        buildQuickAction(icon: Icons.receipt, label: "Request"),
                        buildQuickAction(icon: Icons.add, label: "Top Up"),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Text(
                "Recent Transactions",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
              index++;
              return buildTransactionTile(
                  title: "Transaction $index",
                  subtitle: "Details of transaction $index",
                  amount: (index.isEven ? "+" : "-") + "\$${(index + 1) * 20}",
                  isPositive: index.isEven);
            }, childCount: 20),
          ),
          SliverPadding(
            padding: EdgeInsets.symmetric(vertical: 50),
            sliver: SliverToBoxAdapter(
              child: Container(
                constraints: BoxConstraints(minHeight: 300),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.lightbulb_outline,
                      size: 64,
                      color: Colors.deepPurple,
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Text(
                      "Explorer New Feature",
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      "Stay tunned for exciting updates and impronements",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey[600],
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "Learn more",
                        style: TextStyle(color: Colors.white),
                      ),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.deepPurple,
                          padding: EdgeInsets.symmetric(
                              horizontal: 24, vertical: 12),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20))),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
