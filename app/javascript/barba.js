import barba from "https://cdn.jsdelivr.net/npm/@barba/core/dist/barba.min.mjs";

document.addEventListener('DOMContentLoaded', () => {
  barba.init({
    transitions: [
      {
        name: 'slide-left',
        once({ next }) {
          next.container.style.opacity = 1;
        },
        leave({ current }) {
          return new Promise(resolve => {
            current.container.style.transform = 'translateX(0)';
            current.container.style.transition = 'transform 0.5s ease, opacity 0.5s ease';
            requestAnimationFrame(() => {
              current.container.style.transform = 'translateX(-100%)';
              current.container.style.opacity = '0';
            });
            setTimeout(resolve, 500);
          });
        },
        enter({ next }) {
          next.container.style.transform = 'translateX(100%)';
          next.container.style.transition = 'transform 0.5s ease, opacity 0.5s ease';
          next.container.style.opacity = '1';
          requestAnimationFrame(() => {
            next.container.style.transform = 'translateX(0)';
          });
        }
      }
    ]
  });
});