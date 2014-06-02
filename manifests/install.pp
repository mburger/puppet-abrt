# Class: abrt::install
#
# This class installs abrt
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
class abrt::install {

  package { $abrt::package:
    ensure  => $abrt::manage_package,
    noop    => $abrt::noops,
  }
}
