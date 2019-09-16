*** Settings ***
Library  SSHLibrary
Library  SSHLibrary
*** Variables ***
${HOST}  10.0.2.4
${USERNAME}  rgukt
${PWD}  Rgukt@123456
*** Test Cases ***
Open
    Open Connection  ${HOST}
