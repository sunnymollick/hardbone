<!DOCTYPE html>
<html>
<head>
    @php
        $settings = DB::table('settings')->where('is_active', 1)->first();
    @endphp
    <title>{{ $settings->app_name }}|Career</title>
</head>
<body>
    <h1>{{ $title }}</h1>
    <p>{{ $body }}</p>

    <p>Thank you</p>
</body>
</html>
