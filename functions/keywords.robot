*** Settings ***
Library          Selenium2Library
Library          String
Resource         ../pageobjects/objects.robot

*** Keywords ***

Set Keyword Timeout
    [Arguments]   ${time}
    Set Global Variable   ${TIMEOUT}   ${time}

I navigate to ${URL}
    Open Browser	${URL}	 chrome
    Maximize Browser Window

I click on ${ELEMENT} button
    Wait For Condition                 return document.readyState=="complete"  ${TIMEOUT}
	Wait Until Element Is Visible      ${ELEMENT}   ${TIMEOUT}
	Wait Until Element Is Enabled      ${ELEMENT}   ${TIMEOUT}
    Wait Until Keyword Succeeds        2x   5s  Set Focus To Element           ${ELEMENT}
	Wait Until Keyword Succeeds        2x   5s  Click Element                  ${ELEMENT}
	Sleep  2s

I select city ${ELEMENT}
	Wait Until Element Is Visible      ${ELEMENT}   ${TIMEOUT}
	Wait Until Element Is Enabled      ${ELEMENT}   ${TIMEOUT}
	Wait Until Keyword Succeeds        2x   5s  Click Element                  ${ELEMENT}
	Sleep  2s

I should see text ${text}
    Wait Until Keyword Succeeds        2x   5s  Page should contain  ${text}

I should NOT see text ${text}
    Run Keyword                        Wait Until Element Is Not Visible  ${text}

I enter city into input field ${ELEMENT} the value ${VALUE}
	Wait Until Element Is Visible      ${ELEMENT}  ${TIMEOUT}
	Wait Until Element Is Enabled      ${ELEMENT}  ${TIMEOUT}
	Wait Until Keyword Succeeds        2x   5s  Set Focus To Element               ${ELEMENT}
	Wait Until Keyword Succeeds        2x   5s  Click Element                      ${ELEMENT}
	Sleep  0.5
	Wait Until Keyword Succeeds        2x   5s  Input Text                         ${ELEMENT}    ${VALUE}
    press key   ${ELEMENT}  \\13

I enter into input field ${ELEMENT} the value ${VALUE}
	Wait Until Element Is Visible      ${ELEMENT}  ${TIMEOUT}
	Wait Until Element Is Enabled      ${ELEMENT}  ${TIMEOUT}
	Wait Until Keyword Succeeds        2x   5s  Set Focus To Element               ${ELEMENT}
	Wait Until Keyword Succeeds        2x   5s  Click Element                      ${ELEMENT}
	Sleep  0.5
	Wait Until Keyword Succeeds        2x   5s  Input Text                         ${ELEMENT}    ${VALUE}

I should see alert text as ${text}
    Alert Should Be Present   ${text}    ACCEPT    20s

I take sceenshot
    Capture Page Screenshot