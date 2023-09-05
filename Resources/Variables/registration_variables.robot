*** Variables ***
${browser}      chrome
${demoweburl}      https://demowebshop.tricentis.com/
${demoregistration_link}     xpath://a[text()='Register']
${demogender}       xpath:(//div[@class='gender']/input)[1]
${demomale}         Male
${demofemale}       Female
${demofirst_name}       id:FirstName
${demoLast_name}        id:LastName
${demoemail_box}        id:Email
${demopassword_box}     id:Password
${democonfirm_password}    id:ConfirmPassword
${demoregister_button}     id:register-button
${demoregistration_text}        Register
${demoreg_text}     xpath://h1[text()='Register']
${user1}     sampleterra3@gmail.com
#${pass1}     sampleterra
#${user_info1}    xpath:(//a[@class='account'])[1]
${demoreg_msg}    Registration successfull

${demoqa_url}       https://demo.wpeverest.com/user-registration/guest-registration-form/
${demoqafirst_name}        id:first_name
${demoqalast_name}         id:last_name
${demoqa_email}     id:user_email
${demoqa_gender}    xpath://input[@value='Male']
${demoqa_pass}      id:user_pass
${demoqa_datalable}     xpath://input[@data-label='Terms and Conditions']
${demoqa_number}    id:userNumber
${demoqa_submit}    xpath://button[@type='submit']
${demoqa_text}      User successfully registered.
${demoqareg_text}       xpath://ul[text()='User successfully registered.']