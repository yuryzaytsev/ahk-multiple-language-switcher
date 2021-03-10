# Multiple language switcher

AutoHotKey script to set different key bindings for different keyboard layouts.

## Setup

1. Install [AutoHotKey](https://autohotkey.com).

2. Run `Setup.ahk`.

3. Configure `MultipleLanguageSwitcher.ahk`.

   According to your current system keyboards list, use ISO 639-1 (2-letter abbreviation) language code as a parameter for `SetKeyboardLayout()`.

   ```
   SetKeyboardLayout(keyboardLayout.en) ; Switch to English keyboard layout 
   ```

4. Run`AhkMultipleLanguageSwitcher.ahk` automatically on startup.

   - Find the script file, select it, and press <kbd>Ctrl</kbd> + <kbd>C</kbd>.

   - Press <kbd>Win</kbd> + <kbd>R</kbd> to open the Run dialog, then enter `shell:startup` and click OK or Enter. This will open the Startup folder for the current user. To instead open the folder for all users, enter `shell:common startup` (however, in that case you must be an administrator to proceed).

   - Right click inside the window, and click „Paste Shortcut“. The shortcut to the script should now be in the Startup folder.

## Usage

By default it has 3 layouts set up:
* <kbd>LShift</kbd> — RU
* <kbd>RShift</kbd> — EN
* <kbd>LShift</kbd>  + <kbd>RShift</kbd>  — UK

![demo](assets\demo.gif)

## To do

- [ ] GUI for set up key bindings.

