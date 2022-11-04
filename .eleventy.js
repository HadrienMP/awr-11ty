module.exports = function (eleventyConfig) {
  eleventyConfig.addPassthroughCopy({"_build": "public"});
  eleventyConfig.addPassthroughCopy({"public": "public"});
  eleventyConfig.setFrontMatterParsingOptions({
    excerpt: true,
    delimiters: ['//---', '---//']
  });
  return {
    dir: {
      input: "content",
    }
  }
};