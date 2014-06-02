# Class: abrt::config
#
# This class manages abrt configuration
#
# == Variables
#
# Refer to abrt class for the variables defined here.
#
# == Usage
#
# This class is not intended to be used directly.
# It's automatically included by abrt
#
class abrt::config {

  file { 'abrt.conf':
    ensure  => $abrt::manage_file,
    path    => $abrt::config_file,
    mode    => $abrt::config_file_mode,
    owner   => $abrt::config_file_owner,
    group   => $abrt::config_file_group,
    notify  => $abrt::manage_service_autorestart,
    source  => $abrt::manage_file_source,
    content => $abrt::manage_file_content,
    replace => $abrt::manage_file_replace,
    audit   => $abrt::manage_audit,
    noop    => $abrt::noops,
  }

  if ($abrt::config_file_package_source or $abrt::config_file_package_template) {
    file { 'abrt.package.conf':
      ensure  => $abrt::manage_file,
      path    => $abrt::config_file_package,
      mode    => $abrt::config_file_mode,
      owner   => $abrt::config_file_owner,
      group   => $abrt::config_file_group,
      source  => $abrt::manage_config_file_package_source,
      content => $abrt::manage_config_file_package_template,
      replace => $abrt::manage_file_replace,
      audit   => $abrt::manage_audit,
      noop    => $abrt::noops,
    }
  }

  # The whole abrt configuration directory can be recursively overriden
  if $abrt::source_dir {
    file { 'abrt.dir':
      ensure  => directory,
      path    => $abrt::config_dir,
      notify  => $abrt::manage_service_autorestart,
      source  => $abrt::source_dir,
      recurse => true,
      purge   => $abrt::bool_source_dir_purge,
      force   => $abrt::bool_source_dir_purge,
      replace => $abrt::manage_file_replace,
      audit   => $abrt::manage_audit,
      noop    => $abrt::noops,
    }
  }
}
