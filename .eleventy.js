module.exports = function (eleventyConfig) {
  eleventyConfig.addPassthroughCopy({ "_build": "public" });
  eleventyConfig.addPassthroughCopy({ "public": "public" });
  eleventyConfig.setFrontMatterParsingOptions({
    excerpt: true,
    delimiters: ['//---', '---//']
  });
  eleventyConfig.addCollection("navigation", function (collectionApi) {
    return collectionApi.getFilteredByTag("page").sort((a, b) => {
      if (a.url === '/') return -1
      if (b.url === '/') return 1
      return a.title - (b.title)
    });
  });
  return {
    dir: {
      input: "content",
    }
  }
};