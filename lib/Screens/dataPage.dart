import 'package:flutter/material.dart';

import 'Vaccination.dart';

class DataFormPage extends StatefulWidget {
  const DataFormPage({super.key});

  @override
  _DataFormPageState createState() => _DataFormPageState();
}

class _DataFormPageState extends State<DataFormPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _dobController = TextEditingController();
  String? _gender;
  DateTime? _selectedDate;

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );
    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
        _dobController.text = "${picked.day}/${picked.month}/${picked.year}";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor:Color(0xFF0D47A1),
          title: const Text('Data')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Childis Name',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              TextFormField(
                controller: _nameController,
                decoration: const InputDecoration(
                  hintText: 'Enter child name',
                ),
                validator: (value) {
                  if (value?.isEmpty ?? true) {
                    return 'Please enter child name';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20),
              const Text('Childis Date of birth',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              InkWell(
                onTap: () => _selectDate(context),
                child: TextFormField(
                  controller: _dobController,
                  enabled: false,
                  decoration: const InputDecoration(
                    hintText: 'Select date of birth',
                  ),
                  validator: (value) {
                    if (value?.isEmpty ?? true) {
                      return 'Please select date of birth';
                    }
                    return null;
                  },
                ),
              ),
              const SizedBox(height: 20),
              const Text('Gender',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              Row(
                children: [
                  Radio<String>(
                    value: 'Girl',
                    groupValue: _gender,
                    onChanged: (String? value) {
                      setState(() => _gender = value);
                    },
                  ),
                  const Text('Girl'),
                  Radio<String>(
                    value: 'Boy',
                    groupValue: _gender,
                    onChanged: (String? value) {
                      setState(() => _gender = value);
                    },
                  ),
                  const Text('Boy'),
                ],
              ),
              const SizedBox(height: 30),
              Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: _formKey.currentState?.validate() ?? false
                        ? Colors.green
                        : Colors.grey,
                  ),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Data inserted successfully!'),
                        ),
                      );
                    }
                    Navigator.push(context, MaterialPageRoute(builder: (context) => VaccinationScreen()));
                  },
                  child: const Text('Insert Data',
                      style: TextStyle(color: Colors.white)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
