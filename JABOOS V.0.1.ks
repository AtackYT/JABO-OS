SET spot TO LATLNG(10, 20).
CLEARSCREEN.
SAS ON.
RCS OFF.
STAGE.
BRAKES ON.
print "Loading JABO OS...".
WAIT 10.0.
print "done!".
WAIT 2.0.
BRAKES OFF.
UNTIL throttle > 1 {
    CLEARSCREEN.
    print "JABO OS V0.1".
    print "Mach: " + Airspeed / 343.
    print "Fuel: " + SHIP:LIQUIDFUEL.
    print "Heading: " + spot:HEADING.
    WAIT 0.2.
    UNLOCK ALL.
}
