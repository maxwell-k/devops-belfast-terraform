# terraform presentation

For [DevOps Belfast](https://www.meetup.com/DevOps-Belfast/events/dfpsxkyzfbzb/)
Tuesday 19 March 2019

The starter that this presentation is based upon, does not run with later
versions of `gatsby`. This presentation is known to work with 2.0.33 and fail
with 2.2.0:

```sh
npm install gatsby@2.0.33
```

Write to GitHub pages with:

```sh
npm run deploy
```

## Patch to syntax highlight "HCL" in "\*.tf"

```sh
patch node_modules/gatsby-remark-embed-snippet/index.js tf.patch
```

## Author

- Keith Maxwell
