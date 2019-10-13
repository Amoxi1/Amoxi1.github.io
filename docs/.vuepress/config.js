module.exports = {
  title: 'Hello ddddd',
  description: 'Just playing around',
  themeConfig: {
    nav: [{ text: 'Home', link: '/' }, { text: 'Guide', link: '/guide/' }, { text: 'External', link: 'https://google.com' }],
    sidebar: {
      '/guide/': ['', 'foo']
    }
  }
}
