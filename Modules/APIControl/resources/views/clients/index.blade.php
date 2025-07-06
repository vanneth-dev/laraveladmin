@extends('layouts.pages.index')
@section('style')
<style>
    .copy-btn {
        cursor: pointer;
    }
    .copy-btn:hover {
        text-decoration: underline;
    }
</style>
@endsection

@section('filter')
    @php $filterClass = 'col-md-6 col-lg-4 p-0'; @endphp
    <div class="{{ $filterClass ?? 'col-md-6 col-lg-4 p-0' }}">
        <div class="form-group">
            <label for="name">{{__('name')}}</label>
            <input type="text" class="form-control" id="name" name="name" placeholder="Enter Name" value="{{ request('name') }}" />
        </div>
    </div>
@endsection
@section('button')

@endsection
@section('script')
<script>
function copyToClipboard(element, dataAttr, textSuffix) {
    var data = $(element).data(dataAttr);
    var $temp = $("<input>");
    $("body").append($temp);
    $temp.val(data).select();
    document.execCommand("copy");
    $temp.remove();
    // var $btn = $(element);
    // $btn.text(data + " " + textSuffix);
    // setTimeout(function() {
    //     $btn.text(data);
    // }, 500);
}

$(document).on('click', '#secret', function() {
    copyToClipboard(this, 'secret', 'Copied!');
});

$(document).on('click', '#client', function() {
    copyToClipboard(this, 'client', 'Copied!');
});

</script>
@endsection
