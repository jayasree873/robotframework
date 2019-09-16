*** Settings ***
Documentation     A test suite with a single test for NNC :: Login
...               Created by hats' Robotcorder
Library           SeleniumLibrary    timeout=10

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
    #Click Link    xpath=(//a[@href="#"])[1]
    #Click Link    xpath=(//a[@href="/nnc/employeeDashboard"])
    #Click Link    //a[@href="/nnc/sdmDashboard"]
    #Click Link    //a[@href="/nnc/utilizationDashboard"]
    #Click Link    xpath=(//a[@href="#"])[2]
    Click Link    xpath=(//a[@class="dropdown-toggle"])[2]
    Click Link    //a[@href="/nnc/serviceManagement"]
    Click Element  xpath=(//button[@class="btn dropdown-toggle btn-default"])[10]
    Click Element    xpath=(//span[@class="text"])[2]
    Select From List By Value   //select[@name="daysValue"]  2
    Click Element    xpath=(//span[@class="filter-option pull-left"])[15]
    Click Element    xpath=(//span[@class="text"])[709]
    Select From List By Value    //select[@name="nocs"]    38
    Click Element    xpath=(//span[@class="filter-option pull-left"])[16]
    Click Element    xpath=(//span[@class="text"])[740]
    Select From List By Value    //select[@name="partners"]    628909
    Click Element    xpath=(//button[@title="Select Department"])[2]
    Select From List By Value    //select[@name="department"]    351
    Click Element    //button[@name="run"]