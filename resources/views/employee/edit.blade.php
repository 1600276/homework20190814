

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Lab</title>
<meta name="viewport" content="width=device-width,initial-scale=1" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script src="/scripts/jquery-1.9.1.min.js"></script>
<script src="/scripts/jquery.mobile-1.3.2.min.js"></script>
<link rel="stylesheet" href="/scripts/jquery.mobile-1.3.2.min.css" />
<link rel="stylesheet" href="/styles.css" />
</head>
<body>
    <div class="action-list"></div>
    <div data-role="page" data-add-back-btn="true" data-theme="c">
        <div data-role="header">
            <h1>Employee Details</h1>
        </div>
        <div data-role="content">
            <form method="post" action="/employee/{{ $emp->employeeId }}" data-ajax="false">
                @csrf
@method('PUT')
<fieldset>
@if (count($errors) > 0)
    <div class="alert alert-danger">
        <ul>
            @foreach ($errors->all() as $error)
                <li>{{ $error }}</li>
            @endforeach
        </ul>
    </div>
@endif
                {{-- <input type="hidden" name="id" value="{{ $emp->employeeId }}"> --}}
                <div data-role="fieldcontain">
                    <label for="firstName">First name:</label>
                    <input type="text" id="firstName" name="firstName" value="{{ $emp->firstName }}" />
                </div>
                <div data-role="fieldcontain">
                    <label for="lastName">Last name:</label>
                    <input type="text" id="lastName" name="lastName" value="{{ $emp->lastName }}" />
                </div>
                <div>....</div>
                <div data-role="fieldcontain">
                    <label for="email">E-mail:</label>
                    <input type="text" id="email" name="email" value="{{ $emp->email }}" />
                </div>

  
                <div class="ui-grid-a">
                    <div class="ui-block-a"><input type="submit" name="btnOKCancel" value="OK" /></div>
                    <div class="ui-block-b">
                            <input type="button" onclick="location='/employee/{{ $emp->employeeId }}'" class="btn btn-danger" value="Cancel">
                    </div>
                </div>
                
            </fieldset>
            </form>
        </div>
    </div>
</body>
</html>