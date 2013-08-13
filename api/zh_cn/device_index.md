
# device

Query information about the system (get device information, current language, etc) and execute system functions (show alert view, show input box, etc).

<br />

Following properties predefined:

-   **device.platform** the platform name (the OS name), i.e. one of the following: ios, android, blackberry, mac, windows, linux.

-   **device.environment** returns the environment that the app is running in. i.e. one of the following: simulator, device.

-   **device.model** returns the device model (as specified by the manufacturer) :

    - On iOS: return iPhone, iPad
    - On Android: return Android device model name
    - On Mac, windows, linux: return "unknown"

-   **device.language** returns the default language on the device :

    Value       | Language
    ----------- | -------------
    cn          | Chinese
    fr          | French
    it          | Italian
    gr          | German
    sp          | Spanish
    ru          | Russian
    jp          | Japanese
    en          | English

-   **device.writablePath** returns the writable path.

