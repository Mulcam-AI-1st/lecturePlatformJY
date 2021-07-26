'use strict';

// // navbar 배경 투명도
// const navbar = document.querySelector('#navbar'); //요소들 가져오기
// const navbarHeight = navbar.getBoundingClientRect().height; //요소들의 높이 가져오기
// document.addEventListener('scroll', () => { //스크롤이 될때 이벤트 발생
//   //console.log(window.scrollY); //콘솔에 스크롤 될때마다 y위치값 찍어주기
//   if (window.scrollY > navbarHeight) {
//     navbar.classList.add('navbar--dark');
//   } else {
//     navbar.classList.remove('navbar--dark');
//   }
// });

// navbar menu 클릭시 해당 섹션으로 이동
const navbarMenu = document.querySelector('.navbar__menu'); //navbar menu 요소 가져오기
navbarMenu.addEventListener('click', (event) => { //메뉴 클릭시 이벤트 발생
  //console.log('dsf'); //메뉴 클릭시 콘솔에 dsf 찍기
  //console.log('event.target'); // 메뉴 클릭시 콘솔에 타겟요소 찍기
  const target = event.target; //클릭시 타겟
  const link = target.dataset.link; //클릭시 타겟의 data link 
  if (link == null) { //클릭시, link 없다면 아무것도 하지 않음
    return;
  }
  navbarMenu.classList.remove('open'); //클릭시, 링크있다면
  scrollIntoView(link); //타겟 링크로 스크롤 이동
});

// Navbar toggle button for small screen
const navbarToggleBtn = document.querySelector('.navbar__toggle-btn');
navbarToggleBtn.addEventListener('click', () => {
  navbarMenu.classList.toggle('open');
});

// // Handle click on "contact me" button on home
// const homeContactBtn = document.querySelector('.home__contact');
// homeContactBtn.addEventListener('click', () => {
//   scrollIntoView('#contact');
// });

// Make home slowly fade to transparent as the window scrolls down
const home = document.querySelector('.home__container');
const homeHeight = home.getBoundingClientRect().height;
document.addEventListener('scroll', () => {
  home.style.opacity = 1 - window.scrollY / homeHeight;
});

// Show "arrow up" button when scrolling down
const arrowUp = document.querySelector('.arrow-up');
document.addEventListener('scroll', () => {
  if (window.scrollY > homeHeight / 2) {
    arrowUp.classList.add('visible');
  } else {
    arrowUp.classList.remove('visible');
  }
});

// Handle click on the "arrow up" button
arrowUp.addEventListener('click', () => {
  scrollIntoView('#home');
});
