document.querySelectorAll(".lightbox .miniature").forEach((miniature) => {
    const content = basicLightbox.create(miniature.nextElementSibling);
    miniature.onclick = () => content.show();
});
