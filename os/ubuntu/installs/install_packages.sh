#/bin/bash

cd "$(dirname "$BASH_SOURCE")" \
    && source '../../utils.sh' \
    && source 'utils.sh'

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

main() {

    # Tools for compiling/building software from source
    install_package 'Build Essential' 'build-essential'

    # GnuPG archive keys of the Debian archive
    install_package 'GnuPG archive keys' 'debian-archive-keyring'

    # Software which is not included by default
    # in Ubuntu due to legal or copyright reasons
    #install_package 'Ubuntu Restricted Extras' 'ubuntu-restricted-extras'

    printf '\n'

    # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

    if ! package_is_installed 'atom'; then

        add_ppa 'webupd8team/atom'
        print_result $? "Atom (add PPA)"

        update

        install_package 'Atom' 'atom'

        printf '\n'

    else
        print_success 'Atom'
    fi

    # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

    install_package 'cURL' 'curl'

    # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

    install_package 'Flash' 'flashplugin-installer'

    # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

    install_package 'GIMP' 'gimp'

    # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

    install_package 'Git' 'git'

    # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

    install_package 'GNOME Vim' 'vim-gnome'

    # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

    install_package 'ImageMagick' 'imagemagick'

    # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

    install_package 'tmux' 'tmux'

    # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

    install_package 'Transmission' 'transmission'

    # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

    install_package 'VirtualBox' 'virtualbox'

    # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

    install_package 'VLC' 'vlc'

    # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

    install_package 'xclip' 'xclip'

    # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

    install_package 'Zopfli' 'zopfli'

}

main
