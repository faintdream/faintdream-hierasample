# This class demonstrates how we can utilize eyaml sensitive information
# and hide secrets form file_diffs and puppet run report

class hierasample::secrets (
  $service_admins = hiera('hierasample::secrets::sensitive_service_admins', 'TBD_Admins'),
  $service_key = hiera('hierasample::secrets::sensitive_service_key', 'TBD_key'),  
 ) {

  $yaml_hash = {
    'default' => {
      'service_admins' => $service_admins,
      'service_key'    => $service_key,
    }
  }
 
  $myfile = '/tmp/admin.yaml'

  file { "${myfile}" :
    ensure  => file,
    mode    => '0400',
    owner   => 'root',
    content => to_yaml($yaml_hash),
    show_diff => false,
  }

}
