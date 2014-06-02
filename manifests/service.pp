# Class: abrt::service
#
# This class manages abrt service
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
class abrt::service {

  service { 'abrt':
    ensure     => $abrt::manage_service_ensure,
    name       => $abrt::service,
    enable     => $abrt::manage_service_enable,
    hasstatus  => $abrt::service_status,
    pattern    => $abrt::process,
    noop       => $abrt::noops,
  }
}
