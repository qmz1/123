import tkinter as tk
from tkinter import messagebox
import winsound

def flood_screen():
    # Display a popup message
    messagebox.showinfo("Download Complete", "Your download is complete!")
    # Play Windows error sound
    winsound.MessageBeep(winsound.MB_ICONERROR)
    # Call this function again after a delay (in milliseconds)
    window.after(100, flood_screen)

if __name__ == "__main__":
    # Create the Tkinter window
    window = tk.Tk()
    window.geometry("300x200")
    window.title("Download Complete")

    # Display ASCII art
    ascii_art_label = tk.Label(window, text=r"""
   ______ _____ ________ ____  
  / ____//     \\___   // __ \ 
 < <_|  |  Y Y  \/    /\  ___/ 
  \__   |__|_|  /_____ \\___  >
     |__|     \/      \/    \/  
    """)
    ascii_art_label.pack()

    # Start flooding the screen with popup messages and playing the Windows error sound
    flood_screen()

    # Start the Tkinter event loop
    window.mainloop()
