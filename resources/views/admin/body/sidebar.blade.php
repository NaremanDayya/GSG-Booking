<div class="sidebar-wrapper" data-simplebar="true">
    <div class="sidebar-header">
        <div>
            <img src="{{ asset('backend/assets/images/logo-icon.png') }}" class="logo-icon" alt="logo icon">
        </div>
        <div>
            <h4 class="logo-text">GSG</h4>
        </div>
        <div class="toggle-icon ms-auto"><i class='bx bx-arrow-back'></i>
        </div>
    </div>
    <!--navigation-->
    <ul class="metismenu" id="menu">

        <li>
            <a href="{{ route('admin.dashboard') }}">
                <div class="parent-icon"><i class='bx bx-home-alt'></i>
                </div>
                <div class="menu-title">Dashboard</div>
            </a>
        </li>

        @if (Auth::user()->can('team.menu'))
            <li>
                <a href="javascript:;" class="has-arrow">
                    <div class="parent-icon"><i class="bx bx-category"></i>
                    </div>
                    <div class="menu-title">Manage Teams </div>
                </a>
                <ul>
                    @if (Auth::user()->can('team.all'))
                        <li> <a href="{{ route('all.team') }}"><i class='bx bx-radio-circle'></i>All Team</a>
                        </li>
                    @endif
                    @if (Auth::user()->can('team.add'))
                        <li> <a href="{{ route('add.team') }}"><i class='bx bx-radio-circle'></i>Add Team</a>
                        </li>
                    @endif
                </ul>
            </li>
        @endif

        @if (Auth::user()->can('bookarea.menu'))
            <li>
                <a href="javascript:;" class="has-arrow">
                    <div class="parent-icon"><i class="bx bx-category"></i>
                    </div>
                    <div class="menu-title">Manage Book Area </div>
                </a>
                <ul>
                    @if (Auth::user()->can('book.area'))
                        <li> <a href="{{ route('book.area') }}"><i class='bx bx-radio-circle'></i>Update BookArea </a>
                        </li>
                    @endif

                </ul>
            </li>
        @endif
        @if (Auth::user()->can('room.menu'))
            <li>
                <a href="javascript:;" class="has-arrow">
                    <div class="parent-icon"><i class="bx bx-category"></i>
                    </div>
                    <div class="menu-title">Manage Room </div>
                </a>
                <ul>
                    <li>
                        <a href="{{ route('room.list') }}"><i class='bx bx-radio-circle'></i>Room List </a>
                    </li>
                    <li>
                        <a href="{{ route('add.room') }}">
                            <i class='bx bx-radio-circle'></i>Add Room
                        </a>
                    </li>

                </ul>
            </li>
        @endif
        @if (Auth::user()->can('booking.menu'))
            <li class="menu-label">Booking Manage </li>
            <li>
                <a href="javascript:;" class="has-arrow">
                    <div class="parent-icon"><i class='bx bx-cart'></i>
                    </div>
                    <div class="menu-title">Booking </div>
                </a>
                <ul>
                        <li> <a href="{{ route('booking.list') }}"><i class='bx bx-radio-circle'></i>Booking List </a>
                        </li>
                </ul>
            </li>
        @endif
        {{-- <li>
            <a class="has-arrow" href="javascript:;">
                <div class="parent-icon"><i class='bx bx-bookmark-heart'></i>
                </div>
                <div class="menu-title">Manage RoomList</div>
            </a>
            <ul>
                <li> <a href="{{ route('view.room.list') }}"><i class='bx bx-radio-circle'></i>Room List</a>
                </li>


            </ul>
        </li> --}}

        {{-- <li>
            <a class="has-arrow" href="javascript:;">
                <div class="parent-icon"><i class='bx bx-bookmark-heart'></i>
                </div>
                <div class="menu-title">Setting</div>
            </a>
            <ul>
                <li> <a href="{{ route('smtp.setting') }}"><i class='bx bx-radio-circle'></i>SMTP Setting</a>
                </li>
            </ul>
        </li> --}}


        <li>
            <a class="has-arrow" href="javascript:;">
                <div class="parent-icon"><i class='bx bx-bookmark-heart'></i>
                </div>
                <div class="menu-title">Reviews</div>
            </a>
            <ul>
                <li> <a href="{{ route('all.testimonial') }}"><i class='bx bx-radio-circle'></i>All Reviews</a>
                </li>
                <li> <a href="{{ route('add.testimonial') }}"><i class='bx bx-radio-circle'></i>Add Reviews</a>
                </li>
            </ul>
        </li>


        <li>
            <a class="has-arrow" href="javascript:;">
                <div class="parent-icon"><i class='bx bx-bookmark-heart'></i>
                </div>
                <div class="menu-title">Blog</div>
            </a>
            <ul>
                <li> <a href="{{ route('blog.category') }}"><i class='bx bx-radio-circle'></i>Blog Category </a>
                </li>
                <li> <a href="{{ route('all.blog.post') }}"><i class='bx bx-radio-circle'></i>All Blog Post</a>
                </li>
            </ul>
        </li>

        <li>
            <a class="has-arrow" href="javascript:;">
                <div class="parent-icon"><i class='bx bx-bookmark-heart'></i>
                </div>
                <div class="menu-title">Manage Comment</div>
            </a>
            <ul>
                <li> <a href="{{ route('all.comment') }}"><i class='bx bx-radio-circle'></i>All Comments </a>
                </li>
            </ul>
        </li>

        {{-- @if (Auth::user()->can('role.permission.menu')) --}}


        <li class="menu-label">Role & Permission </li>

        <li>
            <a class="has-arrow" href="javascript:;">
                <div class="parent-icon"><i class='bx bx-bookmark-heart'></i>
                </div>
                <div class="menu-title">Role & Permission </div>
            </a>
            <ul>
                <li> <a href="{{ route('all.permission') }}"><i class='bx bx-radio-circle'></i>All Permission </a>
                </li>
                <li> <a href="{{ route('all.roles') }}"><i class='bx bx-radio-circle'></i>All Roles </a>
                </li>

                <li> <a href="{{ route('add.roles.permission') }}"><i class='bx bx-radio-circle'></i>Role In
                        Permission </a>
                </li>

                <li> <a href="{{ route('all.roles.permission') }}"><i class='bx bx-radio-circle'></i>All Role In
                        Permission </a>
                </li>

            </ul>
        </li>


        <li>
            <a class="has-arrow" href="javascript:;">
                <div class="parent-icon"><i class='bx bx-bookmark-heart'></i>
                </div>
                <div class="menu-title">Manage Admin User </div>
            </a>
            <ul>
                <li> <a href="{{ route('all.admin') }}"><i class='bx bx-radio-circle'></i>All Admin </a>
                </li>
                <li> <a href="{{ route('add.admin') }}"><i class='bx bx-radio-circle'></i>Add Admin </a>
                </li>
            </ul>
        </li>

        {{-- @endif --}}
        <li class="menu-label">Others</li>


        <li>
            <a href="#" target="_blank">
                <div class="parent-icon"><i class="bx bx-support"></i>
                </div>
                <div class="menu-title">Support</div>
            </a>
        </li>
    </ul>
    <!--end navigation-->
</div>
