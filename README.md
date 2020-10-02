# Money Ticker

Money Ticker is a tracking application that enables you to track your weekly expenses and analyse them with the help of a chart. It captures your transaction date and time when you add a new transaction to help you remember those expenses. You can delete any added transation which you do not intent to keep a track anymore and the chart will automatically adjust according to updated transactions.

## Getting Started

To start using this application, get Flutter installed in your system and an Emulator to run the application on either Android or iOS.

Link to install Flutter: 

https://flutter.dev/docs/get-started/install

After installing, Make sure to satisfy all the dependencies by running following command in the terminal you can check it :

```
flutter doctor
```
To run the application on the emulator, you need to configure AVD manager and to install android studio go to following link :

Android Studio : https://developer.android.com/studio

Configure Dart and Flutter extension in your android studio and restart IDE. 

Now you can run the application on you emulator or device!



## Home Screen
List of transactions and Chart prepared for your transactions is displayed here. The '+' button on the top right corner shows up a bottom sheet from where you can add transaction. For convenience, Floating Action Button is added for android users.

<img src="/assets/images/Screenshot%201.jpg" height=500> &nbsp; <img src="/assets/images/Screenshot%206.jpg">


## Add Transaction
A bottom sheet pops up when you click on the add transaction button. You can add Title of transaction, Amount and Date for the transaction. By clicking on Add Transaction, new transaction will be added to the list and also the Chart for the same will be updated.

<img src="/assets/images/Screenshot%202.jpg" height=500> &nbsp; &nbsp; &nbsp; <img src="/assets/images/Screenshot%203.jpg" height=500>

### When in Landscape mode: 
<img src="/assets/images/Screenshot%207.jpg" > <img src="/assets/images/Screenshot%208.jpg" >

  
## Chart

Chart displays the visual percentage of your expenses on daily basis and depending on the percentage, the bar is increased for different days.

<img src="/assets/images/Screenshot%204.jpg" height=500> &nbsp; <img src="/assets/images/Screenshot%209.jpg">

## Delete transaction
To remove a transaction, you can tap on delete icon placed on the right side of the transaction. It will automatically adjust the Chart according to new updated list and it will remove the transaction from list as well.

<img src="/assets/images/Screenshot%205.jpg" height=500>


