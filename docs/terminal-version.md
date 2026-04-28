Terminal version
----------------

In addition to the web interface, there is also a command-line version
(supporting Node.js 10 and later) which can by installed via
[npm](https://www.npmjs.com/package/calculator):

    npm install -g calculator

Note that you should almost always never run this as root or with `sudo`. If the
command fails due to permission issues, [set up a prefix
directory](https://github.com/sindresorhus/guides/blob/master/npm-global-without-sudo.md#install-npm-packages-globally-without-sudo-on-macos-and-linux)
and call `npm install` as a user instead.

For Arch Linux, there is an [AUR
package](https://aur.archlinux.org/packages/calculator/):

    yaourt -S calculator

For macOS, there is a [Homebrew formula](https://formulae.brew.sh/formula/calculator):

    brew install calculator

For Android, install [Termux](https://termux.com/) from [F-Droid](https://f-droid.org/packages/com.termux/). Install Node.js in Termux and then install `calculator` from npm:

    pkg install nodejs-lts
    npm install -g calculator
