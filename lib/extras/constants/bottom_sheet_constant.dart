import 'package:flutter/material.dart';

class BottomSheetConstant {
  static void showOrderModal(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: OrderModalSheet(),
        );
      },
    );
  }
}

class OrderModalSheet extends StatefulWidget {
  const OrderModalSheet({super.key});

  @override
  State<OrderModalSheet> createState() => _OrderModalSheetState();
}

class _OrderModalSheetState extends State<OrderModalSheet> {
  int _selectedTab = 1;
  String? _selectedPickupLocation;
  final List<String> _pickupLocations = ["Store A", "Store B", "Store C"];

  void _onTabChanged(int index) {
    setState(() {
      _selectedTab = index;
    });

    // Close bottom sheet if "Catering" is selected
    if (index == 2) {
      Navigator.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        // Tabs Section
        ToggleButtons(
          borderRadius: BorderRadius.circular(12),
          isSelected: [_selectedTab == 0, _selectedTab == 1, _selectedTab == 2],
          onPressed: _onTabChanged,
          children: const [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text("Pickup"),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text("Delivery"),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text("Catering"),
            ),
          ],
        ),

        const SizedBox(height: 16),

        // Location Section: Dropdown for Pickup, TextFields for Delivery
        if (_selectedTab == 0) ...[
          DropdownButtonFormField<String>(
            decoration: const InputDecoration(
              labelText: "Select Pickup Location",
              border: OutlineInputBorder(),
            ),
            value: _selectedPickupLocation,
            items:
                _pickupLocations.map((location) {
                  return DropdownMenuItem(
                    value: location,
                    child: Text(location),
                  );
                }).toList(),
            onChanged: (value) {
              setState(() {
                _selectedPickupLocation = value;
              });
            },
          ),
        ] else if (_selectedTab == 1) ...[
          TextField(
            decoration: const InputDecoration(
              labelText: "Address line 1",
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              Expanded(
                child: TextField(
                  decoration: const InputDecoration(
                    labelText: "Postal Code",
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: TextField(
                  decoration: const InputDecoration(
                    labelText: "State",
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
            ],
          ),
        ],

        const SizedBox(height: 16),

        // Select Time Options
        Row(
          children: [
            Expanded(
              child: ListTile(
                title: const Text("ASAP"),
                subtitle: const Text("Pickup in about 10 min"),
                leading: Radio(value: true, groupValue: true, onChanged: null),
              ),
            ),
            Expanded(
              child: ListTile(
                title: const Text("Later"),
                subtitle: const Text("Select Time"),
                leading: Radio(value: false, groupValue: null, onChanged: null),
              ),
            ),
          ],
        ),

        const SizedBox(height: 16),

        // Store Details
        Align(
          alignment: Alignment.centerLeft,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                "Selected Store",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 4),
              Text(
                "Wyoming Shopping Centre\nWyoming, cnr Pacific Hwy & Kinarra Ave NSW 2250",
                style: TextStyle(fontSize: 14),
              ),
            ],
          ),
        ),

        const SizedBox(height: 20),

        // Confirm Button
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(onPressed: () {}, child: const Text("Confirm")),
        ),
      ],
    );
  }
}
