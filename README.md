# multi-main

An example of an elm project with multiple main functions compiled into single js file.

Run with:

```bash
elm make src/A.elm src/B.elm src/C.elm --output=dist/js/elm.js
firefox dist/index.html
```
