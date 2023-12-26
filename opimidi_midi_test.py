import time

from midi import MidiConnector
from midi import NoteOn
from midi import NoteOff
from midi import Message

conn = MidiConnector('/dev/ttyS2')
non = NoteOn(60, 127)
msg = Message(non, channel=1)
conn.write(msg)
time.sleep(1)
noff = NoteOff(60, 127)
msg = Message(non, channel=1)
conn.write(msg)