# 🗑 Chainflip Bin

Welcome to our first public repo!! Here we release all our new binaries. It doesn't do much else.

## 🕊 Releasing new binary

Head to the `Actions` tab and click on the "Create Release" workflow.

Enter the tag you want to release following the format of:

```text
chainflip-vX.X.X
```

Then click "Run workflow".

Verify the release was successful from the `Releases` tab.

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