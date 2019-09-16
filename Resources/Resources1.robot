*** Settings ***
Library  SeleniumLibrary
Library  ../External keywords/Userkeywords.py

*** Variables ***
${Browser}  Chrome
${URL}  http://www.thetestingworld.com/testings

*** Keywords ***
Start Browser
    Open Browser  ${URL}  ${Browser}
Create Folder at Runtime
    [Arguments]   ${foldername}  ${subfoldername}
    create_folder  ${foldername}
    create_subfolder  ${subfoldername}
    #${Title}=  Get Title
    #Log  ${Title}
    #[Return]  ${Title}
