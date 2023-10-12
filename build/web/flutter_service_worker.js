'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "assets/AssetManifest.json": "d0fd574298756a829fee3bea2a7e5a41",
"assets/assets/android.png": "eae21107612ecac3c66a87ba511583bb",
"assets/assets/flutter.png": "83c269fb754ea70684b3966016c3844b",
"assets/assets/google.png": "96fff8d12ad4e12895ec8054015d5501",
"assets/assets/java.png": "1148c2a424450f5de697383eaa2578bc",
"assets/assets/medium.png": "5b32f37a43e0b6a5b79965f7e1a8aece",
"assets/assets/microsoft.png": "d5da7c4fc0fc259a843d9ff1bf0b956d",
"assets/assets/portfolio_img.jpg": "3a13dc1b25029af5edd693011fc72776",
"assets/assets/portfolio_img2.jpg": "0ee1f4cf425192b28b5c3c41db087fe6",
"assets/assets/ss1.png": "d03085edcd4b2b438570b3444f565d4c",
"assets/assets/ss10.png": "ad07da6db692c60382f67999658f834c",
"assets/assets/ss11.png": "6188c255067f6ee9be625f5f255b5c9b",
"assets/assets/ss12.png": "1e7a586fbcfe528525af188da7244ad2",
"assets/assets/ss13.png": "53db7650516d559b8647903c8d9d1915",
"assets/assets/ss14.png": "3fc0638dfed34ac0e065ee8f4b4c88e5",
"assets/assets/ss15.png": "4f35398afb837af5d23c04d7534bb42d",
"assets/assets/ss16.PNG": "03d0c71ba65dd551c6171d8ad15b2ded",
"assets/assets/ss17.PNG": "b5ae8748c61e97fc21cb12b0f1fc07c6",
"assets/assets/ss18.PNG": "f8826115af8fc0cc741082cb4141d4d7",
"assets/assets/ss19.PNG": "c4393c71586264c3bccc9d429bb115c4",
"assets/assets/ss2.png": "953cdc0f3a75bad9036e16f0f9671592",
"assets/assets/ss20.PNG": "7376b21d134668fc6f8516cf7672ed0e",
"assets/assets/ss21.PNG": "57989453d3fb7e67a806acbbe0508fae",
"assets/assets/ss3.png": "049858570caeee6bd0da211aa6be0bae",
"assets/assets/ss4.png": "217bfa11750f780068a7516965c72f7e",
"assets/assets/ss5.png": "6a05f7f8bb99ba29f6244bdb918b659a",
"assets/assets/ss6.png": "656da2903731f486629f92d6b0ef75d7",
"assets/assets/ss7.png": "00659e60b66c9c20b56a5603c52c1fb4",
"assets/assets/ss8.png": "b78def1f51b5b6bd580287dcb43b50bd",
"assets/assets/ss9.png": "b8bd306a112ccca42e896013ad3c7e26",
"assets/FontManifest.json": "c61e91a86b1dbb0a7a9e581d4046f5e9",
"assets/fonts/MaterialIcons-Regular.otf": "e7069dfd19b331be16bed984668fe080",
"assets/fonts/Poppins-Black.ttf": "0573b9231a8316427ad6e751b52e87a4",
"assets/fonts/Poppins-Bold.ttf": "a3e0b5f427803a187c1b62c5919196aa",
"assets/fonts/Poppins-ExtraBold.ttf": "544fa4f2678a8285eb88b8dfe503c90c",
"assets/fonts/Poppins-Light.ttf": "f6ea751e936ade6edcd03a26b8153b4a",
"assets/fonts/Poppins-Medium.ttf": "f61a4eb27371b7453bf5b12ab3648b9e",
"assets/fonts/Poppins-Regular.ttf": "8b6af8e5e8324edfd77af8b3b35d7f9c",
"assets/fonts/Poppins-SemiBold.ttf": "4cdacb8f89d588d69e8570edcbe49507",
"assets/NOTICES": "95a064dee7f072b8a56e0ddaed5362ff",
"assets/packages/font_awesome_flutter/lib/fonts/fa-brands-400.ttf": "b00363533ebe0bfdb95f3694d7647f6d",
"assets/packages/font_awesome_flutter/lib/fonts/fa-regular-400.ttf": "0a94bab8e306520dc6ae14c2573972ad",
"assets/packages/font_awesome_flutter/lib/fonts/fa-solid-900.ttf": "9cda082bd7cc5642096b56fa8db15b45",
"canvaskit/canvaskit.js": "97937cb4c2c2073c968525a3e08c86a3",
"canvaskit/canvaskit.wasm": "3de12d898ec208a5f31362cc00f09b9e",
"canvaskit/profiling/canvaskit.js": "c21852696bc1cc82e8894d851c01921a",
"canvaskit/profiling/canvaskit.wasm": "371bc4e204443b0d5e774d64a046eb99",
"favicon.png": "a89de4cb673b12bb1e1668d05bc6b70f",
"flutter.js": "a85fcf6324d3c4d3ae3be1ae4931e9c5",
"icons/Icon-192.png": "cd86466c513ae9ef19d038e910ced12d",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"index.html": "f1df558ab91bb21dc81ea03c808d5a6b",
"/": "f1df558ab91bb21dc81ea03c808d5a6b",
"main.dart.js": "6d1c1a23a3398a188237fc906e56b8f9",
"manifest.json": "75721181c830e84b9d2b33e7c2b97e0a",
"version.json": "009c9e65172e010890f7f65fde438006"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "main.dart.js",
"index.html",
"assets/AssetManifest.json",
"assets/FontManifest.json"];
// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});

// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});

// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});

self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});

// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}

// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
