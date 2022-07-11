// modules are defined as an array
// [ module function, map of requires ]
//
// map of requires is short require name -> numeric require
//
// anything defined in a previous bundle is accessed via the
// orig method which is the require for previous bundles

(function (modules, entry, mainEntry, parcelRequireName, globalName) {
  /* eslint-disable no-undef */
  var globalObject =
    typeof globalThis !== 'undefined'
      ? globalThis
      : typeof self !== 'undefined'
      ? self
      : typeof window !== 'undefined'
      ? window
      : typeof global !== 'undefined'
      ? global
      : {};
  /* eslint-enable no-undef */

  // Save the require from previous bundle to this closure if any
  var previousRequire =
    typeof globalObject[parcelRequireName] === 'function' &&
    globalObject[parcelRequireName];

  var cache = previousRequire.cache || {};
  // Do not use `require` to prevent Webpack from trying to bundle this call
  var nodeRequire =
    typeof module !== 'undefined' &&
    typeof module.require === 'function' &&
    module.require.bind(module);

  function newRequire(name, jumped) {
    if (!cache[name]) {
      if (!modules[name]) {
        // if we cannot find the module within our internal map or
        // cache jump to the current global require ie. the last bundle
        // that was added to the page.
        var currentRequire =
          typeof globalObject[parcelRequireName] === 'function' &&
          globalObject[parcelRequireName];
        if (!jumped && currentRequire) {
          return currentRequire(name, true);
        }

        // If there are other bundles on this page the require from the
        // previous one is saved to 'previousRequire'. Repeat this as
        // many times as there are bundles until the module is found or
        // we exhaust the require chain.
        if (previousRequire) {
          return previousRequire(name, true);
        }

        // Try the node require function if it exists.
        if (nodeRequire && typeof name === 'string') {
          return nodeRequire(name);
        }

        var err = new Error("Cannot find module '" + name + "'");
        err.code = 'MODULE_NOT_FOUND';
        throw err;
      }

      localRequire.resolve = resolve;
      localRequire.cache = {};

      var module = (cache[name] = new newRequire.Module(name));

      modules[name][0].call(
        module.exports,
        localRequire,
        module,
        module.exports,
        this
      );
    }

    return cache[name].exports;

    function localRequire(x) {
      var res = localRequire.resolve(x);
      return res === false ? {} : newRequire(res);
    }

    function resolve(x) {
      var id = modules[name][1][x];
      return id != null ? id : x;
    }
  }

  function Module(moduleName) {
    this.id = moduleName;
    this.bundle = newRequire;
    this.exports = {};
  }

  newRequire.isParcelRequire = true;
  newRequire.Module = Module;
  newRequire.modules = modules;
  newRequire.cache = cache;
  newRequire.parent = previousRequire;
  newRequire.register = function (id, exports) {
    modules[id] = [
      function (require, module) {
        module.exports = exports;
      },
      {},
    ];
  };

  Object.defineProperty(newRequire, 'root', {
    get: function () {
      return globalObject[parcelRequireName];
    },
  });

  globalObject[parcelRequireName] = newRequire;

  for (var i = 0; i < entry.length; i++) {
    newRequire(entry[i]);
  }

  if (mainEntry) {
    // Expose entry point to Node, AMD or browser globals
    // Based on https://github.com/ForbesLindesay/umd/blob/master/template.js
    var mainExports = newRequire(mainEntry);

    // CommonJS
    if (typeof exports === 'object' && typeof module !== 'undefined') {
      module.exports = mainExports;

      // RequireJS
    } else if (typeof define === 'function' && define.amd) {
      define(function () {
        return mainExports;
      });

      // <script>
    } else if (globalName) {
      this[globalName] = mainExports;
    }
  }
})({"3Unyy":[function(require,module,exports) {
"use strict";
var global = arguments[3];
var HMR_HOST = null;
var HMR_PORT = null;
var HMR_SECURE = false;
var HMR_ENV_HASH = "d6ea1d42532a7575";
module.bundle.HMR_BUNDLE_ID = "106c69fefbb3188c";
/* global HMR_HOST, HMR_PORT, HMR_ENV_HASH, HMR_SECURE, chrome, browser, globalThis, __parcel__import__, __parcel__importScripts__, ServiceWorkerGlobalScope */ /*::
import type {
  HMRAsset,
  HMRMessage,
} from '@parcel/reporter-dev-server/src/HMRServer.js';
interface ParcelRequire {
  (string): mixed;
  cache: {|[string]: ParcelModule|};
  hotData: mixed;
  Module: any;
  parent: ?ParcelRequire;
  isParcelRequire: true;
  modules: {|[string]: [Function, {|[string]: string|}]|};
  HMR_BUNDLE_ID: string;
  root: ParcelRequire;
}
interface ParcelModule {
  hot: {|
    data: mixed,
    accept(cb: (Function) => void): void,
    dispose(cb: (mixed) => void): void,
    // accept(deps: Array<string> | string, cb: (Function) => void): void,
    // decline(): void,
    _acceptCallbacks: Array<(Function) => void>,
    _disposeCallbacks: Array<(mixed) => void>,
  |};
}
interface ExtensionContext {
  runtime: {|
    reload(): void,
    getURL(url: string): string;
    getManifest(): {manifest_version: number, ...};
  |};
}
declare var module: {bundle: ParcelRequire, ...};
declare var HMR_HOST: string;
declare var HMR_PORT: string;
declare var HMR_ENV_HASH: string;
declare var HMR_SECURE: boolean;
declare var chrome: ExtensionContext;
declare var browser: ExtensionContext;
declare var __parcel__import__: (string) => Promise<void>;
declare var __parcel__importScripts__: (string) => Promise<void>;
declare var globalThis: typeof self;
declare var ServiceWorkerGlobalScope: Object;
*/ var OVERLAY_ID = "__parcel__error__overlay__";
var OldModule = module.bundle.Module;
function Module(moduleName) {
    OldModule.call(this, moduleName);
    this.hot = {
        data: module.bundle.hotData,
        _acceptCallbacks: [],
        _disposeCallbacks: [],
        accept: function(fn) {
            this._acceptCallbacks.push(fn || function() {});
        },
        dispose: function(fn) {
            this._disposeCallbacks.push(fn);
        }
    };
    module.bundle.hotData = undefined;
}
module.bundle.Module = Module;
var checkedAssets, acceptedAssets, assetsToAccept /*: Array<[ParcelRequire, string]> */ ;
function getHostname() {
    return HMR_HOST || (location.protocol.indexOf("http") === 0 ? location.hostname : "localhost");
}
function getPort() {
    return HMR_PORT || location.port;
} // eslint-disable-next-line no-redeclare
var parent = module.bundle.parent;
if ((!parent || !parent.isParcelRequire) && typeof WebSocket !== "undefined") {
    var hostname = getHostname();
    var port = getPort();
    var protocol = HMR_SECURE || location.protocol == "https:" && !/localhost|127.0.0.1|0.0.0.0/.test(hostname) ? "wss" : "ws";
    var ws = new WebSocket(protocol + "://" + hostname + (port ? ":" + port : "") + "/"); // Web extension context
    var extCtx = typeof chrome === "undefined" ? typeof browser === "undefined" ? null : browser : chrome; // Safari doesn't support sourceURL in error stacks.
    // eval may also be disabled via CSP, so do a quick check.
    var supportsSourceURL = false;
    try {
        (0, eval)('throw new Error("test"); //# sourceURL=test.js');
    } catch (err) {
        supportsSourceURL = err.stack.includes("test.js");
    } // $FlowFixMe
    ws.onmessage = async function(event) {
        checkedAssets = {} /*: {|[string]: boolean|} */ ;
        acceptedAssets = {} /*: {|[string]: boolean|} */ ;
        assetsToAccept = [];
        var data = JSON.parse(event.data);
        if (data.type === "update") {
            // Remove error overlay if there is one
            if (typeof document !== "undefined") removeErrorOverlay();
            let assets = data.assets.filter((asset)=>asset.envHash === HMR_ENV_HASH); // Handle HMR Update
            let handled = assets.every((asset)=>{
                return asset.type === "css" || asset.type === "js" && hmrAcceptCheck(module.bundle.root, asset.id, asset.depsByBundle);
            });
            if (handled) {
                console.clear(); // Dispatch custom event so other runtimes (e.g React Refresh) are aware.
                if (typeof window !== "undefined" && typeof CustomEvent !== "undefined") window.dispatchEvent(new CustomEvent("parcelhmraccept"));
                await hmrApplyUpdates(assets);
                for(var i = 0; i < assetsToAccept.length; i++){
                    var id = assetsToAccept[i][1];
                    if (!acceptedAssets[id]) hmrAcceptRun(assetsToAccept[i][0], id);
                }
            } else fullReload();
        }
        if (data.type === "error") {
            // Log parcel errors to console
            for (let ansiDiagnostic of data.diagnostics.ansi){
                let stack = ansiDiagnostic.codeframe ? ansiDiagnostic.codeframe : ansiDiagnostic.stack;
                console.error("\uD83D\uDEA8 [parcel]: " + ansiDiagnostic.message + "\n" + stack + "\n\n" + ansiDiagnostic.hints.join("\n"));
            }
            if (typeof document !== "undefined") {
                // Render the fancy html overlay
                removeErrorOverlay();
                var overlay = createErrorOverlay(data.diagnostics.html); // $FlowFixMe
                document.body.appendChild(overlay);
            }
        }
    };
    ws.onerror = function(e) {
        console.error(e.message);
    };
    ws.onclose = function() {
        console.warn("[parcel] \uD83D\uDEA8 Connection to the HMR server was lost");
    };
}
function removeErrorOverlay() {
    var overlay = document.getElementById(OVERLAY_ID);
    if (overlay) {
        overlay.remove();
        console.log("[parcel] \u2728 Error resolved");
    }
}
function createErrorOverlay(diagnostics) {
    var overlay = document.createElement("div");
    overlay.id = OVERLAY_ID;
    let errorHTML = '<div style="background: black; opacity: 0.85; font-size: 16px; color: white; position: fixed; height: 100%; width: 100%; top: 0px; left: 0px; padding: 30px; font-family: Menlo, Consolas, monospace; z-index: 9999;">';
    for (let diagnostic of diagnostics){
        let stack = diagnostic.frames.length ? diagnostic.frames.reduce((p, frame)=>{
            return `${p}
<a href="/__parcel_launch_editor?file=${encodeURIComponent(frame.location)}" style="text-decoration: underline; color: #888" onclick="fetch(this.href); return false">${frame.location}</a>
${frame.code}`;
        }, "") : diagnostic.stack;
        errorHTML += `
      <div>
        <div style="font-size: 18px; font-weight: bold; margin-top: 20px;">
          🚨 ${diagnostic.message}
        </div>
        <pre>${stack}</pre>
        <div>
          ${diagnostic.hints.map((hint)=>"<div>\uD83D\uDCA1 " + hint + "</div>").join("")}
        </div>
        ${diagnostic.documentation ? `<div>📝 <a style="color: violet" href="${diagnostic.documentation}" target="_blank">Learn more</a></div>` : ""}
      </div>
    `;
    }
    errorHTML += "</div>";
    overlay.innerHTML = errorHTML;
    return overlay;
}
function fullReload() {
    if ("reload" in location) location.reload();
    else if (extCtx && extCtx.runtime && extCtx.runtime.reload) extCtx.runtime.reload();
}
function getParents(bundle, id) /*: Array<[ParcelRequire, string]> */ {
    var modules = bundle.modules;
    if (!modules) return [];
    var parents = [];
    var k, d, dep;
    for(k in modules)for(d in modules[k][1]){
        dep = modules[k][1][d];
        if (dep === id || Array.isArray(dep) && dep[dep.length - 1] === id) parents.push([
            bundle,
            k
        ]);
    }
    if (bundle.parent) parents = parents.concat(getParents(bundle.parent, id));
    return parents;
}
function updateLink(link) {
    var newLink = link.cloneNode();
    newLink.onload = function() {
        if (link.parentNode !== null) // $FlowFixMe
        link.parentNode.removeChild(link);
    };
    newLink.setAttribute("href", link.getAttribute("href").split("?")[0] + "?" + Date.now()); // $FlowFixMe
    link.parentNode.insertBefore(newLink, link.nextSibling);
}
var cssTimeout = null;
function reloadCSS() {
    if (cssTimeout) return;
    cssTimeout = setTimeout(function() {
        var links = document.querySelectorAll('link[rel="stylesheet"]');
        for(var i = 0; i < links.length; i++){
            // $FlowFixMe[incompatible-type]
            var href = links[i].getAttribute("href");
            var hostname = getHostname();
            var servedFromHMRServer = hostname === "localhost" ? new RegExp("^(https?:\\/\\/(0.0.0.0|127.0.0.1)|localhost):" + getPort()).test(href) : href.indexOf(hostname + ":" + getPort());
            var absolute = /^https?:\/\//i.test(href) && href.indexOf(location.origin) !== 0 && !servedFromHMRServer;
            if (!absolute) updateLink(links[i]);
        }
        cssTimeout = null;
    }, 50);
}
function hmrDownload(asset) {
    if (asset.type === "js") {
        if (typeof document !== "undefined") {
            let script = document.createElement("script");
            script.src = asset.url + "?t=" + Date.now();
            if (asset.outputFormat === "esmodule") script.type = "module";
            return new Promise((resolve, reject)=>{
                var _document$head;
                script.onload = ()=>resolve(script);
                script.onerror = reject;
                (_document$head = document.head) === null || _document$head === void 0 || _document$head.appendChild(script);
            });
        } else if (typeof importScripts === "function") {
            // Worker scripts
            if (asset.outputFormat === "esmodule") return import(asset.url + "?t=" + Date.now());
            else return new Promise((resolve, reject)=>{
                try {
                    importScripts(asset.url + "?t=" + Date.now());
                    resolve();
                } catch (err) {
                    reject(err);
                }
            });
        }
    }
}
async function hmrApplyUpdates(assets) {
    global.parcelHotUpdate = Object.create(null);
    let scriptsToRemove;
    try {
        // If sourceURL comments aren't supported in eval, we need to load
        // the update from the dev server over HTTP so that stack traces
        // are correct in errors/logs. This is much slower than eval, so
        // we only do it if needed (currently just Safari).
        // https://bugs.webkit.org/show_bug.cgi?id=137297
        // This path is also taken if a CSP disallows eval.
        if (!supportsSourceURL) {
            let promises = assets.map((asset)=>{
                var _hmrDownload;
                return (_hmrDownload = hmrDownload(asset)) === null || _hmrDownload === void 0 ? void 0 : _hmrDownload.catch((err)=>{
                    // Web extension bugfix for Chromium
                    // https://bugs.chromium.org/p/chromium/issues/detail?id=1255412#c12
                    if (extCtx && extCtx.runtime && extCtx.runtime.getManifest().manifest_version == 3) {
                        if (typeof ServiceWorkerGlobalScope != "undefined" && global instanceof ServiceWorkerGlobalScope) {
                            extCtx.runtime.reload();
                            return;
                        }
                        asset.url = extCtx.runtime.getURL("/__parcel_hmr_proxy__?url=" + encodeURIComponent(asset.url + "?t=" + Date.now()));
                        return hmrDownload(asset);
                    }
                    throw err;
                });
            });
            scriptsToRemove = await Promise.all(promises);
        }
        assets.forEach(function(asset) {
            hmrApply(module.bundle.root, asset);
        });
    } finally{
        delete global.parcelHotUpdate;
        if (scriptsToRemove) scriptsToRemove.forEach((script)=>{
            if (script) {
                var _document$head2;
                (_document$head2 = document.head) === null || _document$head2 === void 0 || _document$head2.removeChild(script);
            }
        });
    }
}
function hmrApply(bundle, asset) {
    var modules = bundle.modules;
    if (!modules) return;
    if (asset.type === "css") reloadCSS();
    else if (asset.type === "js") {
        let deps = asset.depsByBundle[bundle.HMR_BUNDLE_ID];
        if (deps) {
            if (modules[asset.id]) {
                // Remove dependencies that are removed and will become orphaned.
                // This is necessary so that if the asset is added back again, the cache is gone, and we prevent a full page reload.
                let oldDeps = modules[asset.id][1];
                for(let dep in oldDeps)if (!deps[dep] || deps[dep] !== oldDeps[dep]) {
                    let id = oldDeps[dep];
                    let parents = getParents(module.bundle.root, id);
                    if (parents.length === 1) hmrDelete(module.bundle.root, id);
                }
            }
            if (supportsSourceURL) // Global eval. We would use `new Function` here but browser
            // support for source maps is better with eval.
            (0, eval)(asset.output);
             // $FlowFixMe
            let fn = global.parcelHotUpdate[asset.id];
            modules[asset.id] = [
                fn,
                deps
            ];
        } else if (bundle.parent) hmrApply(bundle.parent, asset);
    }
}
function hmrDelete(bundle, id1) {
    let modules = bundle.modules;
    if (!modules) return;
    if (modules[id1]) {
        // Collect dependencies that will become orphaned when this module is deleted.
        let deps = modules[id1][1];
        let orphans = [];
        for(let dep in deps){
            let parents = getParents(module.bundle.root, deps[dep]);
            if (parents.length === 1) orphans.push(deps[dep]);
        } // Delete the module. This must be done before deleting dependencies in case of circular dependencies.
        delete modules[id1];
        delete bundle.cache[id1]; // Now delete the orphans.
        orphans.forEach((id)=>{
            hmrDelete(module.bundle.root, id);
        });
    } else if (bundle.parent) hmrDelete(bundle.parent, id1);
}
function hmrAcceptCheck(bundle, id, depsByBundle) {
    if (hmrAcceptCheckOne(bundle, id, depsByBundle)) return true;
     // Traverse parents breadth first. All possible ancestries must accept the HMR update, or we'll reload.
    let parents = getParents(module.bundle.root, id);
    let accepted = false;
    while(parents.length > 0){
        let v = parents.shift();
        let a = hmrAcceptCheckOne(v[0], v[1], null);
        if (a) // If this parent accepts, stop traversing upward, but still consider siblings.
        accepted = true;
        else {
            // Otherwise, queue the parents in the next level upward.
            let p = getParents(module.bundle.root, v[1]);
            if (p.length === 0) {
                // If there are no parents, then we've reached an entry without accepting. Reload.
                accepted = false;
                break;
            }
            parents.push(...p);
        }
    }
    return accepted;
}
function hmrAcceptCheckOne(bundle, id, depsByBundle) {
    var modules = bundle.modules;
    if (!modules) return;
    if (depsByBundle && !depsByBundle[bundle.HMR_BUNDLE_ID]) {
        // If we reached the root bundle without finding where the asset should go,
        // there's nothing to do. Mark as "accepted" so we don't reload the page.
        if (!bundle.parent) return true;
        return hmrAcceptCheck(bundle.parent, id, depsByBundle);
    }
    if (checkedAssets[id]) return true;
    checkedAssets[id] = true;
    var cached = bundle.cache[id];
    assetsToAccept.push([
        bundle,
        id
    ]);
    if (!cached || cached.hot && cached.hot._acceptCallbacks.length) return true;
}
function hmrAcceptRun(bundle, id) {
    var cached = bundle.cache[id];
    bundle.hotData = {};
    if (cached && cached.hot) cached.hot.data = bundle.hotData;
    if (cached && cached.hot && cached.hot._disposeCallbacks.length) cached.hot._disposeCallbacks.forEach(function(cb) {
        cb(bundle.hotData);
    });
    delete bundle.cache[id];
    bundle(id);
    cached = bundle.cache[id];
    if (cached && cached.hot && cached.hot._acceptCallbacks.length) cached.hot._acceptCallbacks.forEach(function(cb) {
        var assetsToAlsoAccept = cb(function() {
            return getParents(module.bundle.root, id);
        });
        if (assetsToAlsoAccept && assetsToAccept.length) // $FlowFixMe[method-unbinding]
        assetsToAccept.push.apply(assetsToAccept, assetsToAlsoAccept);
    });
    acceptedAssets[id] = true;
}

},{}],"bDbGG":[function(require,module,exports) {
var _routerJs = require("./router.js");
(0, _routerJs.getRoutes)();

},{"./router.js":"3YNuf"}],"3YNuf":[function(require,module,exports) {
var parcelHelpers = require("@parcel/transformer-js/src/esmodule-helpers.js");
parcelHelpers.defineInteropFlag(exports);
parcelHelpers.export(exports, "getRoutes", ()=>getRoutes);
var _mainJs = require("./pages/Main.js");
var _mainJsDefault = parcelHelpers.interopDefault(_mainJs);
var _moviesJs = require("./pages/Movies.js");
var _moviesJsDefault = parcelHelpers.interopDefault(_moviesJs);
document.addEventListener("click", (e)=>{
    const { target  } = e;
    if (!target.matches("nav a")) return;
    e.preventDefault();
    window.history.pushState({}, "", target.href);
    getRoutes();
});
const root = document.querySelector("#root");
const routes = {
    "/": (0, _mainJsDefault.default),
    "/movies": (0, _moviesJsDefault.default)
};
function getView(view) {
    return new Promise((res, rej)=>{
        root.innerHTML = view;
        res("success");
    });
}
const getRoutes = async ()=>{
    const path = window.location.pathname;
    const view = routes[path];
    await getView(view.render()).then((resp)=>{
        view.activeFunctions();
    });
};

},{"./pages/Main.js":"b3TcQ","./pages/Movies.js":"hlplb","@parcel/transformer-js/src/esmodule-helpers.js":"gkKU3"}],"b3TcQ":[function(require,module,exports) {
var parcelHelpers = require("@parcel/transformer-js/src/esmodule-helpers.js");
parcelHelpers.defineInteropFlag(exports);
var _nav = require("./components/Nav");
var _navDefault = parcelHelpers.interopDefault(_nav);
var _headerMain = require("./components/HeaderMain");
var _headerMainDefault = parcelHelpers.interopDefault(_headerMain);
var _footer = require("./components/Footer");
var _footerDefault = parcelHelpers.interopDefault(_footer);
var _sectionHeader = require("./components/SectionHeader");
var _sectionHeaderDefault = parcelHelpers.interopDefault(_sectionHeader);
var _viewAll = require("./components/ViewAll");
var _viewAllDefault = parcelHelpers.interopDefault(_viewAll);
var _configJs = require("../config.js");
var _popularMovies = require("../views/PopularMovies");
var _popularMoviesDefault = parcelHelpers.interopDefault(_popularMovies);
var _bestComedies = require("../views/BestComedies");
var _bestComediesDefault = parcelHelpers.interopDefault(_bestComedies);
var _actionAndAdventure = require("../views/ActionAndAdventure");
var _actionAndAdventureDefault = parcelHelpers.interopDefault(_actionAndAdventure);
var _axios = require("axios");
var _axiosDefault = parcelHelpers.interopDefault(_axios);
class Main {
    constructor(){
        this.movies = [];
        this.videos = [];
    }
    activeFunctions() {
        (0, _configJs.getPopularMovies)().then((data)=>{
            const { results  } = data;
            (0, _popularMoviesDefault.default).callFunctions();
            (0, _popularMoviesDefault.default).render(results);
        });
        (0, _configJs.getBestComedies)().then((data)=>{
            const { results  } = data;
            (0, _bestComediesDefault.default).callFunctions();
            (0, _bestComediesDefault.default).render(results);
        });
        (0, _configJs.getActionandAdventure)().then((data)=>{
            const { results  } = data;
            (0, _actionAndAdventureDefault.default).callFunctions();
            (0, _actionAndAdventureDefault.default).render(results);
        });
    }
    render() {
        return `
    <header>
        <div class="header_shadow">
          <div class="header_container row">
              <div class="header_logo">
                  <a href="index.html">
                  <img src="./img/MOVIEDOM1.png" alt="logo" />
              </div>
              <input type="checkbox" id="resp-check">
              ${(0, _navDefault.default).render()}
          </div>
          ${(0, _headerMainDefault.default).render()}
        </div>
      </header>
      <main>
          <section>
              <div class="container">
                ${(0, _sectionHeaderDefault.default).render("Continue Watching")}
                ${(0, _viewAllDefault.default).render("#")}
                <div class="continue_watching_container">
               

                      <div class="continue_watching_card">
                          <video controls type="video/mp4" src="
                            // getVideos()[1]
                          ">
                          </video>
                          <h3>Jumanji</h3>
  
                      </div>
                      <div class="continue_watching_card">
                          <video controls src="https://www.youtube.com/watch?v=rBxcF-r9Ibs&ab_channel=SonyPicturesEntertainment">
                          </video>
                          <h3>Jumanji</h3>
                      </div>
                      <div  class="continue_watching_card"><video controls src="https://www.youtube.com/watch?v=FdeioVndUhs&ab_channel=NITVShorts">
                      </video>
                      <h3>Jumanji</h3>
                      </div>
                  </div>
              </div>
          </section>
    
  
          <section> 
             <div class="container">
             
             ${(0, _sectionHeaderDefault.default).render("Popular Movies 2022")}
             ${(0, _viewAllDefault.default).render("#")}
              </div>
              
              <div class="slider_container row">
                  <svg id="slider_left_btn" width="15" height="29" viewBox="0 0 15 29" fill="none" xmlns="http://www.w3.org/2000/svg">
                      <path d="M1.83468 10.1092L11.433 0.602298C11.8248 0.216529 12.3548 0 12.9072 0C13.4596 0 13.9896 0.216529 14.3814 0.602298C14.5774 0.794845 14.733 1.02392 14.8392 1.27632C14.9453 1.52872 15 1.79944 15 2.07287C15 2.3463 14.9453 2.61702 14.8392 2.86942C14.733 3.12181 14.5774 3.35089 14.3814 3.54344L4.76225 13.0297C4.56626 13.2222 4.41069 13.4513 4.30453 13.7037C4.19836 13.9561 4.1437 14.2268 4.1437 14.5002C4.1437 14.7737 4.19836 15.0444 4.30453 15.2968C4.41069 15.5492 4.56626 15.7783 4.76225 15.9708L14.3814 25.457C14.7752 25.8443 14.9975 26.3707 14.9995 26.9203C15.0015 27.4699 14.7829 27.9978 14.3919 28.3878C14.0009 28.7778 13.4695 28.998 12.9146 29C12.3597 29.0019 11.8267 28.7854 11.433 28.3982L1.83468 18.8912C0.659876 17.7262 0 16.1469 0 14.5002C0 12.8536 0.659876 11.2743 1.83468 10.1092Z" fill="white" fill-opacity="0.52"/>
                  </svg>

                 <div class="slider_inner_container" id="popularMoviesContainer">
                 ${this.movies}
                 </div>

                  <svg id="slider_right_btn" width="15" height="29" viewBox="0 0 15 29" fill="none" xmlns="http://www.w3.org/2000/svg">
                  <path d="M13.1653 10.1092L3.56705 0.602298C3.17525 0.216529 2.64524 0 2.0928 0C1.54035 0 1.01035 0.216529 0.618552 0.602298C0.422554 0.794845 0.266987 1.02392 0.160823 1.27632C0.0546589 1.52872 0 1.79944 0 2.07287C0 2.3463 0.0546589 2.61702 0.160823 2.86942C0.266987 3.12181 0.422554 3.35089 0.618552 3.54344L10.2377 13.0297C10.4337 13.2222 10.5893 13.4513 10.6955 13.7037C10.8016 13.9561 10.8563 14.2268 10.8563 14.5002C10.8563 14.7737 10.8016 15.0444 10.6955 15.2968C10.5893 15.5492 10.4337 15.7783 10.2377 15.9708L0.618552 25.457C0.224785 25.8443 0.00246735 26.3707 0.000506541 26.9203C-0.00145427 27.4699 0.217104 27.9978 0.608098 28.3878C0.999093 28.7778 1.5305 28.998 2.08541 29C2.64032 29.0019 3.17328 28.7854 3.56705 28.3982L13.1653 18.8912C14.3401 17.7262 15 16.1469 15 14.5002C15 12.8536 14.3401 11.2743 13.1653 10.1092Z" fill="white" fill-opacity="0.52"/>
                  </svg>

              </div>      
            </div>
          </section>
  
          <section> 
             <div class="container">
             
             ${(0, _sectionHeaderDefault.default).render("Best Comedies")}
             ${(0, _viewAllDefault.default).render("#")}
              </div>
              
              <div class="slider_container row">
                  <svg id="slider_left_btn" width="15" height="29" viewBox="0 0 15 29" fill="none" xmlns="http://www.w3.org/2000/svg">
                      <path d="M1.83468 10.1092L11.433 0.602298C11.8248 0.216529 12.3548 0 12.9072 0C13.4596 0 13.9896 0.216529 14.3814 0.602298C14.5774 0.794845 14.733 1.02392 14.8392 1.27632C14.9453 1.52872 15 1.79944 15 2.07287C15 2.3463 14.9453 2.61702 14.8392 2.86942C14.733 3.12181 14.5774 3.35089 14.3814 3.54344L4.76225 13.0297C4.56626 13.2222 4.41069 13.4513 4.30453 13.7037C4.19836 13.9561 4.1437 14.2268 4.1437 14.5002C4.1437 14.7737 4.19836 15.0444 4.30453 15.2968C4.41069 15.5492 4.56626 15.7783 4.76225 15.9708L14.3814 25.457C14.7752 25.8443 14.9975 26.3707 14.9995 26.9203C15.0015 27.4699 14.7829 27.9978 14.3919 28.3878C14.0009 28.7778 13.4695 28.998 12.9146 29C12.3597 29.0019 11.8267 28.7854 11.433 28.3982L1.83468 18.8912C0.659876 17.7262 0 16.1469 0 14.5002C0 12.8536 0.659876 11.2743 1.83468 10.1092Z" fill="white" fill-opacity="0.52"/>
                  </svg>

                 <div class="slider_inner_container" id="bestComediesContainer">
                 ${this.movies}
                 </div>

                  <svg id="slider_right_btn" width="15" height="29" viewBox="0 0 15 29" fill="none" xmlns="http://www.w3.org/2000/svg">
                  <path d="M13.1653 10.1092L3.56705 0.602298C3.17525 0.216529 2.64524 0 2.0928 0C1.54035 0 1.01035 0.216529 0.618552 0.602298C0.422554 0.794845 0.266987 1.02392 0.160823 1.27632C0.0546589 1.52872 0 1.79944 0 2.07287C0 2.3463 0.0546589 2.61702 0.160823 2.86942C0.266987 3.12181 0.422554 3.35089 0.618552 3.54344L10.2377 13.0297C10.4337 13.2222 10.5893 13.4513 10.6955 13.7037C10.8016 13.9561 10.8563 14.2268 10.8563 14.5002C10.8563 14.7737 10.8016 15.0444 10.6955 15.2968C10.5893 15.5492 10.4337 15.7783 10.2377 15.9708L0.618552 25.457C0.224785 25.8443 0.00246735 26.3707 0.000506541 26.9203C-0.00145427 27.4699 0.217104 27.9978 0.608098 28.3878C0.999093 28.7778 1.5305 28.998 2.08541 29C2.64032 29.0019 3.17328 28.7854 3.56705 28.3982L13.1653 18.8912C14.3401 17.7262 15 16.1469 15 14.5002C15 12.8536 14.3401 11.2743 13.1653 10.1092Z" fill="white" fill-opacity="0.52"/>
                  </svg>

              </div>          
            </div>
          </section>
          <section> 
             <div class="container">
             
             ${(0, _sectionHeaderDefault.default).render("Action & Adventure")}
             ${(0, _viewAllDefault.default).render("#")}
              </div>
              
              <div class="slider_container row">
                  <svg id="slider_left_btn" width="15" height="29" viewBox="0 0 15 29" fill="none" xmlns="http://www.w3.org/2000/svg">
                      <path d="M1.83468 10.1092L11.433 0.602298C11.8248 0.216529 12.3548 0 12.9072 0C13.4596 0 13.9896 0.216529 14.3814 0.602298C14.5774 0.794845 14.733 1.02392 14.8392 1.27632C14.9453 1.52872 15 1.79944 15 2.07287C15 2.3463 14.9453 2.61702 14.8392 2.86942C14.733 3.12181 14.5774 3.35089 14.3814 3.54344L4.76225 13.0297C4.56626 13.2222 4.41069 13.4513 4.30453 13.7037C4.19836 13.9561 4.1437 14.2268 4.1437 14.5002C4.1437 14.7737 4.19836 15.0444 4.30453 15.2968C4.41069 15.5492 4.56626 15.7783 4.76225 15.9708L14.3814 25.457C14.7752 25.8443 14.9975 26.3707 14.9995 26.9203C15.0015 27.4699 14.7829 27.9978 14.3919 28.3878C14.0009 28.7778 13.4695 28.998 12.9146 29C12.3597 29.0019 11.8267 28.7854 11.433 28.3982L1.83468 18.8912C0.659876 17.7262 0 16.1469 0 14.5002C0 12.8536 0.659876 11.2743 1.83468 10.1092Z" fill="white" fill-opacity="0.52"/>
                  </svg>

                 <div class="slider_inner_container" id="actionandadvcontainer">
                 ${this.movies}
                 </div>

                  <svg id="slider_right_btn" width="15" height="29" viewBox="0 0 15 29" fill="none" xmlns="http://www.w3.org/2000/svg">
                  <path d="M13.1653 10.1092L3.56705 0.602298C3.17525 0.216529 2.64524 0 2.0928 0C1.54035 0 1.01035 0.216529 0.618552 0.602298C0.422554 0.794845 0.266987 1.02392 0.160823 1.27632C0.0546589 1.52872 0 1.79944 0 2.07287C0 2.3463 0.0546589 2.61702 0.160823 2.86942C0.266987 3.12181 0.422554 3.35089 0.618552 3.54344L10.2377 13.0297C10.4337 13.2222 10.5893 13.4513 10.6955 13.7037C10.8016 13.9561 10.8563 14.2268 10.8563 14.5002C10.8563 14.7737 10.8016 15.0444 10.6955 15.2968C10.5893 15.5492 10.4337 15.7783 10.2377 15.9708L0.618552 25.457C0.224785 25.8443 0.00246735 26.3707 0.000506541 26.9203C-0.00145427 27.4699 0.217104 27.9978 0.608098 28.3878C0.999093 28.7778 1.5305 28.998 2.08541 29C2.64032 29.0019 3.17328 28.7854 3.56705 28.3982L13.1653 18.8912C14.3401 17.7262 15 16.1469 15 14.5002C15 12.8536 14.3401 11.2743 13.1653 10.1092Z" fill="white" fill-opacity="0.52"/>
                  </svg>

              </div>          
            </div>
          </section>
          


  
          <footer>
              ${(0, _footerDefault.default).render()}
          </footer>
      </main>
  `;
    }
}
exports.default = new Main();

},{"./components/Nav":"gUPQu","./components/HeaderMain":"f5Kds","./components/Footer":"8rFjb","./components/SectionHeader":"2taZf","./components/ViewAll":"alKS9","../config.js":"4Wc5b","../views/PopularMovies":"bQdJe","../views/BestComedies":"29L8v","@parcel/transformer-js/src/esmodule-helpers.js":"gkKU3","../views/ActionAndAdventure":"blEkO","axios":"jo6P5"}],"gUPQu":[function(require,module,exports) {
var parcelHelpers = require("@parcel/transformer-js/src/esmodule-helpers.js");
parcelHelpers.defineInteropFlag(exports);
class Nav {
    render() {
        return `
        <nav>
            <ul class="row main-nav">
                <li><a href="/">TV Shows</a></li>
                <li><a href="/movies">Movies</a></li>
                <li><a href="">Upcoming Movies</a></li>
                <li><a href="">Trailers</a></li>
                <li><a href="">My List</a></li>
            </ul>
        </nav>
        <div class="header_icon_container">
            <div class="header_search">
                <svg width="16" height="16" viewBox="0 0 16 16" fill="none" xmlns="http://www.w3.org/2000/svg">
                    <path d="M6.72728 12.4546C9.89037 12.4546 12.4546 9.89037 12.4546 6.72728C12.4546 3.56419 9.89037 1 6.72728 1C3.56419 1 1 3.56419 1 6.72728C1 9.89037 3.56419 12.4546 6.72728 12.4546Z" stroke="white" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"/>
                    <path d="M15 15L10.7783 10.7783" stroke="white" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"/>
                    </svg>
                <input type="text" placeholder="Search a movie">  
            </div>
            <svg width="16" height="18" viewBox="0 0 16 18" fill="none" xmlns="http://www.w3.org/2000/svg">
                <path d="M14.648 10.7018L14.3 10.4275C14.2065 10.3541 14.1309 10.261 14.079 10.1551C14.0271 10.0493 14.0001 9.93338 14 9.81594V6.64863C13.9995 5.28749 13.5172 3.96867 12.6353 2.91713C11.7534 1.86558 10.5265 1.14645 9.164 0.882386C9.09756 0.629863 8.94736 0.406144 8.73701 0.246413C8.52667 0.0866817 8.26811 0 8.002 0C7.73589 0 7.47733 0.0866817 7.26699 0.246413C7.05664 0.406144 6.90644 0.629863 6.84 0.882386C5.47672 1.14565 4.24894 1.86444 3.36624 2.91606C2.48354 3.96768 2.00065 5.28694 2 6.64863V9.81594C1.99993 9.93338 1.97293 10.0493 1.921 10.1551C1.86908 10.261 1.79355 10.3541 1.7 10.4275L1.352 10.7018C0.931712 11.0311 0.592092 11.4485 0.35812 11.9234C0.124147 12.3983 0.00177343 12.9185 0 13.4458V14.0965C0 14.5124 0.168571 14.9112 0.468629 15.2052C0.768687 15.4993 1.17565 15.6645 1.6 15.6645H4.904C5.08432 16.3339 5.48561 16.926 6.04528 17.3484C6.60495 17.7709 7.29155 18 7.998 18C8.70445 18 9.39105 17.7709 9.95072 17.3484C10.5104 16.926 10.9117 16.3339 11.092 15.6645H14.4C14.8243 15.6645 15.2313 15.4993 15.5314 15.2052C15.8314 14.9112 16 14.5124 16 14.0965V13.4536C15.9994 12.925 15.8776 12.4033 15.6436 11.9269C15.4096 11.4506 15.0693 11.032 14.648 10.7018ZM8 16.4485C7.72078 16.4468 7.44686 16.3736 7.20546 16.2361C6.96407 16.0985 6.76361 15.9015 6.624 15.6645H9.38C9.24005 15.9021 9.03896 16.0995 8.7968 16.237C8.55465 16.3746 8.2799 16.4475 8 16.4485ZM14.4 14.0965H1.6V13.4536C1.60043 13.1599 1.66823 12.87 1.7984 12.6054C1.92856 12.3407 2.11776 12.1082 2.352 11.9249L2.7 11.6505C2.98065 11.4303 3.20723 11.1511 3.36301 10.8336C3.51878 10.516 3.59978 10.1683 3.6 9.81594V6.64863C3.6 5.50503 4.06357 4.40827 4.88873 3.59962C5.71389 2.79098 6.83305 2.33669 8 2.33669C9.16695 2.33669 10.2861 2.79098 11.1113 3.59962C11.9364 4.40827 12.4 5.50503 12.4 6.64863V9.81594C12.3996 10.1689 12.4803 10.5175 12.6361 10.8357C12.7919 11.154 13.0188 11.4338 13.3 11.6544L13.648 11.9288C13.8817 12.1117 14.0706 12.3436 14.2007 12.6075C14.3309 12.8714 14.399 13.1606 14.4 13.4536V14.0965Z" fill="white"/>
                </svg>
                
            <svg width="20" height="20" viewBox="0 0 20 20" fill="none" xmlns="http://www.w3.org/2000/svg">
                <path d="M10 0C4.48625 0 0 4.48625 0 10C0 12.9546 1.28917 15.6133 3.33333 17.4454V17.4525L3.47833 17.5775C3.50375 17.5996 3.53167 17.6179 3.5575 17.6396C3.73708 17.7912 3.92208 17.9367 4.11208 18.0758C4.16333 18.1133 4.21458 18.1496 4.26667 18.1858C4.46833 18.3275 4.67458 18.4625 4.88625 18.5892C4.92167 18.6104 4.95792 18.6304 4.99333 18.6508C5.22542 18.7858 5.4625 18.9129 5.70583 19.0292C5.70833 19.0304 5.71083 19.0312 5.71333 19.0325C6.23375 19.2804 6.77958 19.4833 7.34458 19.6392C7.355 19.6421 7.36542 19.6454 7.37583 19.6479C7.64292 19.7208 7.91458 19.7821 8.19 19.8325C8.21583 19.8371 8.24125 19.8417 8.26708 19.8463C8.53292 19.8929 8.80208 19.93 9.075 19.9554C9.10625 19.9583 9.1375 19.96 9.16833 19.9625C9.44292 19.9854 9.71958 20 10 20C10.2804 20 10.5571 19.9854 10.8317 19.9625C10.8629 19.96 10.8942 19.9583 10.925 19.9554C11.1979 19.9304 11.4671 19.8929 11.7329 19.8463C11.7587 19.8417 11.7842 19.8371 11.81 19.8325C12.0854 19.7821 12.3571 19.7208 12.6242 19.6479C12.6346 19.645 12.645 19.6421 12.6554 19.6392C13.2204 19.4833 13.7662 19.2804 14.2867 19.0325C14.2892 19.0312 14.2917 19.0304 14.2942 19.0292C14.5375 18.9129 14.7746 18.7854 15.0067 18.6508C15.0425 18.63 15.0783 18.6104 15.1137 18.5892C15.3258 18.4625 15.5321 18.3271 15.7333 18.1858C15.785 18.1496 15.8367 18.1133 15.8879 18.0758C16.0779 17.9367 16.2629 17.7912 16.4425 17.6396C16.4683 17.6179 16.4962 17.5996 16.5217 17.5775L16.6667 17.4525V17.4454C18.7108 15.6129 20 12.9546 20 10C20 4.48625 15.5138 0 10 0ZM10 10C8.16208 10 6.66667 8.50458 6.66667 6.66667C6.66667 4.82875 8.16208 3.33333 10 3.33333C11.8379 3.33333 13.3333 4.82875 13.3333 6.66667C13.3333 8.50458 11.8379 10 10 10ZM11.25 10.8333C13.7771 10.8333 15.8333 12.8896 15.8333 15.4167V17.0658C15.8158 17.0804 15.7975 17.0938 15.78 17.1083C15.6154 17.2421 15.4467 17.3692 15.2742 17.4908C15.2358 17.5179 15.1983 17.5458 15.16 17.5721C14.9737 17.6992 14.7825 17.8183 14.5879 17.9312C14.5525 17.9521 14.5167 17.9725 14.4808 17.9929C14.2767 18.1075 14.0687 18.215 13.8567 18.3133C13.8346 18.3237 13.8121 18.3337 13.7896 18.3438C13.0975 18.6583 12.3683 18.8862 11.6179 19.0212C11.5942 19.0254 11.5704 19.03 11.5467 19.0342C11.3104 19.0746 11.0721 19.1058 10.8321 19.1279C10.7992 19.1308 10.7658 19.1329 10.7325 19.1354C10.4896 19.1542 10.2454 19.1667 10 19.1667C9.75458 19.1667 9.51042 19.1542 9.2675 19.1346C9.23458 19.1321 9.20125 19.13 9.16792 19.1271C8.92792 19.105 8.68958 19.0742 8.45333 19.0333C8.42958 19.0292 8.40583 19.025 8.38208 19.0204C7.63167 18.8854 6.9025 18.6575 6.21042 18.3429C6.18792 18.3325 6.16542 18.3229 6.14333 18.3125C5.93125 18.2142 5.72333 18.1067 5.51917 17.9921C5.48333 17.9717 5.44792 17.9513 5.41208 17.9304C5.2175 17.8179 5.02625 17.6983 4.84 17.5713C4.80125 17.545 4.76375 17.5171 4.72583 17.49C4.55333 17.3683 4.38458 17.2417 4.22 17.1075C4.2025 17.0933 4.18417 17.0796 4.16667 17.065V15.4167C4.16667 12.8896 6.22292 10.8333 8.75 10.8333H11.25ZM16.6667 16.2817V15.4167C16.6667 12.8037 14.8067 10.6171 12.3417 10.1104C13.4421 9.36 14.1667 8.09625 14.1667 6.66667C14.1667 4.36917 12.2975 2.5 10 2.5C7.7025 2.5 5.83333 4.36917 5.83333 6.66667C5.83333 8.09625 6.55792 9.36 7.65833 10.1104C5.19333 10.6171 3.33333 12.8037 3.33333 15.4167V16.2817C1.785 14.6396 0.833333 12.4296 0.833333 10C0.833333 4.94542 4.94542 0.833333 10 0.833333C15.0546 0.833333 19.1667 4.94542 19.1667 10C19.1667 12.4296 18.215 14.6396 16.6667 16.2817Z" fill="white"/>
                </svg>
                <label id="resp-btn" for="resp-check">
                    <svg width="23" height="16" viewBox="0 0 23 16" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path d="M21.1766 6.58826H1.41177C0.632078 6.58826 0 7.22033 0 8.00003C0 8.77973 0.632078 9.4118 1.41177 9.4118H21.1766C21.9563 9.4118 22.5884 8.77973 22.5884 8.00003C22.5884 7.22033 21.9563 6.58826 21.1766 6.58826Z" fill="white"/>
                        <path d="M1.41177 2.82355H21.1766C21.9563 2.82355 22.5884 2.19147 22.5884 1.41177C22.5884 0.632078 21.9563 0 21.1766 0H1.41177C0.632078 0 0 0.632078 0 1.41177C0 2.19147 0.632078 2.82355 1.41177 2.82355Z" fill="white"/>
                        <path d="M21.1766 13.1764H1.41177C0.632078 13.1764 0 13.8085 0 14.5882C0 15.3679 0.632078 15.9999 1.41177 15.9999H21.1766C21.9563 15.9999 22.5884 15.3679 22.5884 14.5882C22.5884 13.8085 21.9563 13.1764 21.1766 13.1764Z" fill="white"/>
                        </svg>
                        
                </label>
                
        </div>
            
        `;
    }
}
exports.default = new Nav();

},{"@parcel/transformer-js/src/esmodule-helpers.js":"gkKU3"}],"gkKU3":[function(require,module,exports) {
exports.interopDefault = function(a) {
    return a && a.__esModule ? a : {
        default: a
    };
};
exports.defineInteropFlag = function(a) {
    Object.defineProperty(a, "__esModule", {
        value: true
    });
};
exports.exportAll = function(source, dest) {
    Object.keys(source).forEach(function(key) {
        if (key === "default" || key === "__esModule" || dest.hasOwnProperty(key)) return;
        Object.defineProperty(dest, key, {
            enumerable: true,
            get: function() {
                return source[key];
            }
        });
    });
    return dest;
};
exports.export = function(dest, destName, get) {
    Object.defineProperty(dest, destName, {
        enumerable: true,
        get: get
    });
};

},{}],"f5Kds":[function(require,module,exports) {
var parcelHelpers = require("@parcel/transformer-js/src/esmodule-helpers.js");
parcelHelpers.defineInteropFlag(exports);
class HeaderMain {
    render() {
        return `
        <div class="header_main_container">
              <h1>THE LOST CITY</h1>
                  <ul class="header_movie_type">
                      <li>Action-Adventure</li>
                      <li>Comedy</li>
                      <li>Action</li>
                  </ul>
                  <p class="header_movie_paragraph">
                      Alan, who is secretly enamored with Loretta, witnesses her kidnapping. He recruits Jack Trainer, a former Navy SEAL turned CIA operative, to meet him on the island and coordinate a rescueattempt.Jack, with no assistance from Alan.
                  </p>
                  <ul class="header_movie_info">  
                      <li>
                          <svg width="19" height="19" viewBox="0 0 19 19" fill="none" xmlns="http://www.w3.org/2000/svg">
                          <path d="M14.1116 17.3885C18.4611 14.8457 19.9311 9.23792 17.3884 4.88845C14.8457 0.538988 9.23787 -0.931067 4.8884 1.61165C0.538935 4.15437 -0.931121 9.76219 1.6116 14.1117C4.15432 18.4611 9.76213 19.9312 14.1116 17.3885ZM5.2727 2.26902C9.25996 -0.0619514 14.4001 1.2855 16.731 5.27275C19.062 9.26001 17.7146 14.4001 13.7273 16.7311C9.74004 19.0621 4.59994 17.7146 2.26897 13.7274C-0.0620046 9.74009 1.28544 4.59999 5.2727 2.26902Z" fill="white"/>
                          </svg>
                      
                          164 min
                      </li>
                      <li>
                          <svg width="21" height="17" viewBox="0 0 21 17" fill="none" xmlns="http://www.w3.org/2000/svg">
                          <path d="M1 13.8404H4.70807L9.78651 15.9363C10.3105 16.158 10.8949 15.7751 10.8949 15.1907V1.80935C10.8949 1.22493 10.3105 0.842027 9.78651 1.06371L4.70807 3.15957H1.08061V11.3214" stroke="white" stroke-width="1.3" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"/>
                          <path d="M14.3413 4.4292C15.3892 5.47713 16.0341 6.90796 16.0341 8.50002C16.0341 10.0921 15.3892 11.5431 14.3413 12.5708" stroke="white" stroke-width="1.3" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"/>
                          <path d="M16.7593 2.01074C18.4118 3.66325 19.4597 5.96064 19.4597 8.49987C19.4597 11.0391 18.4319 13.3365 16.7593 14.989" stroke="white" stroke-width="1.3" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"/>
                          </svg>
                          Subtitles
                      </li>
                      <li>
                          <svg width="6" height="6" viewBox="0 0 6 6" fill="none" xmlns="http://www.w3.org/2000/svg">
                          <circle cx="3" cy="3" r="3" fill="white"/>
                          </svg>
                          <b>Imdb</b> 9.1/10
                      </li>    
                  </ul>
                  <div class="button_container">
                      <button class="red_btn"><svg width="12" height="19" viewBox="0 0 12 19" fill="none" xmlns="http://www.w3.org/2000/svg">
                          <path d="M1.54455 18.8278L1.67587 18.7209L11.4622 10.6459C11.7936 10.3728 12 9.96313 12 9.50594C12 9.04875 11.7874 8.63906 11.4622 8.36594L1.69463 0.296875L1.53205 0.160312C1.37572 0.0593748 1.18812 0 0.988015 0C0.443981 0 0 0.439375 0 0.985625V18.0144C0 18.5606 0.443981 19 0.988015 19C1.19437 19 1.38822 18.9347 1.54455 18.8278Z" fill="white"/>
                          </svg>
                          Watch Now
                      </button>
  
                      <button>
                          <svg width="18" height="18" viewBox="0 0 18 18" fill="none" xmlns="http://www.w3.org/2000/svg">
                              <path d="M9 1V17" stroke="#C00511" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                              <path d="M1 9H17" stroke="#C00511" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                              </svg>
                              Add list
                      </button>
                  </div>`;
    }
}
exports.default = new HeaderMain();

},{"@parcel/transformer-js/src/esmodule-helpers.js":"gkKU3"}],"8rFjb":[function(require,module,exports) {
var parcelHelpers = require("@parcel/transformer-js/src/esmodule-helpers.js");
parcelHelpers.defineInteropFlag(exports);
class Footer {
    render() {
        return `
        <div class="footer_container">
                  <div class="header_logo">
                      <img src="./img/MOVIEDOM1.png" alt="logo" />
                  </div>
                  <div class="links">
                      <ul class="main-nav row">
                          <li>TV Shows</li>
                          <li>Movies</li>
                          <li>Upcoming</li>
                          <li>Trailers</li>
                          <li>My list</li>
                      </ul>
                  </div>
                  <div class="social_media">
                      <ul class="row">
                          <li><img src="./img/Vector (5).png"></li>
                          <li><img src="./img/Vector (6).png"></li>
                          <li><img src="./img/Vector (7).png"></li>
                          <li><img src="./img/Vector (1).png"></li>
                      </ul>
                  </div>
              </div>`;
    }
}
exports.default = new Footer();

},{"@parcel/transformer-js/src/esmodule-helpers.js":"gkKU3"}],"2taZf":[function(require,module,exports) {
var parcelHelpers = require("@parcel/transformer-js/src/esmodule-helpers.js");
parcelHelpers.defineInteropFlag(exports);
class SectionHeader {
    render(title) {
        return `
            <div class="section_header">
                <h2>${title}</h2>
            </div>
            `;
    }
}
exports.default = new SectionHeader();

},{"@parcel/transformer-js/src/esmodule-helpers.js":"gkKU3"}],"alKS9":[function(require,module,exports) {
var parcelHelpers = require("@parcel/transformer-js/src/esmodule-helpers.js");
parcelHelpers.defineInteropFlag(exports);
class ViewAll {
    render(url) {
        return `
        <a href="${url}" class="view_all">View all</a>
        `;
    }
}
exports.default = new ViewAll();

},{"@parcel/transformer-js/src/esmodule-helpers.js":"gkKU3"}],"4Wc5b":[function(require,module,exports) {
var parcelHelpers = require("@parcel/transformer-js/src/esmodule-helpers.js");
parcelHelpers.defineInteropFlag(exports);
parcelHelpers.export(exports, "getPopularMovies", ()=>getPopularMovies);
parcelHelpers.export(exports, "getVideos", ()=>getVideos);
parcelHelpers.export(exports, "getActionandAdventure", ()=>getActionandAdventure);
parcelHelpers.export(exports, "getBestComedies", ()=>getBestComedies);
var _apiJs = require("./api.js");
var _axios = require("axios");
var _axiosDefault = parcelHelpers.interopDefault(_axios);
const getPopularMovies = async ()=>{
    return await (0, _axiosDefault.default).get((0, _apiJs.main_api)).then((res)=>{
        return res.data;
    });
};
const getVideos = async ()=>{
    (0, _axiosDefault.default).get("/video/").then((res)=>{
        undefined.videos = res.data;
    });
    return undefined.videos;
};
const getActionandAdventure = async ()=>{
    return await (0, _axiosDefault.default).get((0, _apiJs.main_api)).then((res)=>{
        return res.data;
    });
};
const getBestComedies = async ()=>{
    return await (0, _axiosDefault.default).get((0, _apiJs.main_api)).then((res)=>{
        return res.data;
    });
};

},{"./api.js":"6yDOL","axios":"jo6P5","@parcel/transformer-js/src/esmodule-helpers.js":"gkKU3"}],"6yDOL":[function(require,module,exports) {
var parcelHelpers = require("@parcel/transformer-js/src/esmodule-helpers.js");
parcelHelpers.defineInteropFlag(exports);
parcelHelpers.export(exports, "main_api", ()=>main_api);
parcelHelpers.export(exports, "img_path", ()=>img_path);
const main_api = "https://api.themoviedb.org/3/discover/movie?sort_by=popularity.desc&api_key=1cf50e6248dc270629e802686245c2c8";
const img_path = "https://image.tmdb.org/t/p/w500";

},{"@parcel/transformer-js/src/esmodule-helpers.js":"gkKU3"}],"jo6P5":[function(require,module,exports) {
module.exports = require("./lib/axios");

},{"./lib/axios":"63MyY"}],"63MyY":[function(require,module,exports) {
"use strict";
var utils = require("./utils");
var bind = require("./helpers/bind");
var Axios = require("./core/Axios");
var mergeConfig = require("./core/mergeConfig");
var defaults = require("./defaults");
/**
 * Create an instance of Axios
 *
 * @param {Object} defaultConfig The default config for the instance
 * @return {Axios} A new instance of Axios
 */ function createInstance(defaultConfig) {
    var context = new Axios(defaultConfig);
    var instance = bind(Axios.prototype.request, context);
    // Copy axios.prototype to instance
    utils.extend(instance, Axios.prototype, context);
    // Copy context to instance
    utils.extend(instance, context);
    // Factory for creating new instances
    instance.create = function create(instanceConfig) {
        return createInstance(mergeConfig(defaultConfig, instanceConfig));
    };
    return instance;
}
// Create the default instance to be exported
var axios = createInstance(defaults);
// Expose Axios class to allow class inheritance
axios.Axios = Axios;
// Expose Cancel & CancelToken
axios.CanceledError = require("./cancel/CanceledError");
axios.CancelToken = require("./cancel/CancelToken");
axios.isCancel = require("./cancel/isCancel");
axios.VERSION = require("./env/data").version;
axios.toFormData = require("./helpers/toFormData");
// Expose AxiosError class
axios.AxiosError = require("../lib/core/AxiosError");
// alias for CanceledError for backward compatibility
axios.Cancel = axios.CanceledError;
// Expose all/spread
axios.all = function all(promises) {
    return Promise.all(promises);
};
axios.spread = require("./helpers/spread");
// Expose isAxiosError
axios.isAxiosError = require("./helpers/isAxiosError");
module.exports = axios;
// Allow use of default import syntax in TypeScript
module.exports.default = axios;

},{"./utils":"5By4s","./helpers/bind":"haRQb","./core/Axios":"cpqD8","./core/mergeConfig":"b85oP","./defaults":"hXfHM","./cancel/CanceledError":"9PwCG","./cancel/CancelToken":"45wzn","./cancel/isCancel":"a0VmF","./env/data":"h29L9","./helpers/toFormData":"ajoez","../lib/core/AxiosError":"3u8Tl","./helpers/spread":"dyQ8N","./helpers/isAxiosError":"eyiLq"}],"5By4s":[function(require,module,exports) {
"use strict";
var bind = require("./helpers/bind");
// utils is a library of generic helper functions non-specific to axios
var toString = Object.prototype.toString;
// eslint-disable-next-line func-names
var kindOf = function(cache) {
    // eslint-disable-next-line func-names
    return function(thing) {
        var str = toString.call(thing);
        return cache[str] || (cache[str] = str.slice(8, -1).toLowerCase());
    };
}(Object.create(null));
function kindOfTest(type) {
    type = type.toLowerCase();
    return function isKindOf(thing) {
        return kindOf(thing) === type;
    };
}
/**
 * Determine if a value is an Array
 *
 * @param {Object} val The value to test
 * @returns {boolean} True if value is an Array, otherwise false
 */ function isArray(val) {
    return Array.isArray(val);
}
/**
 * Determine if a value is undefined
 *
 * @param {Object} val The value to test
 * @returns {boolean} True if the value is undefined, otherwise false
 */ function isUndefined(val) {
    return typeof val === "undefined";
}
/**
 * Determine if a value is a Buffer
 *
 * @param {Object} val The value to test
 * @returns {boolean} True if value is a Buffer, otherwise false
 */ function isBuffer(val) {
    return val !== null && !isUndefined(val) && val.constructor !== null && !isUndefined(val.constructor) && typeof val.constructor.isBuffer === "function" && val.constructor.isBuffer(val);
}
/**
 * Determine if a value is an ArrayBuffer
 *
 * @function
 * @param {Object} val The value to test
 * @returns {boolean} True if value is an ArrayBuffer, otherwise false
 */ var isArrayBuffer = kindOfTest("ArrayBuffer");
/**
 * Determine if a value is a view on an ArrayBuffer
 *
 * @param {Object} val The value to test
 * @returns {boolean} True if value is a view on an ArrayBuffer, otherwise false
 */ function isArrayBufferView(val) {
    var result;
    if (typeof ArrayBuffer !== "undefined" && ArrayBuffer.isView) result = ArrayBuffer.isView(val);
    else result = val && val.buffer && isArrayBuffer(val.buffer);
    return result;
}
/**
 * Determine if a value is a String
 *
 * @param {Object} val The value to test
 * @returns {boolean} True if value is a String, otherwise false
 */ function isString(val) {
    return typeof val === "string";
}
/**
 * Determine if a value is a Number
 *
 * @param {Object} val The value to test
 * @returns {boolean} True if value is a Number, otherwise false
 */ function isNumber(val) {
    return typeof val === "number";
}
/**
 * Determine if a value is an Object
 *
 * @param {Object} val The value to test
 * @returns {boolean} True if value is an Object, otherwise false
 */ function isObject(val) {
    return val !== null && typeof val === "object";
}
/**
 * Determine if a value is a plain Object
 *
 * @param {Object} val The value to test
 * @return {boolean} True if value is a plain Object, otherwise false
 */ function isPlainObject(val) {
    if (kindOf(val) !== "object") return false;
    var prototype = Object.getPrototypeOf(val);
    return prototype === null || prototype === Object.prototype;
}
/**
 * Determine if a value is a Date
 *
 * @function
 * @param {Object} val The value to test
 * @returns {boolean} True if value is a Date, otherwise false
 */ var isDate = kindOfTest("Date");
/**
 * Determine if a value is a File
 *
 * @function
 * @param {Object} val The value to test
 * @returns {boolean} True if value is a File, otherwise false
 */ var isFile = kindOfTest("File");
/**
 * Determine if a value is a Blob
 *
 * @function
 * @param {Object} val The value to test
 * @returns {boolean} True if value is a Blob, otherwise false
 */ var isBlob = kindOfTest("Blob");
/**
 * Determine if a value is a FileList
 *
 * @function
 * @param {Object} val The value to test
 * @returns {boolean} True if value is a File, otherwise false
 */ var isFileList = kindOfTest("FileList");
/**
 * Determine if a value is a Function
 *
 * @param {Object} val The value to test
 * @returns {boolean} True if value is a Function, otherwise false
 */ function isFunction(val) {
    return toString.call(val) === "[object Function]";
}
/**
 * Determine if a value is a Stream
 *
 * @param {Object} val The value to test
 * @returns {boolean} True if value is a Stream, otherwise false
 */ function isStream(val) {
    return isObject(val) && isFunction(val.pipe);
}
/**
 * Determine if a value is a FormData
 *
 * @param {Object} thing The value to test
 * @returns {boolean} True if value is an FormData, otherwise false
 */ function isFormData(thing) {
    var pattern = "[object FormData]";
    return thing && (typeof FormData === "function" && thing instanceof FormData || toString.call(thing) === pattern || isFunction(thing.toString) && thing.toString() === pattern);
}
/**
 * Determine if a value is a URLSearchParams object
 * @function
 * @param {Object} val The value to test
 * @returns {boolean} True if value is a URLSearchParams object, otherwise false
 */ var isURLSearchParams = kindOfTest("URLSearchParams");
/**
 * Trim excess whitespace off the beginning and end of a string
 *
 * @param {String} str The String to trim
 * @returns {String} The String freed of excess whitespace
 */ function trim(str) {
    return str.trim ? str.trim() : str.replace(/^\s+|\s+$/g, "");
}
/**
 * Determine if we're running in a standard browser environment
 *
 * This allows axios to run in a web worker, and react-native.
 * Both environments support XMLHttpRequest, but not fully standard globals.
 *
 * web workers:
 *  typeof window -> undefined
 *  typeof document -> undefined
 *
 * react-native:
 *  navigator.product -> 'ReactNative'
 * nativescript
 *  navigator.product -> 'NativeScript' or 'NS'
 */ function isStandardBrowserEnv() {
    if (typeof navigator !== "undefined" && (navigator.product === "ReactNative" || navigator.product === "NativeScript" || navigator.product === "NS")) return false;
    return typeof window !== "undefined" && typeof document !== "undefined";
}
/**
 * Iterate over an Array or an Object invoking a function for each item.
 *
 * If `obj` is an Array callback will be called passing
 * the value, index, and complete array for each item.
 *
 * If 'obj' is an Object callback will be called passing
 * the value, key, and complete object for each property.
 *
 * @param {Object|Array} obj The object to iterate
 * @param {Function} fn The callback to invoke for each item
 */ function forEach(obj, fn) {
    // Don't bother if no value provided
    if (obj === null || typeof obj === "undefined") return;
    // Force an array if not already something iterable
    if (typeof obj !== "object") /*eslint no-param-reassign:0*/ obj = [
        obj
    ];
    if (isArray(obj)) // Iterate over array values
    for(var i = 0, l = obj.length; i < l; i++)fn.call(null, obj[i], i, obj);
    else {
        // Iterate over object keys
        for(var key in obj)if (Object.prototype.hasOwnProperty.call(obj, key)) fn.call(null, obj[key], key, obj);
    }
}
/**
 * Accepts varargs expecting each argument to be an object, then
 * immutably merges the properties of each object and returns result.
 *
 * When multiple objects contain the same key the later object in
 * the arguments list will take precedence.
 *
 * Example:
 *
 * ```js
 * var result = merge({foo: 123}, {foo: 456});
 * console.log(result.foo); // outputs 456
 * ```
 *
 * @param {Object} obj1 Object to merge
 * @returns {Object} Result of all merge properties
 */ function merge() {
    var result = {};
    function assignValue(val, key) {
        if (isPlainObject(result[key]) && isPlainObject(val)) result[key] = merge(result[key], val);
        else if (isPlainObject(val)) result[key] = merge({}, val);
        else if (isArray(val)) result[key] = val.slice();
        else result[key] = val;
    }
    for(var i = 0, l = arguments.length; i < l; i++)forEach(arguments[i], assignValue);
    return result;
}
/**
 * Extends object a by mutably adding to it the properties of object b.
 *
 * @param {Object} a The object to be extended
 * @param {Object} b The object to copy properties from
 * @param {Object} thisArg The object to bind function to
 * @return {Object} The resulting value of object a
 */ function extend(a, b, thisArg) {
    forEach(b, function assignValue(val, key) {
        if (thisArg && typeof val === "function") a[key] = bind(val, thisArg);
        else a[key] = val;
    });
    return a;
}
/**
 * Remove byte order marker. This catches EF BB BF (the UTF-8 BOM)
 *
 * @param {string} content with BOM
 * @return {string} content value without BOM
 */ function stripBOM(content) {
    if (content.charCodeAt(0) === 0xFEFF) content = content.slice(1);
    return content;
}
/**
 * Inherit the prototype methods from one constructor into another
 * @param {function} constructor
 * @param {function} superConstructor
 * @param {object} [props]
 * @param {object} [descriptors]
 */ function inherits(constructor, superConstructor, props, descriptors) {
    constructor.prototype = Object.create(superConstructor.prototype, descriptors);
    constructor.prototype.constructor = constructor;
    props && Object.assign(constructor.prototype, props);
}
/**
 * Resolve object with deep prototype chain to a flat object
 * @param {Object} sourceObj source object
 * @param {Object} [destObj]
 * @param {Function} [filter]
 * @returns {Object}
 */ function toFlatObject(sourceObj, destObj, filter) {
    var props;
    var i;
    var prop;
    var merged = {};
    destObj = destObj || {};
    do {
        props = Object.getOwnPropertyNames(sourceObj);
        i = props.length;
        while(i-- > 0){
            prop = props[i];
            if (!merged[prop]) {
                destObj[prop] = sourceObj[prop];
                merged[prop] = true;
            }
        }
        sourceObj = Object.getPrototypeOf(sourceObj);
    }while (sourceObj && (!filter || filter(sourceObj, destObj)) && sourceObj !== Object.prototype);
    return destObj;
}
/*
 * determines whether a string ends with the characters of a specified string
 * @param {String} str
 * @param {String} searchString
 * @param {Number} [position= 0]
 * @returns {boolean}
 */ function endsWith(str, searchString, position) {
    str = String(str);
    if (position === undefined || position > str.length) position = str.length;
    position -= searchString.length;
    var lastIndex = str.indexOf(searchString, position);
    return lastIndex !== -1 && lastIndex === position;
}
/**
 * Returns new array from array like object
 * @param {*} [thing]
 * @returns {Array}
 */ function toArray(thing) {
    if (!thing) return null;
    var i = thing.length;
    if (isUndefined(i)) return null;
    var arr = new Array(i);
    while(i-- > 0)arr[i] = thing[i];
    return arr;
}
// eslint-disable-next-line func-names
var isTypedArray = function(TypedArray) {
    // eslint-disable-next-line func-names
    return function(thing) {
        return TypedArray && thing instanceof TypedArray;
    };
}(typeof Uint8Array !== "undefined" && Object.getPrototypeOf(Uint8Array));
module.exports = {
    isArray: isArray,
    isArrayBuffer: isArrayBuffer,
    isBuffer: isBuffer,
    isFormData: isFormData,
    isArrayBufferView: isArrayBufferView,
    isString: isString,
    isNumber: isNumber,
    isObject: isObject,
    isPlainObject: isPlainObject,
    isUndefined: isUndefined,
    isDate: isDate,
    isFile: isFile,
    isBlob: isBlob,
    isFunction: isFunction,
    isStream: isStream,
    isURLSearchParams: isURLSearchParams,
    isStandardBrowserEnv: isStandardBrowserEnv,
    forEach: forEach,
    merge: merge,
    extend: extend,
    trim: trim,
    stripBOM: stripBOM,
    inherits: inherits,
    toFlatObject: toFlatObject,
    kindOf: kindOf,
    kindOfTest: kindOfTest,
    endsWith: endsWith,
    toArray: toArray,
    isTypedArray: isTypedArray,
    isFileList: isFileList
};

},{"./helpers/bind":"haRQb"}],"haRQb":[function(require,module,exports) {
"use strict";
module.exports = function bind(fn, thisArg) {
    return function wrap() {
        var args = new Array(arguments.length);
        for(var i = 0; i < args.length; i++)args[i] = arguments[i];
        return fn.apply(thisArg, args);
    };
};

},{}],"cpqD8":[function(require,module,exports) {
"use strict";
var utils = require("./../utils");
var buildURL = require("../helpers/buildURL");
var InterceptorManager = require("./InterceptorManager");
var dispatchRequest = require("./dispatchRequest");
var mergeConfig = require("./mergeConfig");
var buildFullPath = require("./buildFullPath");
var validator = require("../helpers/validator");
var validators = validator.validators;
/**
 * Create a new instance of Axios
 *
 * @param {Object} instanceConfig The default config for the instance
 */ function Axios(instanceConfig) {
    this.defaults = instanceConfig;
    this.interceptors = {
        request: new InterceptorManager(),
        response: new InterceptorManager()
    };
}
/**
 * Dispatch a request
 *
 * @param {Object} config The config specific for this request (merged with this.defaults)
 */ Axios.prototype.request = function request(configOrUrl, config) {
    /*eslint no-param-reassign:0*/ // Allow for axios('example/url'[, config]) a la fetch API
    if (typeof configOrUrl === "string") {
        config = config || {};
        config.url = configOrUrl;
    } else config = configOrUrl || {};
    config = mergeConfig(this.defaults, config);
    // Set config.method
    if (config.method) config.method = config.method.toLowerCase();
    else if (this.defaults.method) config.method = this.defaults.method.toLowerCase();
    else config.method = "get";
    var transitional = config.transitional;
    if (transitional !== undefined) validator.assertOptions(transitional, {
        silentJSONParsing: validators.transitional(validators.boolean),
        forcedJSONParsing: validators.transitional(validators.boolean),
        clarifyTimeoutError: validators.transitional(validators.boolean)
    }, false);
    // filter out skipped interceptors
    var requestInterceptorChain = [];
    var synchronousRequestInterceptors = true;
    this.interceptors.request.forEach(function unshiftRequestInterceptors(interceptor) {
        if (typeof interceptor.runWhen === "function" && interceptor.runWhen(config) === false) return;
        synchronousRequestInterceptors = synchronousRequestInterceptors && interceptor.synchronous;
        requestInterceptorChain.unshift(interceptor.fulfilled, interceptor.rejected);
    });
    var responseInterceptorChain = [];
    this.interceptors.response.forEach(function pushResponseInterceptors(interceptor) {
        responseInterceptorChain.push(interceptor.fulfilled, interceptor.rejected);
    });
    var promise;
    if (!synchronousRequestInterceptors) {
        var chain = [
            dispatchRequest,
            undefined
        ];
        Array.prototype.unshift.apply(chain, requestInterceptorChain);
        chain = chain.concat(responseInterceptorChain);
        promise = Promise.resolve(config);
        while(chain.length)promise = promise.then(chain.shift(), chain.shift());
        return promise;
    }
    var newConfig = config;
    while(requestInterceptorChain.length){
        var onFulfilled = requestInterceptorChain.shift();
        var onRejected = requestInterceptorChain.shift();
        try {
            newConfig = onFulfilled(newConfig);
        } catch (error) {
            onRejected(error);
            break;
        }
    }
    try {
        promise = dispatchRequest(newConfig);
    } catch (error) {
        return Promise.reject(error);
    }
    while(responseInterceptorChain.length)promise = promise.then(responseInterceptorChain.shift(), responseInterceptorChain.shift());
    return promise;
};
Axios.prototype.getUri = function getUri(config) {
    config = mergeConfig(this.defaults, config);
    var fullPath = buildFullPath(config.baseURL, config.url);
    return buildURL(fullPath, config.params, config.paramsSerializer);
};
// Provide aliases for supported request methods
utils.forEach([
    "delete",
    "get",
    "head",
    "options"
], function forEachMethodNoData(method) {
    /*eslint func-names:0*/ Axios.prototype[method] = function(url, config) {
        return this.request(mergeConfig(config || {}, {
            method: method,
            url: url,
            data: (config || {}).data
        }));
    };
});
utils.forEach([
    "post",
    "put",
    "patch"
], function forEachMethodWithData(method) {
    /*eslint func-names:0*/ function generateHTTPMethod(isForm) {
        return function httpMethod(url, data, config) {
            return this.request(mergeConfig(config || {}, {
                method: method,
                headers: isForm ? {
                    "Content-Type": "multipart/form-data"
                } : {},
                url: url,
                data: data
            }));
        };
    }
    Axios.prototype[method] = generateHTTPMethod();
    Axios.prototype[method + "Form"] = generateHTTPMethod(true);
});
module.exports = Axios;

},{"./../utils":"5By4s","../helpers/buildURL":"3bwC2","./InterceptorManager":"1VRIM","./dispatchRequest":"6sjJ6","./mergeConfig":"b85oP","./buildFullPath":"1I5TW","../helpers/validator":"9vgkY"}],"3bwC2":[function(require,module,exports) {
"use strict";
var utils = require("./../utils");
function encode(val) {
    return encodeURIComponent(val).replace(/%3A/gi, ":").replace(/%24/g, "$").replace(/%2C/gi, ",").replace(/%20/g, "+").replace(/%5B/gi, "[").replace(/%5D/gi, "]");
}
/**
 * Build a URL by appending params to the end
 *
 * @param {string} url The base of the url (e.g., http://www.google.com)
 * @param {object} [params] The params to be appended
 * @returns {string} The formatted url
 */ module.exports = function buildURL(url, params, paramsSerializer) {
    /*eslint no-param-reassign:0*/ if (!params) return url;
    var serializedParams;
    if (paramsSerializer) serializedParams = paramsSerializer(params);
    else if (utils.isURLSearchParams(params)) serializedParams = params.toString();
    else {
        var parts = [];
        utils.forEach(params, function serialize(val, key) {
            if (val === null || typeof val === "undefined") return;
            if (utils.isArray(val)) key = key + "[]";
            else val = [
                val
            ];
            utils.forEach(val, function parseValue(v) {
                if (utils.isDate(v)) v = v.toISOString();
                else if (utils.isObject(v)) v = JSON.stringify(v);
                parts.push(encode(key) + "=" + encode(v));
            });
        });
        serializedParams = parts.join("&");
    }
    if (serializedParams) {
        var hashmarkIndex = url.indexOf("#");
        if (hashmarkIndex !== -1) url = url.slice(0, hashmarkIndex);
        url += (url.indexOf("?") === -1 ? "?" : "&") + serializedParams;
    }
    return url;
};

},{"./../utils":"5By4s"}],"1VRIM":[function(require,module,exports) {
"use strict";
var utils = require("./../utils");
function InterceptorManager() {
    this.handlers = [];
}
/**
 * Add a new interceptor to the stack
 *
 * @param {Function} fulfilled The function to handle `then` for a `Promise`
 * @param {Function} rejected The function to handle `reject` for a `Promise`
 *
 * @return {Number} An ID used to remove interceptor later
 */ InterceptorManager.prototype.use = function use(fulfilled, rejected, options) {
    this.handlers.push({
        fulfilled: fulfilled,
        rejected: rejected,
        synchronous: options ? options.synchronous : false,
        runWhen: options ? options.runWhen : null
    });
    return this.handlers.length - 1;
};
/**
 * Remove an interceptor from the stack
 *
 * @param {Number} id The ID that was returned by `use`
 */ InterceptorManager.prototype.eject = function eject(id) {
    if (this.handlers[id]) this.handlers[id] = null;
};
/**
 * Iterate over all the registered interceptors
 *
 * This method is particularly useful for skipping over any
 * interceptors that may have become `null` calling `eject`.
 *
 * @param {Function} fn The function to call for each interceptor
 */ InterceptorManager.prototype.forEach = function forEach(fn) {
    utils.forEach(this.handlers, function forEachHandler(h) {
        if (h !== null) fn(h);
    });
};
module.exports = InterceptorManager;

},{"./../utils":"5By4s"}],"6sjJ6":[function(require,module,exports) {
"use strict";
var utils = require("./../utils");
var transformData = require("./transformData");
var isCancel = require("../cancel/isCancel");
var defaults = require("../defaults");
var CanceledError = require("../cancel/CanceledError");
/**
 * Throws a `CanceledError` if cancellation has been requested.
 */ function throwIfCancellationRequested(config) {
    if (config.cancelToken) config.cancelToken.throwIfRequested();
    if (config.signal && config.signal.aborted) throw new CanceledError();
}
/**
 * Dispatch a request to the server using the configured adapter.
 *
 * @param {object} config The config that is to be used for the request
 * @returns {Promise} The Promise to be fulfilled
 */ module.exports = function dispatchRequest(config) {
    throwIfCancellationRequested(config);
    // Ensure headers exist
    config.headers = config.headers || {};
    // Transform request data
    config.data = transformData.call(config, config.data, config.headers, config.transformRequest);
    // Flatten headers
    config.headers = utils.merge(config.headers.common || {}, config.headers[config.method] || {}, config.headers);
    utils.forEach([
        "delete",
        "get",
        "head",
        "post",
        "put",
        "patch",
        "common"
    ], function cleanHeaderConfig(method) {
        delete config.headers[method];
    });
    var adapter = config.adapter || defaults.adapter;
    return adapter(config).then(function onAdapterResolution(response) {
        throwIfCancellationRequested(config);
        // Transform response data
        response.data = transformData.call(config, response.data, response.headers, config.transformResponse);
        return response;
    }, function onAdapterRejection(reason) {
        if (!isCancel(reason)) {
            throwIfCancellationRequested(config);
            // Transform response data
            if (reason && reason.response) reason.response.data = transformData.call(config, reason.response.data, reason.response.headers, config.transformResponse);
        }
        return Promise.reject(reason);
    });
};

},{"./../utils":"5By4s","./transformData":"eRqJY","../cancel/isCancel":"a0VmF","../defaults":"hXfHM","../cancel/CanceledError":"9PwCG"}],"eRqJY":[function(require,module,exports) {
"use strict";
var utils = require("./../utils");
var defaults = require("../defaults");
/**
 * Transform the data for a request or a response
 *
 * @param {Object|String} data The data to be transformed
 * @param {Array} headers The headers for the request or response
 * @param {Array|Function} fns A single function or Array of functions
 * @returns {*} The resulting transformed data
 */ module.exports = function transformData(data, headers, fns) {
    var context = this || defaults;
    /*eslint no-param-reassign:0*/ utils.forEach(fns, function transform(fn) {
        data = fn.call(context, data, headers);
    });
    return data;
};

},{"./../utils":"5By4s","../defaults":"hXfHM"}],"hXfHM":[function(require,module,exports) {
"use strict";
var process = require("process");
var utils = require("../utils");
var normalizeHeaderName = require("../helpers/normalizeHeaderName");
var AxiosError = require("../core/AxiosError");
var transitionalDefaults = require("./transitional");
var toFormData = require("../helpers/toFormData");
var DEFAULT_CONTENT_TYPE = {
    "Content-Type": "application/x-www-form-urlencoded"
};
function setContentTypeIfUnset(headers, value) {
    if (!utils.isUndefined(headers) && utils.isUndefined(headers["Content-Type"])) headers["Content-Type"] = value;
}
function getDefaultAdapter() {
    var adapter;
    if (typeof XMLHttpRequest !== "undefined") // For browsers use XHR adapter
    adapter = require("../adapters/xhr");
    else if (typeof process !== "undefined" && Object.prototype.toString.call(process) === "[object process]") // For node use HTTP adapter
    adapter = require("../adapters/http");
    return adapter;
}
function stringifySafely(rawValue, parser, encoder) {
    if (utils.isString(rawValue)) try {
        (parser || JSON.parse)(rawValue);
        return utils.trim(rawValue);
    } catch (e) {
        if (e.name !== "SyntaxError") throw e;
    }
    return (encoder || JSON.stringify)(rawValue);
}
var defaults = {
    transitional: transitionalDefaults,
    adapter: getDefaultAdapter(),
    transformRequest: [
        function transformRequest(data, headers) {
            normalizeHeaderName(headers, "Accept");
            normalizeHeaderName(headers, "Content-Type");
            if (utils.isFormData(data) || utils.isArrayBuffer(data) || utils.isBuffer(data) || utils.isStream(data) || utils.isFile(data) || utils.isBlob(data)) return data;
            if (utils.isArrayBufferView(data)) return data.buffer;
            if (utils.isURLSearchParams(data)) {
                setContentTypeIfUnset(headers, "application/x-www-form-urlencoded;charset=utf-8");
                return data.toString();
            }
            var isObjectPayload = utils.isObject(data);
            var contentType = headers && headers["Content-Type"];
            var isFileList;
            if ((isFileList = utils.isFileList(data)) || isObjectPayload && contentType === "multipart/form-data") {
                var _FormData = this.env && this.env.FormData;
                return toFormData(isFileList ? {
                    "files[]": data
                } : data, _FormData && new _FormData());
            } else if (isObjectPayload || contentType === "application/json") {
                setContentTypeIfUnset(headers, "application/json");
                return stringifySafely(data);
            }
            return data;
        }
    ],
    transformResponse: [
        function transformResponse(data) {
            var transitional = this.transitional || defaults.transitional;
            var silentJSONParsing = transitional && transitional.silentJSONParsing;
            var forcedJSONParsing = transitional && transitional.forcedJSONParsing;
            var strictJSONParsing = !silentJSONParsing && this.responseType === "json";
            if (strictJSONParsing || forcedJSONParsing && utils.isString(data) && data.length) try {
                return JSON.parse(data);
            } catch (e) {
                if (strictJSONParsing) {
                    if (e.name === "SyntaxError") throw AxiosError.from(e, AxiosError.ERR_BAD_RESPONSE, this, null, this.response);
                    throw e;
                }
            }
            return data;
        }
    ],
    /**
   * A timeout in milliseconds to abort a request. If set to 0 (default) a
   * timeout is not created.
   */ timeout: 0,
    xsrfCookieName: "XSRF-TOKEN",
    xsrfHeaderName: "X-XSRF-TOKEN",
    maxContentLength: -1,
    maxBodyLength: -1,
    env: {
        FormData: require("./env/FormData")
    },
    validateStatus: function validateStatus(status) {
        return status >= 200 && status < 300;
    },
    headers: {
        common: {
            "Accept": "application/json, text/plain, */*"
        }
    }
};
utils.forEach([
    "delete",
    "get",
    "head"
], function forEachMethodNoData(method) {
    defaults.headers[method] = {};
});
utils.forEach([
    "post",
    "put",
    "patch"
], function forEachMethodWithData(method) {
    defaults.headers[method] = utils.merge(DEFAULT_CONTENT_TYPE);
});
module.exports = defaults;

},{"process":"d5jf4","../utils":"5By4s","../helpers/normalizeHeaderName":"adBZo","../core/AxiosError":"3u8Tl","./transitional":"lM32f","../helpers/toFormData":"ajoez","../adapters/xhr":"ldm57","../adapters/http":"ldm57","./env/FormData":"aFlee"}],"d5jf4":[function(require,module,exports) {
// shim for using process in browser
var process = module.exports = {};
// cached from whatever global is present so that test runners that stub it
// don't break things.  But we need to wrap it in a try catch in case it is
// wrapped in strict mode code which doesn't define any globals.  It's inside a
// function because try/catches deoptimize in certain engines.
var cachedSetTimeout;
var cachedClearTimeout;
function defaultSetTimout() {
    throw new Error("setTimeout has not been defined");
}
function defaultClearTimeout() {
    throw new Error("clearTimeout has not been defined");
}
(function() {
    try {
        if (typeof setTimeout === "function") cachedSetTimeout = setTimeout;
        else cachedSetTimeout = defaultSetTimout;
    } catch (e) {
        cachedSetTimeout = defaultSetTimout;
    }
    try {
        if (typeof clearTimeout === "function") cachedClearTimeout = clearTimeout;
        else cachedClearTimeout = defaultClearTimeout;
    } catch (e1) {
        cachedClearTimeout = defaultClearTimeout;
    }
})();
function runTimeout(fun) {
    if (cachedSetTimeout === setTimeout) //normal enviroments in sane situations
    return setTimeout(fun, 0);
    // if setTimeout wasn't available but was latter defined
    if ((cachedSetTimeout === defaultSetTimout || !cachedSetTimeout) && setTimeout) {
        cachedSetTimeout = setTimeout;
        return setTimeout(fun, 0);
    }
    try {
        // when when somebody has screwed with setTimeout but no I.E. maddness
        return cachedSetTimeout(fun, 0);
    } catch (e) {
        try {
            // When we are in I.E. but the script has been evaled so I.E. doesn't trust the global object when called normally
            return cachedSetTimeout.call(null, fun, 0);
        } catch (e) {
            // same as above but when it's a version of I.E. that must have the global object for 'this', hopfully our context correct otherwise it will throw a global error
            return cachedSetTimeout.call(this, fun, 0);
        }
    }
}
function runClearTimeout(marker) {
    if (cachedClearTimeout === clearTimeout) //normal enviroments in sane situations
    return clearTimeout(marker);
    // if clearTimeout wasn't available but was latter defined
    if ((cachedClearTimeout === defaultClearTimeout || !cachedClearTimeout) && clearTimeout) {
        cachedClearTimeout = clearTimeout;
        return clearTimeout(marker);
    }
    try {
        // when when somebody has screwed with setTimeout but no I.E. maddness
        return cachedClearTimeout(marker);
    } catch (e) {
        try {
            // When we are in I.E. but the script has been evaled so I.E. doesn't  trust the global object when called normally
            return cachedClearTimeout.call(null, marker);
        } catch (e) {
            // same as above but when it's a version of I.E. that must have the global object for 'this', hopfully our context correct otherwise it will throw a global error.
            // Some versions of I.E. have different rules for clearTimeout vs setTimeout
            return cachedClearTimeout.call(this, marker);
        }
    }
}
var queue = [];
var draining = false;
var currentQueue;
var queueIndex = -1;
function cleanUpNextTick() {
    if (!draining || !currentQueue) return;
    draining = false;
    if (currentQueue.length) queue = currentQueue.concat(queue);
    else queueIndex = -1;
    if (queue.length) drainQueue();
}
function drainQueue() {
    if (draining) return;
    var timeout = runTimeout(cleanUpNextTick);
    draining = true;
    var len = queue.length;
    while(len){
        currentQueue = queue;
        queue = [];
        while(++queueIndex < len)if (currentQueue) currentQueue[queueIndex].run();
        queueIndex = -1;
        len = queue.length;
    }
    currentQueue = null;
    draining = false;
    runClearTimeout(timeout);
}
process.nextTick = function(fun) {
    var args = new Array(arguments.length - 1);
    if (arguments.length > 1) for(var i = 1; i < arguments.length; i++)args[i - 1] = arguments[i];
    queue.push(new Item(fun, args));
    if (queue.length === 1 && !draining) runTimeout(drainQueue);
};
// v8 likes predictible objects
function Item(fun, array) {
    this.fun = fun;
    this.array = array;
}
Item.prototype.run = function() {
    this.fun.apply(null, this.array);
};
process.title = "browser";
process.browser = true;
process.env = {};
process.argv = [];
process.version = ""; // empty string to avoid regexp issues
process.versions = {};
function noop() {}
process.on = noop;
process.addListener = noop;
process.once = noop;
process.off = noop;
process.removeListener = noop;
process.removeAllListeners = noop;
process.emit = noop;
process.prependListener = noop;
process.prependOnceListener = noop;
process.listeners = function(name) {
    return [];
};
process.binding = function(name) {
    throw new Error("process.binding is not supported");
};
process.cwd = function() {
    return "/";
};
process.chdir = function(dir) {
    throw new Error("process.chdir is not supported");
};
process.umask = function() {
    return 0;
};

},{}],"adBZo":[function(require,module,exports) {
"use strict";
var utils = require("../utils");
module.exports = function normalizeHeaderName(headers, normalizedName) {
    utils.forEach(headers, function processHeader(value, name) {
        if (name !== normalizedName && name.toUpperCase() === normalizedName.toUpperCase()) {
            headers[normalizedName] = value;
            delete headers[name];
        }
    });
};

},{"../utils":"5By4s"}],"3u8Tl":[function(require,module,exports) {
"use strict";
var utils = require("../utils");
/**
 * Create an Error with the specified message, config, error code, request and response.
 *
 * @param {string} message The error message.
 * @param {string} [code] The error code (for example, 'ECONNABORTED').
 * @param {Object} [config] The config.
 * @param {Object} [request] The request.
 * @param {Object} [response] The response.
 * @returns {Error} The created error.
 */ function AxiosError(message, code, config, request, response) {
    Error.call(this);
    this.message = message;
    this.name = "AxiosError";
    code && (this.code = code);
    config && (this.config = config);
    request && (this.request = request);
    response && (this.response = response);
}
utils.inherits(AxiosError, Error, {
    toJSON: function toJSON() {
        return {
            // Standard
            message: this.message,
            name: this.name,
            // Microsoft
            description: this.description,
            number: this.number,
            // Mozilla
            fileName: this.fileName,
            lineNumber: this.lineNumber,
            columnNumber: this.columnNumber,
            stack: this.stack,
            // Axios
            config: this.config,
            code: this.code,
            status: this.response && this.response.status ? this.response.status : null
        };
    }
});
var prototype = AxiosError.prototype;
var descriptors = {};
[
    "ERR_BAD_OPTION_VALUE",
    "ERR_BAD_OPTION",
    "ECONNABORTED",
    "ETIMEDOUT",
    "ERR_NETWORK",
    "ERR_FR_TOO_MANY_REDIRECTS",
    "ERR_DEPRECATED",
    "ERR_BAD_RESPONSE",
    "ERR_BAD_REQUEST",
    "ERR_CANCELED"
].forEach(function(code) {
    descriptors[code] = {
        value: code
    };
});
Object.defineProperties(AxiosError, descriptors);
Object.defineProperty(prototype, "isAxiosError", {
    value: true
});
// eslint-disable-next-line func-names
AxiosError.from = function(error, code, config, request, response, customProps) {
    var axiosError = Object.create(prototype);
    utils.toFlatObject(error, axiosError, function filter(obj) {
        return obj !== Error.prototype;
    });
    AxiosError.call(axiosError, error.message, code, config, request, response);
    axiosError.name = error.name;
    customProps && Object.assign(axiosError, customProps);
    return axiosError;
};
module.exports = AxiosError;

},{"../utils":"5By4s"}],"lM32f":[function(require,module,exports) {
"use strict";
module.exports = {
    silentJSONParsing: true,
    forcedJSONParsing: true,
    clarifyTimeoutError: false
};

},{}],"ajoez":[function(require,module,exports) {
"use strict";
var Buffer = require("buffer").Buffer;
var utils = require("../utils");
/**
 * Convert a data object to FormData
 * @param {Object} obj
 * @param {?Object} [formData]
 * @returns {Object}
 **/ function toFormData(obj, formData) {
    // eslint-disable-next-line no-param-reassign
    formData = formData || new FormData();
    var stack = [];
    function convertValue(value) {
        if (value === null) return "";
        if (utils.isDate(value)) return value.toISOString();
        if (utils.isArrayBuffer(value) || utils.isTypedArray(value)) return typeof Blob === "function" ? new Blob([
            value
        ]) : Buffer.from(value);
        return value;
    }
    function build(data, parentKey) {
        if (utils.isPlainObject(data) || utils.isArray(data)) {
            if (stack.indexOf(data) !== -1) throw Error("Circular reference detected in " + parentKey);
            stack.push(data);
            utils.forEach(data, function each(value, key) {
                if (utils.isUndefined(value)) return;
                var fullKey = parentKey ? parentKey + "." + key : key;
                var arr;
                if (value && !parentKey && typeof value === "object") {
                    if (utils.endsWith(key, "{}")) // eslint-disable-next-line no-param-reassign
                    value = JSON.stringify(value);
                    else if (utils.endsWith(key, "[]") && (arr = utils.toArray(value))) {
                        // eslint-disable-next-line func-names
                        arr.forEach(function(el) {
                            !utils.isUndefined(el) && formData.append(fullKey, convertValue(el));
                        });
                        return;
                    }
                }
                build(value, fullKey);
            });
            stack.pop();
        } else formData.append(parentKey, convertValue(data));
    }
    build(obj);
    return formData;
}
module.exports = toFormData;

},{"buffer":"fCgem","../utils":"5By4s"}],"fCgem":[function(require,module,exports) {
/*!
 * The buffer module from node.js, for the browser.
 *
 * @author   Feross Aboukhadijeh <https://feross.org>
 * @license  MIT
 */ /* eslint-disable no-proto */ "use strict";
const base64 = require("base64-js");
const ieee754 = require("ieee754");
const customInspectSymbol = typeof Symbol === "function" && typeof Symbol["for"] === "function" // eslint-disable-line dot-notation
 ? Symbol["for"]("nodejs.util.inspect.custom") // eslint-disable-line dot-notation
 : null;
exports.Buffer = Buffer;
exports.SlowBuffer = SlowBuffer;
exports.INSPECT_MAX_BYTES = 50;
const K_MAX_LENGTH = 0x7fffffff;
exports.kMaxLength = K_MAX_LENGTH;
/**
 * If `Buffer.TYPED_ARRAY_SUPPORT`:
 *   === true    Use Uint8Array implementation (fastest)
 *   === false   Print warning and recommend using `buffer` v4.x which has an Object
 *               implementation (most compatible, even IE6)
 *
 * Browsers that support typed arrays are IE 10+, Firefox 4+, Chrome 7+, Safari 5.1+,
 * Opera 11.6+, iOS 4.2+.
 *
 * We report that the browser does not support typed arrays if the are not subclassable
 * using __proto__. Firefox 4-29 lacks support for adding new properties to `Uint8Array`
 * (See: https://bugzilla.mozilla.org/show_bug.cgi?id=695438). IE 10 lacks support
 * for __proto__ and has a buggy typed array implementation.
 */ Buffer.TYPED_ARRAY_SUPPORT = typedArraySupport();
if (!Buffer.TYPED_ARRAY_SUPPORT && typeof console !== "undefined" && typeof console.error === "function") console.error("This browser lacks typed array (Uint8Array) support which is required by `buffer` v5.x. Use `buffer` v4.x if you require old browser support.");
function typedArraySupport() {
    // Can typed array instances can be augmented?
    try {
        const arr = new Uint8Array(1);
        const proto = {
            foo: function() {
                return 42;
            }
        };
        Object.setPrototypeOf(proto, Uint8Array.prototype);
        Object.setPrototypeOf(arr, proto);
        return arr.foo() === 42;
    } catch (e) {
        return false;
    }
}
Object.defineProperty(Buffer.prototype, "parent", {
    enumerable: true,
    get: function() {
        if (!Buffer.isBuffer(this)) return undefined;
        return this.buffer;
    }
});
Object.defineProperty(Buffer.prototype, "offset", {
    enumerable: true,
    get: function() {
        if (!Buffer.isBuffer(this)) return undefined;
        return this.byteOffset;
    }
});
function createBuffer(length) {
    if (length > K_MAX_LENGTH) throw new RangeError('The value "' + length + '" is invalid for option "size"');
    // Return an augmented `Uint8Array` instance
    const buf = new Uint8Array(length);
    Object.setPrototypeOf(buf, Buffer.prototype);
    return buf;
}
/**
 * The Buffer constructor returns instances of `Uint8Array` that have their
 * prototype changed to `Buffer.prototype`. Furthermore, `Buffer` is a subclass of
 * `Uint8Array`, so the returned instances will have all the node `Buffer` methods
 * and the `Uint8Array` methods. Square bracket notation works as expected -- it
 * returns a single octet.
 *
 * The `Uint8Array` prototype remains unmodified.
 */ function Buffer(arg, encodingOrOffset, length) {
    // Common case.
    if (typeof arg === "number") {
        if (typeof encodingOrOffset === "string") throw new TypeError('The "string" argument must be of type string. Received type number');
        return allocUnsafe(arg);
    }
    return from(arg, encodingOrOffset, length);
}
Buffer.poolSize = 8192 // not used by this implementation
;
function from(value, encodingOrOffset, length) {
    if (typeof value === "string") return fromString(value, encodingOrOffset);
    if (ArrayBuffer.isView(value)) return fromArrayView(value);
    if (value == null) throw new TypeError("The first argument must be one of type string, Buffer, ArrayBuffer, Array, or Array-like Object. Received type " + typeof value);
    if (isInstance(value, ArrayBuffer) || value && isInstance(value.buffer, ArrayBuffer)) return fromArrayBuffer(value, encodingOrOffset, length);
    if (typeof SharedArrayBuffer !== "undefined" && (isInstance(value, SharedArrayBuffer) || value && isInstance(value.buffer, SharedArrayBuffer))) return fromArrayBuffer(value, encodingOrOffset, length);
    if (typeof value === "number") throw new TypeError('The "value" argument must not be of type number. Received type number');
    const valueOf = value.valueOf && value.valueOf();
    if (valueOf != null && valueOf !== value) return Buffer.from(valueOf, encodingOrOffset, length);
    const b = fromObject(value);
    if (b) return b;
    if (typeof Symbol !== "undefined" && Symbol.toPrimitive != null && typeof value[Symbol.toPrimitive] === "function") return Buffer.from(value[Symbol.toPrimitive]("string"), encodingOrOffset, length);
    throw new TypeError("The first argument must be one of type string, Buffer, ArrayBuffer, Array, or Array-like Object. Received type " + typeof value);
}
/**
 * Functionally equivalent to Buffer(arg, encoding) but throws a TypeError
 * if value is a number.
 * Buffer.from(str[, encoding])
 * Buffer.from(array)
 * Buffer.from(buffer)
 * Buffer.from(arrayBuffer[, byteOffset[, length]])
 **/ Buffer.from = function(value, encodingOrOffset, length) {
    return from(value, encodingOrOffset, length);
};
// Note: Change prototype *after* Buffer.from is defined to workaround Chrome bug:
// https://github.com/feross/buffer/pull/148
Object.setPrototypeOf(Buffer.prototype, Uint8Array.prototype);
Object.setPrototypeOf(Buffer, Uint8Array);
function assertSize(size) {
    if (typeof size !== "number") throw new TypeError('"size" argument must be of type number');
    else if (size < 0) throw new RangeError('The value "' + size + '" is invalid for option "size"');
}
function alloc(size, fill, encoding) {
    assertSize(size);
    if (size <= 0) return createBuffer(size);
    if (fill !== undefined) // Only pay attention to encoding if it's a string. This
    // prevents accidentally sending in a number that would
    // be interpreted as a start offset.
    return typeof encoding === "string" ? createBuffer(size).fill(fill, encoding) : createBuffer(size).fill(fill);
    return createBuffer(size);
}
/**
 * Creates a new filled Buffer instance.
 * alloc(size[, fill[, encoding]])
 **/ Buffer.alloc = function(size, fill, encoding) {
    return alloc(size, fill, encoding);
};
function allocUnsafe(size) {
    assertSize(size);
    return createBuffer(size < 0 ? 0 : checked(size) | 0);
}
/**
 * Equivalent to Buffer(num), by default creates a non-zero-filled Buffer instance.
 * */ Buffer.allocUnsafe = function(size) {
    return allocUnsafe(size);
};
/**
 * Equivalent to SlowBuffer(num), by default creates a non-zero-filled Buffer instance.
 */ Buffer.allocUnsafeSlow = function(size) {
    return allocUnsafe(size);
};
function fromString(string, encoding) {
    if (typeof encoding !== "string" || encoding === "") encoding = "utf8";
    if (!Buffer.isEncoding(encoding)) throw new TypeError("Unknown encoding: " + encoding);
    const length = byteLength(string, encoding) | 0;
    let buf = createBuffer(length);
    const actual = buf.write(string, encoding);
    if (actual !== length) // Writing a hex string, for example, that contains invalid characters will
    // cause everything after the first invalid character to be ignored. (e.g.
    // 'abxxcd' will be treated as 'ab')
    buf = buf.slice(0, actual);
    return buf;
}
function fromArrayLike(array) {
    const length = array.length < 0 ? 0 : checked(array.length) | 0;
    const buf = createBuffer(length);
    for(let i = 0; i < length; i += 1)buf[i] = array[i] & 255;
    return buf;
}
function fromArrayView(arrayView) {
    if (isInstance(arrayView, Uint8Array)) {
        const copy = new Uint8Array(arrayView);
        return fromArrayBuffer(copy.buffer, copy.byteOffset, copy.byteLength);
    }
    return fromArrayLike(arrayView);
}
function fromArrayBuffer(array, byteOffset, length) {
    if (byteOffset < 0 || array.byteLength < byteOffset) throw new RangeError('"offset" is outside of buffer bounds');
    if (array.byteLength < byteOffset + (length || 0)) throw new RangeError('"length" is outside of buffer bounds');
    let buf;
    if (byteOffset === undefined && length === undefined) buf = new Uint8Array(array);
    else if (length === undefined) buf = new Uint8Array(array, byteOffset);
    else buf = new Uint8Array(array, byteOffset, length);
    // Return an augmented `Uint8Array` instance
    Object.setPrototypeOf(buf, Buffer.prototype);
    return buf;
}
function fromObject(obj) {
    if (Buffer.isBuffer(obj)) {
        const len = checked(obj.length) | 0;
        const buf = createBuffer(len);
        if (buf.length === 0) return buf;
        obj.copy(buf, 0, 0, len);
        return buf;
    }
    if (obj.length !== undefined) {
        if (typeof obj.length !== "number" || numberIsNaN(obj.length)) return createBuffer(0);
        return fromArrayLike(obj);
    }
    if (obj.type === "Buffer" && Array.isArray(obj.data)) return fromArrayLike(obj.data);
}
function checked(length) {
    // Note: cannot use `length < K_MAX_LENGTH` here because that fails when
    // length is NaN (which is otherwise coerced to zero.)
    if (length >= K_MAX_LENGTH) throw new RangeError("Attempt to allocate Buffer larger than maximum size: 0x" + K_MAX_LENGTH.toString(16) + " bytes");
    return length | 0;
}
function SlowBuffer(length) {
    if (+length != length) length = 0;
    return Buffer.alloc(+length);
}
Buffer.isBuffer = function isBuffer(b) {
    return b != null && b._isBuffer === true && b !== Buffer.prototype // so Buffer.isBuffer(Buffer.prototype) will be false
    ;
};
Buffer.compare = function compare(a, b) {
    if (isInstance(a, Uint8Array)) a = Buffer.from(a, a.offset, a.byteLength);
    if (isInstance(b, Uint8Array)) b = Buffer.from(b, b.offset, b.byteLength);
    if (!Buffer.isBuffer(a) || !Buffer.isBuffer(b)) throw new TypeError('The "buf1", "buf2" arguments must be one of type Buffer or Uint8Array');
    if (a === b) return 0;
    let x = a.length;
    let y = b.length;
    for(let i = 0, len = Math.min(x, y); i < len; ++i)if (a[i] !== b[i]) {
        x = a[i];
        y = b[i];
        break;
    }
    if (x < y) return -1;
    if (y < x) return 1;
    return 0;
};
Buffer.isEncoding = function isEncoding(encoding) {
    switch(String(encoding).toLowerCase()){
        case "hex":
        case "utf8":
        case "utf-8":
        case "ascii":
        case "latin1":
        case "binary":
        case "base64":
        case "ucs2":
        case "ucs-2":
        case "utf16le":
        case "utf-16le":
            return true;
        default:
            return false;
    }
};
Buffer.concat = function concat(list, length) {
    if (!Array.isArray(list)) throw new TypeError('"list" argument must be an Array of Buffers');
    if (list.length === 0) return Buffer.alloc(0);
    let i;
    if (length === undefined) {
        length = 0;
        for(i = 0; i < list.length; ++i)length += list[i].length;
    }
    const buffer = Buffer.allocUnsafe(length);
    let pos = 0;
    for(i = 0; i < list.length; ++i){
        let buf = list[i];
        if (isInstance(buf, Uint8Array)) {
            if (pos + buf.length > buffer.length) {
                if (!Buffer.isBuffer(buf)) buf = Buffer.from(buf);
                buf.copy(buffer, pos);
            } else Uint8Array.prototype.set.call(buffer, buf, pos);
        } else if (!Buffer.isBuffer(buf)) throw new TypeError('"list" argument must be an Array of Buffers');
        else buf.copy(buffer, pos);
        pos += buf.length;
    }
    return buffer;
};
function byteLength(string, encoding) {
    if (Buffer.isBuffer(string)) return string.length;
    if (ArrayBuffer.isView(string) || isInstance(string, ArrayBuffer)) return string.byteLength;
    if (typeof string !== "string") throw new TypeError('The "string" argument must be one of type string, Buffer, or ArrayBuffer. Received type ' + typeof string);
    const len = string.length;
    const mustMatch = arguments.length > 2 && arguments[2] === true;
    if (!mustMatch && len === 0) return 0;
    // Use a for loop to avoid recursion
    let loweredCase = false;
    for(;;)switch(encoding){
        case "ascii":
        case "latin1":
        case "binary":
            return len;
        case "utf8":
        case "utf-8":
            return utf8ToBytes(string).length;
        case "ucs2":
        case "ucs-2":
        case "utf16le":
        case "utf-16le":
            return len * 2;
        case "hex":
            return len >>> 1;
        case "base64":
            return base64ToBytes(string).length;
        default:
            if (loweredCase) return mustMatch ? -1 : utf8ToBytes(string).length // assume utf8
            ;
            encoding = ("" + encoding).toLowerCase();
            loweredCase = true;
    }
}
Buffer.byteLength = byteLength;
function slowToString(encoding, start, end) {
    let loweredCase = false;
    // No need to verify that "this.length <= MAX_UINT32" since it's a read-only
    // property of a typed array.
    // This behaves neither like String nor Uint8Array in that we set start/end
    // to their upper/lower bounds if the value passed is out of range.
    // undefined is handled specially as per ECMA-262 6th Edition,
    // Section 13.3.3.7 Runtime Semantics: KeyedBindingInitialization.
    if (start === undefined || start < 0) start = 0;
    // Return early if start > this.length. Done here to prevent potential uint32
    // coercion fail below.
    if (start > this.length) return "";
    if (end === undefined || end > this.length) end = this.length;
    if (end <= 0) return "";
    // Force coercion to uint32. This will also coerce falsey/NaN values to 0.
    end >>>= 0;
    start >>>= 0;
    if (end <= start) return "";
    if (!encoding) encoding = "utf8";
    while(true)switch(encoding){
        case "hex":
            return hexSlice(this, start, end);
        case "utf8":
        case "utf-8":
            return utf8Slice(this, start, end);
        case "ascii":
            return asciiSlice(this, start, end);
        case "latin1":
        case "binary":
            return latin1Slice(this, start, end);
        case "base64":
            return base64Slice(this, start, end);
        case "ucs2":
        case "ucs-2":
        case "utf16le":
        case "utf-16le":
            return utf16leSlice(this, start, end);
        default:
            if (loweredCase) throw new TypeError("Unknown encoding: " + encoding);
            encoding = (encoding + "").toLowerCase();
            loweredCase = true;
    }
}
// This property is used by `Buffer.isBuffer` (and the `is-buffer` npm package)
// to detect a Buffer instance. It's not possible to use `instanceof Buffer`
// reliably in a browserify context because there could be multiple different
// copies of the 'buffer' package in use. This method works even for Buffer
// instances that were created from another copy of the `buffer` package.
// See: https://github.com/feross/buffer/issues/154
Buffer.prototype._isBuffer = true;
function swap(b, n, m) {
    const i = b[n];
    b[n] = b[m];
    b[m] = i;
}
Buffer.prototype.swap16 = function swap16() {
    const len = this.length;
    if (len % 2 !== 0) throw new RangeError("Buffer size must be a multiple of 16-bits");
    for(let i = 0; i < len; i += 2)swap(this, i, i + 1);
    return this;
};
Buffer.prototype.swap32 = function swap32() {
    const len = this.length;
    if (len % 4 !== 0) throw new RangeError("Buffer size must be a multiple of 32-bits");
    for(let i = 0; i < len; i += 4){
        swap(this, i, i + 3);
        swap(this, i + 1, i + 2);
    }
    return this;
};
Buffer.prototype.swap64 = function swap64() {
    const len = this.length;
    if (len % 8 !== 0) throw new RangeError("Buffer size must be a multiple of 64-bits");
    for(let i = 0; i < len; i += 8){
        swap(this, i, i + 7);
        swap(this, i + 1, i + 6);
        swap(this, i + 2, i + 5);
        swap(this, i + 3, i + 4);
    }
    return this;
};
Buffer.prototype.toString = function toString() {
    const length = this.length;
    if (length === 0) return "";
    if (arguments.length === 0) return utf8Slice(this, 0, length);
    return slowToString.apply(this, arguments);
};
Buffer.prototype.toLocaleString = Buffer.prototype.toString;
Buffer.prototype.equals = function equals(b) {
    if (!Buffer.isBuffer(b)) throw new TypeError("Argument must be a Buffer");
    if (this === b) return true;
    return Buffer.compare(this, b) === 0;
};
Buffer.prototype.inspect = function inspect() {
    let str = "";
    const max = exports.INSPECT_MAX_BYTES;
    str = this.toString("hex", 0, max).replace(/(.{2})/g, "$1 ").trim();
    if (this.length > max) str += " ... ";
    return "<Buffer " + str + ">";
};
if (customInspectSymbol) Buffer.prototype[customInspectSymbol] = Buffer.prototype.inspect;
Buffer.prototype.compare = function compare(target, start, end, thisStart, thisEnd) {
    if (isInstance(target, Uint8Array)) target = Buffer.from(target, target.offset, target.byteLength);
    if (!Buffer.isBuffer(target)) throw new TypeError('The "target" argument must be one of type Buffer or Uint8Array. Received type ' + typeof target);
    if (start === undefined) start = 0;
    if (end === undefined) end = target ? target.length : 0;
    if (thisStart === undefined) thisStart = 0;
    if (thisEnd === undefined) thisEnd = this.length;
    if (start < 0 || end > target.length || thisStart < 0 || thisEnd > this.length) throw new RangeError("out of range index");
    if (thisStart >= thisEnd && start >= end) return 0;
    if (thisStart >= thisEnd) return -1;
    if (start >= end) return 1;
    start >>>= 0;
    end >>>= 0;
    thisStart >>>= 0;
    thisEnd >>>= 0;
    if (this === target) return 0;
    let x = thisEnd - thisStart;
    let y = end - start;
    const len = Math.min(x, y);
    const thisCopy = this.slice(thisStart, thisEnd);
    const targetCopy = target.slice(start, end);
    for(let i = 0; i < len; ++i)if (thisCopy[i] !== targetCopy[i]) {
        x = thisCopy[i];
        y = targetCopy[i];
        break;
    }
    if (x < y) return -1;
    if (y < x) return 1;
    return 0;
};
// Finds either the first index of `val` in `buffer` at offset >= `byteOffset`,
// OR the last index of `val` in `buffer` at offset <= `byteOffset`.
//
// Arguments:
// - buffer - a Buffer to search
// - val - a string, Buffer, or number
// - byteOffset - an index into `buffer`; will be clamped to an int32
// - encoding - an optional encoding, relevant is val is a string
// - dir - true for indexOf, false for lastIndexOf
function bidirectionalIndexOf(buffer, val, byteOffset, encoding, dir) {
    // Empty buffer means no match
    if (buffer.length === 0) return -1;
    // Normalize byteOffset
    if (typeof byteOffset === "string") {
        encoding = byteOffset;
        byteOffset = 0;
    } else if (byteOffset > 0x7fffffff) byteOffset = 0x7fffffff;
    else if (byteOffset < -2147483648) byteOffset = -2147483648;
    byteOffset = +byteOffset // Coerce to Number.
    ;
    if (numberIsNaN(byteOffset)) // byteOffset: it it's undefined, null, NaN, "foo", etc, search whole buffer
    byteOffset = dir ? 0 : buffer.length - 1;
    // Normalize byteOffset: negative offsets start from the end of the buffer
    if (byteOffset < 0) byteOffset = buffer.length + byteOffset;
    if (byteOffset >= buffer.length) {
        if (dir) return -1;
        else byteOffset = buffer.length - 1;
    } else if (byteOffset < 0) {
        if (dir) byteOffset = 0;
        else return -1;
    }
    // Normalize val
    if (typeof val === "string") val = Buffer.from(val, encoding);
    // Finally, search either indexOf (if dir is true) or lastIndexOf
    if (Buffer.isBuffer(val)) {
        // Special case: looking for empty string/buffer always fails
        if (val.length === 0) return -1;
        return arrayIndexOf(buffer, val, byteOffset, encoding, dir);
    } else if (typeof val === "number") {
        val = val & 0xFF // Search for a byte value [0-255]
        ;
        if (typeof Uint8Array.prototype.indexOf === "function") {
            if (dir) return Uint8Array.prototype.indexOf.call(buffer, val, byteOffset);
            else return Uint8Array.prototype.lastIndexOf.call(buffer, val, byteOffset);
        }
        return arrayIndexOf(buffer, [
            val
        ], byteOffset, encoding, dir);
    }
    throw new TypeError("val must be string, number or Buffer");
}
function arrayIndexOf(arr, val, byteOffset, encoding, dir) {
    let indexSize = 1;
    let arrLength = arr.length;
    let valLength = val.length;
    if (encoding !== undefined) {
        encoding = String(encoding).toLowerCase();
        if (encoding === "ucs2" || encoding === "ucs-2" || encoding === "utf16le" || encoding === "utf-16le") {
            if (arr.length < 2 || val.length < 2) return -1;
            indexSize = 2;
            arrLength /= 2;
            valLength /= 2;
            byteOffset /= 2;
        }
    }
    function read(buf, i) {
        if (indexSize === 1) return buf[i];
        else return buf.readUInt16BE(i * indexSize);
    }
    let i1;
    if (dir) {
        let foundIndex = -1;
        for(i1 = byteOffset; i1 < arrLength; i1++)if (read(arr, i1) === read(val, foundIndex === -1 ? 0 : i1 - foundIndex)) {
            if (foundIndex === -1) foundIndex = i1;
            if (i1 - foundIndex + 1 === valLength) return foundIndex * indexSize;
        } else {
            if (foundIndex !== -1) i1 -= i1 - foundIndex;
            foundIndex = -1;
        }
    } else {
        if (byteOffset + valLength > arrLength) byteOffset = arrLength - valLength;
        for(i1 = byteOffset; i1 >= 0; i1--){
            let found = true;
            for(let j = 0; j < valLength; j++)if (read(arr, i1 + j) !== read(val, j)) {
                found = false;
                break;
            }
            if (found) return i1;
        }
    }
    return -1;
}
Buffer.prototype.includes = function includes(val, byteOffset, encoding) {
    return this.indexOf(val, byteOffset, encoding) !== -1;
};
Buffer.prototype.indexOf = function indexOf(val, byteOffset, encoding) {
    return bidirectionalIndexOf(this, val, byteOffset, encoding, true);
};
Buffer.prototype.lastIndexOf = function lastIndexOf(val, byteOffset, encoding) {
    return bidirectionalIndexOf(this, val, byteOffset, encoding, false);
};
function hexWrite(buf, string, offset, length) {
    offset = Number(offset) || 0;
    const remaining = buf.length - offset;
    if (!length) length = remaining;
    else {
        length = Number(length);
        if (length > remaining) length = remaining;
    }
    const strLen = string.length;
    if (length > strLen / 2) length = strLen / 2;
    let i;
    for(i = 0; i < length; ++i){
        const parsed = parseInt(string.substr(i * 2, 2), 16);
        if (numberIsNaN(parsed)) return i;
        buf[offset + i] = parsed;
    }
    return i;
}
function utf8Write(buf, string, offset, length) {
    return blitBuffer(utf8ToBytes(string, buf.length - offset), buf, offset, length);
}
function asciiWrite(buf, string, offset, length) {
    return blitBuffer(asciiToBytes(string), buf, offset, length);
}
function base64Write(buf, string, offset, length) {
    return blitBuffer(base64ToBytes(string), buf, offset, length);
}
function ucs2Write(buf, string, offset, length) {
    return blitBuffer(utf16leToBytes(string, buf.length - offset), buf, offset, length);
}
Buffer.prototype.write = function write(string, offset, length, encoding) {
    // Buffer#write(string)
    if (offset === undefined) {
        encoding = "utf8";
        length = this.length;
        offset = 0;
    // Buffer#write(string, encoding)
    } else if (length === undefined && typeof offset === "string") {
        encoding = offset;
        length = this.length;
        offset = 0;
    // Buffer#write(string, offset[, length][, encoding])
    } else if (isFinite(offset)) {
        offset = offset >>> 0;
        if (isFinite(length)) {
            length = length >>> 0;
            if (encoding === undefined) encoding = "utf8";
        } else {
            encoding = length;
            length = undefined;
        }
    } else throw new Error("Buffer.write(string, encoding, offset[, length]) is no longer supported");
    const remaining = this.length - offset;
    if (length === undefined || length > remaining) length = remaining;
    if (string.length > 0 && (length < 0 || offset < 0) || offset > this.length) throw new RangeError("Attempt to write outside buffer bounds");
    if (!encoding) encoding = "utf8";
    let loweredCase = false;
    for(;;)switch(encoding){
        case "hex":
            return hexWrite(this, string, offset, length);
        case "utf8":
        case "utf-8":
            return utf8Write(this, string, offset, length);
        case "ascii":
        case "latin1":
        case "binary":
            return asciiWrite(this, string, offset, length);
        case "base64":
            // Warning: maxLength not taken into account in base64Write
            return base64Write(this, string, offset, length);
        case "ucs2":
        case "ucs-2":
        case "utf16le":
        case "utf-16le":
            return ucs2Write(this, string, offset, length);
        default:
            if (loweredCase) throw new TypeError("Unknown encoding: " + encoding);
            encoding = ("" + encoding).toLowerCase();
            loweredCase = true;
    }
};
Buffer.prototype.toJSON = function toJSON() {
    return {
        type: "Buffer",
        data: Array.prototype.slice.call(this._arr || this, 0)
    };
};
function base64Slice(buf, start, end) {
    if (start === 0 && end === buf.length) return base64.fromByteArray(buf);
    else return base64.fromByteArray(buf.slice(start, end));
}
function utf8Slice(buf, start, end) {
    end = Math.min(buf.length, end);
    const res = [];
    let i = start;
    while(i < end){
        const firstByte = buf[i];
        let codePoint = null;
        let bytesPerSequence = firstByte > 0xEF ? 4 : firstByte > 0xDF ? 3 : firstByte > 0xBF ? 2 : 1;
        if (i + bytesPerSequence <= end) {
            let secondByte, thirdByte, fourthByte, tempCodePoint;
            switch(bytesPerSequence){
                case 1:
                    if (firstByte < 0x80) codePoint = firstByte;
                    break;
                case 2:
                    secondByte = buf[i + 1];
                    if ((secondByte & 0xC0) === 0x80) {
                        tempCodePoint = (firstByte & 0x1F) << 0x6 | secondByte & 0x3F;
                        if (tempCodePoint > 0x7F) codePoint = tempCodePoint;
                    }
                    break;
                case 3:
                    secondByte = buf[i + 1];
                    thirdByte = buf[i + 2];
                    if ((secondByte & 0xC0) === 0x80 && (thirdByte & 0xC0) === 0x80) {
                        tempCodePoint = (firstByte & 0xF) << 0xC | (secondByte & 0x3F) << 0x6 | thirdByte & 0x3F;
                        if (tempCodePoint > 0x7FF && (tempCodePoint < 0xD800 || tempCodePoint > 0xDFFF)) codePoint = tempCodePoint;
                    }
                    break;
                case 4:
                    secondByte = buf[i + 1];
                    thirdByte = buf[i + 2];
                    fourthByte = buf[i + 3];
                    if ((secondByte & 0xC0) === 0x80 && (thirdByte & 0xC0) === 0x80 && (fourthByte & 0xC0) === 0x80) {
                        tempCodePoint = (firstByte & 0xF) << 0x12 | (secondByte & 0x3F) << 0xC | (thirdByte & 0x3F) << 0x6 | fourthByte & 0x3F;
                        if (tempCodePoint > 0xFFFF && tempCodePoint < 0x110000) codePoint = tempCodePoint;
                    }
            }
        }
        if (codePoint === null) {
            // we did not generate a valid codePoint so insert a
            // replacement char (U+FFFD) and advance only 1 byte
            codePoint = 0xFFFD;
            bytesPerSequence = 1;
        } else if (codePoint > 0xFFFF) {
            // encode to utf16 (surrogate pair dance)
            codePoint -= 0x10000;
            res.push(codePoint >>> 10 & 0x3FF | 0xD800);
            codePoint = 0xDC00 | codePoint & 0x3FF;
        }
        res.push(codePoint);
        i += bytesPerSequence;
    }
    return decodeCodePointsArray(res);
}
// Based on http://stackoverflow.com/a/22747272/680742, the browser with
// the lowest limit is Chrome, with 0x10000 args.
// We go 1 magnitude less, for safety
const MAX_ARGUMENTS_LENGTH = 0x1000;
function decodeCodePointsArray(codePoints) {
    const len = codePoints.length;
    if (len <= MAX_ARGUMENTS_LENGTH) return String.fromCharCode.apply(String, codePoints) // avoid extra slice()
    ;
    // Decode in chunks to avoid "call stack size exceeded".
    let res = "";
    let i = 0;
    while(i < len)res += String.fromCharCode.apply(String, codePoints.slice(i, i += MAX_ARGUMENTS_LENGTH));
    return res;
}
function asciiSlice(buf, start, end) {
    let ret = "";
    end = Math.min(buf.length, end);
    for(let i = start; i < end; ++i)ret += String.fromCharCode(buf[i] & 0x7F);
    return ret;
}
function latin1Slice(buf, start, end) {
    let ret = "";
    end = Math.min(buf.length, end);
    for(let i = start; i < end; ++i)ret += String.fromCharCode(buf[i]);
    return ret;
}
function hexSlice(buf, start, end) {
    const len = buf.length;
    if (!start || start < 0) start = 0;
    if (!end || end < 0 || end > len) end = len;
    let out = "";
    for(let i = start; i < end; ++i)out += hexSliceLookupTable[buf[i]];
    return out;
}
function utf16leSlice(buf, start, end) {
    const bytes = buf.slice(start, end);
    let res = "";
    // If bytes.length is odd, the last 8 bits must be ignored (same as node.js)
    for(let i = 0; i < bytes.length - 1; i += 2)res += String.fromCharCode(bytes[i] + bytes[i + 1] * 256);
    return res;
}
Buffer.prototype.slice = function slice(start, end) {
    const len = this.length;
    start = ~~start;
    end = end === undefined ? len : ~~end;
    if (start < 0) {
        start += len;
        if (start < 0) start = 0;
    } else if (start > len) start = len;
    if (end < 0) {
        end += len;
        if (end < 0) end = 0;
    } else if (end > len) end = len;
    if (end < start) end = start;
    const newBuf = this.subarray(start, end);
    // Return an augmented `Uint8Array` instance
    Object.setPrototypeOf(newBuf, Buffer.prototype);
    return newBuf;
};
/*
 * Need to make sure that buffer isn't trying to write out of bounds.
 */ function checkOffset(offset, ext, length) {
    if (offset % 1 !== 0 || offset < 0) throw new RangeError("offset is not uint");
    if (offset + ext > length) throw new RangeError("Trying to access beyond buffer length");
}
Buffer.prototype.readUintLE = Buffer.prototype.readUIntLE = function readUIntLE(offset, byteLength1, noAssert) {
    offset = offset >>> 0;
    byteLength1 = byteLength1 >>> 0;
    if (!noAssert) checkOffset(offset, byteLength1, this.length);
    let val = this[offset];
    let mul = 1;
    let i = 0;
    while(++i < byteLength1 && (mul *= 0x100))val += this[offset + i] * mul;
    return val;
};
Buffer.prototype.readUintBE = Buffer.prototype.readUIntBE = function readUIntBE(offset, byteLength2, noAssert) {
    offset = offset >>> 0;
    byteLength2 = byteLength2 >>> 0;
    if (!noAssert) checkOffset(offset, byteLength2, this.length);
    let val = this[offset + --byteLength2];
    let mul = 1;
    while(byteLength2 > 0 && (mul *= 0x100))val += this[offset + --byteLength2] * mul;
    return val;
};
Buffer.prototype.readUint8 = Buffer.prototype.readUInt8 = function readUInt8(offset, noAssert) {
    offset = offset >>> 0;
    if (!noAssert) checkOffset(offset, 1, this.length);
    return this[offset];
};
Buffer.prototype.readUint16LE = Buffer.prototype.readUInt16LE = function readUInt16LE(offset, noAssert) {
    offset = offset >>> 0;
    if (!noAssert) checkOffset(offset, 2, this.length);
    return this[offset] | this[offset + 1] << 8;
};
Buffer.prototype.readUint16BE = Buffer.prototype.readUInt16BE = function readUInt16BE(offset, noAssert) {
    offset = offset >>> 0;
    if (!noAssert) checkOffset(offset, 2, this.length);
    return this[offset] << 8 | this[offset + 1];
};
Buffer.prototype.readUint32LE = Buffer.prototype.readUInt32LE = function readUInt32LE(offset, noAssert) {
    offset = offset >>> 0;
    if (!noAssert) checkOffset(offset, 4, this.length);
    return (this[offset] | this[offset + 1] << 8 | this[offset + 2] << 16) + this[offset + 3] * 0x1000000;
};
Buffer.prototype.readUint32BE = Buffer.prototype.readUInt32BE = function readUInt32BE(offset, noAssert) {
    offset = offset >>> 0;
    if (!noAssert) checkOffset(offset, 4, this.length);
    return this[offset] * 0x1000000 + (this[offset + 1] << 16 | this[offset + 2] << 8 | this[offset + 3]);
};
Buffer.prototype.readBigUInt64LE = defineBigIntMethod(function readBigUInt64LE(offset) {
    offset = offset >>> 0;
    validateNumber(offset, "offset");
    const first = this[offset];
    const last = this[offset + 7];
    if (first === undefined || last === undefined) boundsError(offset, this.length - 8);
    const lo = first + this[++offset] * 256 + this[++offset] * 65536 + this[++offset] * 2 ** 24;
    const hi = this[++offset] + this[++offset] * 256 + this[++offset] * 65536 + last * 2 ** 24;
    return BigInt(lo) + (BigInt(hi) << BigInt(32));
});
Buffer.prototype.readBigUInt64BE = defineBigIntMethod(function readBigUInt64BE(offset) {
    offset = offset >>> 0;
    validateNumber(offset, "offset");
    const first = this[offset];
    const last = this[offset + 7];
    if (first === undefined || last === undefined) boundsError(offset, this.length - 8);
    const hi = first * 2 ** 24 + this[++offset] * 65536 + this[++offset] * 256 + this[++offset];
    const lo = this[++offset] * 2 ** 24 + this[++offset] * 65536 + this[++offset] * 256 + last;
    return (BigInt(hi) << BigInt(32)) + BigInt(lo);
});
Buffer.prototype.readIntLE = function readIntLE(offset, byteLength3, noAssert) {
    offset = offset >>> 0;
    byteLength3 = byteLength3 >>> 0;
    if (!noAssert) checkOffset(offset, byteLength3, this.length);
    let val = this[offset];
    let mul = 1;
    let i = 0;
    while(++i < byteLength3 && (mul *= 0x100))val += this[offset + i] * mul;
    mul *= 0x80;
    if (val >= mul) val -= Math.pow(2, 8 * byteLength3);
    return val;
};
Buffer.prototype.readIntBE = function readIntBE(offset, byteLength4, noAssert) {
    offset = offset >>> 0;
    byteLength4 = byteLength4 >>> 0;
    if (!noAssert) checkOffset(offset, byteLength4, this.length);
    let i = byteLength4;
    let mul = 1;
    let val = this[offset + --i];
    while(i > 0 && (mul *= 0x100))val += this[offset + --i] * mul;
    mul *= 0x80;
    if (val >= mul) val -= Math.pow(2, 8 * byteLength4);
    return val;
};
Buffer.prototype.readInt8 = function readInt8(offset, noAssert) {
    offset = offset >>> 0;
    if (!noAssert) checkOffset(offset, 1, this.length);
    if (!(this[offset] & 0x80)) return this[offset];
    return (0xff - this[offset] + 1) * -1;
};
Buffer.prototype.readInt16LE = function readInt16LE(offset, noAssert) {
    offset = offset >>> 0;
    if (!noAssert) checkOffset(offset, 2, this.length);
    const val = this[offset] | this[offset + 1] << 8;
    return val & 0x8000 ? val | 0xFFFF0000 : val;
};
Buffer.prototype.readInt16BE = function readInt16BE(offset, noAssert) {
    offset = offset >>> 0;
    if (!noAssert) checkOffset(offset, 2, this.length);
    const val = this[offset + 1] | this[offset] << 8;
    return val & 0x8000 ? val | 0xFFFF0000 : val;
};
Buffer.prototype.readInt32LE = function readInt32LE(offset, noAssert) {
    offset = offset >>> 0;
    if (!noAssert) checkOffset(offset, 4, this.length);
    return this[offset] | this[offset + 1] << 8 | this[offset + 2] << 16 | this[offset + 3] << 24;
};
Buffer.prototype.readInt32BE = function readInt32BE(offset, noAssert) {
    offset = offset >>> 0;
    if (!noAssert) checkOffset(offset, 4, this.length);
    return this[offset] << 24 | this[offset + 1] << 16 | this[offset + 2] << 8 | this[offset + 3];
};
Buffer.prototype.readBigInt64LE = defineBigIntMethod(function readBigInt64LE(offset) {
    offset = offset >>> 0;
    validateNumber(offset, "offset");
    const first = this[offset];
    const last = this[offset + 7];
    if (first === undefined || last === undefined) boundsError(offset, this.length - 8);
    const val = this[offset + 4] + this[offset + 5] * 256 + this[offset + 6] * 65536 + (last << 24 // Overflow
    );
    return (BigInt(val) << BigInt(32)) + BigInt(first + this[++offset] * 256 + this[++offset] * 65536 + this[++offset] * 2 ** 24);
});
Buffer.prototype.readBigInt64BE = defineBigIntMethod(function readBigInt64BE(offset) {
    offset = offset >>> 0;
    validateNumber(offset, "offset");
    const first = this[offset];
    const last = this[offset + 7];
    if (first === undefined || last === undefined) boundsError(offset, this.length - 8);
    const val = (first << 24) + this[++offset] * 65536 + this[++offset] * 256 + this[++offset];
    return (BigInt(val) << BigInt(32)) + BigInt(this[++offset] * 2 ** 24 + this[++offset] * 65536 + this[++offset] * 256 + last);
});
Buffer.prototype.readFloatLE = function readFloatLE(offset, noAssert) {
    offset = offset >>> 0;
    if (!noAssert) checkOffset(offset, 4, this.length);
    return ieee754.read(this, offset, true, 23, 4);
};
Buffer.prototype.readFloatBE = function readFloatBE(offset, noAssert) {
    offset = offset >>> 0;
    if (!noAssert) checkOffset(offset, 4, this.length);
    return ieee754.read(this, offset, false, 23, 4);
};
Buffer.prototype.readDoubleLE = function readDoubleLE(offset, noAssert) {
    offset = offset >>> 0;
    if (!noAssert) checkOffset(offset, 8, this.length);
    return ieee754.read(this, offset, true, 52, 8);
};
Buffer.prototype.readDoubleBE = function readDoubleBE(offset, noAssert) {
    offset = offset >>> 0;
    if (!noAssert) checkOffset(offset, 8, this.length);
    return ieee754.read(this, offset, false, 52, 8);
};
function checkInt(buf, value, offset, ext, max, min) {
    if (!Buffer.isBuffer(buf)) throw new TypeError('"buffer" argument must be a Buffer instance');
    if (value > max || value < min) throw new RangeError('"value" argument is out of bounds');
    if (offset + ext > buf.length) throw new RangeError("Index out of range");
}
Buffer.prototype.writeUintLE = Buffer.prototype.writeUIntLE = function writeUIntLE(value, offset, byteLength5, noAssert) {
    value = +value;
    offset = offset >>> 0;
    byteLength5 = byteLength5 >>> 0;
    if (!noAssert) {
        const maxBytes = Math.pow(2, 8 * byteLength5) - 1;
        checkInt(this, value, offset, byteLength5, maxBytes, 0);
    }
    let mul = 1;
    let i = 0;
    this[offset] = value & 0xFF;
    while(++i < byteLength5 && (mul *= 0x100))this[offset + i] = value / mul & 0xFF;
    return offset + byteLength5;
};
Buffer.prototype.writeUintBE = Buffer.prototype.writeUIntBE = function writeUIntBE(value, offset, byteLength6, noAssert) {
    value = +value;
    offset = offset >>> 0;
    byteLength6 = byteLength6 >>> 0;
    if (!noAssert) {
        const maxBytes = Math.pow(2, 8 * byteLength6) - 1;
        checkInt(this, value, offset, byteLength6, maxBytes, 0);
    }
    let i = byteLength6 - 1;
    let mul = 1;
    this[offset + i] = value & 0xFF;
    while(--i >= 0 && (mul *= 0x100))this[offset + i] = value / mul & 0xFF;
    return offset + byteLength6;
};
Buffer.prototype.writeUint8 = Buffer.prototype.writeUInt8 = function writeUInt8(value, offset, noAssert) {
    value = +value;
    offset = offset >>> 0;
    if (!noAssert) checkInt(this, value, offset, 1, 0xff, 0);
    this[offset] = value & 0xff;
    return offset + 1;
};
Buffer.prototype.writeUint16LE = Buffer.prototype.writeUInt16LE = function writeUInt16LE(value, offset, noAssert) {
    value = +value;
    offset = offset >>> 0;
    if (!noAssert) checkInt(this, value, offset, 2, 0xffff, 0);
    this[offset] = value & 0xff;
    this[offset + 1] = value >>> 8;
    return offset + 2;
};
Buffer.prototype.writeUint16BE = Buffer.prototype.writeUInt16BE = function writeUInt16BE(value, offset, noAssert) {
    value = +value;
    offset = offset >>> 0;
    if (!noAssert) checkInt(this, value, offset, 2, 0xffff, 0);
    this[offset] = value >>> 8;
    this[offset + 1] = value & 0xff;
    return offset + 2;
};
Buffer.prototype.writeUint32LE = Buffer.prototype.writeUInt32LE = function writeUInt32LE(value, offset, noAssert) {
    value = +value;
    offset = offset >>> 0;
    if (!noAssert) checkInt(this, value, offset, 4, 0xffffffff, 0);
    this[offset + 3] = value >>> 24;
    this[offset + 2] = value >>> 16;
    this[offset + 1] = value >>> 8;
    this[offset] = value & 0xff;
    return offset + 4;
};
Buffer.prototype.writeUint32BE = Buffer.prototype.writeUInt32BE = function writeUInt32BE(value, offset, noAssert) {
    value = +value;
    offset = offset >>> 0;
    if (!noAssert) checkInt(this, value, offset, 4, 0xffffffff, 0);
    this[offset] = value >>> 24;
    this[offset + 1] = value >>> 16;
    this[offset + 2] = value >>> 8;
    this[offset + 3] = value & 0xff;
    return offset + 4;
};
function wrtBigUInt64LE(buf, value, offset, min, max) {
    checkIntBI(value, min, max, buf, offset, 7);
    let lo = Number(value & BigInt(0xffffffff));
    buf[offset++] = lo;
    lo = lo >> 8;
    buf[offset++] = lo;
    lo = lo >> 8;
    buf[offset++] = lo;
    lo = lo >> 8;
    buf[offset++] = lo;
    let hi = Number(value >> BigInt(32) & BigInt(0xffffffff));
    buf[offset++] = hi;
    hi = hi >> 8;
    buf[offset++] = hi;
    hi = hi >> 8;
    buf[offset++] = hi;
    hi = hi >> 8;
    buf[offset++] = hi;
    return offset;
}
function wrtBigUInt64BE(buf, value, offset, min, max) {
    checkIntBI(value, min, max, buf, offset, 7);
    let lo = Number(value & BigInt(0xffffffff));
    buf[offset + 7] = lo;
    lo = lo >> 8;
    buf[offset + 6] = lo;
    lo = lo >> 8;
    buf[offset + 5] = lo;
    lo = lo >> 8;
    buf[offset + 4] = lo;
    let hi = Number(value >> BigInt(32) & BigInt(0xffffffff));
    buf[offset + 3] = hi;
    hi = hi >> 8;
    buf[offset + 2] = hi;
    hi = hi >> 8;
    buf[offset + 1] = hi;
    hi = hi >> 8;
    buf[offset] = hi;
    return offset + 8;
}
Buffer.prototype.writeBigUInt64LE = defineBigIntMethod(function writeBigUInt64LE(value, offset = 0) {
    return wrtBigUInt64LE(this, value, offset, BigInt(0), BigInt("0xffffffffffffffff"));
});
Buffer.prototype.writeBigUInt64BE = defineBigIntMethod(function writeBigUInt64BE(value, offset = 0) {
    return wrtBigUInt64BE(this, value, offset, BigInt(0), BigInt("0xffffffffffffffff"));
});
Buffer.prototype.writeIntLE = function writeIntLE(value, offset, byteLength7, noAssert) {
    value = +value;
    offset = offset >>> 0;
    if (!noAssert) {
        const limit = Math.pow(2, 8 * byteLength7 - 1);
        checkInt(this, value, offset, byteLength7, limit - 1, -limit);
    }
    let i = 0;
    let mul = 1;
    let sub = 0;
    this[offset] = value & 0xFF;
    while(++i < byteLength7 && (mul *= 0x100)){
        if (value < 0 && sub === 0 && this[offset + i - 1] !== 0) sub = 1;
        this[offset + i] = (value / mul >> 0) - sub & 0xFF;
    }
    return offset + byteLength7;
};
Buffer.prototype.writeIntBE = function writeIntBE(value, offset, byteLength8, noAssert) {
    value = +value;
    offset = offset >>> 0;
    if (!noAssert) {
        const limit = Math.pow(2, 8 * byteLength8 - 1);
        checkInt(this, value, offset, byteLength8, limit - 1, -limit);
    }
    let i = byteLength8 - 1;
    let mul = 1;
    let sub = 0;
    this[offset + i] = value & 0xFF;
    while(--i >= 0 && (mul *= 0x100)){
        if (value < 0 && sub === 0 && this[offset + i + 1] !== 0) sub = 1;
        this[offset + i] = (value / mul >> 0) - sub & 0xFF;
    }
    return offset + byteLength8;
};
Buffer.prototype.writeInt8 = function writeInt8(value, offset, noAssert) {
    value = +value;
    offset = offset >>> 0;
    if (!noAssert) checkInt(this, value, offset, 1, 0x7f, -128);
    if (value < 0) value = 0xff + value + 1;
    this[offset] = value & 0xff;
    return offset + 1;
};
Buffer.prototype.writeInt16LE = function writeInt16LE(value, offset, noAssert) {
    value = +value;
    offset = offset >>> 0;
    if (!noAssert) checkInt(this, value, offset, 2, 0x7fff, -32768);
    this[offset] = value & 0xff;
    this[offset + 1] = value >>> 8;
    return offset + 2;
};
Buffer.prototype.writeInt16BE = function writeInt16BE(value, offset, noAssert) {
    value = +value;
    offset = offset >>> 0;
    if (!noAssert) checkInt(this, value, offset, 2, 0x7fff, -32768);
    this[offset] = value >>> 8;
    this[offset + 1] = value & 0xff;
    return offset + 2;
};
Buffer.prototype.writeInt32LE = function writeInt32LE(value, offset, noAssert) {
    value = +value;
    offset = offset >>> 0;
    if (!noAssert) checkInt(this, value, offset, 4, 0x7fffffff, -2147483648);
    this[offset] = value & 0xff;
    this[offset + 1] = value >>> 8;
    this[offset + 2] = value >>> 16;
    this[offset + 3] = value >>> 24;
    return offset + 4;
};
Buffer.prototype.writeInt32BE = function writeInt32BE(value, offset, noAssert) {
    value = +value;
    offset = offset >>> 0;
    if (!noAssert) checkInt(this, value, offset, 4, 0x7fffffff, -2147483648);
    if (value < 0) value = 0xffffffff + value + 1;
    this[offset] = value >>> 24;
    this[offset + 1] = value >>> 16;
    this[offset + 2] = value >>> 8;
    this[offset + 3] = value & 0xff;
    return offset + 4;
};
Buffer.prototype.writeBigInt64LE = defineBigIntMethod(function writeBigInt64LE(value, offset = 0) {
    return wrtBigUInt64LE(this, value, offset, -BigInt("0x8000000000000000"), BigInt("0x7fffffffffffffff"));
});
Buffer.prototype.writeBigInt64BE = defineBigIntMethod(function writeBigInt64BE(value, offset = 0) {
    return wrtBigUInt64BE(this, value, offset, -BigInt("0x8000000000000000"), BigInt("0x7fffffffffffffff"));
});
function checkIEEE754(buf, value, offset, ext, max, min) {
    if (offset + ext > buf.length) throw new RangeError("Index out of range");
    if (offset < 0) throw new RangeError("Index out of range");
}
function writeFloat(buf, value, offset, littleEndian, noAssert) {
    value = +value;
    offset = offset >>> 0;
    if (!noAssert) checkIEEE754(buf, value, offset, 4, 3.4028234663852886e+38, -340282346638528860000000000000000000000);
    ieee754.write(buf, value, offset, littleEndian, 23, 4);
    return offset + 4;
}
Buffer.prototype.writeFloatLE = function writeFloatLE(value, offset, noAssert) {
    return writeFloat(this, value, offset, true, noAssert);
};
Buffer.prototype.writeFloatBE = function writeFloatBE(value, offset, noAssert) {
    return writeFloat(this, value, offset, false, noAssert);
};
function writeDouble(buf, value, offset, littleEndian, noAssert) {
    value = +value;
    offset = offset >>> 0;
    if (!noAssert) checkIEEE754(buf, value, offset, 8, 1.7976931348623157E+308, -179769313486231570000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000);
    ieee754.write(buf, value, offset, littleEndian, 52, 8);
    return offset + 8;
}
Buffer.prototype.writeDoubleLE = function writeDoubleLE(value, offset, noAssert) {
    return writeDouble(this, value, offset, true, noAssert);
};
Buffer.prototype.writeDoubleBE = function writeDoubleBE(value, offset, noAssert) {
    return writeDouble(this, value, offset, false, noAssert);
};
// copy(targetBuffer, targetStart=0, sourceStart=0, sourceEnd=buffer.length)
Buffer.prototype.copy = function copy(target, targetStart, start, end) {
    if (!Buffer.isBuffer(target)) throw new TypeError("argument should be a Buffer");
    if (!start) start = 0;
    if (!end && end !== 0) end = this.length;
    if (targetStart >= target.length) targetStart = target.length;
    if (!targetStart) targetStart = 0;
    if (end > 0 && end < start) end = start;
    // Copy 0 bytes; we're done
    if (end === start) return 0;
    if (target.length === 0 || this.length === 0) return 0;
    // Fatal error conditions
    if (targetStart < 0) throw new RangeError("targetStart out of bounds");
    if (start < 0 || start >= this.length) throw new RangeError("Index out of range");
    if (end < 0) throw new RangeError("sourceEnd out of bounds");
    // Are we oob?
    if (end > this.length) end = this.length;
    if (target.length - targetStart < end - start) end = target.length - targetStart + start;
    const len = end - start;
    if (this === target && typeof Uint8Array.prototype.copyWithin === "function") // Use built-in when available, missing from IE11
    this.copyWithin(targetStart, start, end);
    else Uint8Array.prototype.set.call(target, this.subarray(start, end), targetStart);
    return len;
};
// Usage:
//    buffer.fill(number[, offset[, end]])
//    buffer.fill(buffer[, offset[, end]])
//    buffer.fill(string[, offset[, end]][, encoding])
Buffer.prototype.fill = function fill(val, start, end, encoding) {
    // Handle string cases:
    if (typeof val === "string") {
        if (typeof start === "string") {
            encoding = start;
            start = 0;
            end = this.length;
        } else if (typeof end === "string") {
            encoding = end;
            end = this.length;
        }
        if (encoding !== undefined && typeof encoding !== "string") throw new TypeError("encoding must be a string");
        if (typeof encoding === "string" && !Buffer.isEncoding(encoding)) throw new TypeError("Unknown encoding: " + encoding);
        if (val.length === 1) {
            const code = val.charCodeAt(0);
            if (encoding === "utf8" && code < 128 || encoding === "latin1") // Fast path: If `val` fits into a single byte, use that numeric value.
            val = code;
        }
    } else if (typeof val === "number") val = val & 255;
    else if (typeof val === "boolean") val = Number(val);
    // Invalid ranges are not set to a default, so can range check early.
    if (start < 0 || this.length < start || this.length < end) throw new RangeError("Out of range index");
    if (end <= start) return this;
    start = start >>> 0;
    end = end === undefined ? this.length : end >>> 0;
    if (!val) val = 0;
    let i;
    if (typeof val === "number") for(i = start; i < end; ++i)this[i] = val;
    else {
        const bytes = Buffer.isBuffer(val) ? val : Buffer.from(val, encoding);
        const len = bytes.length;
        if (len === 0) throw new TypeError('The value "' + val + '" is invalid for argument "value"');
        for(i = 0; i < end - start; ++i)this[i + start] = bytes[i % len];
    }
    return this;
};
// CUSTOM ERRORS
// =============
// Simplified versions from Node, changed for Buffer-only usage
const errors = {};
function E(sym, getMessage, Base) {
    errors[sym] = class NodeError extends Base {
        constructor(){
            super();
            Object.defineProperty(this, "message", {
                value: getMessage.apply(this, arguments),
                writable: true,
                configurable: true
            });
            // Add the error code to the name to include it in the stack trace.
            this.name = `${this.name} [${sym}]`;
            // Access the stack to generate the error message including the error code
            // from the name.
            this.stack // eslint-disable-line no-unused-expressions
            ;
            // Reset the name to the actual name.
            delete this.name;
        }
        get code() {
            return sym;
        }
        set code(value) {
            Object.defineProperty(this, "code", {
                configurable: true,
                enumerable: true,
                value,
                writable: true
            });
        }
        toString() {
            return `${this.name} [${sym}]: ${this.message}`;
        }
    };
}
E("ERR_BUFFER_OUT_OF_BOUNDS", function(name) {
    if (name) return `${name} is outside of buffer bounds`;
    return "Attempt to access memory outside buffer bounds";
}, RangeError);
E("ERR_INVALID_ARG_TYPE", function(name, actual) {
    return `The "${name}" argument must be of type number. Received type ${typeof actual}`;
}, TypeError);
E("ERR_OUT_OF_RANGE", function(str, range, input) {
    let msg = `The value of "${str}" is out of range.`;
    let received = input;
    if (Number.isInteger(input) && Math.abs(input) > 2 ** 32) received = addNumericalSeparator(String(input));
    else if (typeof input === "bigint") {
        received = String(input);
        if (input > BigInt(2) ** BigInt(32) || input < -(BigInt(2) ** BigInt(32))) received = addNumericalSeparator(received);
        received += "n";
    }
    msg += ` It must be ${range}. Received ${received}`;
    return msg;
}, RangeError);
function addNumericalSeparator(val) {
    let res = "";
    let i = val.length;
    const start = val[0] === "-" ? 1 : 0;
    for(; i >= start + 4; i -= 3)res = `_${val.slice(i - 3, i)}${res}`;
    return `${val.slice(0, i)}${res}`;
}
// CHECK FUNCTIONS
// ===============
function checkBounds(buf, offset, byteLength9) {
    validateNumber(offset, "offset");
    if (buf[offset] === undefined || buf[offset + byteLength9] === undefined) boundsError(offset, buf.length - (byteLength9 + 1));
}
function checkIntBI(value, min, max, buf, offset, byteLength10) {
    if (value > max || value < min) {
        const n = typeof min === "bigint" ? "n" : "";
        let range;
        if (byteLength10 > 3) {
            if (min === 0 || min === BigInt(0)) range = `>= 0${n} and < 2${n} ** ${(byteLength10 + 1) * 8}${n}`;
            else range = `>= -(2${n} ** ${(byteLength10 + 1) * 8 - 1}${n}) and < 2 ** ` + `${(byteLength10 + 1) * 8 - 1}${n}`;
        } else range = `>= ${min}${n} and <= ${max}${n}`;
        throw new errors.ERR_OUT_OF_RANGE("value", range, value);
    }
    checkBounds(buf, offset, byteLength10);
}
function validateNumber(value, name) {
    if (typeof value !== "number") throw new errors.ERR_INVALID_ARG_TYPE(name, "number", value);
}
function boundsError(value, length, type) {
    if (Math.floor(value) !== value) {
        validateNumber(value, type);
        throw new errors.ERR_OUT_OF_RANGE(type || "offset", "an integer", value);
    }
    if (length < 0) throw new errors.ERR_BUFFER_OUT_OF_BOUNDS();
    throw new errors.ERR_OUT_OF_RANGE(type || "offset", `>= ${type ? 1 : 0} and <= ${length}`, value);
}
// HELPER FUNCTIONS
// ================
const INVALID_BASE64_RE = /[^+/0-9A-Za-z-_]/g;
function base64clean(str) {
    // Node takes equal signs as end of the Base64 encoding
    str = str.split("=")[0];
    // Node strips out invalid characters like \n and \t from the string, base64-js does not
    str = str.trim().replace(INVALID_BASE64_RE, "");
    // Node converts strings with length < 2 to ''
    if (str.length < 2) return "";
    // Node allows for non-padded base64 strings (missing trailing ===), base64-js does not
    while(str.length % 4 !== 0)str = str + "=";
    return str;
}
function utf8ToBytes(string, units) {
    units = units || Infinity;
    let codePoint;
    const length = string.length;
    let leadSurrogate = null;
    const bytes = [];
    for(let i = 0; i < length; ++i){
        codePoint = string.charCodeAt(i);
        // is surrogate component
        if (codePoint > 0xD7FF && codePoint < 0xE000) {
            // last char was a lead
            if (!leadSurrogate) {
                // no lead yet
                if (codePoint > 0xDBFF) {
                    // unexpected trail
                    if ((units -= 3) > -1) bytes.push(0xEF, 0xBF, 0xBD);
                    continue;
                } else if (i + 1 === length) {
                    // unpaired lead
                    if ((units -= 3) > -1) bytes.push(0xEF, 0xBF, 0xBD);
                    continue;
                }
                // valid lead
                leadSurrogate = codePoint;
                continue;
            }
            // 2 leads in a row
            if (codePoint < 0xDC00) {
                if ((units -= 3) > -1) bytes.push(0xEF, 0xBF, 0xBD);
                leadSurrogate = codePoint;
                continue;
            }
            // valid surrogate pair
            codePoint = (leadSurrogate - 0xD800 << 10 | codePoint - 0xDC00) + 0x10000;
        } else if (leadSurrogate) // valid bmp char, but last char was a lead
        {
            if ((units -= 3) > -1) bytes.push(0xEF, 0xBF, 0xBD);
        }
        leadSurrogate = null;
        // encode utf8
        if (codePoint < 0x80) {
            if ((units -= 1) < 0) break;
            bytes.push(codePoint);
        } else if (codePoint < 0x800) {
            if ((units -= 2) < 0) break;
            bytes.push(codePoint >> 0x6 | 0xC0, codePoint & 0x3F | 0x80);
        } else if (codePoint < 0x10000) {
            if ((units -= 3) < 0) break;
            bytes.push(codePoint >> 0xC | 0xE0, codePoint >> 0x6 & 0x3F | 0x80, codePoint & 0x3F | 0x80);
        } else if (codePoint < 0x110000) {
            if ((units -= 4) < 0) break;
            bytes.push(codePoint >> 0x12 | 0xF0, codePoint >> 0xC & 0x3F | 0x80, codePoint >> 0x6 & 0x3F | 0x80, codePoint & 0x3F | 0x80);
        } else throw new Error("Invalid code point");
    }
    return bytes;
}
function asciiToBytes(str) {
    const byteArray = [];
    for(let i = 0; i < str.length; ++i)// Node's code seems to be doing this and not & 0x7F..
    byteArray.push(str.charCodeAt(i) & 0xFF);
    return byteArray;
}
function utf16leToBytes(str, units) {
    let c, hi, lo;
    const byteArray = [];
    for(let i = 0; i < str.length; ++i){
        if ((units -= 2) < 0) break;
        c = str.charCodeAt(i);
        hi = c >> 8;
        lo = c % 256;
        byteArray.push(lo);
        byteArray.push(hi);
    }
    return byteArray;
}
function base64ToBytes(str) {
    return base64.toByteArray(base64clean(str));
}
function blitBuffer(src, dst, offset, length) {
    let i;
    for(i = 0; i < length; ++i){
        if (i + offset >= dst.length || i >= src.length) break;
        dst[i + offset] = src[i];
    }
    return i;
}
// ArrayBuffer or Uint8Array objects from other contexts (i.e. iframes) do not pass
// the `instanceof` check but they should be treated as of that type.
// See: https://github.com/feross/buffer/issues/166
function isInstance(obj, type) {
    return obj instanceof type || obj != null && obj.constructor != null && obj.constructor.name != null && obj.constructor.name === type.name;
}
function numberIsNaN(obj) {
    // For IE11 support
    return obj !== obj // eslint-disable-line no-self-compare
    ;
}
// Create lookup table for `toString('hex')`
// See: https://github.com/feross/buffer/issues/219
const hexSliceLookupTable = function() {
    const alphabet = "0123456789abcdef";
    const table = new Array(256);
    for(let i = 0; i < 16; ++i){
        const i16 = i * 16;
        for(let j = 0; j < 16; ++j)table[i16 + j] = alphabet[i] + alphabet[j];
    }
    return table;
}();
// Return not function with Error if BigInt not supported
function defineBigIntMethod(fn) {
    return typeof BigInt === "undefined" ? BufferBigIntNotDefined : fn;
}
function BufferBigIntNotDefined() {
    throw new Error("BigInt not supported");
}

},{"base64-js":"eIiSV","ieee754":"cO95r"}],"eIiSV":[function(require,module,exports) {
"use strict";
exports.byteLength = byteLength;
exports.toByteArray = toByteArray;
exports.fromByteArray = fromByteArray;
var lookup = [];
var revLookup = [];
var Arr = typeof Uint8Array !== "undefined" ? Uint8Array : Array;
var code = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/";
for(var i = 0, len = code.length; i < len; ++i){
    lookup[i] = code[i];
    revLookup[code.charCodeAt(i)] = i;
}
// Support decoding URL-safe base64 strings, as Node.js does.
// See: https://en.wikipedia.org/wiki/Base64#URL_applications
revLookup["-".charCodeAt(0)] = 62;
revLookup["_".charCodeAt(0)] = 63;
function getLens(b64) {
    var len1 = b64.length;
    if (len1 % 4 > 0) throw new Error("Invalid string. Length must be a multiple of 4");
    // Trim off extra bytes after placeholder bytes are found
    // See: https://github.com/beatgammit/base64-js/issues/42
    var validLen = b64.indexOf("=");
    if (validLen === -1) validLen = len1;
    var placeHoldersLen = validLen === len1 ? 0 : 4 - validLen % 4;
    return [
        validLen,
        placeHoldersLen
    ];
}
// base64 is 4/3 + up to two characters of the original data
function byteLength(b64) {
    var lens = getLens(b64);
    var validLen = lens[0];
    var placeHoldersLen = lens[1];
    return (validLen + placeHoldersLen) * 3 / 4 - placeHoldersLen;
}
function _byteLength(b64, validLen, placeHoldersLen) {
    return (validLen + placeHoldersLen) * 3 / 4 - placeHoldersLen;
}
function toByteArray(b64) {
    var tmp;
    var lens = getLens(b64);
    var validLen = lens[0];
    var placeHoldersLen = lens[1];
    var arr = new Arr(_byteLength(b64, validLen, placeHoldersLen));
    var curByte = 0;
    // if there are placeholders, only get up to the last complete 4 chars
    var len2 = placeHoldersLen > 0 ? validLen - 4 : validLen;
    var i1;
    for(i1 = 0; i1 < len2; i1 += 4){
        tmp = revLookup[b64.charCodeAt(i1)] << 18 | revLookup[b64.charCodeAt(i1 + 1)] << 12 | revLookup[b64.charCodeAt(i1 + 2)] << 6 | revLookup[b64.charCodeAt(i1 + 3)];
        arr[curByte++] = tmp >> 16 & 0xFF;
        arr[curByte++] = tmp >> 8 & 0xFF;
        arr[curByte++] = tmp & 0xFF;
    }
    if (placeHoldersLen === 2) {
        tmp = revLookup[b64.charCodeAt(i1)] << 2 | revLookup[b64.charCodeAt(i1 + 1)] >> 4;
        arr[curByte++] = tmp & 0xFF;
    }
    if (placeHoldersLen === 1) {
        tmp = revLookup[b64.charCodeAt(i1)] << 10 | revLookup[b64.charCodeAt(i1 + 1)] << 4 | revLookup[b64.charCodeAt(i1 + 2)] >> 2;
        arr[curByte++] = tmp >> 8 & 0xFF;
        arr[curByte++] = tmp & 0xFF;
    }
    return arr;
}
function tripletToBase64(num) {
    return lookup[num >> 18 & 0x3F] + lookup[num >> 12 & 0x3F] + lookup[num >> 6 & 0x3F] + lookup[num & 0x3F];
}
function encodeChunk(uint8, start, end) {
    var tmp;
    var output = [];
    for(var i2 = start; i2 < end; i2 += 3){
        tmp = (uint8[i2] << 16 & 0xFF0000) + (uint8[i2 + 1] << 8 & 0xFF00) + (uint8[i2 + 2] & 0xFF);
        output.push(tripletToBase64(tmp));
    }
    return output.join("");
}
function fromByteArray(uint8) {
    var tmp;
    var len3 = uint8.length;
    var extraBytes = len3 % 3 // if we have 1 byte left, pad 2 bytes
    ;
    var parts = [];
    var maxChunkLength = 16383 // must be multiple of 3
    ;
    // go through the array every three bytes, we'll deal with trailing stuff later
    for(var i3 = 0, len2 = len3 - extraBytes; i3 < len2; i3 += maxChunkLength)parts.push(encodeChunk(uint8, i3, i3 + maxChunkLength > len2 ? len2 : i3 + maxChunkLength));
    // pad the end with zeros, but make sure to not forget the extra bytes
    if (extraBytes === 1) {
        tmp = uint8[len3 - 1];
        parts.push(lookup[tmp >> 2] + lookup[tmp << 4 & 0x3F] + "==");
    } else if (extraBytes === 2) {
        tmp = (uint8[len3 - 2] << 8) + uint8[len3 - 1];
        parts.push(lookup[tmp >> 10] + lookup[tmp >> 4 & 0x3F] + lookup[tmp << 2 & 0x3F] + "=");
    }
    return parts.join("");
}

},{}],"cO95r":[function(require,module,exports) {
/*! ieee754. BSD-3-Clause License. Feross Aboukhadijeh <https://feross.org/opensource> */ exports.read = function(buffer, offset, isLE, mLen, nBytes) {
    var e, m;
    var eLen = nBytes * 8 - mLen - 1;
    var eMax = (1 << eLen) - 1;
    var eBias = eMax >> 1;
    var nBits = -7;
    var i = isLE ? nBytes - 1 : 0;
    var d = isLE ? -1 : 1;
    var s = buffer[offset + i];
    i += d;
    e = s & (1 << -nBits) - 1;
    s >>= -nBits;
    nBits += eLen;
    for(; nBits > 0; e = e * 256 + buffer[offset + i], i += d, nBits -= 8);
    m = e & (1 << -nBits) - 1;
    e >>= -nBits;
    nBits += mLen;
    for(; nBits > 0; m = m * 256 + buffer[offset + i], i += d, nBits -= 8);
    if (e === 0) e = 1 - eBias;
    else if (e === eMax) return m ? NaN : (s ? -1 : 1) * Infinity;
    else {
        m = m + Math.pow(2, mLen);
        e = e - eBias;
    }
    return (s ? -1 : 1) * m * Math.pow(2, e - mLen);
};
exports.write = function(buffer, value, offset, isLE, mLen, nBytes) {
    var e, m, c;
    var eLen = nBytes * 8 - mLen - 1;
    var eMax = (1 << eLen) - 1;
    var eBias = eMax >> 1;
    var rt = mLen === 23 ? Math.pow(2, -24) - Math.pow(2, -77) : 0;
    var i = isLE ? 0 : nBytes - 1;
    var d = isLE ? 1 : -1;
    var s = value < 0 || value === 0 && 1 / value < 0 ? 1 : 0;
    value = Math.abs(value);
    if (isNaN(value) || value === Infinity) {
        m = isNaN(value) ? 1 : 0;
        e = eMax;
    } else {
        e = Math.floor(Math.log(value) / Math.LN2);
        if (value * (c = Math.pow(2, -e)) < 1) {
            e--;
            c *= 2;
        }
        if (e + eBias >= 1) value += rt / c;
        else value += rt * Math.pow(2, 1 - eBias);
        if (value * c >= 2) {
            e++;
            c /= 2;
        }
        if (e + eBias >= eMax) {
            m = 0;
            e = eMax;
        } else if (e + eBias >= 1) {
            m = (value * c - 1) * Math.pow(2, mLen);
            e = e + eBias;
        } else {
            m = value * Math.pow(2, eBias - 1) * Math.pow(2, mLen);
            e = 0;
        }
    }
    for(; mLen >= 8; buffer[offset + i] = m & 0xff, i += d, m /= 256, mLen -= 8);
    e = e << mLen | m;
    eLen += mLen;
    for(; eLen > 0; buffer[offset + i] = e & 0xff, i += d, e /= 256, eLen -= 8);
    buffer[offset + i - d] |= s * 128;
};

},{}],"ldm57":[function(require,module,exports) {
"use strict";
var utils = require("./../utils");
var settle = require("./../core/settle");
var cookies = require("./../helpers/cookies");
var buildURL = require("./../helpers/buildURL");
var buildFullPath = require("../core/buildFullPath");
var parseHeaders = require("./../helpers/parseHeaders");
var isURLSameOrigin = require("./../helpers/isURLSameOrigin");
var transitionalDefaults = require("../defaults/transitional");
var AxiosError = require("../core/AxiosError");
var CanceledError = require("../cancel/CanceledError");
var parseProtocol = require("../helpers/parseProtocol");
module.exports = function xhrAdapter(config) {
    return new Promise(function dispatchXhrRequest(resolve, reject) {
        var requestData = config.data;
        var requestHeaders = config.headers;
        var responseType = config.responseType;
        var onCanceled;
        function done() {
            if (config.cancelToken) config.cancelToken.unsubscribe(onCanceled);
            if (config.signal) config.signal.removeEventListener("abort", onCanceled);
        }
        if (utils.isFormData(requestData) && utils.isStandardBrowserEnv()) delete requestHeaders["Content-Type"]; // Let the browser set it
        var request = new XMLHttpRequest();
        // HTTP basic authentication
        if (config.auth) {
            var username = config.auth.username || "";
            var password = config.auth.password ? unescape(encodeURIComponent(config.auth.password)) : "";
            requestHeaders.Authorization = "Basic " + btoa(username + ":" + password);
        }
        var fullPath = buildFullPath(config.baseURL, config.url);
        request.open(config.method.toUpperCase(), buildURL(fullPath, config.params, config.paramsSerializer), true);
        // Set the request timeout in MS
        request.timeout = config.timeout;
        function onloadend() {
            if (!request) return;
            // Prepare the response
            var responseHeaders = "getAllResponseHeaders" in request ? parseHeaders(request.getAllResponseHeaders()) : null;
            var responseData = !responseType || responseType === "text" || responseType === "json" ? request.responseText : request.response;
            var response = {
                data: responseData,
                status: request.status,
                statusText: request.statusText,
                headers: responseHeaders,
                config: config,
                request: request
            };
            settle(function _resolve(value) {
                resolve(value);
                done();
            }, function _reject(err) {
                reject(err);
                done();
            }, response);
            // Clean up request
            request = null;
        }
        if ("onloadend" in request) // Use onloadend if available
        request.onloadend = onloadend;
        else // Listen for ready state to emulate onloadend
        request.onreadystatechange = function handleLoad() {
            if (!request || request.readyState !== 4) return;
            // The request errored out and we didn't get a response, this will be
            // handled by onerror instead
            // With one exception: request that using file: protocol, most browsers
            // will return status as 0 even though it's a successful request
            if (request.status === 0 && !(request.responseURL && request.responseURL.indexOf("file:") === 0)) return;
            // readystate handler is calling before onerror or ontimeout handlers,
            // so we should call onloadend on the next 'tick'
            setTimeout(onloadend);
        };
        // Handle browser request cancellation (as opposed to a manual cancellation)
        request.onabort = function handleAbort() {
            if (!request) return;
            reject(new AxiosError("Request aborted", AxiosError.ECONNABORTED, config, request));
            // Clean up request
            request = null;
        };
        // Handle low level network errors
        request.onerror = function handleError() {
            // Real errors are hidden from us by the browser
            // onerror should only fire if it's a network error
            reject(new AxiosError("Network Error", AxiosError.ERR_NETWORK, config, request, request));
            // Clean up request
            request = null;
        };
        // Handle timeout
        request.ontimeout = function handleTimeout() {
            var timeoutErrorMessage = config.timeout ? "timeout of " + config.timeout + "ms exceeded" : "timeout exceeded";
            var transitional = config.transitional || transitionalDefaults;
            if (config.timeoutErrorMessage) timeoutErrorMessage = config.timeoutErrorMessage;
            reject(new AxiosError(timeoutErrorMessage, transitional.clarifyTimeoutError ? AxiosError.ETIMEDOUT : AxiosError.ECONNABORTED, config, request));
            // Clean up request
            request = null;
        };
        // Add xsrf header
        // This is only done if running in a standard browser environment.
        // Specifically not if we're in a web worker, or react-native.
        if (utils.isStandardBrowserEnv()) {
            // Add xsrf header
            var xsrfValue = (config.withCredentials || isURLSameOrigin(fullPath)) && config.xsrfCookieName ? cookies.read(config.xsrfCookieName) : undefined;
            if (xsrfValue) requestHeaders[config.xsrfHeaderName] = xsrfValue;
        }
        // Add headers to the request
        if ("setRequestHeader" in request) utils.forEach(requestHeaders, function setRequestHeader(val, key) {
            if (typeof requestData === "undefined" && key.toLowerCase() === "content-type") // Remove Content-Type if data is undefined
            delete requestHeaders[key];
            else // Otherwise add header to the request
            request.setRequestHeader(key, val);
        });
        // Add withCredentials to request if needed
        if (!utils.isUndefined(config.withCredentials)) request.withCredentials = !!config.withCredentials;
        // Add responseType to request if needed
        if (responseType && responseType !== "json") request.responseType = config.responseType;
        // Handle progress if needed
        if (typeof config.onDownloadProgress === "function") request.addEventListener("progress", config.onDownloadProgress);
        // Not all browsers support upload events
        if (typeof config.onUploadProgress === "function" && request.upload) request.upload.addEventListener("progress", config.onUploadProgress);
        if (config.cancelToken || config.signal) {
            // Handle cancellation
            // eslint-disable-next-line func-names
            onCanceled = function(cancel) {
                if (!request) return;
                reject(!cancel || cancel && cancel.type ? new CanceledError() : cancel);
                request.abort();
                request = null;
            };
            config.cancelToken && config.cancelToken.subscribe(onCanceled);
            if (config.signal) config.signal.aborted ? onCanceled() : config.signal.addEventListener("abort", onCanceled);
        }
        if (!requestData) requestData = null;
        var protocol = parseProtocol(fullPath);
        if (protocol && [
            "http",
            "https",
            "file"
        ].indexOf(protocol) === -1) {
            reject(new AxiosError("Unsupported protocol " + protocol + ":", AxiosError.ERR_BAD_REQUEST, config));
            return;
        }
        // Send the request
        request.send(requestData);
    });
};

},{"./../utils":"5By4s","./../core/settle":"dD9aC","./../helpers/cookies":"4WJjt","./../helpers/buildURL":"3bwC2","../core/buildFullPath":"1I5TW","./../helpers/parseHeaders":"kqDd5","./../helpers/isURLSameOrigin":"lxXtv","../defaults/transitional":"lM32f","../core/AxiosError":"3u8Tl","../cancel/CanceledError":"9PwCG","../helpers/parseProtocol":"7NfWU"}],"dD9aC":[function(require,module,exports) {
"use strict";
var AxiosError = require("./AxiosError");
/**
 * Resolve or reject a Promise based on response status.
 *
 * @param {Function} resolve A function that resolves the promise.
 * @param {Function} reject A function that rejects the promise.
 * @param {object} response The response.
 */ module.exports = function settle(resolve, reject, response) {
    var validateStatus = response.config.validateStatus;
    if (!response.status || !validateStatus || validateStatus(response.status)) resolve(response);
    else reject(new AxiosError("Request failed with status code " + response.status, [
        AxiosError.ERR_BAD_REQUEST,
        AxiosError.ERR_BAD_RESPONSE
    ][Math.floor(response.status / 100) - 4], response.config, response.request, response));
};

},{"./AxiosError":"3u8Tl"}],"4WJjt":[function(require,module,exports) {
"use strict";
var utils = require("./../utils");
module.exports = utils.isStandardBrowserEnv() ? // Standard browser envs support document.cookie
function standardBrowserEnv() {
    return {
        write: function write(name, value, expires, path, domain, secure) {
            var cookie = [];
            cookie.push(name + "=" + encodeURIComponent(value));
            if (utils.isNumber(expires)) cookie.push("expires=" + new Date(expires).toGMTString());
            if (utils.isString(path)) cookie.push("path=" + path);
            if (utils.isString(domain)) cookie.push("domain=" + domain);
            if (secure === true) cookie.push("secure");
            document.cookie = cookie.join("; ");
        },
        read: function read(name) {
            var match = document.cookie.match(new RegExp("(^|;\\s*)(" + name + ")=([^;]*)"));
            return match ? decodeURIComponent(match[3]) : null;
        },
        remove: function remove(name) {
            this.write(name, "", Date.now() - 86400000);
        }
    };
}() : // Non standard browser env (web workers, react-native) lack needed support.
function nonStandardBrowserEnv() {
    return {
        write: function write() {},
        read: function read() {
            return null;
        },
        remove: function remove() {}
    };
}();

},{"./../utils":"5By4s"}],"1I5TW":[function(require,module,exports) {
"use strict";
var isAbsoluteURL = require("../helpers/isAbsoluteURL");
var combineURLs = require("../helpers/combineURLs");
/**
 * Creates a new URL by combining the baseURL with the requestedURL,
 * only when the requestedURL is not already an absolute URL.
 * If the requestURL is absolute, this function returns the requestedURL untouched.
 *
 * @param {string} baseURL The base URL
 * @param {string} requestedURL Absolute or relative URL to combine
 * @returns {string} The combined full path
 */ module.exports = function buildFullPath(baseURL, requestedURL) {
    if (baseURL && !isAbsoluteURL(requestedURL)) return combineURLs(baseURL, requestedURL);
    return requestedURL;
};

},{"../helpers/isAbsoluteURL":"jD6NM","../helpers/combineURLs":"brOWK"}],"jD6NM":[function(require,module,exports) {
"use strict";
/**
 * Determines whether the specified URL is absolute
 *
 * @param {string} url The URL to test
 * @returns {boolean} True if the specified URL is absolute, otherwise false
 */ module.exports = function isAbsoluteURL(url) {
    // A URL is considered absolute if it begins with "<scheme>://" or "//" (protocol-relative URL).
    // RFC 3986 defines scheme name as a sequence of characters beginning with a letter and followed
    // by any combination of letters, digits, plus, period, or hyphen.
    return /^([a-z][a-z\d+\-.]*:)?\/\//i.test(url);
};

},{}],"brOWK":[function(require,module,exports) {
"use strict";
/**
 * Creates a new URL by combining the specified URLs
 *
 * @param {string} baseURL The base URL
 * @param {string} relativeURL The relative URL
 * @returns {string} The combined URL
 */ module.exports = function combineURLs(baseURL, relativeURL) {
    return relativeURL ? baseURL.replace(/\/+$/, "") + "/" + relativeURL.replace(/^\/+/, "") : baseURL;
};

},{}],"kqDd5":[function(require,module,exports) {
"use strict";
var utils = require("./../utils");
// Headers whose duplicates are ignored by node
// c.f. https://nodejs.org/api/http.html#http_message_headers
var ignoreDuplicateOf = [
    "age",
    "authorization",
    "content-length",
    "content-type",
    "etag",
    "expires",
    "from",
    "host",
    "if-modified-since",
    "if-unmodified-since",
    "last-modified",
    "location",
    "max-forwards",
    "proxy-authorization",
    "referer",
    "retry-after",
    "user-agent"
];
/**
 * Parse headers into an object
 *
 * ```
 * Date: Wed, 27 Aug 2014 08:58:49 GMT
 * Content-Type: application/json
 * Connection: keep-alive
 * Transfer-Encoding: chunked
 * ```
 *
 * @param {String} headers Headers needing to be parsed
 * @returns {Object} Headers parsed into an object
 */ module.exports = function parseHeaders(headers) {
    var parsed = {};
    var key;
    var val;
    var i;
    if (!headers) return parsed;
    utils.forEach(headers.split("\n"), function parser(line) {
        i = line.indexOf(":");
        key = utils.trim(line.substr(0, i)).toLowerCase();
        val = utils.trim(line.substr(i + 1));
        if (key) {
            if (parsed[key] && ignoreDuplicateOf.indexOf(key) >= 0) return;
            if (key === "set-cookie") parsed[key] = (parsed[key] ? parsed[key] : []).concat([
                val
            ]);
            else parsed[key] = parsed[key] ? parsed[key] + ", " + val : val;
        }
    });
    return parsed;
};

},{"./../utils":"5By4s"}],"lxXtv":[function(require,module,exports) {
"use strict";
var utils = require("./../utils");
module.exports = utils.isStandardBrowserEnv() ? // Standard browser envs have full support of the APIs needed to test
// whether the request URL is of the same origin as current location.
function standardBrowserEnv() {
    var msie = /(msie|trident)/i.test(navigator.userAgent);
    var urlParsingNode = document.createElement("a");
    var originURL;
    /**
    * Parse a URL to discover it's components
    *
    * @param {String} url The URL to be parsed
    * @returns {Object}
    */ function resolveURL(url) {
        var href = url;
        if (msie) {
            // IE needs attribute set twice to normalize properties
            urlParsingNode.setAttribute("href", href);
            href = urlParsingNode.href;
        }
        urlParsingNode.setAttribute("href", href);
        // urlParsingNode provides the UrlUtils interface - http://url.spec.whatwg.org/#urlutils
        return {
            href: urlParsingNode.href,
            protocol: urlParsingNode.protocol ? urlParsingNode.protocol.replace(/:$/, "") : "",
            host: urlParsingNode.host,
            search: urlParsingNode.search ? urlParsingNode.search.replace(/^\?/, "") : "",
            hash: urlParsingNode.hash ? urlParsingNode.hash.replace(/^#/, "") : "",
            hostname: urlParsingNode.hostname,
            port: urlParsingNode.port,
            pathname: urlParsingNode.pathname.charAt(0) === "/" ? urlParsingNode.pathname : "/" + urlParsingNode.pathname
        };
    }
    originURL = resolveURL(window.location.href);
    /**
    * Determine if a URL shares the same origin as the current location
    *
    * @param {String} requestURL The URL to test
    * @returns {boolean} True if URL shares the same origin, otherwise false
    */ return function isURLSameOrigin(requestURL) {
        var parsed = utils.isString(requestURL) ? resolveURL(requestURL) : requestURL;
        return parsed.protocol === originURL.protocol && parsed.host === originURL.host;
    };
}() : // Non standard browser envs (web workers, react-native) lack needed support.
function nonStandardBrowserEnv() {
    return function isURLSameOrigin() {
        return true;
    };
}();

},{"./../utils":"5By4s"}],"9PwCG":[function(require,module,exports) {
"use strict";
var AxiosError = require("../core/AxiosError");
var utils = require("../utils");
/**
 * A `CanceledError` is an object that is thrown when an operation is canceled.
 *
 * @class
 * @param {string=} message The message.
 */ function CanceledError(message) {
    // eslint-disable-next-line no-eq-null,eqeqeq
    AxiosError.call(this, message == null ? "canceled" : message, AxiosError.ERR_CANCELED);
    this.name = "CanceledError";
}
utils.inherits(CanceledError, AxiosError, {
    __CANCEL__: true
});
module.exports = CanceledError;

},{"../core/AxiosError":"3u8Tl","../utils":"5By4s"}],"7NfWU":[function(require,module,exports) {
"use strict";
module.exports = function parseProtocol(url) {
    var match = /^([-+\w]{1,25})(:?\/\/|:)/.exec(url);
    return match && match[1] || "";
};

},{}],"aFlee":[function(require,module,exports) {
// eslint-disable-next-line strict
module.exports = null;

},{}],"a0VmF":[function(require,module,exports) {
"use strict";
module.exports = function isCancel(value) {
    return !!(value && value.__CANCEL__);
};

},{}],"b85oP":[function(require,module,exports) {
"use strict";
var utils = require("../utils");
/**
 * Config-specific merge-function which creates a new config-object
 * by merging two configuration objects together.
 *
 * @param {Object} config1
 * @param {Object} config2
 * @returns {Object} New object resulting from merging config2 to config1
 */ module.exports = function mergeConfig(config1, config2) {
    // eslint-disable-next-line no-param-reassign
    config2 = config2 || {};
    var config = {};
    function getMergedValue(target, source) {
        if (utils.isPlainObject(target) && utils.isPlainObject(source)) return utils.merge(target, source);
        else if (utils.isPlainObject(source)) return utils.merge({}, source);
        else if (utils.isArray(source)) return source.slice();
        return source;
    }
    // eslint-disable-next-line consistent-return
    function mergeDeepProperties(prop) {
        if (!utils.isUndefined(config2[prop])) return getMergedValue(config1[prop], config2[prop]);
        else if (!utils.isUndefined(config1[prop])) return getMergedValue(undefined, config1[prop]);
    }
    // eslint-disable-next-line consistent-return
    function valueFromConfig2(prop) {
        if (!utils.isUndefined(config2[prop])) return getMergedValue(undefined, config2[prop]);
    }
    // eslint-disable-next-line consistent-return
    function defaultToConfig2(prop) {
        if (!utils.isUndefined(config2[prop])) return getMergedValue(undefined, config2[prop]);
        else if (!utils.isUndefined(config1[prop])) return getMergedValue(undefined, config1[prop]);
    }
    // eslint-disable-next-line consistent-return
    function mergeDirectKeys(prop) {
        if (prop in config2) return getMergedValue(config1[prop], config2[prop]);
        else if (prop in config1) return getMergedValue(undefined, config1[prop]);
    }
    var mergeMap = {
        "url": valueFromConfig2,
        "method": valueFromConfig2,
        "data": valueFromConfig2,
        "baseURL": defaultToConfig2,
        "transformRequest": defaultToConfig2,
        "transformResponse": defaultToConfig2,
        "paramsSerializer": defaultToConfig2,
        "timeout": defaultToConfig2,
        "timeoutMessage": defaultToConfig2,
        "withCredentials": defaultToConfig2,
        "adapter": defaultToConfig2,
        "responseType": defaultToConfig2,
        "xsrfCookieName": defaultToConfig2,
        "xsrfHeaderName": defaultToConfig2,
        "onUploadProgress": defaultToConfig2,
        "onDownloadProgress": defaultToConfig2,
        "decompress": defaultToConfig2,
        "maxContentLength": defaultToConfig2,
        "maxBodyLength": defaultToConfig2,
        "beforeRedirect": defaultToConfig2,
        "transport": defaultToConfig2,
        "httpAgent": defaultToConfig2,
        "httpsAgent": defaultToConfig2,
        "cancelToken": defaultToConfig2,
        "socketPath": defaultToConfig2,
        "responseEncoding": defaultToConfig2,
        "validateStatus": mergeDirectKeys
    };
    utils.forEach(Object.keys(config1).concat(Object.keys(config2)), function computeConfigValue(prop) {
        var merge = mergeMap[prop] || mergeDeepProperties;
        var configValue = merge(prop);
        utils.isUndefined(configValue) && merge !== mergeDirectKeys || (config[prop] = configValue);
    });
    return config;
};

},{"../utils":"5By4s"}],"9vgkY":[function(require,module,exports) {
"use strict";
var VERSION = require("../env/data").version;
var AxiosError = require("../core/AxiosError");
var validators = {};
// eslint-disable-next-line func-names
[
    "object",
    "boolean",
    "number",
    "function",
    "string",
    "symbol"
].forEach(function(type, i) {
    validators[type] = function validator(thing) {
        return typeof thing === type || "a" + (i < 1 ? "n " : " ") + type;
    };
});
var deprecatedWarnings = {};
/**
 * Transitional option validator
 * @param {function|boolean?} validator - set to false if the transitional option has been removed
 * @param {string?} version - deprecated version / removed since version
 * @param {string?} message - some message with additional info
 * @returns {function}
 */ validators.transitional = function transitional(validator, version, message) {
    function formatMessage(opt, desc) {
        return "[Axios v" + VERSION + "] Transitional option '" + opt + "'" + desc + (message ? ". " + message : "");
    }
    // eslint-disable-next-line func-names
    return function(value, opt, opts) {
        if (validator === false) throw new AxiosError(formatMessage(opt, " has been removed" + (version ? " in " + version : "")), AxiosError.ERR_DEPRECATED);
        if (version && !deprecatedWarnings[opt]) {
            deprecatedWarnings[opt] = true;
            // eslint-disable-next-line no-console
            console.warn(formatMessage(opt, " has been deprecated since v" + version + " and will be removed in the near future"));
        }
        return validator ? validator(value, opt, opts) : true;
    };
};
/**
 * Assert object's properties type
 * @param {object} options
 * @param {object} schema
 * @param {boolean?} allowUnknown
 */ function assertOptions(options, schema, allowUnknown) {
    if (typeof options !== "object") throw new AxiosError("options must be an object", AxiosError.ERR_BAD_OPTION_VALUE);
    var keys = Object.keys(options);
    var i = keys.length;
    while(i-- > 0){
        var opt = keys[i];
        var validator = schema[opt];
        if (validator) {
            var value = options[opt];
            var result = value === undefined || validator(value, opt, options);
            if (result !== true) throw new AxiosError("option " + opt + " must be " + result, AxiosError.ERR_BAD_OPTION_VALUE);
            continue;
        }
        if (allowUnknown !== true) throw new AxiosError("Unknown option " + opt, AxiosError.ERR_BAD_OPTION);
    }
}
module.exports = {
    assertOptions: assertOptions,
    validators: validators
};

},{"../env/data":"h29L9","../core/AxiosError":"3u8Tl"}],"h29L9":[function(require,module,exports) {
module.exports = {
    "version": "0.27.2"
};

},{}],"45wzn":[function(require,module,exports) {
"use strict";
var CanceledError = require("./CanceledError");
/**
 * A `CancelToken` is an object that can be used to request cancellation of an operation.
 *
 * @class
 * @param {Function} executor The executor function.
 */ function CancelToken(executor) {
    if (typeof executor !== "function") throw new TypeError("executor must be a function.");
    var resolvePromise;
    this.promise = new Promise(function promiseExecutor(resolve) {
        resolvePromise = resolve;
    });
    var token = this;
    // eslint-disable-next-line func-names
    this.promise.then(function(cancel) {
        if (!token._listeners) return;
        var i;
        var l = token._listeners.length;
        for(i = 0; i < l; i++)token._listeners[i](cancel);
        token._listeners = null;
    });
    // eslint-disable-next-line func-names
    this.promise.then = function(onfulfilled) {
        var _resolve;
        // eslint-disable-next-line func-names
        var promise = new Promise(function(resolve) {
            token.subscribe(resolve);
            _resolve = resolve;
        }).then(onfulfilled);
        promise.cancel = function reject() {
            token.unsubscribe(_resolve);
        };
        return promise;
    };
    executor(function cancel(message) {
        if (token.reason) // Cancellation has already been requested
        return;
        token.reason = new CanceledError(message);
        resolvePromise(token.reason);
    });
}
/**
 * Throws a `CanceledError` if cancellation has been requested.
 */ CancelToken.prototype.throwIfRequested = function throwIfRequested() {
    if (this.reason) throw this.reason;
};
/**
 * Subscribe to the cancel signal
 */ CancelToken.prototype.subscribe = function subscribe(listener) {
    if (this.reason) {
        listener(this.reason);
        return;
    }
    if (this._listeners) this._listeners.push(listener);
    else this._listeners = [
        listener
    ];
};
/**
 * Unsubscribe from the cancel signal
 */ CancelToken.prototype.unsubscribe = function unsubscribe(listener) {
    if (!this._listeners) return;
    var index = this._listeners.indexOf(listener);
    if (index !== -1) this._listeners.splice(index, 1);
};
/**
 * Returns an object that contains a new `CancelToken` and a function that, when called,
 * cancels the `CancelToken`.
 */ CancelToken.source = function source() {
    var cancel;
    var token = new CancelToken(function executor(c) {
        cancel = c;
    });
    return {
        token: token,
        cancel: cancel
    };
};
module.exports = CancelToken;

},{"./CanceledError":"9PwCG"}],"dyQ8N":[function(require,module,exports) {
"use strict";
/**
 * Syntactic sugar for invoking a function and expanding an array for arguments.
 *
 * Common use case would be to use `Function.prototype.apply`.
 *
 *  ```js
 *  function f(x, y, z) {}
 *  var args = [1, 2, 3];
 *  f.apply(null, args);
 *  ```
 *
 * With `spread` this example can be re-written.
 *
 *  ```js
 *  spread(function(x, y, z) {})([1, 2, 3]);
 *  ```
 *
 * @param {Function} callback
 * @returns {Function}
 */ module.exports = function spread(callback) {
    return function wrap(arr) {
        return callback.apply(null, arr);
    };
};

},{}],"eyiLq":[function(require,module,exports) {
"use strict";
var utils = require("./../utils");
/**
 * Determines whether the payload is an error thrown by Axios
 *
 * @param {*} payload The value to test
 * @returns {boolean} True if the payload is an error thrown by Axios, otherwise false
 */ module.exports = function isAxiosError(payload) {
    return utils.isObject(payload) && payload.isAxiosError === true;
};

},{"./../utils":"5By4s"}],"bQdJe":[function(require,module,exports) {
var parcelHelpers = require("@parcel/transformer-js/src/esmodule-helpers.js");
parcelHelpers.defineInteropFlag(exports);
var _apiJs = require("../api.js");
class PopularMovies {
    constructor(){
        this.container;
    }
    callFunctions() {
        this.container = document.querySelector("#popularMoviesContainer");
    }
    render(array) {
        array.forEach((data)=>{
            const { poster_path , title , genre_ids  } = data;
            this.container.innerHTML += "";
            return this.container.innerHTML += `
      <div class="slider_main_card">
        <div class="slider_inner_card">                           
            <img src="${0, _apiJs.img_path}${poster_path}" alt="">
            <div class="image_btn_container row">
                    <span>New</span>
                    <svg width="22" height="34" viewBox="0 0 22 34" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path d="M20.109 1.85495e-06H1.89103C1.39066 -0.000703945 0.910483 0.200031 0.555939 0.558122C0.201394 0.916213 0.00147445 1.40238 8.69671e-05 1.90985V32.0876C-0.00351697 32.4651 0.104966 32.835 0.311424 33.149C0.517883 33.4631 0.81276 33.7069 1.1577 33.8487C1.50166 33.9962 1.88096 34.037 2.24777 33.9661C2.61459 33.8952 2.95249 33.7157 3.21887 33.4503L10.7748 25.9225C10.835 25.8628 10.9158 25.8293 11 25.8293C11.0842 25.8293 11.1651 25.8628 11.2252 25.9225L18.7838 33.4477C19.05 33.7134 19.3879 33.893 19.7548 33.964C20.1216 34.0349 20.501 33.9939 20.8449 33.8461C21.189 33.704 21.483 33.4605 21.6889 33.1469C21.8949 32.8334 22.0032 32.4644 21.9999 32.0876V1.90985C21.9985 1.40238 21.7986 0.916213 21.4441 0.558122C21.0895 0.200031 20.6094 -0.000703945 20.109 1.85495e-06V1.85495e-06ZM20.4285 32.0876C20.4297 32.1503 20.4117 32.2118 20.377 32.2637C20.3423 32.3155 20.2926 32.3552 20.2347 32.3772C20.1767 32.4047 20.1117 32.4131 20.0487 32.4012C19.9858 32.3893 19.9281 32.3576 19.8838 32.3108V32.3108L12.3252 24.7856C11.9702 24.4349 11.4942 24.2387 10.9987 24.2387C10.5032 24.2387 10.0272 24.4349 9.67216 24.7856L2.11626 32.3108C2.07172 32.3573 2.01405 32.3887 1.9512 32.4006C1.88834 32.4125 1.8234 32.4043 1.76531 32.3772C1.70743 32.3552 1.65771 32.3155 1.62299 32.2637C1.58828 32.2118 1.57029 32.1503 1.5715 32.0876V1.90985C1.57288 1.82507 1.60724 1.74428 1.66709 1.68507C1.72693 1.62587 1.80742 1.59305 1.89103 1.59376H20.109C20.1926 1.59305 20.2731 1.62587 20.3329 1.68507C20.3928 1.74428 20.4271 1.82507 20.4285 1.90985V32.0876Z" fill="white"/>
                    </svg>
            </div>
        </div>
        <h3 class="slider_card_title">${title}</h3>
    </div>`;
        });
    }
}
exports.default = new PopularMovies();

},{"../api.js":"6yDOL","@parcel/transformer-js/src/esmodule-helpers.js":"gkKU3"}],"29L8v":[function(require,module,exports) {
var parcelHelpers = require("@parcel/transformer-js/src/esmodule-helpers.js");
parcelHelpers.defineInteropFlag(exports);
var _apiJs = require("../api.js");
class PopularMovies {
    constructor(){
        this.container;
    }
    callFunctions() {
        this.container = document.querySelector("#bestComediesContainer");
    }
    render(array) {
        array.forEach((data, i)=>{
            if (i >= 4) {
                const { poster_path , title , genre_ids  } = data;
                this.container.innerHTML += "";
                return this.container.innerHTML += `
      <div class="slider_main_card">
        <div class="slider_inner_card">                           
            <img src="${0, _apiJs.img_path}${poster_path}" alt="">
            <div class="image_btn_container row">
                    <span>New</span>
                    <svg width="22" height="34" viewBox="0 0 22 34" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path d="M20.109 1.85495e-06H1.89103C1.39066 -0.000703945 0.910483 0.200031 0.555939 0.558122C0.201394 0.916213 0.00147445 1.40238 8.69671e-05 1.90985V32.0876C-0.00351697 32.4651 0.104966 32.835 0.311424 33.149C0.517883 33.4631 0.81276 33.7069 1.1577 33.8487C1.50166 33.9962 1.88096 34.037 2.24777 33.9661C2.61459 33.8952 2.95249 33.7157 3.21887 33.4503L10.7748 25.9225C10.835 25.8628 10.9158 25.8293 11 25.8293C11.0842 25.8293 11.1651 25.8628 11.2252 25.9225L18.7838 33.4477C19.05 33.7134 19.3879 33.893 19.7548 33.964C20.1216 34.0349 20.501 33.9939 20.8449 33.8461C21.189 33.704 21.483 33.4605 21.6889 33.1469C21.8949 32.8334 22.0032 32.4644 21.9999 32.0876V1.90985C21.9985 1.40238 21.7986 0.916213 21.4441 0.558122C21.0895 0.200031 20.6094 -0.000703945 20.109 1.85495e-06V1.85495e-06ZM20.4285 32.0876C20.4297 32.1503 20.4117 32.2118 20.377 32.2637C20.3423 32.3155 20.2926 32.3552 20.2347 32.3772C20.1767 32.4047 20.1117 32.4131 20.0487 32.4012C19.9858 32.3893 19.9281 32.3576 19.8838 32.3108V32.3108L12.3252 24.7856C11.9702 24.4349 11.4942 24.2387 10.9987 24.2387C10.5032 24.2387 10.0272 24.4349 9.67216 24.7856L2.11626 32.3108C2.07172 32.3573 2.01405 32.3887 1.9512 32.4006C1.88834 32.4125 1.8234 32.4043 1.76531 32.3772C1.70743 32.3552 1.65771 32.3155 1.62299 32.2637C1.58828 32.2118 1.57029 32.1503 1.5715 32.0876V1.90985C1.57288 1.82507 1.60724 1.74428 1.66709 1.68507C1.72693 1.62587 1.80742 1.59305 1.89103 1.59376H20.109C20.1926 1.59305 20.2731 1.62587 20.3329 1.68507C20.3928 1.74428 20.4271 1.82507 20.4285 1.90985V32.0876Z" fill="white"/>
                    </svg>
            </div>
        </div>
        <h3 class="slider_card_title">${title}</h3>
    </div>`;
            }
        });
    }
}
exports.default = new PopularMovies();

},{"../api.js":"6yDOL","@parcel/transformer-js/src/esmodule-helpers.js":"gkKU3"}],"blEkO":[function(require,module,exports) {
var parcelHelpers = require("@parcel/transformer-js/src/esmodule-helpers.js");
parcelHelpers.defineInteropFlag(exports);
var _apiJs = require("../api.js");
class PopularMovies {
    constructor(){
        this.container;
    }
    callFunctions() {
        this.container = document.querySelector("#actionandadvcontainer");
    }
    render(array) {
        array.forEach((data, i)=>{
            if (i >= 12) {
                const { poster_path , title , genre_ids  } = data;
                this.container.innerHTML += "";
                return this.container.innerHTML += `
      <div class="slider_main_card">
        <div class="slider_inner_card">                           
            <img src="${0, _apiJs.img_path}${poster_path}" alt="">
            <div class="image_btn_container row">
                    <span>New</span>
                    <svg width="22" height="34" viewBox="0 0 22 34" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path d="M20.109 1.85495e-06H1.89103C1.39066 -0.000703945 0.910483 0.200031 0.555939 0.558122C0.201394 0.916213 0.00147445 1.40238 8.69671e-05 1.90985V32.0876C-0.00351697 32.4651 0.104966 32.835 0.311424 33.149C0.517883 33.4631 0.81276 33.7069 1.1577 33.8487C1.50166 33.9962 1.88096 34.037 2.24777 33.9661C2.61459 33.8952 2.95249 33.7157 3.21887 33.4503L10.7748 25.9225C10.835 25.8628 10.9158 25.8293 11 25.8293C11.0842 25.8293 11.1651 25.8628 11.2252 25.9225L18.7838 33.4477C19.05 33.7134 19.3879 33.893 19.7548 33.964C20.1216 34.0349 20.501 33.9939 20.8449 33.8461C21.189 33.704 21.483 33.4605 21.6889 33.1469C21.8949 32.8334 22.0032 32.4644 21.9999 32.0876V1.90985C21.9985 1.40238 21.7986 0.916213 21.4441 0.558122C21.0895 0.200031 20.6094 -0.000703945 20.109 1.85495e-06V1.85495e-06ZM20.4285 32.0876C20.4297 32.1503 20.4117 32.2118 20.377 32.2637C20.3423 32.3155 20.2926 32.3552 20.2347 32.3772C20.1767 32.4047 20.1117 32.4131 20.0487 32.4012C19.9858 32.3893 19.9281 32.3576 19.8838 32.3108V32.3108L12.3252 24.7856C11.9702 24.4349 11.4942 24.2387 10.9987 24.2387C10.5032 24.2387 10.0272 24.4349 9.67216 24.7856L2.11626 32.3108C2.07172 32.3573 2.01405 32.3887 1.9512 32.4006C1.88834 32.4125 1.8234 32.4043 1.76531 32.3772C1.70743 32.3552 1.65771 32.3155 1.62299 32.2637C1.58828 32.2118 1.57029 32.1503 1.5715 32.0876V1.90985C1.57288 1.82507 1.60724 1.74428 1.66709 1.68507C1.72693 1.62587 1.80742 1.59305 1.89103 1.59376H20.109C20.1926 1.59305 20.2731 1.62587 20.3329 1.68507C20.3928 1.74428 20.4271 1.82507 20.4285 1.90985V32.0876Z" fill="white"/>
                    </svg>
            </div>
        </div>
        <h3 class="slider_card_title">${title}</h3>
    </div>`;
            }
        });
    }
}
exports.default = new PopularMovies();

},{"../api.js":"6yDOL","@parcel/transformer-js/src/esmodule-helpers.js":"gkKU3"}],"hlplb":[function(require,module,exports) {
var parcelHelpers = require("@parcel/transformer-js/src/esmodule-helpers.js");
parcelHelpers.defineInteropFlag(exports);
var _nav = require("./components/Nav");
var _navDefault = parcelHelpers.interopDefault(_nav);
var _moviedom1Png = require("../../img/MOVIEDOM1.png");
var _moviedom1PngDefault = parcelHelpers.interopDefault(_moviedom1Png);
class Movies {
    activeFunctions() {}
    render() {
        return `
    <header id="description_header">
        <div class="header_container row">
            <div class="header_logo">
                <a href="index.html">
                <img src="${0, _moviedom1PngDefault.default}">
            </div>
            <input type="checkbox" id="resp-check">

            <nav>
                <ul class="row main-nav">
                    <li><a href="tv_shows.html">TV Shows</a></li>
                    <li><a href="movies.html">Movies</a></li>
                    <li><a href="upcoming.html">Upcoming</a></li>
                    <li><a href="trailers.html">Trailers</a></li>
                    <li><a href="my_list.html">My List</a></li>
            </nav>

            <div class="header_icon_container">
                <div class="header_search">
                    <svg width="16" height="16" viewBox="0 0 16 16" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path d="M6.72728 12.4546C9.89037 12.4546 12.4546 9.89037 12.4546 6.72728C12.4546 3.56419 9.89037 1 6.72728 1C3.56419 1 1 3.56419 1 6.72728C1 9.89037 3.56419 12.4546 6.72728 12.4546Z" stroke="white" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"/>
                        <path d="M15 15L10.7783 10.7783" stroke="white" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"/>
                        </svg>
                      <input type="text" placeholder="Search a movie">  
                </div>
                <svg width="16" height="18" viewBox="0 0 16 18" fill="none" xmlns="http://www.w3.org/2000/svg">
                    <path d="M14.648 10.7018L14.3 10.4275C14.2065 10.3541 14.1309 10.261 14.079 10.1551C14.0271 10.0493 14.0001 9.93338 14 9.81594V6.64863C13.9995 5.28749 13.5172 3.96867 12.6353 2.91713C11.7534 1.86558 10.5265 1.14645 9.164 0.882386C9.09756 0.629863 8.94736 0.406144 8.73701 0.246413C8.52667 0.0866817 8.26811 0 8.002 0C7.73589 0 7.47733 0.0866817 7.26699 0.246413C7.05664 0.406144 6.90644 0.629863 6.84 0.882386C5.47672 1.14565 4.24894 1.86444 3.36624 2.91606C2.48354 3.96768 2.00065 5.28694 2 6.64863V9.81594C1.99993 9.93338 1.97293 10.0493 1.921 10.1551C1.86908 10.261 1.79355 10.3541 1.7 10.4275L1.352 10.7018C0.931712 11.0311 0.592092 11.4485 0.35812 11.9234C0.124147 12.3983 0.00177343 12.9185 0 13.4458V14.0965C0 14.5124 0.168571 14.9112 0.468629 15.2052C0.768687 15.4993 1.17565 15.6645 1.6 15.6645H4.904C5.08432 16.3339 5.48561 16.926 6.04528 17.3484C6.60495 17.7709 7.29155 18 7.998 18C8.70445 18 9.39105 17.7709 9.95072 17.3484C10.5104 16.926 10.9117 16.3339 11.092 15.6645H14.4C14.8243 15.6645 15.2313 15.4993 15.5314 15.2052C15.8314 14.9112 16 14.5124 16 14.0965V13.4536C15.9994 12.925 15.8776 12.4033 15.6436 11.9269C15.4096 11.4506 15.0693 11.032 14.648 10.7018ZM8 16.4485C7.72078 16.4468 7.44686 16.3736 7.20546 16.2361C6.96407 16.0985 6.76361 15.9015 6.624 15.6645H9.38C9.24005 15.9021 9.03896 16.0995 8.7968 16.237C8.55465 16.3746 8.2799 16.4475 8 16.4485ZM14.4 14.0965H1.6V13.4536C1.60043 13.1599 1.66823 12.87 1.7984 12.6054C1.92856 12.3407 2.11776 12.1082 2.352 11.9249L2.7 11.6505C2.98065 11.4303 3.20723 11.1511 3.36301 10.8336C3.51878 10.516 3.59978 10.1683 3.6 9.81594V6.64863C3.6 5.50503 4.06357 4.40827 4.88873 3.59962C5.71389 2.79098 6.83305 2.33669 8 2.33669C9.16695 2.33669 10.2861 2.79098 11.1113 3.59962C11.9364 4.40827 12.4 5.50503 12.4 6.64863V9.81594C12.3996 10.1689 12.4803 10.5175 12.6361 10.8357C12.7919 11.154 13.0188 11.4338 13.3 11.6544L13.648 11.9288C13.8817 12.1117 14.0706 12.3436 14.2007 12.6075C14.3309 12.8714 14.399 13.1606 14.4 13.4536V14.0965Z" fill="white"/>
                    </svg>
                    
                <svg width="20" height="20" viewBox="0 0 20 20" fill="none" xmlns="http://www.w3.org/2000/svg">
                    <path d="M10 0C4.48625 0 0 4.48625 0 10C0 12.9546 1.28917 15.6133 3.33333 17.4454V17.4525L3.47833 17.5775C3.50375 17.5996 3.53167 17.6179 3.5575 17.6396C3.73708 17.7912 3.92208 17.9367 4.11208 18.0758C4.16333 18.1133 4.21458 18.1496 4.26667 18.1858C4.46833 18.3275 4.67458 18.4625 4.88625 18.5892C4.92167 18.6104 4.95792 18.6304 4.99333 18.6508C5.22542 18.7858 5.4625 18.9129 5.70583 19.0292C5.70833 19.0304 5.71083 19.0312 5.71333 19.0325C6.23375 19.2804 6.77958 19.4833 7.34458 19.6392C7.355 19.6421 7.36542 19.6454 7.37583 19.6479C7.64292 19.7208 7.91458 19.7821 8.19 19.8325C8.21583 19.8371 8.24125 19.8417 8.26708 19.8463C8.53292 19.8929 8.80208 19.93 9.075 19.9554C9.10625 19.9583 9.1375 19.96 9.16833 19.9625C9.44292 19.9854 9.71958 20 10 20C10.2804 20 10.5571 19.9854 10.8317 19.9625C10.8629 19.96 10.8942 19.9583 10.925 19.9554C11.1979 19.9304 11.4671 19.8929 11.7329 19.8463C11.7587 19.8417 11.7842 19.8371 11.81 19.8325C12.0854 19.7821 12.3571 19.7208 12.6242 19.6479C12.6346 19.645 12.645 19.6421 12.6554 19.6392C13.2204 19.4833 13.7662 19.2804 14.2867 19.0325C14.2892 19.0312 14.2917 19.0304 14.2942 19.0292C14.5375 18.9129 14.7746 18.7854 15.0067 18.6508C15.0425 18.63 15.0783 18.6104 15.1137 18.5892C15.3258 18.4625 15.5321 18.3271 15.7333 18.1858C15.785 18.1496 15.8367 18.1133 15.8879 18.0758C16.0779 17.9367 16.2629 17.7912 16.4425 17.6396C16.4683 17.6179 16.4962 17.5996 16.5217 17.5775L16.6667 17.4525V17.4454C18.7108 15.6129 20 12.9546 20 10C20 4.48625 15.5138 0 10 0ZM10 10C8.16208 10 6.66667 8.50458 6.66667 6.66667C6.66667 4.82875 8.16208 3.33333 10 3.33333C11.8379 3.33333 13.3333 4.82875 13.3333 6.66667C13.3333 8.50458 11.8379 10 10 10ZM11.25 10.8333C13.7771 10.8333 15.8333 12.8896 15.8333 15.4167V17.0658C15.8158 17.0804 15.7975 17.0938 15.78 17.1083C15.6154 17.2421 15.4467 17.3692 15.2742 17.4908C15.2358 17.5179 15.1983 17.5458 15.16 17.5721C14.9737 17.6992 14.7825 17.8183 14.5879 17.9312C14.5525 17.9521 14.5167 17.9725 14.4808 17.9929C14.2767 18.1075 14.0687 18.215 13.8567 18.3133C13.8346 18.3237 13.8121 18.3337 13.7896 18.3438C13.0975 18.6583 12.3683 18.8862 11.6179 19.0212C11.5942 19.0254 11.5704 19.03 11.5467 19.0342C11.3104 19.0746 11.0721 19.1058 10.8321 19.1279C10.7992 19.1308 10.7658 19.1329 10.7325 19.1354C10.4896 19.1542 10.2454 19.1667 10 19.1667C9.75458 19.1667 9.51042 19.1542 9.2675 19.1346C9.23458 19.1321 9.20125 19.13 9.16792 19.1271C8.92792 19.105 8.68958 19.0742 8.45333 19.0333C8.42958 19.0292 8.40583 19.025 8.38208 19.0204C7.63167 18.8854 6.9025 18.6575 6.21042 18.3429C6.18792 18.3325 6.16542 18.3229 6.14333 18.3125C5.93125 18.2142 5.72333 18.1067 5.51917 17.9921C5.48333 17.9717 5.44792 17.9513 5.41208 17.9304C5.2175 17.8179 5.02625 17.6983 4.84 17.5713C4.80125 17.545 4.76375 17.5171 4.72583 17.49C4.55333 17.3683 4.38458 17.2417 4.22 17.1075C4.2025 17.0933 4.18417 17.0796 4.16667 17.065V15.4167C4.16667 12.8896 6.22292 10.8333 8.75 10.8333H11.25ZM16.6667 16.2817V15.4167C16.6667 12.8037 14.8067 10.6171 12.3417 10.1104C13.4421 9.36 14.1667 8.09625 14.1667 6.66667C14.1667 4.36917 12.2975 2.5 10 2.5C7.7025 2.5 5.83333 4.36917 5.83333 6.66667C5.83333 8.09625 6.55792 9.36 7.65833 10.1104C5.19333 10.6171 3.33333 12.8037 3.33333 15.4167V16.2817C1.785 14.6396 0.833333 12.4296 0.833333 10C0.833333 4.94542 4.94542 0.833333 10 0.833333C15.0546 0.833333 19.1667 4.94542 19.1667 10C19.1667 12.4296 18.215 14.6396 16.6667 16.2817Z" fill="white"/>
                    </svg>
                    <label id="resp-btn" for="resp-check">
                        <svg width="23" height="16" viewBox="0 0 23 16" fill="none" xmlns="http://www.w3.org/2000/svg">
                            <path d="M21.1766 6.58826H1.41177C0.632078 6.58826 0 7.22033 0 8.00003C0 8.77973 0.632078 9.4118 1.41177 9.4118H21.1766C21.9563 9.4118 22.5884 8.77973 22.5884 8.00003C22.5884 7.22033 21.9563 6.58826 21.1766 6.58826Z" fill="white"/>
                            <path d="M1.41177 2.82355H21.1766C21.9563 2.82355 22.5884 2.19147 22.5884 1.41177C22.5884 0.632078 21.9563 0 21.1766 0H1.41177C0.632078 0 0 0.632078 0 1.41177C0 2.19147 0.632078 2.82355 1.41177 2.82355Z" fill="white"/>
                            <path d="M21.1766 13.1764H1.41177C0.632078 13.1764 0 13.8085 0 14.5882C0 15.3679 0.632078 15.9999 1.41177 15.9999H21.1766C21.9563 15.9999 22.5884 15.3679 22.5884 14.5882C22.5884 13.8085 21.9563 13.1764 21.1766 13.1764Z" fill="white"/>
                            </svg>
                            
                    </label>
            </div>


        </div>

    </header>

    <section class="container">
        <div class="description_page_container">
            <div class="desc_page_left_container">
                <div class="movie_container">
                    <h2 class="movie_title">Kimi (HBO MAX)</h2>
                    <img src="./img/kimi-movie-poster-md 1.png" alt="" srcset="">
                    <div class="movie_details_container">
                        <div class="row">
                            <p>Crime,Drama</p>
                            <p>
                                <svg width="6" height="6" viewBox="0 0 6 6" fill="none" xmlns="http://www.w3.org/2000/svg">
                                    <circle cx="3" cy="3" r="3" fill="#8B8B8B"/>
                                    </svg>
                                1h 29min</p>
                                
                        </div>
                        <div class="row">
                            <p>Movie
                                <svg width="35" height="35" viewBox="0 0 35 35" fill="none" xmlns="http://www.w3.org/2000/svg">
                                    <path d="M30.625 6.5625H4.375C3.79484 6.5625 3.23844 6.79297 2.8282 7.2032C2.41797 7.61344 2.1875 8.16984 2.1875 8.75V26.25C2.1875 26.8302 2.41797 27.3866 2.8282 27.7968C3.23844 28.207 3.79484 28.4375 4.375 28.4375H30.625C31.2052 28.4375 31.7616 28.207 32.1718 27.7968C32.582 27.3866 32.8125 26.8302 32.8125 26.25V8.75C32.8125 8.16984 32.582 7.61344 32.1718 7.2032C31.7616 6.79297 31.2052 6.5625 30.625 6.5625ZM4.375 26.25V8.75H30.625V26.25H4.375Z" fill="#8B8B8B"/>
                                    <path d="M24.0625 12.0312H19.6875V22.9688H24.0625C24.9327 22.9688 25.7673 22.623 26.3827 22.0077C26.998 21.3923 27.3438 20.5577 27.3438 19.6875V15.3125C27.3438 14.4423 26.998 13.6077 26.3827 12.9923C25.7673 12.377 24.9327 12.0312 24.0625 12.0312ZM25.1562 19.6875C25.1562 19.9776 25.041 20.2558 24.8359 20.4609C24.6308 20.666 24.3526 20.7812 24.0625 20.7812H21.875V14.2188H24.0625C24.3526 14.2188 24.6308 14.334 24.8359 14.5391C25.041 14.7442 25.1562 15.0224 25.1562 15.3125V19.6875Z" fill="#8B8B8B"/>
                                    <path d="M14.2188 12.0312V16.4062H10.9375V12.0312H8.75V22.9688H10.9375V18.5938H14.2188V22.9688H16.4062V12.0312H14.2188Z" fill="#8B8B8B"/>
                                    </svg>
                                    
                            </p>
                            <p>
                                <svg width="6" height="6" viewBox="0 0 6 6" fill="none" xmlns="http://www.w3.org/2000/svg">
                                    <circle cx="3" cy="3" r="3" fill="#8B8B8B"/>
                                    </svg>
                                Imdb: 6.3/10</p>

                        </div>
                    </div>
                </div>

                <div class="cast_container">
                    <h2>CAST</h2>
                    <ul class="cast_list_container column">
                        <li><img src="./img/Ellipse 10.png" alt=""> <p class="column_center">Zoe Kravitz<span>as Angela Childs</span></p></li>
                        <li><img src="./img/Ellipse 10.png" alt=""> <p class="column_center">Zoe Kravitz <span>as Angela Childs</span></p></li>
                        <li><img src="./img/Ellipse 10.png" alt=""> <p class="column_center">Zoe Kravitz <span>as Angela Childs</span></p></li>
                        <li><img src="./img/Ellipse 10.png" alt=""> <p class="column_center">Zoe Kravitz <span>as Angela Childs</span></p></li>
                        <li><img src="./img/Ellipse 10.png" alt=""> <p class="column_center">Zoe Kravitz <span>as Angela Childs</span></p></li>
                        <li><img src="./img/Ellipse 10.png" alt=""> <p class="column_center">Zoe Kravitz <span>as Angela Childs</span></p></li>
                        <li><img src="./img/Ellipse 10.png" alt=""> <p class="column_center">Zoe Kravitz <span>as Angela Childs</span></p></li>
                        <li><img src="./img/Ellipse 10.png" alt=""> <p class="column_center">Zoe Kravitz <span>as Angela Childs</span></p></li>
                        <li><img src="./img/Ellipse 10.png" alt=""> <p class="column_center">Zoe Kravitz <span>as Angela Childs</span></p></li>
                        <li><img src="./img/Ellipse 10.png" alt=""> <p class="column_center">Zoe Kravitz <span>as Angela Childs</span></p></li>
                        <li><img src="./img/Ellipse 10.png" alt=""> <p class="column_center">Zoe Kravitz <span>as Angela Childs</span></p></li>
                        <li><img src="./img/Ellipse 10.png" alt=""> <p class="column_center">Zoe Kravitz <span>as Angela Childs</span></p></li>
                    </ul>

                    <button class="cast_container_btn">
                        <svg width="13" height="9" viewBox="0 0 13 9" fill="none" xmlns="http://www.w3.org/2000/svg">
                            <path d="M12.2119 4L13 4.53906L6.5 9L0 4.53906L0.784063 4L6.5 7.91927L12.2119 4Z" fill="white"/>
                            <path d="M12.2119 0L13 0.539062L6.5 5L0 0.539062L0.784063 0L6.5 3.91927L12.2119 0Z" fill="white"/>
                            </svg>     
                    </button>
                </div>
            </div>
            <div class="desc_page_right_container">
                <div class="right_container_button">
                    <button class="right_container_actv_btn">SUBTITLE</button>
                    <button>DUBLAJ</button>
                    <button>CINEMA MOOD</button>
                </div>

                <p class="right_container_paragraph">
                    Angela suffers from a fear of open spaces, which is exacerbated by the general lockdown, so she works from home. Her job is to process the erroneous responses of Kimi's trendy voice assistant.She reports the incident to her superior, who refers her to Natalie Chowdhury, an executive at Amygdala. Angela attempts to reach Chowdhury over the phone, but is eventually convinced to come to her office in person, with the promise that the FBI will be informed about the case. At the office, Angela is disturbed when Chowdhury seems reticent to contact the authorities and makes reference to her prior mental health leave... 
                </p>

                <div class="right_container_movie_btns">
                    <button class="red_btn"> 
                        <svg width="14" height="19" viewBox="0 0 14 19" fill="none" xmlns="http://www.w3.org/2000/svg">
                            <path d="M2.27755 18.3672L2.42469 18.263L13.3903 10.3855C13.7617 10.1191 13.9929 9.7194 13.9929 9.2734C13.9929 8.82739 13.7547 8.42773 13.3903 8.16128L2.44571 0.289613L2.26354 0.156391C2.08837 0.0579224 1.87816 0 1.65395 0C1.04436 0 0.546875 0.428627 0.546875 0.961514V17.5737C0.546875 18.1066 1.04436 18.5352 1.65395 18.5352C1.88517 18.5352 2.10238 18.4715 2.27755 18.3672Z" fill="white"/>
                        </svg>                            
                        PLAY
                    </button>
                    <ul>
                        <li>
                            <button>
                                <svg width="28" height="24" viewBox="0 0 28 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                <path d="M0 12C0 18.625 5.371 24 12 24C15.184 24 18.238 22.746 20.531 20.535L18.531 18.535C16.84 20.332 14.481 21.332 12 21.332C3.68 21.332 -0.48 11.282 5.398 5.398C11.278 -0.48 21.332 3.691 21.332 12H17.332L22.664 17.332H22.797L28 12H24C24 5.375 18.625 0 12 0C5.371 0 0 5.375 0 12Z" fill="white"/>
                                </svg>  
                            </button>
                        </li>
                        <li>
                            <button class="active_btn">
                                <svg width="16" height="25" viewBox="0 0 16 25" fill="none" xmlns="http://www.w3.org/2000/svg">
                                <path d="M15.5 1H1.5H1L1.5 23.7514L8.5 17.6383L15.5 23.7514V1Z" fill="#C00511" stroke="#C00511"/>
                                </svg>
                            </button>
                        </li>
                        <li>
                            <button>
                                <svg width="17" height="25" viewBox="0 0 17 25" fill="none" xmlns="http://www.w3.org/2000/svg">
                                <path d="M16.9548 22.073H8.47754H0.000296914V25H16.9548V22.073ZM16.6739 10.3675C16.2391 9.91555 15.5338 9.91555 15.0995 10.3675L9.57691 16.1065V1.15747C9.57691 0.517879 9.07768 0 8.46303 0C7.84787 0 7.34949 0.518055 7.34949 1.15764V16.1066L1.90129 10.4454C1.4664 9.99316 0.761442 9.99316 0.326551 10.4454C-0.10885 10.8973 -0.10885 11.63 0.326551 12.0821L7.67557 19.7186C7.70103 19.7457 7.72887 19.7713 7.75722 19.7958C7.77012 19.8067 7.78353 19.8157 7.79694 19.8269C7.8129 19.8383 7.82851 19.8519 7.8443 19.8632C7.86077 19.8743 7.87689 19.8833 7.89285 19.8939C7.90779 19.9034 7.92238 19.9124 7.93783 19.9209C7.95481 19.9308 7.97161 19.9385 7.98841 19.9468C8.00488 19.9547 8.02067 19.9629 8.03645 19.9701C8.05309 19.9771 8.06972 19.9828 8.08653 19.9886C8.10418 19.9953 8.12167 20.0024 8.13949 20.0078C8.15663 20.0131 8.17293 20.017 8.18991 20.0214C8.20824 20.0255 8.22623 20.0316 8.2449 20.0352C8.26442 20.0389 8.28411 20.041 8.30363 20.0447C8.3201 20.0473 8.33623 20.0503 8.35269 20.0521C8.42568 20.0595 8.49952 20.0595 8.57251 20.0521C8.58949 20.0503 8.60494 20.0473 8.62157 20.0447C8.64092 20.041 8.66112 20.0396 8.67997 20.0352C8.69847 20.0315 8.7168 20.0255 8.73496 20.0214C8.75228 20.017 8.76874 20.0131 8.78572 20.0078C8.80354 20.0024 8.82085 19.9953 8.83868 19.9886C8.85599 19.9833 8.87178 19.9777 8.88875 19.9701C8.90505 19.9629 8.92118 19.9547 8.93679 19.9468C8.95377 19.9383 8.97057 19.9306 8.98721 19.9209C9.00265 19.9124 9.01725 19.9025 9.03202 19.8939C9.04865 19.8833 9.06478 19.8745 9.08074 19.8632C9.09703 19.8519 9.11282 19.8383 9.12844 19.8269C9.14134 19.8159 9.15492 19.8069 9.16799 19.7958C9.21025 19.7598 9.2493 19.7187 9.28579 19.6776C9.29869 19.6658 9.31193 19.6545 9.32466 19.6418L16.6737 12.0049C17.1087 11.5519 17.1087 10.8192 16.6739 10.3675Z" fill="white"/>
                                </svg>                                            
                            </button>
                        </li>
                        <li>
                            <button>
                                <svg width="23" height="19" viewBox="0 0 23 19" fill="none" xmlns="http://www.w3.org/2000/svg">
                                <path d="M22.6553 7.12373L15.0722 0.23001C14.4977 -0.344467 13.8084 0.23001 13.8084 1.14917V4.59603C8.40829 4.59603 3.81248 7.928 1.62946 12.4089C0.825196 13.9026 0.365615 15.5111 0.0209288 17.1196C-0.208862 18.2686 1.51457 18.8431 2.20394 17.809C4.73164 13.7877 8.98277 11.1451 13.8084 11.1451V14.9366C13.8084 15.8558 14.4977 16.4303 15.0722 15.8558L22.6553 8.96206C23.1149 8.50248 23.1149 7.58331 22.6553 7.12373Z" fill="white"/>
                                </svg>                                            
                                </button>
                        </li>
                    </ul>
                </div>

                <div class="right_container_movie_trailers">
                    <h2>VIDEOS: TRAILERS, TEASERS, FEATURETTES</h2>
                    <div class="right_trailers">
                        <div class="grid_trailers">
                            <svg width="63" height="63" viewBox="0 0 63 63" fill="none" xmlns="http://www.w3.org/2000/svg">
                                <path d="M25.1962 45.6764L44.0981 31.5L25.1962 17.3236V45.6764ZM31.5 0C14.1103 0 0 14.1126 0 31.5C0 48.8897 14.1126 63 31.5 63C48.8897 63 63 48.8874 63 31.5C63 14.1103 48.8874 0 31.5 0ZM31.5 56.7057C17.6095 56.7057 6.29433 45.3882 6.29433 31.5C6.29433 17.6095 17.6118 6.29433 31.5 6.29433C45.3905 6.29433 56.7057 17.6118 56.7057 31.5C56.7057 45.3905 45.3882 56.7057 31.5 56.7057Z" fill="white"/>
                                </svg>                                
                        </div>
                        <div class="grid_trailers">
                            <svg width="63" height="63" viewBox="0 0 63 63" fill="none" xmlns="http://www.w3.org/2000/svg">
                                <path d="M25.1962 45.6764L44.0981 31.5L25.1962 17.3236V45.6764ZM31.5 0C14.1103 0 0 14.1126 0 31.5C0 48.8897 14.1126 63 31.5 63C48.8897 63 63 48.8874 63 31.5C63 14.1103 48.8874 0 31.5 0ZM31.5 56.7057C17.6095 56.7057 6.29433 45.3882 6.29433 31.5C6.29433 17.6095 17.6118 6.29433 31.5 6.29433C45.3905 6.29433 56.7057 17.6118 56.7057 31.5C56.7057 45.3905 45.3882 56.7057 31.5 56.7057Z" fill="white"/>
                                </svg>                                
                        </div>
                        <div class="grid_trailers">
                            <svg width="63" height="63" viewBox="0 0 63 63" fill="none" xmlns="http://www.w3.org/2000/svg">
                                <path d="M25.1962 45.6764L44.0981 31.5L25.1962 17.3236V45.6764ZM31.5 0C14.1103 0 0 14.1126 0 31.5C0 48.8897 14.1126 63 31.5 63C48.8897 63 63 48.8874 63 31.5C63 14.1103 48.8874 0 31.5 0ZM31.5 56.7057C17.6095 56.7057 6.29433 45.3882 6.29433 31.5C6.29433 17.6095 17.6118 6.29433 31.5 6.29433C45.3905 6.29433 56.7057 17.6118 56.7057 31.5C56.7057 45.3905 45.3882 56.7057 31.5 56.7057Z" fill="white"/>
                                </svg>                                
                        </div>
                        <div class="grid_trailers">
                            <svg width="63" height="63" viewBox="0 0 63 63" fill="none" xmlns="http://www.w3.org/2000/svg">
                                <path d="M25.1962 45.6764L44.0981 31.5L25.1962 17.3236V45.6764ZM31.5 0C14.1103 0 0 14.1126 0 31.5C0 48.8897 14.1126 63 31.5 63C48.8897 63 63 48.8874 63 31.5C63 14.1103 48.8874 0 31.5 0ZM31.5 56.7057C17.6095 56.7057 6.29433 45.3882 6.29433 31.5C6.29433 17.6095 17.6118 6.29433 31.5 6.29433C45.3905 6.29433 56.7057 17.6118 56.7057 31.5C56.7057 45.3905 45.3882 56.7057 31.5 56.7057Z" fill="white"/>
                                </svg>                                
                        </div>
                    </div>
                </div>


            </div>
        </div>

        <div class="my_list_container">
            <div class="my_list_title_container">
                <h1>My list</h1>
                <img src="./img/Rectangle 22.png" alt="">
            </div>
            <div class="movies_cards_container">
                <div class="movie_card">
                    <svg width="24" height="36" viewBox="0 0 24 36" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path d="M21.4055 0.641359H2.15605C1.62736 0.640645 1.11999 0.843755 0.745374 1.20608C0.370756 1.56841 0.159517 2.06033 0.158051 2.5738V33.1086C0.154243 33.4905 0.268868 33.8647 0.487016 34.1825C0.705164 34.5003 1.01674 34.747 1.3812 34.8905C1.74464 35.0396 2.14542 35.081 2.533 35.0092C2.92058 34.9375 3.27761 34.7559 3.55908 34.4873L11.5428 26.8704C11.6064 26.81 11.6918 26.7762 11.7808 26.7762C11.8697 26.7762 11.9552 26.81 12.0188 26.8704L20.0052 34.4846C20.2865 34.7535 20.6435 34.9353 21.0312 35.0071C21.4189 35.0788 21.8197 35.0373 22.1831 34.8878C22.5466 34.7441 22.8573 34.4976 23.0749 34.1804C23.2925 33.8631 23.407 33.4897 23.4035 33.1086V2.5738C23.402 2.06033 23.1908 1.56841 22.8162 1.20608C22.4416 0.843755 21.9342 0.640645 21.4055 0.641359ZM21.7431 33.1086C21.7444 33.172 21.7254 33.2342 21.6887 33.2867C21.652 33.3391 21.5995 33.3793 21.5383 33.4015C21.477 33.4293 21.4083 33.4378 21.3418 33.4258C21.2753 33.4137 21.2143 33.3817 21.1675 33.3343L13.181 25.7201C12.8059 25.3653 12.303 25.1668 11.7794 25.1668C11.2558 25.1668 10.7529 25.3653 10.3777 25.7201L2.39404 33.3343C2.34698 33.3814 2.28605 33.4131 2.21963 33.4252C2.15322 33.4372 2.08459 33.4289 2.02322 33.4015C1.96207 33.3793 1.90952 33.3391 1.87285 33.2867C1.83617 33.2342 1.81716 33.172 1.81844 33.1086V2.5738C1.8199 2.48802 1.8562 2.40627 1.91943 2.34636C1.98267 2.28646 2.06772 2.25325 2.15605 2.25397H21.4055C21.4938 2.25325 21.5789 2.28646 21.6421 2.34636C21.7054 2.40627 21.7417 2.48802 21.7431 2.5738V33.1086Z" fill="white"/>
                        </svg>
                    <img src="./img/image 16.png" alt="">
                    <h4 class="movie_card_title">No sudden move</h4>
                </div>
                <div class="movie_card">
                    <svg width="24" height="36" viewBox="0 0 24 36" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path d="M21.4055 0.641359H2.15605C1.62736 0.640645 1.11999 0.843755 0.745374 1.20608C0.370756 1.56841 0.159517 2.06033 0.158051 2.5738V33.1086C0.154243 33.4905 0.268868 33.8647 0.487016 34.1825C0.705164 34.5003 1.01674 34.747 1.3812 34.8905C1.74464 35.0396 2.14542 35.081 2.533 35.0092C2.92058 34.9375 3.27761 34.7559 3.55908 34.4873L11.5428 26.8704C11.6064 26.81 11.6918 26.7762 11.7808 26.7762C11.8697 26.7762 11.9552 26.81 12.0188 26.8704L20.0052 34.4846C20.2865 34.7535 20.6435 34.9353 21.0312 35.0071C21.4189 35.0788 21.8197 35.0373 22.1831 34.8878C22.5466 34.7441 22.8573 34.4976 23.0749 34.1804C23.2925 33.8631 23.407 33.4897 23.4035 33.1086V2.5738C23.402 2.06033 23.1908 1.56841 22.8162 1.20608C22.4416 0.843755 21.9342 0.640645 21.4055 0.641359ZM21.7431 33.1086C21.7444 33.172 21.7254 33.2342 21.6887 33.2867C21.652 33.3391 21.5995 33.3793 21.5383 33.4015C21.477 33.4293 21.4083 33.4378 21.3418 33.4258C21.2753 33.4137 21.2143 33.3817 21.1675 33.3343L13.181 25.7201C12.8059 25.3653 12.303 25.1668 11.7794 25.1668C11.2558 25.1668 10.7529 25.3653 10.3777 25.7201L2.39404 33.3343C2.34698 33.3814 2.28605 33.4131 2.21963 33.4252C2.15322 33.4372 2.08459 33.4289 2.02322 33.4015C1.96207 33.3793 1.90952 33.3391 1.87285 33.2867C1.83617 33.2342 1.81716 33.172 1.81844 33.1086V2.5738C1.8199 2.48802 1.8562 2.40627 1.91943 2.34636C1.98267 2.28646 2.06772 2.25325 2.15605 2.25397H21.4055C21.4938 2.25325 21.5789 2.28646 21.6421 2.34636C21.7054 2.40627 21.7417 2.48802 21.7431 2.5738V33.1086Z" fill="white"/>
                        </svg>
                    <img src="./img/image 16 (1).png" alt="">
                    <h4>I want you back</h4>
                </div>
                <div class="movie_card">
                    <svg width="24" height="36" viewBox="0 0 24 36" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path d="M21.4055 0.641359H2.15605C1.62736 0.640645 1.11999 0.843755 0.745374 1.20608C0.370756 1.56841 0.159517 2.06033 0.158051 2.5738V33.1086C0.154243 33.4905 0.268868 33.8647 0.487016 34.1825C0.705164 34.5003 1.01674 34.747 1.3812 34.8905C1.74464 35.0396 2.14542 35.081 2.533 35.0092C2.92058 34.9375 3.27761 34.7559 3.55908 34.4873L11.5428 26.8704C11.6064 26.81 11.6918 26.7762 11.7808 26.7762C11.8697 26.7762 11.9552 26.81 12.0188 26.8704L20.0052 34.4846C20.2865 34.7535 20.6435 34.9353 21.0312 35.0071C21.4189 35.0788 21.8197 35.0373 22.1831 34.8878C22.5466 34.7441 22.8573 34.4976 23.0749 34.1804C23.2925 33.8631 23.407 33.4897 23.4035 33.1086V2.5738C23.402 2.06033 23.1908 1.56841 22.8162 1.20608C22.4416 0.843755 21.9342 0.640645 21.4055 0.641359ZM21.7431 33.1086C21.7444 33.172 21.7254 33.2342 21.6887 33.2867C21.652 33.3391 21.5995 33.3793 21.5383 33.4015C21.477 33.4293 21.4083 33.4378 21.3418 33.4258C21.2753 33.4137 21.2143 33.3817 21.1675 33.3343L13.181 25.7201C12.8059 25.3653 12.303 25.1668 11.7794 25.1668C11.2558 25.1668 10.7529 25.3653 10.3777 25.7201L2.39404 33.3343C2.34698 33.3814 2.28605 33.4131 2.21963 33.4252C2.15322 33.4372 2.08459 33.4289 2.02322 33.4015C1.96207 33.3793 1.90952 33.3391 1.87285 33.2867C1.83617 33.2342 1.81716 33.172 1.81844 33.1086V2.5738C1.8199 2.48802 1.8562 2.40627 1.91943 2.34636C1.98267 2.28646 2.06772 2.25325 2.15605 2.25397H21.4055C21.4938 2.25325 21.5789 2.28646 21.6421 2.34636C21.7054 2.40627 21.7417 2.48802 21.7431 2.5738V33.1086Z" fill="white"/>
                        </svg>
                    <img src="./img/image 17.png" alt="">
                    <h4>Fresh</h4>
                </div>
                <div class="movie_card">
                    <svg width="24" height="36" viewBox="0 0 24 36" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path d="M21.4055 0.641359H2.15605C1.62736 0.640645 1.11999 0.843755 0.745374 1.20608C0.370756 1.56841 0.159517 2.06033 0.158051 2.5738V33.1086C0.154243 33.4905 0.268868 33.8647 0.487016 34.1825C0.705164 34.5003 1.01674 34.747 1.3812 34.8905C1.74464 35.0396 2.14542 35.081 2.533 35.0092C2.92058 34.9375 3.27761 34.7559 3.55908 34.4873L11.5428 26.8704C11.6064 26.81 11.6918 26.7762 11.7808 26.7762C11.8697 26.7762 11.9552 26.81 12.0188 26.8704L20.0052 34.4846C20.2865 34.7535 20.6435 34.9353 21.0312 35.0071C21.4189 35.0788 21.8197 35.0373 22.1831 34.8878C22.5466 34.7441 22.8573 34.4976 23.0749 34.1804C23.2925 33.8631 23.407 33.4897 23.4035 33.1086V2.5738C23.402 2.06033 23.1908 1.56841 22.8162 1.20608C22.4416 0.843755 21.9342 0.640645 21.4055 0.641359ZM21.7431 33.1086C21.7444 33.172 21.7254 33.2342 21.6887 33.2867C21.652 33.3391 21.5995 33.3793 21.5383 33.4015C21.477 33.4293 21.4083 33.4378 21.3418 33.4258C21.2753 33.4137 21.2143 33.3817 21.1675 33.3343L13.181 25.7201C12.8059 25.3653 12.303 25.1668 11.7794 25.1668C11.2558 25.1668 10.7529 25.3653 10.3777 25.7201L2.39404 33.3343C2.34698 33.3814 2.28605 33.4131 2.21963 33.4252C2.15322 33.4372 2.08459 33.4289 2.02322 33.4015C1.96207 33.3793 1.90952 33.3391 1.87285 33.2867C1.83617 33.2342 1.81716 33.172 1.81844 33.1086V2.5738C1.8199 2.48802 1.8562 2.40627 1.91943 2.34636C1.98267 2.28646 2.06772 2.25325 2.15605 2.25397H21.4055C21.4938 2.25325 21.5789 2.28646 21.6421 2.34636C21.7054 2.40627 21.7417 2.48802 21.7431 2.5738V33.1086Z" fill="white"/>
                        </svg>
                    <img src="./img/image 17 (1).png" alt="">

                        
                        
                    <h4>After Yang</h4>
                </div>
            </div>
        </div>

        <div class="comments_container">
            <h1>Comments (30)</h1>
            <div class="comments">
                <div class="comment_card">
                    <div class="comment_img">
                        <img src="./img/Ellipse 13.png" alt="">
                    </div>
                    <div class="comment">
                        <h5>Kukkiriza Emmanuel  <span>4 month ago</span></h5>
                        <p>Love Zoe and I'm happy to have more of her this year</p>
                    </div>
                </div>

                <div class="comment_card">
                    <div class="comment_img">
                        <img src="./img/Ellipse 13.png" alt="">
                    </div>
                    <div class="comment">
                        <h5>Kukkiriza Emmanuel  <span>4 month ago</span></h5>
                        <p>I really loved this movie, higsshly recommend for her acting skills. Reminded me of Halle Berry's hay days when she would do very unique films. Also blue hair really look good on her 😁 💙</p>
                    </div>
                </div>
                <div class="comment_card">
                    <div class="comment_img">
                        <img src="./img/Ellipse 13.png" alt="">
                    </div>
                    <div class="comment">
                        <h5>Kukkiriza Emmanuel  <span>4 month ago</span></h5>
                        <p>The only thing this trailer left out was the motive for the crime. 
                            She discovers what might be a crime. She reports the crime. The authorities find nothing. She pursues the issue. Someone warns her to let it go. She continues pursuit. She finds a possible ally. The authorities become antagonistic to her. She and the ally band together to find proof. They find it yet the ally is killed. Someone within the authorities is a second ally unbeknownst to her. The motive of the crime is revealed...</p>
                    </div>
                </div>

                <div class="comment_card">
                    <div class="comment_img">
                        <img src="./img/Ellipse 13.png" alt="">
                    </div>
                    <div class="comment">
                        <h5>Kukkiriza Emmanuel  <span>4 month ago</span></h5>
                        <p>The only thing this trailer left out was the motive for the crime. 
                            She discovers what might be a crime. She reports the crime. The authorities find nothing. She pursues the issue. Someone warns her to let it go. She continues pursuit. She finds a possible ally. The authorities become antagonistic to her. She and the ally band together to find proof. They find it yet the ally is killed. Someone within the authorities is a second ally unbeknownst to her. The motive of the crime is revealed...</p>
                    </div>
                </div>
                <div class="comment_card">
                    <div class="comment_img">
                        <img src="../img/Ellipse 13.png" alt="">
                    </div>
                    <div class="comment">
                        <h5>Kukkiriza Emmanuel  <span>4 month ago</span></h5>
                        <p>Looks like a very good episode of Black Mirror 😍</p>
                    </div>
                </div>

            </div>
        </div>
    </section>

    <footer>
        <div class="footer_container">
            <div class="header_logo">
                <img src="./img/MOVIEDOM1.png" alt="logo" />
            </div>
            <div class="links">
                <ul class="main-nav row">
                    <li>TV Shows</li>
                    <li>Movies</li>
                    <li>Upcoming</li>
                    <li>Trailers</li>
                    <li>My list</li>
                </ul>
            </div>
            <div class="social_media">
                <ul class="row">
                    <li><img src="../img/Vector (5).png" alt="" srcset=""></li>
                    <li><img src="../img/Vector (6).png" alt="" srcset=""></li>
                    <li><img src="../img/Vector (7).png" alt="" srcset=""></li>
                    <li><img src="../img/Vector (1).png" alt="" srcset=""></li>
                </ul>
            </div>
        </div>
    </footer>
        
`;
    }
}
exports.default = new Movies();

},{"./components/Nav":"gUPQu","../../img/MOVIEDOM1.png":"2JcHc","@parcel/transformer-js/src/esmodule-helpers.js":"gkKU3"}],"2JcHc":[function(require,module,exports) {
module.exports = require("./helpers/bundle-url").getBundleURL("1pq9E") + "MOVIEDOM1.f2c90336.png" + "?" + Date.now();

},{"./helpers/bundle-url":"lgJ39"}],"lgJ39":[function(require,module,exports) {
"use strict";
var bundleURL = {};
function getBundleURLCached(id) {
    var value = bundleURL[id];
    if (!value) {
        value = getBundleURL();
        bundleURL[id] = value;
    }
    return value;
}
function getBundleURL() {
    try {
        throw new Error();
    } catch (err) {
        var matches = ("" + err.stack).match(/(https?|file|ftp|(chrome|moz|safari-web)-extension):\/\/[^)\n]+/g);
        if (matches) // The first two stack frames will be this function and getBundleURLCached.
        // Use the 3rd one, which will be a runtime in the original bundle.
        return getBaseURL(matches[2]);
    }
    return "/";
}
function getBaseURL(url) {
    return ("" + url).replace(/^((?:https?|file|ftp|(chrome|moz|safari-web)-extension):\/\/.+)\/[^/]+$/, "$1") + "/";
} // TODO: Replace uses with `new URL(url).origin` when ie11 is no longer supported.
function getOrigin(url) {
    var matches = ("" + url).match(/(https?|file|ftp|(chrome|moz|safari-web)-extension):\/\/[^/]+/);
    if (!matches) throw new Error("Origin not found");
    return matches[0];
}
exports.getBundleURL = getBundleURLCached;
exports.getBaseURL = getBaseURL;
exports.getOrigin = getOrigin;

},{}]},["3Unyy","bDbGG"], "bDbGG", "parcelRequireaf7e")

//# sourceMappingURL=index.fbb3188c.js.map
