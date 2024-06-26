

import '../../../controller/invoice_controller.dart';
import '../../../imports.dart';
import '../../../widgets/cards/invoice_card_tile.dart';

class Invoice extends StatefulWidget {
  @override
  _InvoiceState createState() => _InvoiceState();
}

class _InvoiceState extends State<Invoice> {
  final invoice = InvoiceController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView.builder(
          padding: EdgeInsets.symmetric(horizontal: 5),
          shrinkWrap: true,
          itemCount: invoice.invoice.length,
          itemBuilder: (BuildContext context, int i) {
            return InvoiceCardTile(
              data: invoice.invoice[i],
            );
          },
        ),
      ),
    );
  }
}
