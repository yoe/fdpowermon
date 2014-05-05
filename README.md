fdpowermon
==========

Shows an icon in the system tray for battery state.

Features:
- minimalist. The code consists of 500 lines, most of which are
  documentation and comments
- A power _monitor_, not a power manager.
- The ability (not enabled by default) to suspend a laptop on low power
  levels, or do other tasks when the battery reaches a particular level

Written in perl, fdpowermon requires the Gtk2 and (optionally)
Gtk2::Notify perl modules. It uses the "acpi" program, called every
three seconds, to read power levels.

If Gtk2::Notify is not available, or the necessary infrastructure is not
set up by the window manager, fdpowermon will fall back to using a
dialog box. It is also possible to explicitly disable the use of
notifications.

The script can be themed through a configuration file, either in /etc or
in ~/.config.

To install, do the following:
- On Debian or derivatives, run 'apt-get install fdpowermon'.
- On Arch Linux, install fdpowermon from AUR
- On other distributions:
     - Ensure all dependencies are installed
     - Copy the fdpowermon script to your path
     - Add fdpowermon to your X11 session
     - Profit!

Bugs are welcome through the Debian BTS, "fdpowermon" package
