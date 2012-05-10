class nodejs {
    Package { ensure => "installed" }

    $pkglist = [ "python-software-properties" ]

    package { $pkglist: }

    $apt_base = "/etc/apt/sources.list.d/chris-lea-"

    Exec { require => Package["python-software-properties"] }

    exec { "node-repo" :
        command => "/usr/bin/add-apt-repository ppa:chris-lea/node.js",
        creates => "${apt_base}node.js-lucid.list",
    }

    exec { "libpgm-repo" :
        command => "/usr/bin/add-apt-repository ppa:chris-lea/libpgm",
        creates => "${apt_base}libpgm-lucid.list"
    }

    $required_execs = [ "node-repo", "libpgm-repo" ]

    exec { "node-apt-ready" :
        command => "/usr/bin/apt-get update",
        require => Exec[$required_execs],
        onlyif => "/usr/bin/test ! -x /usr/bin/node"
    }

    package { [ "nodejs", "nodejs-dev", "npm" ] :
        require => Exec["node-apt-ready"]
    }

    # Once npm and node.js are installed, install Mocha systemwide.

    exec { "mocha-global" :
        command => "/usr/bin/npm install -g mocha",
        require => Package["npm"],
        onlyif => "/usr/bin/test ! -x /usr/bin/mocha"
    }
}
