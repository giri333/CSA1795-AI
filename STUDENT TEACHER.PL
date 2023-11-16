% Facts
teacher(ms_smith, math).
teacher(mr_jones, history).
teacher(mrs_davis, science).

student(john, math, 101).
student(jane, history, 102).
student(bob, science, 103).
student(susan, math, 104).

% Rules
teaches_subject(Teacher, Subject) :- teacher(Teacher, Subject).
enrolled_in(Student, Subject) :- student(Student, Subject, _).

% Queries
% Who teaches the subject 'math'?
% Usage: teaches_subject(Teacher, math).
% Example: teaches_subject(T, math).
%
% ?- teaches_subject(T, math).
%
% T = ms_smith.
%
% ------------------------------
%
% Is 'jane' enrolled in the subject 'history'?
% Usage: enrolled_in(jane, history).
% Example: enrolled_in(jane, history).
%
% ?- enrolled_in(jane, history).
%
% true.
%
% ------------------------------
%
% What subjects is 'bob' enrolled in?
% Usage: enrolled_in(bob, Subject).
% Example: enrolled_in(bob, Subject).
%
% ?- enrolled_in(bob, Subject).
%
% Subject = science.
%
% ------------------------------
%
% Who teaches the subject in which 'susan' is enrolled?
% Usage: enrolled_in(susan, Subject), teaches_subject(Teacher, Subject).
% Example: enrolled_in(susan, Subject), teaches_subject(Teacher, Subject).
%
% ?- enrolled_in(susan, Subject), teaches_subject(Teacher, Subject).
%
% Subject = math,
% Teacher = ms_smith.
