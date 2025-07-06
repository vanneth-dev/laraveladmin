<div class="sidebar" data-background-color="{{ config('setting.default_mode') }}">
    <div class="sidebar-logo">
        <div class="logo-header" data-background-color="{{ config('setting.default_mode') }}">
            <a href="#" class="logo d-flex align-white-center justify-content-center">
                <img src="{{ custom_asset('image/me.jpg') }}" alt="navbar brand" class="navbar-brand" height="40" />
                <span class="logo-text ml-2 m-2">
                    <h2 class="mb-0">@lang('site_name')</h2>
                </span>
            </a>
            <div class="nav-toggle">
                <button class="btn btn-toggle toggle-sidebar">
                    <i class="gg-menu-right"></i>
                </button>
                <button class="btn btn-toggle sidenav-toggler">
                    <i class="gg-menu-left"></i>
                </button>
            </div>
            <button class="topbar-toggler more">
                <i class="gg-more-vertical-alt"></i>
            </button>
        </div>
    </div>
    {!! $sideBars['sideBars'] !!}
</div>
