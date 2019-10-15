#This class demonstrates use of puppet's 'apl'
# 'apl' = Automatic Parameter Lookup
class hierasample::apl (
  Boolean             $ssl,
  Booleam             $backups_enabled,
  Optional[String[1]] $site_alias =undef,
) {
  file { "/tmp/${filename}":
    ensure  => file,
    content => @("_EOF_"),
               Data from hierasample::apl
               ----
               hierasample::apl::ssl: ${ssl}
               hierasample::apl::backups_enabled: ${backups_enabled}
               hierasample::apl::site_alias: ${site_alias}
               |_EOF_
    owner   => 'root',
    mode    => '0644',

  }



}
