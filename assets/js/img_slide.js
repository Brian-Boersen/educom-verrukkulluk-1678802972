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

var current_slides = [];
current_slides = slides_reel;

    function set_slide_image(image){
        current_slides = [{src: image}];
        console.log(current_slides);

        $("#head_background_img").vegas({
            cover:true,
            slides:current_slides,
            transition: 'fade'
        })
    }

    $("#head_background_img").vegas({
        cover:true,
        slides:current_slides,
        transition: 'fade'
    })
    
})      