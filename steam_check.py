import os

def check_steam_downloading():
    downloading = os.popen("lsof -i | grep steam | grep -i download").read()
    return "steam" in downloading
