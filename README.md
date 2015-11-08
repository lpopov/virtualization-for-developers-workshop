# Virtualization for developers workshop

## Directory structure

```
public/         # public viewable directory for the demo
puppet/         # puppet scripts
sql/            # mysql db data
README.md       # readme file
Vagrantfile     # Vagrant configuration
```

## How to see the presentation?

Open <a href='https://lpopov.github.io/virtualization-for-developers-workshop' target='_blank'>https://lpopov.github.io/virtualization-for-developers-workshop</a>

or

1. Clone the repository
2. Change to 'gh-pages' branch
3. Open `index.html` with a browser

## How to run the demo?

1. Install <a href='http://www.vagrantup.com/' target='_blank'>Vagrant</a> and <a href='https://www.virtualbox.org/' target='_blank'>VirtualBox</a>
2. Change to the directory `Vagrantfile` is in
3. Run `vagrant up` and wait for it to finish (you need to have Internet connection, for everything to install correctly)
4. Open <a href='http://10.0.1.10/' target='_blank'>http://10.0.1.10/</a> in a browser
