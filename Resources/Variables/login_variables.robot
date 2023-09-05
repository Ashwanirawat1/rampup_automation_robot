*** Variables ***
${browser}      chrome
${demoweburl}      https://demowebshop.tricentis.com/
${demologin_link}     xpath://a[text()='Log in']
${demoemail_box}        id:Email
${demopassword_box}     id:Password
${demologin_button}     xpath://input[@class='button-1 login-button']
${demouser}     sampleterra3@gmail.com
${demopass}     sampleterra
${demouser_info}    xpath:(//a[@class='account'])[1]
${demologin_msg}    Login successfull

${orangeurl}    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
${orange_email}     xpath://input[@name='username']
${orange_password}      xpath://input[@name='password']
${orange_submit}        xpath://button[@type='submit']
${orange_dashboard}     xpath://h6[text()='Dashboard']
${orange_text}       Dashboard
