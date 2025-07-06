<!DOCTYPE html>
<html lang="{{App()->getLocale()}}">
    <head>
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <title>@yield('title'){{ ucfirst($breadcrumbs['page_action']['name_en'] ?? '') }} | @lang('site_name', [], 'en') </title>
        <meta content="width=device-width, initial-scale=1.0, shrink-to-fit=no" name="viewport" />
        <script src="{{ custom_asset('js/pace.min.js') }}"></script>
        <link rel="stylesheet" href="{{ custom_asset('css/minimal.css') }}">
        @include('components.head')
        <style>
            .select2-container .select2-selection--single {
                box-sizing: border-box;
                cursor: pointer;
                display: block;
                height: 40px !important;
                user-select: none;
                -webkit-user-select: none;
            }
            .select2-container--default .select2-selection--single .select2-selection__rendered {
                padding-left: 14px;
                font-size: 1.10rem;
                line-height: 34px;
            }
            .select2-container--default .select2-selection--single .select2-selection__arrow {
                display: none;
                height: 34px;
                position: absolute;
                top: 1px;
                right: 1px;
                width: 20px;
            }
            .select2-container--default .select2-selection--single {
                border-color: #ebedf2;
                border-width: 2px;
                border-radius: 4px;
            }
            .select2-dropdown {
                background-color: #fff;
                border-color: #ebedf2;
                border-width: 2px;
                border-radius: 4px;
                box-sizing: border-box;
                display: block;
                position: absolute;
                left: -100000px;
                width: 100%;
                z-index: 1051;
            }
            .select2-container--default .select2-search--dropdown .select2-search__field {
                border: none;
            }
            .select2-search--dropdown .select2-search__field {
                padding: 6px 10px;
                width: 100%;
                box-sizing: border-box;
            }
            .select2-search--dropdown {
                display: block;
                padding: 0px 0;
            }
        </style>
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
        @yield('script')
    </body>
</html>
