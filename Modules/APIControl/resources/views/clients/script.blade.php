
<script>
    $(document).ready(function() {
        $('#api_role').select2({
            ajax: {
                url: '{{ route("api.roles") }}',
                dataType: 'json',
                delay: 250,
                data: function(params) {
                    return {
                        q: params.term
                    };
                },
                processResults: function(data) {
                    return {
                        results: data.results.map(function(item) {
                            return {
                                id: item.id,
                                text: item.text
                            };
                        })
                    };
                },
                cache: true
            },
            placeholder: '{{ __("please_select") }}',
        });
    });
</script>
