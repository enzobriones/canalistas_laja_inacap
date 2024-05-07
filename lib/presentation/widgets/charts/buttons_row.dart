import 'package:flutter/material.dart';

class ButtonsRow extends StatelessWidget {
  const ButtonsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 4,
      children: [
        FilledButton.icon(
          onPressed: () {},
          label: const Text('Horas'),
          icon: const Icon(Icons.hourglass_empty_outlined),
        ),
        FilledButton.icon(
          onPressed: () {},
          label: const Text('Días'),
          icon: const Icon(Icons.calendar_today_outlined),
        ),
        FilledButton.icon(
          onPressed: () {},
          label: const Text('Semanas'),
          icon: const Icon(Icons.calendar_month_outlined),
        ),
      ],
    );
  }
}
