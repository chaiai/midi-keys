# midi-to-keystrokes
using my AKAI MPK mini 3 controller to perform basic Linux commands in Ubuntu.

## Credit

Inspiration from [this post](https://superuser.com/questions/1170136/translating-midi-input-into-computer-keystrokes-on-linux).

## List MIDI inputs

aseqdump -l

## Check MIDI input notes

aseqdump -p "{YOUR_KEYBOARD_LABEL_HERE}"

aseqdump -p "MPK mini 3"

## Program keys

I set my program on the keyboard to "Major Keys" so I can remember it easily. The key/pad notes (pads specifically) will vary based on this program in my case.

### Bank A Pad mapping

Pad is from the labels on my keyboard, and Key comes from pressing these keys while running aseqdump -p "MPK mini 3"

Pad:                Key:
1 (bottom left)     62
2                   64
3                   65
4                   67
5                   69
6                   71
7                   72
8 (top right)       74
