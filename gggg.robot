*** Settings ***
Documentation     A test suite with a single test for W3Schools Online Web Tutorials
...               Created by hats' Robotcorder
Library           SeleniumLibrary

*** Variables ***
${BROWSER}    chrome
${SLEEP}    3

*** Test Cases ***
W3Schools Online Web Tutorials test
    Open Browser    https://www.w3schools.com/    ${BROWSER}
    Click Link    //a[@href="/html/default.asp"]
    Click Link    //a[@href="html_intro.asp"]
    Click Link    xpath=(//a[@href="html_editors.asp"])[2]
    Click Link    //a[@href="html_editors.asp"]
    Click Link    //a[@href="html_basic.asp"]
    Click Link    //a[@href="html_elements.asp"]
    Click Link    xpath=(//a[@href="html_attributes.asp"])[3]
    Click Link    //a[@href="tryit.asp?filename=tryhtml_attributes_error"]
    Click Element    //button[@class="w3-button w3-bar-item w3-green w3-hover-white w3-hover-text-green"]

    Close Browser