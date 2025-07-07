<script>
    const BASE_URL = "{{ asset('') }}";
</script>
<script src="{{ custom_asset('js/core/jquery-3.7.1.min.js') }}"></script>
<script src="{{ custom_asset('js/core/popper.min.js') }}"></script>
<script src="{{ custom_asset('js/core/bootstrap.min.js') }}"></script>

<script src="{{ custom_asset('js/plugin/jquery-scrollbar/jquery.scrollbar.min.js') }}"></script>

<script src="{{ custom_asset('js/plugin/chart.js/chart.min.js') }}"></script>

<script src="{{ custom_asset('js/plugin/jquery.sparkline/jquery.sparkline.min.js') }}"></script>

<script src="{{ custom_asset('js/plugin/chart-circle/circles.min.js') }}"></script>

<script src="{{ custom_asset('js/plugin/datatables/datatables.min.js') }}"></script>

<script src="{{ custom_asset('js/plugin/bootstrap-notify/bootstrap-notify.min.js') }}"></script>

<script src="{{ custom_asset('js/plugin/jsvectormap/jsvectormap.min.js') }}"></script>
<script src="{{ custom_asset('js/plugin/jsvectormap/world.js') }}"></script>

<script src="{{ custom_asset('js/plugin/sweetalert/sweetalert.min.js') }}"></script>

<script src="{{ custom_asset('js/kaiadmin.min.js') }}"></script>

<script src="{{ custom_asset('js/setting-demo.js') }}"></script>
<script src="{{ custom_asset('js/demo.js') }}"></script>
<script src="{{ custom_asset('js/customize.js') }}"></script>
<script>
    window.addEventListener('load', function() {
        const creditLink = document.querySelector('footer div a[href="https://kh.linkedin.com/in/vanneth-tak-bb8179225"]');
        let isValid = false;

        if (creditLink) {
            const div = creditLink.closest('div');
            if (div && div.innerHTML.includes("developer's")) {
                let el = div;
                isValid = true;
                while (el && el !== document.body) {
                    const style = window.getComputedStyle(el);
                    if (style.display === 'none' ||
                        style.visibility === 'hidden' ||
                        style.opacity === '0') {
                        isValid = false;
                        break;
                    }
                    el = el.parentElement;
                }
            }
        }

        if (!isValid) {
            document.body.innerHTML = "<div style='margin:3rem auto;text-align:center;font-size:2rem;color:red;'>" +
                "Project blocked: Developer credit is missing or hidden.<br>Please restore the credit section as required by the license.</div>";
            throw new Error("Credit missing or hidden. Project disabled.");
        }
    });

</script>
