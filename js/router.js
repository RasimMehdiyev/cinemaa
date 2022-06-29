import Main from "./pages/Main.js";

document.addEventListener("click", (e) => {
  const { target } = e;
  if (!target.matches("nav a")) return;

  e.preventDefault();

  window.history.pushState({}, "", target.href);
  getRoutes();
});

const root = document.querySelector("#root");
const routes = {
  "/": Main,
};

function getView(view) {
  return new Promise((res, rej) => {
    root.innerHTML = view;
    res("success");
  });
}

export const getRoutes = async () => {
  const path = window.location.pathname;
  const view = routes[path];
  await getView(view.render()).then((resp) => {
    view.activeFunctions();
  });
};
