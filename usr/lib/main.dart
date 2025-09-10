import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Medical Fields',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
        useMaterial3: true,
      ),
      home: const MedicalFieldsScreen(),
    );
  }
}

class MedicalField {
  final String name;
  final String degree;
  final String description;
  final String hierarchy;

  MedicalField({
    required this.name,
    required this.degree,
    required this.description,
    required this.hierarchy,
  });
}

class MedicalFieldsScreen extends StatelessWidget {
  const MedicalFieldsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<MedicalField> medicalFields = [
      MedicalField(
        name: 'Cardiology (हृदय रोग विज्ञान)',
        degree: 'MD के बाद DM (Cardiology)',
        description:
            'दिल और रक्त वाहिकाओं से संबंधित बीमारियों का इलाज करते हैं, जैसे दिल का दौरा, हार्ट फेलियर, और उच्च रक्तचाप।',
        hierarchy:
            'यह एक सुपर स्पेशियलिटी है। कार्डियोलॉजिस्ट बनने के लिए MD (Medicine) के बाद DM (Cardiology) करना होता है। ये अपने क्षेत्र के विशेषज्ञ होते हैं।',
      ),
      MedicalField(
        name: 'Neurology (तंत्रिका विज्ञान)',
        degree: 'MD के बाद DM (Neurology)',
        description:
            'मस्तिष्क, रीढ़ की हड्डी, और नसों से संबंधित रोगों का इलाज करते हैं, जैसे स्ट्रोक, मिर्गी, पार्किंसंस रोग।',
        hierarchy:
            'यह भी एक सुपर स्पेशियलिटी है। न्यूरोलॉजिस्ट बनने के लिए MD (Medicine) के बाद DM (Neurology) की डिग्री लेनी होती है।',
      ),
      MedicalField(
        name: 'Oncology (कैंसर विज्ञान)',
        degree: 'MD के बाद DM (Medical Oncology)',
        description:
            'कैंसर का निदान और उपचार करते हैं, जिसमें कीमोथेरेपी, टारगेटेड थेरेपी, और इम्यूनोथेरेपी शामिल है।',
        hierarchy:
            'मेडिकल ऑन्कोलॉजिस्ट एक सुपर स्पेशलिस्ट होते हैं। सर्जिकल ऑन्कोलॉजिस्ट (MS के बाद M.Ch) सर्जरी करते हैं और रेडिएशन ऑन्कोलॉजिस्ट (MD) रेडिएशन थेरेपी देते हैं।',
      ),
      MedicalField(
        name: 'Gastroenterology (पाचन तंत्र विज्ञान)',
        degree: 'MD के बाद DM (Gastroenterology)',
        description:
            'पाचन तंत्र (पेट, आंत, लिवर, पित्ताशय) से संबंधित रोगों का इलाज करते हैं, जैसे अल्सर, पीलिया, गैस की समस्या।',
        hierarchy:
            'यह एक सुपर स्पेशियलिटी है और इसके विशेषज्ञ को गैस्ट्रोएंटेरोलॉजिस्ट कहा जाता है।',
      ),
      MedicalField(
        name: 'Nephrology (गुर्दा रोग विज्ञान)',
        degree: 'MD के बाद DM (Nephrology)',
        description:
            'गुर्दे (किडनी) से संबंधित बीमारियों का इलाज करते हैं, जैसे किडनी फेलियर, डायलिसिस और किडनी ट्रांसप्लांट की देखभाल।',
        hierarchy:
            'नेफ्रोलॉजिस्ट एक सुपर स्पेशलिस्ट डॉक्टर होते हैं जो किडनी के रोगों के विशेषज्ञ होते हैं।',
      ),
      MedicalField(
        name: 'General Surgery (सामान्य शल्य चिकित्सा)',
        degree: 'MBBS के बाद MS',
        description:
            'शरीर के विभिन्न अंगों की सर्जरी करते हैं, जैसे अपेंडिक्स, हर्निया, पित्ताशय की पथरी का ऑपरेशन।',
        hierarchy:
            'MS एक पोस्ट-ग्रेजुएट डिग्री है। इसके बाद सर्जन और विशेषज्ञ बनने के लिए M.Ch (मास्टर ऑफ चिरुर्गी) कर सकते हैं, जैसे न्यूरोसर्जन या कार्डियक सर्जन, जो और भी बड़े माने जाते हैं।',
      ),
      MedicalField(
        name: 'Orthopedics (हड्डी रोग विज्ञान)',
        degree: 'MBBS के बाद MS (Orthopedics)',
        description:
            'हड्डियों, जोड़ों, मांसपेशियों और लिगामेंट्स की चोटों और रोगों का इलाज करते हैं, जैसे फ्रैक्चर, गठिया।',
        hierarchy:
            'ऑर्थोपेडिक सर्जन एक विशेषज्ञ होते हैं। यह MS की एक ब्रांच है।',
      ),
      MedicalField(
        name: 'Pediatrics (बाल रोग विज्ञान)',
        degree: 'MBBS के बाद MD (Pediatrics)',
        description: 'बच्चों (नवजात से लेकर किशोर तक) के रोगों का इलाज करते हैं।',
        hierarchy:
            'यह एक पोस्ट-ग्रेजुएट स्पेशलिटी है। इसके बाद नियोनेटोलॉजी (नवजात शिशु विज्ञान) जैसी सुपर स्पेशियलिटी भी की जा सकती है।',
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('MBBS/MD के बाद मेडिकल फील्ड्स'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: ListView(
        padding: const EdgeInsets.all(12.0),
        children: [
          _buildHierarchyCard(),
          const SizedBox(height: 16),
          const Text(
            'मुख्य स्पेशलाइजेशन (Fields):',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          ...medicalFields.map((field) => MedicalFieldCard(field: field)).toList(),
        ],
      ),
    );
  }

  Widget _buildHierarchyCard() {
    return Card(
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'डॉक्टरों का पदानुक्रम (Hierarchy)',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            _buildHierarchyStep('1. MBBS (बैचलर ऑफ मेडिसिन, बैचलर ऑफ सर्जरी)',
                'यह डॉक्टर बनने की पहली और स्नातक डिग्री है। इसके बाद आप "डॉक्टर" कहलाते हैं।'),
            _buildHierarchyStep('2. MD/MS (डॉक्टर ऑफ मेडिसिन / मास्टर ऑफ सर्जरी)',
                'MBBS के बाद यह पोस्ट-ग्रेजुएट डिग्री है। MD दवा से इलाज करने वाले विशेषज्ञ बनते हैं (जैसे - फिजिशियन) और MS सर्जरी करने वाले विशेषज्ञ (जैसे - सर्जन)। MD/MS डॉक्टर MBBS से बड़े (senior) होते हैं।'),
            _buildHierarchyStep('3. DM/M.Ch (डॉक्टरेट ऑफ मेडिसिन / मास्टर ऑफ चिरुर्गी)',
                'यह एक सुपर स्पेशियलिटी डिग्री है जो MD/MS के बाद की जाती है। DM करने वाले किसी एक अंग के विशेषज्ञ बनते हैं (जैसे - हृदय रोग विशेषज्ञ) और M.Ch वाले किसी खास तरह के सर्जन (जैसे - न्यूरोसर्जन)। ये डॉक्टर MD/MS से भी बड़े (senior) होते हैं।'),
          ],
        ),
      ),
    );
  }

  Widget _buildHierarchyStep(String title, String description) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 4),
          Text(
            description,
            style: const TextStyle(fontSize: 14),
          ),
        ],
      ),
    );
  }
}

class MedicalFieldCard extends StatelessWidget {
  final MedicalField field;

  const MedicalFieldCard({super.key, required this.field});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              field.name,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.teal,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'डिग्री: ${field.degree}',
              style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w600,
                fontStyle: FontStyle.italic,
              ),
            ),
            const SizedBox(height: 12),
            const Text(
              'मुख्य काम:',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Text(
              field.description,
              style: const TextStyle(fontSize: 14),
            ),
            const SizedBox(height: 12),
            const Text(
              'छोटा/बड़ा (Hierarchy):',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Text(
              field.hierarchy,
              style: const TextStyle(fontSize: 14),
            ),
          ],
        ),
      ),
    );
  }
}
