nodejs-testing-workshop
=======================

This repository contains a Vagrant & Puppet config for setting up a 32 bit
Ubuntu 10.04 system with latest stable versions of Node.JS, NPM and the Mocha
test runner installed.

It also contains a starter `package.json` file to be used with `npm` to fetch and install the Node.JS testing-related software modules we cover in the lab:

- Mocha test runner
- Chai assertion library
- Sinon mocking framework
- Sandboxed-Module Node.JS dependency injection module

The intention is that this will get people setup very quickly for the Node.JS SF
hands-on TDD lab.


Vagrant VM Installation
=======================

- First you will need Vagrant on your system. Head over to http://vagrantup.com/ and install for your platform.
- Vagrant utilizes VirtualBox as the virtualization container (and uses VBOX  format).  Please install version 
  4.0 or 4.1, as these are the supported formats.  On Mac and Windows this is a simple matter to install via
  one of the installers.  For Linux, there are a lot of options for each distro.  Be sure to get the version 
  appropriate for your CPU and distro release.  See: https://www.virtualbox.org/wiki/Linux_Downloads for more
  information on options.  It isn't necessarily possible to get the right version from your native package 
  manager's repository.
- Now clone this repository:

    `git clone git@github.com:niallo/nodejs-testing-workshop.git`

- Finally, in the `nodejs-testing-working` directory, run the command:

    `vagrant up`

This will take a while the first time as it must download the lucid32 box image and provision it with Node.JS etc. Please be patient.


Vagrant VM Usage
================

Once you have performed the installation steps listed above, you can get a shell on the Vagrant box any time by running the following command from the `nodejs-testing-workshop` directory:

    vagrant ssh

You should see the following:

    <nialljohiggins@mbp:nodejs-testing-workshop>$ vagrant ssh
    Linux lucid32 2.6.32-38-generic #83-Ubuntu SMP Wed Jan 4 11:13:04 UTC 2012 i686 GNU/Linux
    Ubuntu 10.04.4 LTS

    Welcome to Ubuntu!
     * Documentation:  https://help.ubuntu.com/
    Welcome to your Vagrant-built virtual machine.
    Last login: Thu May 10 19:20:12 2012 from 10.0.2.2
    vagrant@lucid32:~$ node -v
    v0.6.17
    vagrant@lucid32:~$ npm -v
    1.1.21
    vagrant@lucid32:~$ mocha -V
    1.0.3


Node.JS Sample Project
======================

If you clone this repository via

    git clone git@github.com:niallo/nodejs-testing-workshop.git

and 'cd' into the same directory as `package.json`, you can easily get all the
Node.JS dependencies installed by executing:

    npm install

Once installed, you can try running the (non-existant) test-suite:

    npm test

This will fail since we haven't written any tests yet :-)

If you would like to see a sample Node.JS demo app (Express-based) which has a suite of tests, feel free to check out

    https://github.com/BeyondFog/Poang

You are welcome to crib any code you like for your own project.
