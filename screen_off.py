import os
import time
import threading
from evdev import InputDevice, list_devices, ecodes
from steam_check import check_steam_downloading

devices = [InputDevice(device) for device in list_devices()]
input_detected = threading.Event()

def listen_for_input(device):
    for event in device.read_loop():
        if event.type == ecodes.EV_KEY or event.type == ecodes.EV_REL or event.type == ecodes.EV_ABS:
            input_detected.set()
            os.system("qdbus org.kde.Solid.PowerManagement /org/kde/Solid/PowerManagement/PolicyAgent org.kde.Solid.PowerManagement.PolicyAgent.SetPowerManagementEnabled true")
            break

listeners = [threading.Thread(target=listen_for_input, args=(device,)) for device in devices]
for listener in listeners:
    listener.start()

print("ENTERING HALF-SLEEP MODE\nWILL ENTER TRUE SLEEP MODE WHEN STEAM DOWNLOAD FINISHES\nPRESS ANY KEY TO QUIT")

while check_steam_downloading() or not input_detected.is_set():
    os.system("sudo xset dpms force off")
    time.sleep(5)

for listener in listeners:
    listener.join()
