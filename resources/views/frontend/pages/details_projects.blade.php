@extends('frontend.layouts.defaults')
@section('title')
Project Details
@endsection
@section('page_header')
<!-- Page Header -->
<div class="page_header">
    <div class="page_header_content">
        <div class="container">
            <ul class="breadcrumb">
                <li><a href="index.html">Home</a></li>
                <li class="active">Project Details</li>
            </ul>
            <h2 class="heading">Project Details</h2>
        </div>
    </div>
</div>
@endsection
@section('content')
<div class="container">
    <div class="project_details section">
        <div class="row">
            <div class="col-lg-8 col-md-12">
                <div class="project_details_inner">
                    <div class="post_img">
                        <img src="{{asset($details->hero_image)}}" alt="blog">
                    </div>
                    <div class="post_content">
                        <div class="post_header">
                            <h3 class="post_title">{{$details->project_title}}</h3>
                        </div>
                        <div class="fulltext">
                            <p>{{$details->project_description}}
                            </p>
                            <div class="post_gallery">
                                <div class="row">
                                    <div class="col-lg-6 col-sm-6">
                                        <img src="{{asset($details->image_1)}}"
                                            alt="img">
                                    </div>
                                    <div class="col-lg-6 col-sm-6">
                                        <img src="{{asset($details->image_2)}}"
                                            alt="img">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>

            <div class="col-lg-4 col-md-12">
                <div class="sidebar">
                    <div class="project_info">
                        <div class="project_info_bg">
                            <div class="project_info_header">
                                <h4>Project Information</h4>
                            </div>
                            <div class="project_info_details_bg">
                                <div class="project_info_details">
                                    <h5>Client Name</h5>
                                    <p>{{$details->client->name??''}}</p>
                                </div>
                                <div class="project_info_details">
                                    <h5>Location</h5>
                                    <p>{{$details->project_location}}</p>
                                </div>
                                <div class="project_info_details">
                                    <h5>Completion Time</h5>
                                    <p>{{$details->handover_time}}</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
        <!-- Additional Project Images Gallery at slider -->
        <div class="gallery_section">
            <div class="section_header text-center mb-4">
                <h3 class="section_title">Project Gallery</h3>
                <div class="title_divider">
                    <span class="divider_line"></span>
                    <span class="divider_icon"><i class="fa fa-image"></i></span>
                    <span class="divider_line"></span>
                </div>
            </div>
            <div class="project_images_slider">
                <div class="owl-carousel owl-theme">
                    @foreach($project_images as $image)
                    <div class="item">
                        <img src="{{asset($image->image_path)}}" alt="Project Image">
                    </div>
                    @endforeach
                </div>
            </div>
        </div>
        <!-- End of Additional Project Images Gallery -->

        <div class="video_post">
            <div class="ytube_video">
                <iframe id="ytvideo" src="{{ $details->video_link }}" allow="autoplay;"
                    allowfullscreen></iframe>
                <div class="post_content">
                    <div class="ytplay_btn"><i class="ion-ios-play"></i></div>
                    <img src="{{ asset('frontend/') }}/images/services/video_bg.png" alt="blog">
                </div>
            </div>
        </div>

    </div>

</div>
{{-- Add this in your head section or before the slider --}}
{{-- <link rel="stylesheet" href="{{ asset('frontend/css/custom.css') }}"> --}}
<style>
    .gallery_section {
        margin-top: 10px;
        padding: 40px 0;
        /* background: #f8f9fa; */ /* Removed background color */
    }

    .section_header {
        margin-bottom: 40px;
        animation: fadeInDown 0.8s ease-in-out;
    }

    @keyframes fadeInDown {
        from {
            opacity: 0;
            transform: translateY(-30px);
        }
        to {
            opacity: 1;
            transform: translateY(0);
        }
    }

    .section_title {
        font-size: 32px;
        font-weight: 700;
        color: var(--primary-color);
        margin-bottom: 15px;
        position: relative;
        display: inline-block;
    }

    .title_divider {
        display: flex;
        align-items: center;
        justify-content: center;
        gap: 10px;
        animation: fadeIn 1s ease-in-out 0.3s both;
    }

    @keyframes fadeIn {
        from {
            opacity: 0;
        }
        to {
            opacity: 1;
        }
    }

    .divider_line {
        width: 80px;
        height: 2px;
        background: var(--second-color);
        animation: expandWidth 1s ease-in-out 0.5s both;
    }

    @keyframes expandWidth {
        from {
            width: 0;
        }
        to {
            width: 80px;
        }
    }

    .divider_icon {
        color: var(--second-color);
        font-size: 20px;
        animation: pulse 2s ease-in-out infinite;
    }

    @keyframes pulse {
        0%, 100% {
            transform: scale(1);
        }
        50% {
            transform: scale(1.2);
        }
    }

    .project_images_slider {
        margin: 10px 0;
        position: relative;
        padding: 0 50px;
        animation: fadeInUp 1s ease-in-out 0.6s both;
    }

    @keyframes fadeInUp {
        from {
            opacity: 0;
            transform: translateY(30px);
        }
        to {
            opacity: 1;
            transform: translateY(0);
        }
    }

    .project_images_slider .item {
        padding: 5px;
    }

    .project_images_slider .item img {
        width: 100%;
        height: 450px;
        object-fit: cover;
        border-radius: 8px;
        box-shadow: 0 4px 15px rgba(0,0,0,0.15);
        transition: all 0.4s cubic-bezier(0.4, 0, 0.2, 1);
        position: relative;
        overflow: hidden;
    }

    .project_images_slider .item img:hover {
        transform: scale(1.08) translateY(-5px);
        box-shadow: 0 12px 30px rgba(0,0,0,0.3);
        border-radius: 12px;
    }

    /* Shine effect on hover */
    .project_images_slider .item {
        position: relative;
        overflow: hidden;
    }

    .project_images_slider .item::before {
        content: '';
        position: absolute;
        top: 0;
        left: -100%;
        width: 50%;
        height: 100%;
        background: linear-gradient(90deg, transparent, rgba(255,255,255,0.3), transparent);
        transition: left 0.6s;
        z-index: 1;
    }

    .project_images_slider .item:hover::before {
        left: 100%;
    }

    .owl-nav button {
        position: absolute;
        top: 50%;
        transform: translateY(-50%);
        background: var(--primary-color) !important;
        color: white !important;
        width: 45px;
        height: 45px;
        border-radius: 50%;
        font-size: 24px;
        transition: all 0.4s cubic-bezier(0.4, 0, 0.2, 1);
        box-shadow: 0 2px 8px rgba(0,0,0,0.2);
        opacity: 0.7;
    }

    .owl-nav button.owl-prev {
        left: 0;
        animation: slideInLeft 0.8s ease-in-out 0.8s both;
    }

    .owl-nav button.owl-next {
        right: 0;
        animation: slideInRight 0.8s ease-in-out 0.8s both;
    }

    @keyframes slideInLeft {
        from {
            opacity: 0;
            transform: translateX(-50px) translateY(-50%);
        }
        to {
            opacity: 0.7;
            transform: translateX(0) translateY(-50%);
        }
    }

    @keyframes slideInRight {
        from {
            opacity: 0;
            transform: translateX(50px) translateY(-50%);
        }
        to {
            opacity: 0.7;
            transform: translateX(0) translateY(-50%);
        }
    }

    .owl-nav button:hover {
        background: var(--second-color) !important;
        transform: translateY(-50%) scale(1.15) rotate(5deg);
        opacity: 1;
        box-shadow: 0 4px 15px rgba(0,0,0,0.3);
    }

    .owl-dots {
        text-align: center;
        margin-top: 30px;
        animation: fadeIn 1s ease-in-out 1s both;
    }

    .owl-dot {
        display: inline-block;
        width: 14px;
        height: 14px;
        background: #ddd;
        border-radius: 50%;
        margin: 0 6px;
        transition: all 0.4s cubic-bezier(0.4, 0, 0.2, 1);
        cursor: pointer;
    }

    .owl-dot.active {
        background: var(--primary-color);
        transform: scale(1.3);
        box-shadow: 0 0 10px var(--primary-color);
    }

    .owl-dot:hover {
        background: var(--second-color);
        transform: scale(1.2);
    }

    /* Mobile responsive */
    @media (max-width: 768px) {
        .project_images_slider .item img {
            height: 280px;
        }

        .project_images_slider {
            padding: 0 35px;
        }

        .owl-nav button {
            width: 35px;
            height: 35px;
            font-size: 18px;
        }

        .section_title {
            font-size: 24px;
        }
    }

    /* Smooth entrance animation for carousel items */
    .owl-item {
        animation: zoomIn 0.5s ease-in-out;
    }

    @keyframes zoomIn {
        from {
            opacity: 0;
            transform: scale(0.8);
        }
        to {
            opacity: 1;
            transform: scale(1);
        }
    }
</style>
@endsection

@section('scripts')
<!-- Owl Carousel JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js"></script>

<script>
    $(document).ready(function(){
        $(".owl-carousel").owlCarousel({
            items: 3,
            loop: true,
            margin: 8, // Reduced from 15 to compress gap
            nav: true,
            dots: true,
            autoplay: true,
            autoplayTimeout: 4000,
            autoplayHoverPause: true,
            navText: ['<i class="fa fa-angle-left"></i>', '<i class="fa fa-angle-right"></i>'],
            responsive: {
                0: {
                    items: 1,
                    margin: 5 // Even smaller gap on mobile
                },
                600: {
                    items: 2,
                    margin: 6
                },
                1000: {
                    items: 3,
                    margin: 8
                }
            }
        });
    });
</script>

<script src="//cdn.ckeditor.com/4.14.0/standard/ckeditor.js"></script>
@endsection
