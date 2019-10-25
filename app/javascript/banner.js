import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Change your life", "Lista de cocktails, buenos cocktails"],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };
