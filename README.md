# IncrementClipboard
AutoHotkey script for incrementing the first number in the Windows clipboard. Useful when forced to enter a list of continuously increasing numbers, such as when pasting filenames into an HTML form.

## Dependencies

[AutoHotkey](http://www.autohotkey.com/)

## Usage

1. Double-click the .ahk file.
2. Copy a string that contains a number (e.g. "Image0001")
3. Press Winkey+v to paste "Image0001" and simultaneously changing the clipboard contents to "Image0002"

## Features

- Will wrap from e.g. "Image0009" to "Image0010" correctly.
