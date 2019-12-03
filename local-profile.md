# Local Profile

```sh
# ::PARSE-START by the ../install script

if grep CONFIG_PATH $HOME/.local_profile; then
  echo "Using found CONFIG_PATH"
else
  EXP="export CONFIG_PATH='$(git rev-parse --show-toplevel)'" >> ~/.local_profile
  echo "export CONFIG_PATH='$EXP'" >> ~/.local_profile
  echo "$EXP exported to ~/.local_profile"
fi

# ::PARSE-END
```
