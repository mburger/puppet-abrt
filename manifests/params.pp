# Class: abrt::params
#
# This class defines default parameters used by the main module class abrt
# Operating Systems differences in names and paths are addressed here
#
# == Variables
#
# Refer to abrt class for the variables defined here.
#
# == Usage
#
# This class is not intended to be used directly.
# It may be imported or inherited by other classes
#
class abrt::params {

  ### Application related parameters

  $package = $::operatingsystem ? {
    default => 'abrt',
  }

  $service = $::operatingsystem ? {
    default => 'abrtd',
  }

  $service_status = $::operatingsystem ? {
    default => true,
  }

  $process = $::operatingsystem ? {
    default => 'abrt',
  }

  $process_args = $::operatingsystem ? {
    default => '',
  }

  $process_user = $::operatingsystem ? {
    default => 'abrt',
  }

  $config_dir = $::operatingsystem ? {
    default => '/etc/abrt',
  }

  $config_file = $::operatingsystem ? {
    default => '/etc/abrt/abrt.conf',
  }

  $config_file_mode = $::operatingsystem ? {
    default => '0644',
  }

  $config_file_owner = $::operatingsystem ? {
    default => 'root',
  }

  $config_file_group = $::operatingsystem ? {
    default => 'root',
  }

  $config_file_package = $::operatingsystem ? {
    default => '/etc/abrt/abrt-action-save-package-data.conf',
  }

  $pid_file = $::operatingsystem ? {
    default => '/var/run/abrt.pid',
  }

  $data_dir = $::operatingsystem ? {
    default => '/etc/abrt',
  }

  $log_dir = $::operatingsystem ? {
    default => '/var/log/abrt',
  }

  $log_file = $::operatingsystem ? {
    default => '/var/log/abrt/abrt.log',
  }

  $port = '42'
  $protocol = 'tcp'

  # General Settings
  $my_class = ''
  $dependency_class = ''
  $source = ''
  $source_dir = ''
  $source_dir_purge = false
  $template = ''
  $options = ''
  $service_autorestart = true
  $version = 'present'
  $absent = false
  $disable = false
  $disableboot = false
  $config_file_package_source = ''
  $config_file_package_template = ''

  ### General module variables that can have a site or per module default
  $monitor = false
  $monitor_tool = ''
  $monitor_target = $::ipaddress
  $puppi = false
  $puppi_helper = 'standard'
  $debug = false
  $audit_only = false
  $noops = undef

}
