for i in $(seq -w 1 21);
do
cat <<EOF > ./.github/workflows/worflow_${i}.yml
name: workflow_${i}

on: [push]

jobs:
  build:

    runs-on: ubuntu-latest

    steps:
    - uses: actions/checkout@v1
    - name: Say Hello
      run: echo Hello from workflow_${i}!
EOF
done
