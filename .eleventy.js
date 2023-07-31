const Image = require("@11ty/eleventy-img");

const imageShortcode = async (
  src,
  alt = null,
  description = "",
  widths = [200, 400, 800, 1280],
  formats = ["webp", "jpeg"],
  sizes = "100vw"
) => {
  const imageMetadata = await Image(src, {
    widths: [...widths, null],
    formats: [...formats, null],
    outputDir: "_site/images",
    urlPath: "/images",
  });
  const imageAttributes = {
    alt,
    sizes,
    loading: "lazy",
    decoding: "async",
  };
  return `<div class="lightbox">
    <div class="miniature">${Image.generateHTML(
      imageMetadata,
      imageAttributes
    )}</div>
    <div class="content">
      ${Image.generateHTML(imageMetadata, imageAttributes)}
      <div class="description">
        <h4>${alt}</h4>
        <p>${description}</p>
      </div>
    </div>
  </div>`;
};

module.exports = function (eleventyConfig) {
  eleventyConfig.addPassthroughCopy({ public: "/" });
  eleventyConfig.setFrontMatterParsingOptions({
    excerpt: true,
  });
  eleventyConfig.addNunjucksAsyncShortcode("image", imageShortcode);
  eleventyConfig.addCollection("navigation", function (collectionApi) {
    return collectionApi.getFilteredByTag("page").sort((a, b) => {
      if (a.url === "/") return -1;
      if (b.url === "/") return 1;
      return a.title - b.title;
    });
  });
  return {
    dir: {
      input: "content",
      // output: "dist",
    },
  };
};
