<style>
    #loadingSpinner {
        position: fixed;
        top: 0;
        left: 0;
        right: 0;
        bottom: 0;
        display: flex;
        justify-content: center;
        align-items: center;
        z-index: 9999;
        opacity: 1;
        transition: opacity 0.5s ease;
    }

    .spinner {
        position: absolute;
        top: 0%;
        right: 0;
    }
</style>
<script src="{{ custom_asset('js/pace.min.js') }}"></script>
<link rel="stylesheet" href="{{ custom_asset('css/minimal.css') }}">

<div id="loadingSpinner">
    <img src="{{ custom_asset('icon/animation.gif') }}" alt="Loading..." class="spinner" />
</div>

<script>
    Pace.on('hide', function() {
        document.getElementById('loadingSpinner').style.opacity = '0';
        setTimeout(function() {
            document.getElementById('loadingSpinner').style.display = 'none';
        }, 500);
    });
</script>
