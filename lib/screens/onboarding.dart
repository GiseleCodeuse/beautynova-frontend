import 'package:flutter/material.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  _OnboardingState createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  String skinType = "Normale";
  String problem = "Acné";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0F0A0F),
      appBar: AppBar(
        title: Text("Profil de peau"),
        backgroundColor: Color(0xFFFFC107),
      ),
      body: Padding(
        padding: EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Type de peau",
                style: TextStyle(color: Colors.white, fontSize: 16)),
            SizedBox(height: 8),
            _dropdown(
              value: skinType,
              options: ["Normale", "Sèche", "Grasse", "Mixte"],
              onChanged: (val) => setState(() => skinType = val!),
            ),
            SizedBox(height: 24),
            Text("Problèmes",
                style: TextStyle(color: Colors.white, fontSize: 16)),
            SizedBox(height: 8),
            _dropdown(
              value: problem,
              options: ["Acné", "Rougeurs", "Taches", "Sensibilité"],
              onChanged: (val) => setState(() => problem = val!),
            ),
            Spacer(),
            Center(
              child: ElevatedButton(
                onPressed: () => Navigator.pushNamed(context, '/chat'),
                style: ElevatedButton.styleFrom(
                  padding:
                      EdgeInsets.symmetric(horizontal: 36, vertical: 16),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  backgroundColor: Color(0xFFFFC107),
                ),
                child: Text(
                  "Commencer le chat",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _dropdown(
      {required String value,
      required List<String> options,
      required ValueChanged<String?> onChanged}) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: Color(0xFF1A1A1A),
        borderRadius: BorderRadius.circular(20),
      ),
      child: DropdownButton<String>(
        value: value,
        isExpanded: true,
        underline: SizedBox(),
        dropdownColor: Color(0xFF1A1A1A),
        items: options
            .map((e) => DropdownMenuItem(
                  value: e,
                  child: Text(e, style: TextStyle(color: Colors.white)),
                ))
            .toList(),
        onChanged: onChanged,
      ),
    );
  }
}
