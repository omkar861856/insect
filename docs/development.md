Development
-----------

Calculator is written in PureScript (see the [Getting Started](https://github.com/purescript/documentation/blob/master/guides/Getting-Started.md) guide). First, install all dependencies:

    npm install

To start the web version:

    npm start

To build a bundled JavaScript file that you can run from the terminal (note that
this builds the web version too):

    npm run build

To run the `index.cjs` file which the previous command creates:

    node index.cjs
    # Or simply on Un*x
    ./index.cjs

Note that it's not possible to just move this file anywhere and then run it
there, since it depends on packages in `node_modules`.

Calculator comes with a comprehensive set of [unit tests](test/Main.purs). To run
them:

    npm test

Note that Node.js 12 or above is required to work on/build Calculator (despite
Calculator itself requiring only Node.js 10 or later to run). If you don't have or
want to install Node.js 12 or later, you can use the following Dockerfile to
build or run Calculator on Node.js 18:

```Dockerfile
FROM node:18

WORKDIR /usr/src/calculator

COPY . .

RUN npm install && \
    npm run build

CMD ["node", "index.cjs"]
```

After creating the image (`docker build -t sharkdp/calculator .`), you can create
the container and copy out the build artifacts:

    docker create sharkdp/calculator:latest
    # copy SHA (e.g. 71f0797703e8)
    docker cp 71f0797703e8:/usr/src/calculator/index.cjs .
    docker cp -r 71f0797703e8:/usr/src/calculator/node_modules .


To directly run Calculator inside Docker (paying a heavy startup time penalty), you
can use:

    docker run -it --rm -v ~/.local/share/calculator-history:/root/.local/share/calculator-history sharkdp/calculator:latest

Maintainers
-----------

* [sharkdp](https://github.com/sharkdp)
* [mhmdanas](https://github.com/mhmdanas)
