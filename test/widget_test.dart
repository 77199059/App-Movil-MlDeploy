import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:provider/provider.dart';
import 'package:veterinaria_ml_movil/Core/di/inyection.dart';
import 'package:veterinaria_ml_movil/presentacion/Screens/ventas/ventas_screen.dart';
import 'package:veterinaria_ml_movil/presentacion/providers/ventaProvider.dart';

void main() {
  testWidgets('Test VentasScreen build', (WidgetTester tester) async {
    configurarDependencias();
    await tester.pumpWidget(
      MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => VentaProvider()),
        ],
        child: const MaterialApp(
          home: VentasScreen(),
        ),
      ),
    );
    await tester.pump();
  });
}
