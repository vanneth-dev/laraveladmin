@extends('layouts.pages.edit')

@section('style')
@endsection
@php
    $optional['form_order'] = 'N';
@endphp
@section('form')
@section('form')
<div class="{{ config('setting.form_group_class') }}">
    <label for="name_kh" class="{{ config('setting.form_label_class') }}">{{ __('name_kh') }}</label>
    <div class="{{ config('setting.form_div_input_class') }}">
        <input
            class="{{ config('setting.form_input_class') }} @error('name_kh') is-invalid @enderror"
            type="text"
            name="name_kh"
            id="name_kh"
            value="{{ old('name_kh', $data['field_data']->name_kh ?? '') }}"
            placeholder="{{ __('enter_') }}{{ __('name_kh') }}"
            required
        >
        @error('name_kh')
        <div class="invalid-feedback">
            {{ $message }}
        </div>
        @enderror
    </div>
</div>
<div class="{{ config('setting.form_group_class') }}">
    <label for="name_en" class="{{ config('setting.form_label_class') }}">{{ __('name_en') }}</label>
    <div class="{{ config('setting.form_div_input_class') }}">
        <input
            class="{{ config('setting.form_input_class') }} @error('name_en') is-invalid @enderror"
            type="text"
            name="name_en"
            id="name_en"
            value="{{ old('name_en', $data['field_data']->name_en ?? '') }}"
            placeholder="{{ __('enter_') }}{{ __('name_en') }}"
            required
        >
        @error('name_en')
        <div class="invalid-feedback">
            {{ $message }}
        </div>
        @enderror
    </div>
</div>
<div class="{{ config('setting.form_group_class') }}">
    <label for="slug" class="{{ config('setting.form_label_class') }}">{{ __('slug') }}</label>
    <div class="{{ config('setting.form_div_input_class') }}">
        <input
            class="{{ config('setting.form_input_class') }} @error('slug') is-invalid @enderror"
            type="text"
            name="slug"
            id="slug"
            value="{{ old('slug', $data['field_data']->slug ?? '') }}"
            placeholder="{{ __('enter_') }}{{ __('slug') }}"
            required
        >
        @error('slug')
        <div class="invalid-feedback">
            {{ $message }}
        </div>
        @enderror
    </div>
</div>
<div class="{{ config('setting.form_group_class') }}">
    <label for="description" class="{{ config('setting.form_label_class') }}">{{ __('description') }}</label>
    <div class="{{ config('setting.form_div_input_class') }}">
        <textarea
            class="{{ config('setting.form_input_class') }} @error('description') is-invalid @enderror"
            name="description"
            id="description"
            placeholder="{{ __('enter_') }}{{ __('description') }}"
        >{{ old('description', $data['field_data']->description ?? '') }}</textarea>
        @error('description')
        <div class="invalid-feedback">
            {{ $message }}
        </div>
        @enderror
    </div>
</div>
@endsection

@endsection
@section('form_end')
<div class="p-3 mb-3 border rounded table-responsive text-nowrap" style="line-height: 3;">
    <p class="">
        <span id="actionCount">សកម្មភាពអនុញ្ញាត (<span id="checkedCount">0</span>)</span>
    </p>
    <ul class="checktree" style="list-style-type: none;">
        @isset($data['url'])
        <li>
            <div class="pretty p-svg p-plain p-bigger p-smooth">
                <input id="checkAll" name="checkAll" type="checkbox" class="form-check-input url-checkbox">
                <div class="state">
                    <img class="svg" src="{{ custom_asset('image/check-circle.svg') }}"/>
                    <label class="" for="checkAll">
                        @lang('check_all_url')
                    </label>
                </div>
            </div>
        </li>
        @foreach ($data['url'] as $url)
        <li>
            <div class="pretty p-svg p-plain p-bigger p-smooth">
                <input id="url_{{ $url['id'] }}" name="url_id[]" type="checkbox" class="form-check-input url-checkbox"
                value="{{ $url['id'] }}"
                @if(in_array($url['id'], $data['url_access'] ?? [])) checked @endif>
                <div class="state">
                    <img class="svg" src="{{ custom_asset('image/check-circle.svg') }}"/>
                    <label class="" for="url_{{ $url['id'] }}">
                        {{ $url['url'] }}
                    </label>
                </div>
            </div>
        </li>
        @endforeach
        @endisset
    </ul>
</div>
@endsection

@section('script')
    @include($data['load_page'].'script')
@endsection
