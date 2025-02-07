CREATE DATABASE Secure_Election_Authentication_System;

USE Secure_Election_Authentication_System;

CREATE TABLE Election (
    Election_Started INT DEFAULT 0 NOT NULL,
    Show_Results INT DEFAULT 0 NOT NULL
);

CREATE TABLE Member (
    Member_name VARCHAR(50) NOT NULL,
    Username VARCHAR(50) UNIQUE NOT NULL,
    CONSTRAINT PK_MemberTable_Username PRIMARY KEY (Username),
    Password VARCHAR(50) NOT NULL,
    Email VARCHAR(50) UNIQUE NOT NULL,
    Member_Picture VARBINARY(MAX)
);

CREATE TABLE Candidate (
    Candidate_name VARCHAR(50) NOT NULL,
    Candidate_CNIC INT UNIQUE NOT NULL,
    Candidate_Picture VARBINARY(MAX),
    Symbol_name VARCHAR(50) UNIQUE NOT NULL,
    Symbol_picture VARBINARY(MAX),
    CONSTRAINT PK_CandidateTable_CNICsymName PRIMARY KEY (Candidate_CNIC, Symbol_name),
    Votes INT DEFAULT 0 NOT NULL
);

CREATE TABLE Voter (
    Voter_name VARCHAR(50) NOT NULL,
    Voter_CNIC INT UNIQUE NOT NULL,
    CONSTRAINT PK_VoterTable_CNICvoterName PRIMARY KEY (Voter_CNIC, Voter_name),
    Age INT CHECK (Age >= 18) NOT NULL,
    Address VARCHAR(255) NOT NULL,
    Voter_Picture VARBINARY(MAX),
    Vote_Status VARCHAR(10) DEFAULT 'Not Voted'
);

CREATE TABLE Admin (
    Username VARCHAR(50) UNIQUE NOT NULL,
    CONSTRAINT PK_AdminTable_Username PRIMARY KEY (Username),
    Password VARCHAR(50) NOT NULL
);

-- Insert Admin
INSERT INTO Admin (Username, Password)
VALUES ('Mannan Ul Haq', 'Mannan2004');

SELECT * FROM Election;
SELECT * FROM Voter;
SELECT * FROM Member;
SELECT * FROM Candidate;
SELECT * FROM Admin;