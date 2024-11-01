import 'package:poo/model/account_model.dart';
import 'package:poo/model/tax_mixin.dart';

class EnterpriseAccount extends Account with TaxMixin {
  EnterpriseAccount.constructor(
      {required super.holder, required super.initialBalance})
      : super.constructor();

  @override
  void withdrawal(double value) {
    double totalValue = calcTaxedValue(value) + value;

    if (totalValue <= balance) {
      super.withdrawal(totalValue);
    }
  }

  @override
  void deposit(double value) {
    super.deposit(balance - calcTaxedValue(value));
  }
}
