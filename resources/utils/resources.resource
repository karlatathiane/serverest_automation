*** Settings ***
Documentation    File wher are imported all the other files from this work

Library    SeleniumLibrary
Library    FakerLibrary    
Library    String
Library    OperatingSystem
# Library    YAMLLibrary

Resource    ../data/enviroment.resource
Resource    ../data/data.resource
Resource    ../elements/login.elements.resource
Resource    ../keywords/login_kws.resource
Resource    ../pages/keywords.resource
Resource    ../data/data_generate.resource

Library    ../data/python_files/personal_faker.py