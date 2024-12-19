
#!/bin/bash

set -eo pipefail

xcodebuild -workspace Calculator.xcworkspace \
            -scheme Calculator\ iOS \
            -destination platform=iOS\ Simulator,OS=18.2,name=iPhone\ 16 \
            clean test | xcpretty
