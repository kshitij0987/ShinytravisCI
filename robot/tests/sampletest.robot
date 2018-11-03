*** Settings ***
Documentation    This is a sample robot file
Library  SeleniumLibrary

*** Variables ***
${SELENIUM} =  http://hub:4444/wd/hub

*** Test Cases ***
Sample app Test
    Open Browser  http://sampleshinyapp:3838/shinyapp/  chrome  remote_url=${SELENIUM}
    Sleep  5s
    Click Element  xpath=html/body/div[1]/div/div[1]/form/div/span/span[3]
    Sleep  5s
    Page Should Contain Element  xpath=//*[@id="distPlot"]/img
    Close Browser