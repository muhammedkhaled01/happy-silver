<div class="hero-slider-1 dot-style-1 dot-style-1-position-1 {{ $class ?? ''}}" data-autoplay="{{ $shortcode->is_autoplay ?: 'yes' }}" data-autoplay-speed="{{ in_array($shortcode->autoplay_speed, theme_get_autoplay_speed_options()) ? $shortcode->autoplay_speed : 3000 }}">
    @foreach($sliders as $slider)
        <div class="single-hero-slider single-animation-wrap">
            @if ($sliderContent = Theme::partial('shortcodes.sliders.content', compact('slider')))
                <div class="container">
                    <div class="row align-items-center slider-animated-1">
                        <div class="col-lg-5 col-md-6">
                            {!! $sliderContent !!}
                        </div>

                        <div class="col-lg-7 col-md-6">
                            <div class="single-slider-img single-slider-img-1">
                                {!! Theme::partial('shortcodes.sliders.includes.image', compact('slider')) !!}
                            </div>
                        </div>
                    </div>
                </div>
            @else
                <div class="single-slider-img single-slider-img-1">
                    {!! Theme::partial('shortcodes.sliders.includes.image', compact('slider')) !!}
                </div>
            @endif
        </div>
    @endforeach
</div>
<div class="slider-arrow hero-slider-1-arrow"></div>
