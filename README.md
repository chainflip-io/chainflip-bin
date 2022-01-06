# 🗑 Chainflip Bin

Welcome to our first public repo!! Here we release all our new binaries. It doesn't do much else.

## 🕊 Releasing new binary

First clone the repo:

```shell
git clone https://github.com/chainflip-io/chainflip-bin.git
```

Next run the release script. Please use semantic versioning:

```shell
chmod +x scripts/release.sh
./scripts/release.sh vX.X.X
```

Finally, create a new release in GitHub and upload the `chainflip-vX.X.X` folder.

## 🐛 Sending DEBUG output to the Chainflip Labs team

To run it do the following:

```shell
bash <(curl -s https://raw.githubusercontent.com/chainflip-io/chainflip-bin/release/soundcheck/debug.sh)
```

For the more security conscious among you do the following:

```shell
wget https://raw.githubusercontent.com/chainflip-io/chainflip-bin/release/soundcheck/debug.sh
chmod +x debug.sh ./debug.sh
```

You can then send that resulting file to a Chainflip Labs member.