
## device.openURL()

> device.openURL(url)

Open a web page in the browser; create an email; or call a phone number.

Note: Executing this function will make the app background and switch to the built-in browser, email or phone app.

### Parameters:

-   string **url** url can be one of the following:

    -   Web link: "http://dualface.github.com/quick-cocos2d-x/"

-   Email address: "mailto:nobody@mycompany.com".

        The email address url can also contain subject and body parameters, both of which must be url encoded.<br />
Example: "mailto:nobody@mycompany.com?subject=Hi%20there&body=I%20just%20wanted%20to%20say%2C%20Hi!"<br />
        Try this URL encoder to encode your text.

    -   Phone number: "tel:123-456-7890"

### Note:

Supported platform: ios, android.
