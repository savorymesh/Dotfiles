# Dotfiles

Just my personal config files. Nonstandard ones are :

- config.cson: this is my Atom configuration file. Usually located at
  ~/.atom/config.cson.
- atom_packages.txt: a list of my installed Atom packages. To obtain, run
   
  ```$ apm list --installed --bare > atom_packages.txt```

  and to restore, run

  ```$ apm install --packages-files atom_packages.txt```
- xorg.conf.nvidia: located at /etc/bumblebee/. Tweaked to allow external monitor
  setup with optimus/bumblebee on my laptop with NVidia card.
- In music/config the config file is for ncmpcpp. Usually located at
  ~/.ncmpcpp/config.
