nethermindDir=${HOME}/neth

sudo apt install -y libsnappy1v5 libsnappy-dev

function cloneMasterRemoteTanishq {
    git clone git@github.com:NethermindEth/${1}.git --recursive
    cd ${1}
    git remote add tanishq git@github.com:tanishqjasoria/${1}.git
    cd ..
}

function cloneMaster {
    git clone git@github.com:NethermindEth/${1}.git --recursive
}

mkdir -p nethermindDir
cd nethermindDir

echo "[Cloning]: Nethermind"
cloneMasterRemoteTanishq nethermind

echo "[Cloning]: Bandersnatch"
cloneMasterRemoteTanishq bandersnatch-sharp


