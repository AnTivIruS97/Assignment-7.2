*** settings ***
Library   SeleniumLibrary
*** Test Cases ***
Observe user is able to test sanity flow
    [Tags]  sanity
    Given User launch browser for flipkart
    Username and password for login
    Choose electronics category
    select hairstraightner
    select product hairstraightner
    adding selected product to cart
    back to homepage
    finalizing item in cart

*** keywords ***
User Launch browser for flipkart
    Open Browser  ${url}  ${browser}
    Maximize Browser Window
    sleep  2
Username and password for login
    input text  ${username}  ${input username}
    Input Password  ${password}  ${input password}
    sleep  2
    Click Button  ${login}
    sleep  2
Choose electronics category
    Scroll Element Into View  ${electronics}
    sleep  2
select hairstraightner
    Mouse Down  ${scroll to product}
    sleep  1
    Mouse Over  ${scrolling over the product}
    sleep  1
    Scroll Element Into View  ${scrolling product to view}
select product hairstraightner
    Click Element  ${selecting the product by click}
    sleep  3
    Mouse Down On Link  ${scrolling down on the provided link of the product}
    sleep  3
    Click Element  ${select hairstraightner}
    sleep  3
    Switch Window  locator=NEW
    sleep  3
adding selected product to cart
    Click Button  ${add item}
    sleep  3
back to homepage
    click Element  ${back to homepage}
    sleep  3
finalizing item in cart
    click Element  ${item in cart}
    sleep  3

*** variables ***
${url} =  https://www.flipkart.com/
${browser} =  gc
${username} =  xpath://*[@class='_2IX_2- VJZDxU']
${input username} =  xxxxxxxxxx
${password} =  xpath://*[@class='_2IX_2- _3mctLh VJZDxU']
${input password} =  xxxxxxxxxx
${login} =  xpath://*[@class='_2KpZ6l _2HKlqd _3AWRsL']
${electronics} =  xpath://body/div[@id='container']/div[1]/div[2]/div[1]/div[1]/div[5]/a[1]/div[1]/div[1]/img[1]
${select hairstraightner} =  xpath://*[@id="container"]/div/div[3]/div[1]/div[2]/div[2]/div/div[2]/div/a[2]
${add item} =  xpath://*[@id="container"]/div/div[3]/div[1]/div[1]/div[2]/div/ul/li[1]/button
${back to homepage} =  xpath://*[@id="container"]/div/div[1]/div[1]/div[2]/div[1]/div/a[1]/img
${item in cart} =  xpath://*[@id="container"]/div/div[1]/div[1]/div[2]/div[5]/div/div/a/span

${scrolling over the product} =  xpath://*[@id="container"]/div/div[2]/div/div/div[5]/a/div[2]/div[2]/div[2]/div/div/div[2]/a[4]
${scrolling product to view} =  xpath://*[@id="container"]/div/div[2]/div/div/div[5]/a/div[2]/div[2]/div[2]/div/div/div[2]/a[4]
${selecting the product by click} =  xpath://*[@id="container"]/div/div[2]/div/div/div[5]/a/div[2]/div[2]/div[2]/div/div/div[2]/a[4]
${scrolling down on the provided link of the product} =  xpath://*[@id="container"]/div/div[3]/div[1]/div[2]/div[2]/div/div[2]/div/a[2]
