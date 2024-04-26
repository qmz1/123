import os

def shutdown_computer():
    if os.name == 'posix':  # For Unix/Linux/Mac
        os.system("sudo shutdown -h now")
    elif os.name == 'nt':  # For Windows
        os.system("shutdown /s /t 1")

if __name__ == "__main__":
    shutdown_computer()
