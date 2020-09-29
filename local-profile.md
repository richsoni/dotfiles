# .local_profile

The ~/.local-profile is outside of source control.  A few of them are:
1. Define local `$CONFIG_PATH` allowing config to live in any folder
2. Include globally used keys `USER_UUID`
3. RVM, NPM autocompletion
4. Experimental programs and alias'
5. Machine specific aliases

## Setup

This script will setup a ~/.local_profile with CONFIG_PATH populated.

The `../install` script evals the code directly from here (between `PARSE-START` and `PARSE-END` tags)

```sh
# ::PARSE-START by the ../install script

if grep CONFIG_PATH $HOME/.local_profile; then
  echo "Using found CONFIG_PATH"
else
  EXP="export CONFIG_PATH='$(git rev-parse --show-toplevel)'" >> ~/.local_profile
  echo "$EXP" >> ~/.local_profile
  echo "$EXP exported to ~/.local_profile"
fi

# ::PARSE-END
```
