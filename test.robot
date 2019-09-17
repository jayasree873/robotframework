*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${Browser}  Chrome
${URL}  http://www.thetestingworld.com/testings

*** Test Cases ***
Robot
    Open Browser  ${URL}  ${Browser}
    Maximize Browser Window
    Input Text  name:fld_username  Testingworld
    #Input Text  xpath://input{@name='fld_email'}  testingworldindia@gmail.com
    Input Text  name:fld_password  Testingworldpass
    Select Radio Button  add_type  office
    Select Checkbox  name:terms

    Close Browser