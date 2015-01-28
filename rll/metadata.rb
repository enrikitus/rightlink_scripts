name        "rll"
maintainer  "ops"
license     "see LICENSE file in repository root"
description "Base scripts for RightLink10 (RLL) to initialize basic functionality"
version     "10.0.1"

recipe      "rll::show-env", "show env vars"

attribute   "HOSTNAME",
  :display_name => "Hostname for this server",
  :description => "The server's hostname is set to the longest valid prefix or suffix of " +
	"this variable. E.g. 'my.example.com V2', 'NEW my.example.com', and " +
	"'database.io my.example.com' all set the hostname to 'my.example.com'. " +
	"Set to an empty string to avoid any change to the hostname.",
  :required => "optional",
  :type => "string",
  :default => "env:RS_SERVER_NAME",
  :recipes => ["rll::show-env"]
