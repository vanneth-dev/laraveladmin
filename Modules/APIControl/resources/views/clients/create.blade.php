@extends('layouts.pages.create')

@section('style')
@endsection
@php
    $optional['form_order'] = 'N';
@endphp
@section('form')
<div class="{{ config('setting.form_group_class') }}">
    <label for="api_role" class="{{ config('setting.form_label_class') }}">{{ __('api_role') }}</label>
    <div class="{{ config('setting.form_div_input_class') }}">
        <select
            id="api_role"
            name="api_role_id"
            class="{{ config('setting.form_input_class') }} select2"
            data-placeholder="{{ __('please_select') }}"
            required
        >
            <option value="">{{ __('please_select') }}</option>
        </select>
        @error('api_role')
        <div class="invalid-feedback">
            {{ $message }}
        </div>
        @enderror
    </div>
</div>
<div class="{{ config('setting.form_group_class') }}">
    <label for="name" class="{{ config('setting.form_label_class') }}">{{ __('client_api_name') }}</label>
    <div class="{{ config('setting.form_div_input_class') }}">
        <input
            class="{{ config('setting.form_input_class') }} @error('name') is-invalid @enderror"
            type="text"
            name="name"
            id="name"
            value="{{ old('name') }}"
            placeholder="{{ __('enter_') }}{{ __('client_api_name') }}"
            required
        >
        @error('name')
        <div class="invalid-feedback">
            {{ $message }}
        </div>
        @enderror
    </div>
</div>

@endsection
@section('script')
    <script src="{{ custom_asset('js/select2.min.js') }}"></script>
    @include($data['load_page'].'script')
@endsection
