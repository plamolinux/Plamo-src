// Use LANG environment variable to choose locale
pref("intl.locale.matchOS", true);

// Enable Network Manager integration
pref("network.manage-offline-status", true);

// Use the system locale. Note that this doesn't work correctly in
// distribution.ini as this pref needs to be initialized before
// distribution.ini prefs are applied, in order for locale-specific prefs
// to work
pref("intl.locale.requested", "");
