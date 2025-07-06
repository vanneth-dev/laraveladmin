@extends('layouts.pages.create')

@section('style')
@endsection
@php
    $optional['form_order'] = 'N';
@endphp
@section('form')
<div class="{{ config('setting.form_group_class') }}">
    <label for="url" class="{{ config('setting.form_label_class') }}">{{ __('url') }}</label>
    <div class="{{ config('setting.form_div_input_class') }}">
        <input
            class="{{ config('setting.form_input_class') }} @error('url') is-invalid @enderror"
            type="text"
            name="url"
            id="url"
            value="{{ old('url') }}"
            placeholder="{{ __('enter_') }}{{ __('url') }}"
            required
        >
        @error('url')
        <div class="invalid-feedback">
            {{ $message }}
        </div>
        @enderror
    </div>
</div>

@endsection
@section('script')
@endsection
