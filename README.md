<!-- PROJECT LOGO -->
<br />
<div align="center">
  <img src="https://i.imgur.com/AN5obLQ.png" alt="Logo" width="200" height="200">
  <img src="https://media.licdn.com/dms/image/C4D0BAQF0ZGttmUIvlA/company-logo_200_200/0/1624866438437?e=2147483647&v=beta&t=KQQR-shX9Xo1JACSP2ojRg9CM0UKYx0cF2lNbUrRxmQ" alt="Logo" width="200" height="200">
</div>

# Intelipoint Refiner SDK

#### Init Refiner with the projectId

```RefinerSdk.initRefiner(projectId: 'YOUR-PROJECT-ID')```

#### Identify the user with its corresponding ID and UserTraits

```
final refinerUser = RefinerUser(userId: userInfo.username, userTraits: userTraitsJson);
RefinerPackage.identifyUser(user: refinerUser);
```

#### Track event

```RefinerSdk.trackEvent(eventName: 'eventName')```

#### Track screen (not supported on Web)

```RefinerSdk.trackScreen(screenName: 'screenName')```

#### Reset user

```RefinerSdk.resetUser()```

### Required on Web:

Add this script to your index.html inside head tag:

  ```
  <script type="text/javascript">
    function identifyUser(params) {
      _refiner('identifyUser', params);
      (function () {
        var a = document.createElement("script");
        a.type = "text/javascript";
        a.async = !0;
        a.src = "https://js.refiner.io/v001/client.js";
        var b = document.getElementsByTagName("script")[0];
        b.parentNode.insertBefore(a, b)
      })();
    }

    window._refinerQueue = window._refinerQueue || [];

    function _refiner() { _refinerQueue.push(arguments); }

    function initRefiner(projectId) {
      _refiner('setProject', projectId);
    }

    function trackEvent(eventName) {
      _refiner('trackEvent', eventName);
    }
    
    function resetUser() {
      _refiner('resetUser');
    }
  </script>
  ```
