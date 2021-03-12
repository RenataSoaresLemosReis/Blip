***Settings***
Documentation        Ações da página login
***Keywords***
Open Login Page
    Open Browser     http://parodify.herokuapp.com/users/sign_in    chromium

Login With
    [Arguments]      ${email_arg}    ${pass_arg}

    Fill Text       css=input[name*=email]           ${email_arg}
    Fill Text       css=#user_password               ${pass_arg}

    Click           css=input[value="Log in"]

Alert Should Be
    [Arguments]     ${expert_arg}

    Get Text        css=.is-danger .message-body    ==    Opps! Dados de acesso incorretos!