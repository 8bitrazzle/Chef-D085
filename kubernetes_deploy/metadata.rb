name 'kubernetes_deploy'
maintainer 'The Authors'
maintainer_email 'you@example.com'
license 'All Rights Reserved'
description 'Installs/Configures kubernetes_deploy'
long_description 'Installs/Configures kubernetes_deploy'
version '0.1.0'
chef_version '>= 14.0'

#requires docker_deploy cookbook to execute first
depends 'docker_deploy'

# The `issues_url` points to the location where issues for this cookbook are
# tracked.  A `View Issues` link will be displayed on this cookbook's page when
# uploaded to a Supermarket.
#
# issues_url 'https://github.com/<insert_org_here>/kubernetes_deploy/issues'

# The `source_url` points to the development repository for this cookbook.  A
# `View Source` link will be displayed on this cookbook's page when uploaded to
# a Supermarket.
#
# source_url 'https://github.com/<insert_org_here>/kubernetes_deploy'
