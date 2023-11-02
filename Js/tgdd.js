const contactbtn = document.querySelector('#contact')
contactbtn.addEventListener("click", function(){
    document.querySelector('.contact').style.display ="flex"
})

let index = 0
const imgNumber= document.querySelectorAll('.Slider-content img')
const rightbtn = document.querySelector('.fa-circle-arrow-right')
const leftbtn = document.querySelector('.fa-circle-arrow-left')

rightbtn.addEventListener("click",function(){
    index= index+1
    if(index>imgNumber.length-1){
        index=0
    }
    removeliac()
    document.querySelector(".Slider-content").style.right =index*100+"%"
    linum[index].classList.add("active")
})
leftbtn.addEventListener("click",function(){
    index= index-1
    if(index<=0){  
        index=imgNumber.length-1
    }
    removeliac()
    document.querySelector(".Slider-content").style.right =index*100+"%"
    linum[index].classList.add("active")
})

const linum= document.querySelectorAll('.Slider-content-bot li')
linum.forEach(function(li,index){
    li.addEventListener("click",function(){
        removeliac()
        document.querySelector(".Slider-content").style.right =index*100+"%"
        li.classList.add("active")
    })
})

function removeliac(){
    let liac =document.querySelector('.active')
    liac.classList.remove("active")
}
function imgAuto (){
    index = index +1
    if(index>imgNumber.length-1){
        index=0
    }
    removeliac()
    document.querySelector(".Slider-content").style.right =index*100+"%"
    linum[index].classList.add("active")
}
setInterval(imgAuto,2500)

// ------Slider-product--------
const rightbtntwo = document.querySelector('.fa-circle-arrow-right-two')
const leftbtntwo = document.querySelector('.fa-circle-arrow-left-two')
const imgNumbertwo= document.querySelectorAll('.slider-product-one-content-items')

// console.log(rightbtntwo)
// console.log(leftbtntwo)
rightbtntwo.addEventListener("click",function(){
    index= index+1
    if(index>imgNumbertwo.length-1){
        index=0
    }
    document.querySelector(".slider-product-one-content-items-content").style.right =index*100+"%"
})
leftbtntwo.addEventListener("click",function(){
    index= index-1
    if(index<0){
        index=imgNumbertwo.length-1
    }
    document.querySelector(".slider-product-one-content-items-content").style.right =index*100+"%"
})





  