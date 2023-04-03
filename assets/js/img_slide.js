$(DocumentType).ready(function() {
const slides_reel = [
{ src: "https://picsum.photos/id/835/1900/1200" },
{ src: "https://picsum.photos/id/312/1900/1200" },
{ src: "https://picsum.photos/id/225/1900/1200" },
{ src: "https://picsum.photos/id/292/1900/1200" },
{ src: "https://picsum.photos/id/488/1900/1200" },
{ src: "https://picsum.photos/id/493/1900/1200" }, 
{ src: "https://picsum.photos/id/429/1900/1200" }, 
]

    $("#head_background_img").vegas({
        cover:true,
        slides:slides_reel,
        transition: 'fade'
    })
    
})      