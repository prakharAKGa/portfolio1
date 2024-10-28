'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/AssetManifest.bin": "de1339c4f3901a20da8f850308498ee9",
"assets/AssetManifest.bin.json": "64e5c683e62f4cb3c5149491d50991ef",
"assets/AssetManifest.json": "daa97a433d5eb8d883b66ec1c655a876",
"assets/assets/fonts/ebrima.ttf": "ec8b5752c02b6ee02e524a5b8ca0af08",
"assets/assets/images/1notify%25201%2520(2).png": "617a73da545dedbad4d512063091d87d",
"assets/assets/images/C++-removebg-preview.png": "f63c797307a8a7d7c3eb776a335b486f",
"assets/assets/images/C++.jpg": "4bab1d835fa2462b5ca844a031ffd730",
"assets/assets/images/C++.png": "914a89751ad6fd57e69702ec1fd5ffd1",
"assets/assets/images/C_Logo.png": "623f8181c81323e831a831bd69b76d95",
"assets/assets/images/Docker.png": "4fc6c1eb5a7fd11af20c7ae81813af7f",
"assets/assets/images/Firebase.png": "ee50e77d6caedb237bc736f4056035ab",
"assets/assets/images/firestore.png": "78a3d1fe7393b1d9a524973508730089",
"assets/assets/images/flask.png": "8cc21d63c2918077ec7f54180bab647e",
"assets/assets/images/flutter.png": "6384ef9f30ca20eeb768d30015ab46dc",
"assets/assets/images/git.webp": "3abc4a7ca6b74e094d2470143fd454ff",
"assets/assets/images/github.png": "ec3a60c8c6539a07eb70b52f6737ea6e",
"assets/assets/images/githubpng.png": "84a13b1b2d2c02f11ed4e863d5ee40ab",
"assets/assets/images/greenFlutter.png": "9faa419ae8ba3dc2e23b5e0dce2b41ac",
"assets/assets/images/Group%2520185.png": "0d29267e227dee0c6ef29dbb22872e5d",
"assets/assets/images/linkedin.png": "b42f8a21911fc65e249ee3071c88ca56",
"assets/assets/images/logo.png": "c2a2a3dfc3139bc0f94476a08f56dede",
"assets/assets/images/m.png": "30bb5b156d768dcb7eb77729e2798295",
"assets/assets/images/machine-learning-icon-artificial-intelligence-smart-machine-logo-template-illustration-free-vector.jpg": "83b54ebb5954b3776b841e821515bbce",
"assets/assets/images/mlllll.png": "94edf9daf45fc39273a64b57e5ae8a4a",
"assets/assets/images/node-js-icon-454x512-nztofx17.png": "99d580e2755af3d2ee4c763d408f6359",
"assets/assets/images/PK.png": "0f46a5a89c581d888d36a9200dfc9a91",
"assets/assets/images/Prakhar%2520Srivastava%2520(2).png": "d1a438016628ab22ccf317d51a92f1f0",
"assets/assets/images/Prakhar_Srivastava_white_logo.png": "71325f718dc0c2eadbad66d0bc390719",
"assets/assets/images/Riverpod.png": "875b2c58f7a51a01d72ffcc2ed38371e",
"assets/assets/images/tez-high-resolution-logo-transparent%2520(1).png": "f7d136d0a036b78cd68ad6d43818b01a",
"assets/assets/images/Untitled%2520Diagram.drawio.png": "cc73d729a93d7a858e9ebef6b5549a3b",
"assets/assets/images/Youtub.png": "cc9ab20350cfa3c0fb385e078c776b60",
"assets/assets/images/Youtube.png": "370a7d5b5fcafbefca5545a05d65df70",
"assets/assets/images/Yt.png": "80bd279b0b58fb2dd120d93fd3a95dc4",
"assets/assets/three_d_models/desktop_pc/license.txt": "e6d97073e4d56d48b6fdc82990d31204",
"assets/assets/three_d_models/desktop_pc/scene.bin": "23174dbb379856a8aed4d6eea6d2cd8d",
"assets/assets/three_d_models/desktop_pc/scene.gltf": "d3323234452c57ead411e3b8daae9667",
"assets/assets/three_d_models/desktop_pc/textures/Material.002_baseColor.png": "35e25d59126d8762bdab0a2d6d05c647",
"assets/assets/three_d_models/desktop_pc/textures/Material.023_baseColor.jpeg": "dbc97bc78cce3f7056d162f3c04602e3",
"assets/assets/three_d_models/desktop_pc/textures/Material.024_baseColor.jpeg": "ca9a2f465268eb9d4c5cb2bcebb8f543",
"assets/assets/three_d_models/desktop_pc/textures/Material.074_0_baseColor.png": "f18ac69e1e5e82e30f208d33025ca809",
"assets/assets/three_d_models/desktop_pc/textures/Material.074_10_baseColor.jpeg": "341d8f713cc6a6ff705982a211ec13ab",
"assets/assets/three_d_models/desktop_pc/textures/Material.074_11_baseColor.png": "fe9af7cf6acea473368d4fb62afd67d0",
"assets/assets/three_d_models/desktop_pc/textures/Material.074_12_baseColor.jpeg": "91a62bc77f92b7d4542861d1d4c7fbb9",
"assets/assets/three_d_models/desktop_pc/textures/Material.074_13_baseColor.png": "343d72da2041ff61c57498ef8f691342",
"assets/assets/three_d_models/desktop_pc/textures/Material.074_14_baseColor.png": "8e822ebe111e9b682db992e90a3dd421",
"assets/assets/three_d_models/desktop_pc/textures/Material.074_15_baseColor.png": "6bc1cb84fed2ebea1e20726c333829cb",
"assets/assets/three_d_models/desktop_pc/textures/Material.074_16_baseColor.png": "d2ffd8d27466db9a830334168f0933f2",
"assets/assets/three_d_models/desktop_pc/textures/Material.074_17_baseColor.png": "5c9f88375cf0d9e4789e6c6b1a60734f",
"assets/assets/three_d_models/desktop_pc/textures/Material.074_18_baseColor.png": "c8149f06706a927afb48b65d3a2fe119",
"assets/assets/three_d_models/desktop_pc/textures/Material.074_18_emissive.png": "3b4374c710e54dc8534150fcf6ae7873",
"assets/assets/three_d_models/desktop_pc/textures/Material.074_19_baseColor.png": "e9070b535a2e0c3012e63398dc554798",
"assets/assets/three_d_models/desktop_pc/textures/Material.074_1_baseColor.jpeg": "2fa68839191b9359a1767ab20b52f1bb",
"assets/assets/three_d_models/desktop_pc/textures/Material.074_20_baseColor.png": "064b878ad81554b8e07a5d5fc6c2cc67",
"assets/assets/three_d_models/desktop_pc/textures/Material.074_21_baseColor.png": "9913b632e388736fa1acfac3c044fe28",
"assets/assets/three_d_models/desktop_pc/textures/Material.074_22_baseColor.png": "316d2a9d05ec56c9fc8563c9b078e686",
"assets/assets/three_d_models/desktop_pc/textures/Material.074_23_baseColor.png": "0c247143b91640b400714072e9157c0f",
"assets/assets/three_d_models/desktop_pc/textures/Material.074_24_baseColor.png": "5baf1a6d1c3125fbb07037aab3e2eb68",
"assets/assets/three_d_models/desktop_pc/textures/Material.074_24_emissive.png": "8380d7402e2ecfb8442b42a9b20c16b8",
"assets/assets/three_d_models/desktop_pc/textures/Material.074_25_baseColor.jpeg": "311d36565fa3c0ab5029c0fac2105620",
"assets/assets/three_d_models/desktop_pc/textures/Material.074_26_baseColor.png": "f153ab4eca07bceeaa1088c0dc0c652a",
"assets/assets/three_d_models/desktop_pc/textures/Material.074_27_baseColor.png": "f0034cbcfdda3dc405de4f7fe271b2c6",
"assets/assets/three_d_models/desktop_pc/textures/Material.074_27_emissive.png": "78dbd71aa070e0ca86ee9a8d15b1143a",
"assets/assets/three_d_models/desktop_pc/textures/Material.074_28_baseColor.png": "ccaedc0a4eba6b67fe3ab83302bc1417",
"assets/assets/three_d_models/desktop_pc/textures/Material.074_29_baseColor.png": "018d596a220604a594cd0fd69f7e87f1",
"assets/assets/three_d_models/desktop_pc/textures/Material.074_2_baseColor.jpeg": "059ab594475b338f9d5bad37c548074d",
"assets/assets/three_d_models/desktop_pc/textures/Material.074_30_baseColor.png": "2fd3ab428bb588c53333308b4d9a4906",
"assets/assets/three_d_models/desktop_pc/textures/Material.074_31_baseColor.png": "09331dfefd9056ca78e57b8a33c6cc4e",
"assets/assets/three_d_models/desktop_pc/textures/Material.074_32_baseColor.jpeg": "7e75c0e35c6915ef3ff069c0698f8b4b",
"assets/assets/three_d_models/desktop_pc/textures/Material.074_33_baseColor.png": "dc4464ab39ad4be689fd135e84cd071c",
"assets/assets/three_d_models/desktop_pc/textures/Material.074_34_baseColor.jpeg": "d4220ce14c37a9a67d06fab4932dab79",
"assets/assets/three_d_models/desktop_pc/textures/Material.074_35_baseColor.png": "5a951d0aad494a0584516a4926eb9451",
"assets/assets/three_d_models/desktop_pc/textures/Material.074_36_baseColor.jpeg": "5f0e4b3ca11fe7301f5fedae83c14cb6",
"assets/assets/three_d_models/desktop_pc/textures/Material.074_39_baseColor.jpeg": "144f2ccb46548f1a8c180df24f4acdc4",
"assets/assets/three_d_models/desktop_pc/textures/Material.074_3_baseColor.png": "164ae623a0796a8b4c1c629d925e6576",
"assets/assets/three_d_models/desktop_pc/textures/Material.074_40_baseColor.png": "85fa9a240ae54d6b61b4b5140e7a5c7d",
"assets/assets/three_d_models/desktop_pc/textures/Material.074_4_baseColor.png": "1f60e118c24afa38a7a5324661cf9b1b",
"assets/assets/three_d_models/desktop_pc/textures/Material.074_4_emissive.png": "b35299d3e99267154505735d894ed51e",
"assets/assets/three_d_models/desktop_pc/textures/Material.074_5_baseColor.png": "7ca558555f7122727ed06e962e6b3bda",
"assets/assets/three_d_models/desktop_pc/textures/Material.074_6_baseColor.png": "4e066d93f54588fe724587fed0e20f95",
"assets/assets/three_d_models/desktop_pc/textures/Material.074_7_baseColor.png": "8846216e98f2c57de8c6bb33fc38a5ba",
"assets/assets/three_d_models/desktop_pc/textures/Material.074_8_baseColor.png": "92ed78d0989371c66b6451ea81f92870",
"assets/assets/three_d_models/desktop_pc/textures/Material.074_9_baseColor.png": "d0faa9c1663c816a1697721241e1009d",
"assets/assets/three_d_models/desktop_pc/textures/Material.074_9_emissive.png": "cbc546984ead36d7c006e1c607980ef4",
"assets/assets/three_d_models/desktop_pc/textures/Material.074_baseColor.png": "ff9fe4dfcc6d544165602e0eb2c6fda5",
"assets/assets/three_d_models/desktop_pc/textures/Material_baseColor.jpeg": "fd6f9bce75d3515756debcb5ca12a898",
"assets/assets/three_d_models/desktop_pc/textures/Material_metallicRoughness.png": "82a688151ea06c3ede3706efa564ae47",
"assets/assets/three_d_models/desktop_pc/textures/Tasten_2_baseColor.jpeg": "cc4c89c56df059f0de2e70540fc8077f",
"assets/assets/three_d_models/planet/license.txt": "825b17d247f660832d931c9516fdf088",
"assets/assets/three_d_models/planet/scene.bin": "eaf372ae93fbd26d862318e1d712cd32",
"assets/assets/three_d_models/planet/scene.gltf": "e18815e02dfb8989874067b264bbdabc",
"assets/assets/three_d_models/planet/textures/Clouds_baseColor.png": "f45116e6e8cd5efa74abe0f6fe40a3e4",
"assets/assets/three_d_models/planet/textures/Planet_baseColor.png": "1821eed6565b52b7a4e84320ada536bf",
"assets/FontManifest.json": "6907f80ef484dc6827b54291eaae072a",
"assets/fonts/MaterialIcons-Regular.otf": "483609fdf6ee3e728b9f0096232a09c7",
"assets/NOTICES": "400975a830f1b1a510610ab6c974df1e",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "e986ebe42ef785b27164c36a9abc7818",
"assets/packages/model_viewer_plus/assets/model-viewer.min.js": "4226392bee9372f20a688343e51e7b54",
"assets/packages/model_viewer_plus/assets/template.html": "8de94ff19fee64be3edffddb412ab63c",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"canvaskit/canvaskit.js": "c86fbd9e7b17accae76e5ad116583dc4",
"canvaskit/canvaskit.js.symbols": "38cba9233b92472a36ff011dc21c2c9f",
"canvaskit/canvaskit.wasm": "3d2a2d663e8c5111ac61a46367f751ac",
"canvaskit/chromium/canvaskit.js": "43787ac5098c648979c27c13c6f804c3",
"canvaskit/chromium/canvaskit.js.symbols": "4525682ef039faeb11f24f37436dca06",
"canvaskit/chromium/canvaskit.wasm": "f5934e694f12929ed56a671617acd254",
"canvaskit/skwasm.js": "445e9e400085faead4493be2224d95aa",
"canvaskit/skwasm.js.symbols": "741d50ffba71f89345996b0aa8426af8",
"canvaskit/skwasm.wasm": "e42815763c5d05bba43f9d0337fa7d84",
"canvaskit/skwasm.worker.js": "bfb704a6c714a75da9ef320991e88b03",
"favicon.ico": "081c07157501b8525dbc03c4374aa859",
"flutter.js": "c71a09214cb6f5f8996a531350400a9a",
"icons/android-chrome-192x192.png": "29ef2f840f29a50bf066b5863b0522b1",
"icons/android-chrome-512x512.png": "c84d1f78f50e6e7a0fa1c6a7fa72e9bf",
"icons/apple-touch-icon.png": "296e74d2da08f16dfc109eb0f4bdb319",
"icons/favicon-16x16.png": "84060e663443d608835ae15929496cc1",
"icons/favicon-32x32.png": "5aaa0c65735075bfe7183d51dc4878e6",
"index.html": "3ea04be570b287368691ac2430590fa1",
"/": "3ea04be570b287368691ac2430590fa1",
"main.dart.js": "8e78ef9f58a6418adbdef61f8145b8f8",
"manifest.json": "92ff5d945ce35234341a584e8034dd0b",
"PK.png": "0f46a5a89c581d888d36a9200dfc9a91",
"version.json": "0790913ed3dd9aade2b20663b4f1d1ee"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"assets/AssetManifest.bin.json",
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
        // Claim client to enable caching on first launch
        self.clients.claim();
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
      // Claim client to enable caching on first launch
      self.clients.claim();
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
