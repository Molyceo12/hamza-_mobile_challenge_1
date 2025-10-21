import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:mobile_template_pages/src/homescreen/view/homescreen.dart';

class StatisticsScreen extends StatelessWidget {
  const StatisticsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0F0D1E),
      body: Stack(
        children: [
          SafeArea(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          color: const Color(0xFF1D1B2F),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: IconButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const WalletDashboardScreen()),
                            );
                          },
                          icon: const Icon(Ionicons.chevron_back_outline,
                              color: Colors.white, size: 20),
                          padding: EdgeInsets.zero,
                        ),
                      ),
                      const Text(
                        "Statistics",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          color: const Color(0xFF1D1B2F),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(Ionicons.ellipsis_vertical_outline,
                              color: Colors.white, size: 20),
                          padding: EdgeInsets.zero,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Container(
                    height: 48,
                    decoration: BoxDecoration(
                      color: const Color(0xFF1D1B2F),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              color: const Color(0xFF7E57C2),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            alignment: Alignment.center,
                            child: const Text(
                              "Income",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            alignment: Alignment.center,
                            child: const Text(
                              "Spending",
                              style: TextStyle(
                                  color: Colors.white70,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 25),
                  Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: const Color(0xFF1D1B2F),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Total Earnings",
                                      style: TextStyle(
                                          color: Colors.white70, fontSize: 14)),
                                  SizedBox(height: 8),
                                  Text(
                                    "\$45,453.32",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 32,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                color: const Color(0xFF7E57C2),
                                borderRadius: BorderRadius.circular(25),
                              ),
                              child: const Icon(
                                Ionicons.trending_up_outline,
                                color: Colors.white,
                                size: 24,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            _periodButton("D"),
                            _periodButton("W"),
                            _periodButton("M", isActive: true),
                            _periodButton("Y"),
                          ],
                        ),
                        const SizedBox(height: 20),
                        SizedBox(
                          height: 150,
                          child: Stack(
                            children: [
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  _horizontalLine(),
                                  _horizontalLine(),
                                  _horizontalLine(),
                                  _horizontalLine(),
                                ],
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  SizedBox(
                                    width: 30,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        _yAxisLabel("\$30K"),
                                        _yAxisLabel("\$20K"),
                                        _yAxisLabel("\$10K"),
                                        _yAxisLabel("\$5K"),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(width: 10),
                                  Expanded(
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        _bar(30),
                                        _bar(70),
                                        _bar(60),
                                        _bar(40),
                                        _bar(50),
                                        _bar(80),
                                        _bar(100, active: true),
                                        _bar(90),
                                        _bar(70),
                                        _bar(30),
                                        _bar(40),
                                        _bar(60),
                                        _bar(50),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 10),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Jan",
                                style: TextStyle(
                                    color: Colors.white54, fontSize: 12)),
                            Text("Feb",
                                style: TextStyle(
                                    color: Colors.white54, fontSize: 12)),
                            Text("Mar",
                                style: TextStyle(
                                    color: Colors.white54, fontSize: 12)),
                            Text("Apr",
                                style: TextStyle(
                                    color: Colors.white54, fontSize: 12)),
                            Text("May",
                                style: TextStyle(
                                    color: Colors.white54, fontSize: 12)),
                            Text("Jun",
                                style: TextStyle(
                                    color: Colors.white54, fontSize: 12)),
                            Text("Jul",
                                style: TextStyle(
                                    color: Colors.white54, fontSize: 12)),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "Payments",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w600),
                      ),
                      Text("See more",
                          style: TextStyle(
                              color: Color(0xFF7E57C2), fontSize: 14)),
                    ],
                  ),
                  const SizedBox(height: 15),
                  Row(
                    children: [
                      Expanded(
                        child: _paymentBox("Behance", "\$4,567.23",
                            "March 2025", Color(0xFF7E57C2)),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: _paymentBox(
                            "Upwork", "\$2,245.55", "March 2025", Colors.green),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  Row(
                    children: [
                      Expanded(
                        child: _paymentBox("GitHub", "\$3,120.80", "March 2025",
                            Color(0xFF7E57C2)),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: _paymentBox(
                            "Java", "\$1,890.45", "March 2025", Colors.orange),
                      ),
                    ],
                  ),
                  const SizedBox(height: 80),
                ],
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 20,
            child: _bottomTabContainer(),
          ),
        ],
      ),
    );
  }

  Widget _bottomTabContainer() {
    return Center(
      child: Container(
        height: 64,
        padding: const EdgeInsets.symmetric(horizontal: 5),
        decoration: BoxDecoration(
          color: const Color(0xFF1D1B2F),
          borderRadius: BorderRadius.circular(32),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.3),
              blurRadius: 10,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _bottomTabIcon(Icons.home_outlined),
            _bottomTabIcon(Icons.qr_code_scanner_outlined),
            _bottomTabIcon(Icons.explore_outlined),
          ],
        ),
      ),
    );
  }

  Widget _bottomTabIcon(IconData icon) {
    return Container(
      width: 48,
      height: 48,
      margin: const EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.1),
        shape: BoxShape.circle,
      ),
      child: Icon(
        icon,
        color: Colors.white70,
        size: 28,
      ),
    );
  }

  Widget _periodButton(String text, {bool isActive = false}) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 4),
        height: 30,
        decoration: BoxDecoration(
          color: isActive
              ? const Color(0xFF7E57C2)
              : Colors.white.withOpacity(0.1),
          borderRadius: BorderRadius.circular(8),
        ),
        alignment: Alignment.center,
        child: Text(
          text,
          style: TextStyle(
            color: isActive ? Colors.white : Colors.white70,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }

  Widget _horizontalLine() {
    return Container(
      height: 1,
      color: Colors.white.withOpacity(0.1),
    );
  }

  Widget _yAxisLabel(String text) {
    return Text(
      text,
      style: const TextStyle(
        color: Colors.white54,
        fontSize: 10,
      ),
    );
  }

  Widget _bar(double height, {bool active = false}) {
    return Container(
      width: 16,
      height: height + 40,
      decoration: BoxDecoration(
        color: active ? const Color(0xFF7E57C2) : Colors.white24,
        borderRadius: BorderRadius.circular(8),
      ),
    );
  }

  Widget _paymentBox(String title, String amount, String date, Color color) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFF1D1B2F),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            backgroundColor: color.withOpacity(0.2),
            radius: 18,
            child: Icon(
              _getPlatformIcon(title),
              color: color,
              size: 20,
            ),
          ),
          const SizedBox(height: 10),
          Text(title,
              style: const TextStyle(
                  color: Colors.white, fontWeight: FontWeight.w600)),
          const SizedBox(height: 6),
          Text(amount,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold)),
          Text(date,
              style: const TextStyle(color: Colors.white54, fontSize: 12)),
        ],
      ),
    );
  }

  IconData _getPlatformIcon(String title) {
    switch (title.toLowerCase()) {
      case 'github':
        return Ionicons.logo_github;
      case 'java':
        return Ionicons.code_slash_outline;
      case 'behance':
        return Ionicons.logo_behance;
      case 'upwork':
        return Ionicons.briefcase_outline;
      default:
        return Ionicons.logo_web_component;
    }
  }
}
