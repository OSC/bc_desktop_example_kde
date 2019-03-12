# Batch Connect - Example KDE Desktop

![GitHub Release](https://img.shields.io/github/release/osc/bc_desktop_example_kde.svg)
![GitHub License](https://img.shields.io/github/license/osc/bc_desktop_example_kde.svg)

An example Batch Connect app that launches an interactive KDE instance within a
batch job.

This example has been developed to work with OSC's [Vagrant-based OnDemand example](https://github.com/OSC/ood-images-full). Example installation scripts are stored in the `setup` directory.

- `setup/enable-interactive-apps.sh` - Updates the configuration of a new OnDemand installation to permit a single node named `head` to run interactive apps, and sets the environment for VNC apps. Run on the web node.
- `setup/setup-ood-as-dev.sh` - Enables application development for the users `ood` and `vagrant`. Run on the web node.
- `setup/install-compute-dependencies.sh` - Installs dependencies required on the compute node. Run on each compute node.

## Dependencies

This Batch Connect app requires the following software be installed on the
**compute nodes** that the batch job is intended to run on (**NOT** the
OnDemand node):

- [KDE Plasma Workspaces](https://kde.org/)

All Batch Connect apps also require the following on the compute nodes:

- [Websockify](https://pypi.org/project/websockify/)
- [TurboVNC](https://turbovnc.org)
- [nc (netcat)](http://netcat.sourceforge.net/)

## Learning More

If you have not already be sure to start with the section about setting up your system for [Batch Connect development](https://osc.github.io/ood-documentation/master/app-development/interactive/setup.html).

## Contributing

1. Fork it ( https://github.com/OSC/bc_desktop_example_kde/fork ) to your OnDemand development directory
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
