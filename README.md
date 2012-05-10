nodejs-testing-workshop
=======================

This repository contains a Vagrant & Puppet config for setting up a 32 bit
Ubuntu 10.04 system with latest stable versions of Node.JS, NPM and the Mocha
test runner installed.

The intention is that this will get people setup very quickly for the Node.JS SF
hands-on TDD lab.


Installation
============

- First you will need Vagrant on your system. Head over to http://vagrantup.com/ and install for your platform.
- Now clone this repository:

    git clone git@github.com:niallo/nodejs-testing-workshop.git

- Finally, in the `nodejs-testing-working` directory, run the command:

    vagrant up

This will take a while the first time as it must download the lucid32 box image and provision it with Node.JS etc. Please be patient.


Usage
=====

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
