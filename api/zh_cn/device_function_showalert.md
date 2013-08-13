
## device.showAlert()

> device.showAlert(title, message, buttonLabels, listener)

Displays a popup alert box with one or more buttons. Program activity, including animation, will continue in the background, but all other user interactivity will be blocked until the user selects a button or cancels the dialog.

### Paramters:

-   string **title** The title string displayed in the alert

-   string **message** Message string displayed in the alert text.

-   table **buttonLabels** Table of strings, each of which will create a button with the corresponding label.

-   function **listener** The listener to be notified when a user presses any button in the alert box.

### Note:

Supported platform: ios, android, mac.
