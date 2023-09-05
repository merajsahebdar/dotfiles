if test -e /opt/homebrew/share/android-commandlinetools
    set -gx ANDROID_HOME /opt/homebrew/share/android-commandlinetools
    set -gx PATH $ANDROID_HOME/emulator $PATH
    set -gx PATH $ANDROID_HOME/platform-tools $PATH
end
