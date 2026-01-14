import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'home_content.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F7FB),
      appBar: AppBar(
        backgroundColor: const Color(0xFF3B82F6),
        elevation: 0,
        title: Text(
          'Home',
          style: GoogleFonts.poppins(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications_none, color: Colors.white),
            onPressed: () {
              // Handle notification tap
            },
          ),
        ],
      ),
      body: const HomeContent(),
      drawer: _buildDrawer(context),
    );
  }

  Widget _buildDrawerItem(
      BuildContext context, IconData icon, String title, VoidCallback onTap) {
    return ListTile(
      leading: Icon(icon, color: Colors.blue),
      title: Text(title, style: GoogleFonts.poppins()),
      onTap: onTap,
    );
  }

  Widget _buildCareServiceItem({
    required BuildContext context,
    required IconData icon,
    required String label,
    required Color color,
  }) {
    return ListTile(
      leading: Icon(icon, color: color),
      title: Text(label, style: GoogleFonts.poppins()),
      onTap: () {
        // Handle tap
      },
    );
  }

  Widget _buildDrawer(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.white,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(
                color: Color(0xFF2196F3),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: const Icon(Icons.person,
                        size: 40, color: Color(0xFF2196F3)),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Welcome!',
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            _buildDrawerItem(context, Icons.home, 'Home', () {
              Navigator.pop(context);
            }),
            _buildDrawerItem(context, Icons.person, 'Profile', () {
              // Navigate to profile
              Navigator.pop(context);
            }),
            _buildDrawerItem(context, Icons.settings, 'Settings', () {
              // Navigate to settings
              Navigator.pop(context);
            }),
            const Divider(),
            _buildDrawerItem(context, Icons.logout, 'Logout', () {
              // Handle logout
              Navigator.pop(context);
            }),
            const SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
