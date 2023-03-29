$(DocumentType).ready(function() {

    $("#head_background_img").vegas({
        cover:true,
        slides:  [
            { src: "https://picsum.photos/id/1/1900/1200" },
            { src: "https://picsum.photos/id/10/1900/1200" },
            { src: "https://picsum.photos/id/100/1900/1200" },
            { src: "https://picsum.photos/id/1000/1900/1200" }
        ],
        transition: 'fade'
    })
})