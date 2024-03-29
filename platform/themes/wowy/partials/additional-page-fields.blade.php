<div class="mb-3">
    <label class="form-label" for="header_style" class="form-label">{{ __('Header style') }}</label>
    {!! Form::customSelect('header_style', get_layout_header_styles(), $headerStyle, ['class' => 'form-control', 'id' => 'header_style']) !!}
</div>

@if ($page && $page->template == 'homepage')
    <div class="mb-3">
        <label class="form-label" for="expanding_product_categories_on_the_homepage" class="form-label">{{ __('Expanding product categories on the homepage?') }}</label>
        {!! Form::customSelect(
            'expanding_product_categories_on_the_homepage',
            [
                'yes' => trans('core/base::base.yes'),
                'no'  => trans('core/base::base.no'),
            ],
            'no',
            ['class' => 'form-control', 'id' => 'expanding_product_categories_on_the_homepage']
        ) !!}
    </div>
@endif
