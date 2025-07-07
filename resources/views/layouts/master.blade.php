<!DOCTYPE html>
<html lang="{{App()->getLocale()}}">
    <head>
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <title>@yield('title'){{ ucfirst($breadcrumbs['page_action']['name_en'] ?? '') }} | @lang('site_name', [], 'en') </title>
        <meta content="width=device-width, initial-scale=1.0, shrink-to-fit=no" name="viewport" />
        <script src="{{ custom_asset('js/pace.min.js') }}"></script>
        <link rel="stylesheet" href="{{ custom_asset('css/minimal.css') }}">
        @include('components.head')
        @yield('style')
    </head>
    <body class="language_{{ App::getLocale() }}">
        <div class="wrapper">
            @include('components.sidebar')

            <div class="main-panel">
                @include('components.header')

                <div class="container">
                    <div class="page-inner">
                        @yield('content')
                    </div>
                </div>
                @include('components.footer')
            </div>
            @include('components.template')
        </div>
        @include('components.script')
        @include('components.notify')
        @yield('script')
    </body>
</html>
