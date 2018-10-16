@component('mail::message')
<h1>reset Account</h1>
welcome {{ $data['data']->username }}<br>
The body of your message.

@component('mail::button', ['url' => 'admin/reset/password/'.$data['token']])
click here to reset password
@endcomponent

or<br>
copy this link 
<a href='{{ url('admin/reset/password/'.$data['token']) }}'>{{ url('admin/reset/password/'.$data['token']) }}</a>

Thanks,<br>
{{ config('app.name') }}
@endcomponent
