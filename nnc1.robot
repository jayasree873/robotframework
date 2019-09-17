*** Settings ***
Documentation     A test suite with a single test for NNC :: Login
...               Created by hats' Robotcorder
Library           Selenium2Library    timeout=10

*** Variables ***
${BROWSER}    chrome
${SLEEP}    3

*** Test Cases ***
NNC :: Login test
    Open Browser    https://actoneye.com/nnc/Login/    ${BROWSER}
    Input Text    //input[@name="username"]    jayasree.konigala@netenrich.com
    Click Element    //button[@id="loginid"]
    Input Text    //input[@name="Password"]    sreesree@12345
    Click Element    //span[@id="submitButton"]
    Click Element    //button[@title="10"]
    Select From List By Value    //select[@name="daysValue"]    2
    Click Element    xpath=(//span[@class="filter-option pull-left"])[15]
    Input Text    xpath=(//input[@class="form-control"])[12]    c
    Input Text    xpath=(//input[@class="form-control"])[12]    ca
    Click Element    xpath=(//span[@class="text"])[709]
    Select From List By Value    //select[@name="nocs"]    38
    Click Element    xpath=(//span[@class="filter-option pull-left"])[16]
    Click Element    xpath=(//span[@class="text"])[740]
    Select From List By Value    //select[@name="partners"]    628909
    Click Element    xpath=(//span[@class="filter-option pull-left"])[18]
    Input Text    xpath=(//input[@class="form-control"])[15]    c
    Input Text    xpath=(//input[@class="form-control"])[15]    ca
   
    Close Browser