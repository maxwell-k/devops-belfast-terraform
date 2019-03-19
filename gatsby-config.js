module.exports = {
  siteMetadata: {
    name: `Keith Maxwell`,
    title: `Terraform`,
    date: `19 March 2019`,
  },
  plugins: [
    `gatsby-plugin-layout`,
    `gatsby-plugin-react-helmet`,
    `gatsby-plugin-offline`,
    {
      resolve: `gatsby-source-filesystem`,
      options: {
        name: `slides`,
        path: `${__dirname}/src/slides`,
      },
    },
    {
      resolve: `gatsby-transformer-remark`,
      options: {
        plugins: [
          {
            resolve: 'gatsby-remark-embed-snippet',
            options: {
              directory: `${__dirname}`,
            },
          },
          `gatsby-remark-copy-images`,
          {
            resolve: `gatsby-remark-images`,
            options: {
              // It's important to specify the maxWidth (in pixels) of
              // the content container as this plugin uses this as the
              // base for generating different widths of each image.
              maxWidth: 1920,
            },
          },
          {
            resolve: `gatsby-remark-prismjs`,
            options: {
              aliases: { sh: 'bash' },
            },
          },
        ],
      },
    },
    `gatsby-transformer-sharp`,
    `gatsby-plugin-sharp`,
  ],
};
