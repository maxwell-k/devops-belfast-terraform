# terraform presentation

For [DevOps Belfast](https://www.meetup.com/DevOps-Belfast/events/dfpsxkyzfbzb/)
Tuesday 19 March 2019

## Quick start

To build this presentation:

```
rm -rf .cache public node_modules &&
npm ci &&
patch node_modules/gatsby-remark-embed-snippet/index.js tf.patch &&
npm run build &&
npm run serve
```

To deploy to GitHub pages:

```
npm run deploy
```

To run a development server that will live reload changes to slides:

```
npm run develop
```

## Gatsby versions

This presentation and the starter that it is based upon, requires a very
specific version of Gatsby for the "develop" and "build" scripts to complete
successfully.

- `npm run build` fails with 2.0.33
- `npm run develop` fails with 2.2.0

The versions below can build a production site and run the development server:

```sh
npm install gatsby@2.0.120
npm install gatsby@2.1.39
```

## Patch to syntax highlight "HCL" in "\*.tf"

This is necessary because the "gatsby-remark-embed-snippet" plugin has a
[very short list of supported languages](https://github.com/gatsbyjs/gatsby/blob/master/packages/gatsby-remark-embed-snippet/src/index.js#L11)

```sh
patch node_modules/gatsby-remark-embed-snippet/index.js tf.patch
```

## Presentation author

- Keith Maxwell
