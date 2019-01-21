# EMACS Theme Picker

This is a small extension of EMACS that figures out the sunset/sunrise times from
the exact location info, and it changes the color of the theme based on this data.

## Configuration

The following variables must be set:

```
(setq calendar-latitude 47.4979)
(setq calendar-longitude 19.0402)
(setq calendar-location-name "Budapest, HU")
(setq calendar-standard-time-zone-name "CET")
(setq calendar-daylight-time-zone-name "CEST")
```

## Usage

The themes will be rotated automatically depending on the time of the day.

It is possible to change it by hand with the `F11` function key.

## License

Copyright (c) 2018-2019. Tamas Molnar

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
