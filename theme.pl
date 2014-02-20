# Copy this file to ~/.config/fdpowermon/theme.pl.
#
# If you don't like the 'default' theme, define a new one by copying
# /etc/fdpowermon/theme.cfg to ~/.config/fdpowermon/theme.cfg and
# renaming/adjusting the 'default' theme there to something new.
# Don't forget to replace "default" below with your new theme name.
#
# See the manpage fdpowermon(1) for full details on what you can do
# here.

# define a suspend action
sub suspend {
    system("sudo pm-suspend");
}

# initialize our theme, from /etc/fdpowermon/theme.cfg or
# ~/.config/fdpowermon/theme.cfg
my $theme = fdpowermon::theme::get_theme("default");

# on the discharge event for the lowest element in the list of steps (0 = first
# in the index, "d" for discharge), call the "suspend" sub defined above
$theme->set_event( 0, \&suspend, 'd' );

