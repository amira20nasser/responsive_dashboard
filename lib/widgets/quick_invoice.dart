import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/custom_background_container.dart';
import 'latest_transaction.dart';
import 'quick_invoice_form.dart';
import 'quick_invoice_header.dart';

//  ListView is Lazy builder
class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      padding: 24,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuickInvoiceHeader(),
          LastestTransaction(),
          Divider(
            color: Color(0xFFF1F1F1),
            height: 48,
          ),
          QuickInvoiceForm(),
        ],
      ),
    );
  }
}

