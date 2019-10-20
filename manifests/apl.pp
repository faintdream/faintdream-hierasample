#This class demonstrates use of puppet's 'apl'
# 'apl' = Automatic Parameter Lookup
class hierasample::apl (
  String              $service_acct_name,
  String              $service_acct_key,
  String              $filename,
  Boolean             $ssl,
  Boolean             $backups_enabled,
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
               hierasample::apl::service_acct_name: ${service_acct_name}
               hierasample::apl::service_acct_key: ${service_acct_key}
               |_EOF_
    owner   => 'root',
    mode    => '0644',

  }



}
