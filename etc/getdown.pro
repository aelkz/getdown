#
# $Id$
#
# Proguard configuration file for Getdown launcher

-injars dist/getdown.jar(!META-INF/*,!**/tools/DigesterTask*,!**/tools/Differ*)
-injars lib/jRegistryKey.jar(!META-INF/*)
-injars lib/samskivert.jar(!META-INF/*,!**/velocity/**,!**/xml/**)
-injars lib/commons-io.jar(!META-INF/*)

-libraryjars <java.home>/lib/rt.jar

-outjars dist/getdown-pro.jar

-keep public class ca.beq.util.win32.registry.** {
    public protected *;
}

-keep public class com.threerings.getdown.launcher.Getdown {
    public static void main (java.lang.String[]);
}