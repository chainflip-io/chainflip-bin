#!/bin/bash

# Start in $HOME directory
cd

# Create a new debug log
debugLog=/tmp/debug.log
echo "-------------- $(date) --------------" > $debugLog

function printDivider() {
  echo "-------------------------------" >> $debugLog
}
# Find the log files for the engine and node
nodeLog=$(find . -name "node.log" | head -1)
engineLog=$(find . -name "engine.log" | head -1)
engineConfig=$(find . -name "*.toml" | head -1)

# Find the system files for the engine and node
cat /etc/systemd/system/chainflip-engine.service >> $debugLog
printDivider
cat /etc/systemd/system/chainflip-node.service >> $debugLog
printDivider

# Tail the files and output to the debug log
tail -n 100 $nodeLog >> $debugLog
printDivider
tail -n 100 $engineLog >> $debugLog
printDivider

# Print engine config but delete sensitive information
cat $engineConfig  | grep -v node_endpoint >> $debugLog

echo "Please send the contents of $debugLog to a Chainflip Labs member in Discord."
echo "Run: cat $debugLog"