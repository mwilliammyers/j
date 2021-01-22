function _j_install --on-event j_install
    if type -q 'fd'
        set -l exclude "-E .git/ -E '*target/' -E .Trash/ -E .trash/ -E '*Cache*/' -E '*cache*/' -E Applications/ -E Library/ -E 'Album Artwork/' -E .rustup/ -E registry/ -E .npm/ -E node_modules/ -E .node-gyp/ -E venv/ -E env/ -E .venv/ -E .env/ -E .apm/ -E packages/ -E pack/ -E '*.xcodeproj/'"

        # TODO: should we set this too?
        set -q FZF_DEFAULT_COMMAND
        or set -Ux FZF_DEFAULT_COMMAND "fd -t f --hidden $exclude"

        set -q FZF_CD_COMMAND
        or set -Ux FZF_CD_COMMAND "fd -Lt d $exclude"

        set -q FZF_CD_WITH_HIDDEN_COMMAND
        or set -Ux FZF_CD_WITH_HIDDEN_COMMAND "fd -Lt d --hidden $exclude"
    end
end

function _j_uninstall --on-event j_uninstall
    functions --erase _j_install
    functions --erase _j_uninstall
end
