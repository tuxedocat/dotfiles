module.exports = {
    config: {
        scrollback: 10000,

        // default font size in pixels for all tabs
        fontSize: 11,
        lineHeight: 1.2,

        // font family with optional fallbacks
        fontFamily: '"Source Code Pro","Source Han Code JP"',
        fontWeight: '400',
        fontWeightBold: '700',

        // terminal cursor background color and opacity (hex, rgb, hsl, hsv, hwb or cmyk)
        // cursorColor: 'rgba(248,28,229,0.8)',

        // `BEAM` for |, `UNDERLINE` for _, `BLOCK` for █
        cursorShape: 'BEAM',
        cursorBlink: true,

        // color of the text
        foregroundColor: '#d8dee9',

        // terminal background color
        backgroundColor: '#3b4252',
        // opacity: 0.75,

        // border color (window, tabs)
        borderColor: '#3b4252',

        // custom css to embed in the main window
        css: '',

        // custom css to embed in the terminal window
        termCSS: '',

        // custom padding (css format, i.e.: `top right bottom left`)
        padding: '16px 16px 16px 16px',

        // the shell to run when spawning a new session (i.e. /usr/local/bin/fish)
        // if left empty, your system's login shell will be used by default
        shell: '/usr/local/bin/zsh',

        // for setting shell arguments (i.e. for using interactive shellArgs: ['-i'])
        // by default ['--login'] will be used
        shellArgs: ['--login'],

        // for environment variables
        env: {
            EDITOR: 'vim'
        },

        // set to false for no bell
        bell: 'SOUND',

        // if true, selected text will automatically be copied to the clipboard
        copyOnSelect: true,

        // URL to custom bell
        // bellSoundURL: 'http://example.com/bell.mp3',

        // for advanced config flags please refer to https://hyper.is/#cfg

        // Plugin specific configs
        hyperStatusLine: {
            footerTransparent: false,
        },
        hyperGcpStatueLine: {
            gcloudBinary: '$HOME/google-cloud-sdk/bin/gcloud',
            kubectlBinary: '/usr/local/bin/kubectl'
        },
        hyperline: {
            plugins: [
                "hostname",
                "cpu",
                "memory",
                "network",
                // "docker",
                "ip",
                "time",
                "git-status",
            ]
        },
    },

    // a list of plugins to fetch and install from npm
    // format: [@org/]project[#version]
    // examples:
    //   `hyperpower`
    //   `@company/project`
    //   `project#1.0.1`
    plugins: [
        'hyper-pane',
        'hyper-active-tab',
        // 'hyperline',
        // 'hyper-statusline',
        // 'hyper-gcp-status-line',
        // 'hyper-opacity',

        //// Theme, choose one
        // 'hyper-city-lights',
        // 'hyper-aurora',
        // 'hyper-ayu-mirage',
        // 'hyper-darkmatter',
        // 'hyperterm-deep-space'
        'nord-hyper',
    ],

    // in development, you can create a directory under
    // `~/.hyper_plugins/local/` and include it here
    // to load it and avoid it being `npm install`ed
    localPlugins: [],

};
