<head>
    <meta name="layout" content="main"/>
    <title><g:message code="frontend.requests"/></title>
</head>

<body>
    <h3>My Google Maps Demo</h3>

    <div id="map"></div>
    <script>
        function initMap() {
            var lat = ${geoLocation.get('lat')};
            var lon = ${geoLocation.get('lon')};
            var location = {lat: (Math.round(lat * 100) / 100), lng: (Math.round(lon * 100) / 100)};
            var map = new google.maps.Map(document.getElementById('map'), {
                zoom: 5,
                center: location
            });
            var marker = new google.maps.Marker({
                position: location,
                map: map
            });
        }
    </script>
    <script async defer
            src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCilJOm-fc4sNlcyG4G5i_30maDgbX2YbM&callback=initMap">
    </script>

    <section id="show">
        <div class="container">
            <div class="row control-group">
                <div class="col-lg-12">
                    <h1 class="page-header">${info.clientIp}</h1>

                    <p class="lead">${geoLocation.get('city')}</p>

                    <p class="lead">${geoLocation.get('country')}</p>

                    <p class="lead">${geoLocation.get('countryCode')}</p>

                    <p class="lead">${geoLocation.get('zip')}</p>
                </div>
            </div>
        </div>
    </section>
</body>