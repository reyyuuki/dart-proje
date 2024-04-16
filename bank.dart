import 'dart:io';

class Bankaccount{
  String? name;
  int? account_no;
  int? phoneNo;
  String? address;
  double balance; 

Bankaccount(this.name,this.account_no, this.phoneNo, this.address, this.balance);

void display(){
  print('user name: ${name}');
  print('Account no.${account_no}');
  print('Phone No.: ${phoneNo}');
  print('Address: ${address}');
  print('Account balance: ${balance}');
}

void deposit(double amount){
if(amount > 0){
  balance += amount;
  print('You have deposit of Rs.${amount}');
}
else{
  print('invalid');
}
display();
}

void withdraw(double amount){
  if(amount > 0 && amount <= balance){
    balance -= amount;
    print('You have make a withdrawl Rs.${amount}');
  }
  else{
    print('insufficent balance');
  }
  display();
}
}

void main(){
  bool isRunning = true;

  print('Enter Account holder name:');
  String? name = stdin.readLineSync()!;

print('Enter Account no.:');
int? account_no = int.parse(stdin.readLineSync()!);

print('Enter mobile no.:');
int? phoneNo = int.parse(stdin.readLineSync()!);

print('Enter address:');
String? address = stdin.readLineSync()!;

print('enter current balance:');
double? balance = double.parse(stdin.readLineSync()!);

while(isRunning) {
print('Select from these Option!');
print('1.Deposit\n 2.Withdraw\n 3.Check balance\n 4.Exit');
int? choice = int.parse(stdin.readLineSync()!);

Bankaccount user = Bankaccount(name,account_no,phoneNo,address,balance);

if(choice == 1){
  print('enter amount you want to deposit');
  double? amount = double.parse(stdin.readLineSync()!);
  user.deposit(amount);
} 
else if(choice == 2){
   print('enter amount you want to withdraw');
  double? amount = double.parse(stdin.readLineSync()!);
  user.withdraw(amount);
}
else if(choice == 3){
  user.display();
}
else{
  isRunning = false;
  print('Have a Good Day');
  break;
}
}
}