
# KeyMailLogger

This project provides a Python-based keylogger generator tool that creates a stealthy executable for Windows. It captures keystrokes on the victim's system and periodically sends the logs to a specified email address. It is recommended all the process should be done in windows for perfect output. keylogger generator in linux system not give desired result. This python script is uses windows API , That's why generate in windows system rather than in linux system .

## Features :

- Email-Based Delivery: Sends logs via email using Gmail App Password.
- Stealth Mode: The generated executable runs hidden, without opening a visible console.
- Time-Controlled: Sends logs at time intervals.
- Fully Automated Generation: Automatically compiles to .exe using PyInstaller.
- Clean Build Output: Removes build artifacts after executable generation.



## How it Works :

1 . Template File: I provided a keylogger.py which contains the keylogging logic with placeholders.

2 . Generator Script: I provided keyloggenerate.bat script

- Ask for keylogger file name aka keyfilename.exe .

- Uses pyinstaller to generate a hidden .exe.

- Cleans up build/, dist/, and .spec files.

3 . When exe file executed in windows victum machine. it capture all keystrocks and send  email every 1 minute by default you can this  time in keylogger.py file.




    
## Usage & Installation:

Requirements

 - Python 3.8 or later (recommended < 3.12 for PyInstaller compatibility)

 - pyinstaller installed:

```
pip install pyinstaller
```

 - Gmail App Password setup (for sending logs)
 - Use windows system for below process



Step-By-Step

1.Clone this repository and navigate to the directory.

2.Prepare a keylogger edit keylogger.py with placeholders:
```
<SMTP_SERVER>

<EMAIL_ADDRESS>

<EMAIL_PASSWORD>

<TO_EMAIL>

```

3.Run the generator:
```
./keyloggenerate.bat
```



4.The script will create keylogger.exe.

- Prompts for executable name.

- Uses PyInstaller to create .exe.

- Moves exe file to current directory.

- Cleans up temp files.


## Disclaimer

  This project is intended for educational and ethical research purposes only. Unauthorized use of keyloggers is illegal and unethical. The author does not support or condone any malicious activity.


## License

[MIT](https://github.com/sulabh915/KeyMailLogger/blob/main/LICENSE)

