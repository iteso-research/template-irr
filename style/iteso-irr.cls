%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% style/iteso-irr.cls
%%
%% Document class for Internal Research Reports (IRR) of the
%% Doctoral Program in Engineering Sciences at ITESO.
%%
%% Usage:  \documentclass{iteso-irr}
%%
%% This class is based on the standard article class, extended with
%% institutional formatting requirements.  All reusable style elements
%% are loaded from iteso-phdengsci.def.
%%
%% *** LICENSE ***
%%
%% This work may be distributed and/or modified under the
%% conditions of the LaTeX Project Public License, either
%% version 1.3c of this license or (at your option) any later
%% version.  The latest version of this license is in
%%   https://www.latex-project.org/lppl.txt
%% and version 1.3c or later is part of all distributions of
%% LaTeX version 2008 or later.
%%
%% This work has the LPPL maintenance status "maintained".
%% The Current Maintainer of this work is:
%% J.Francisco Munoz-Elguezabal - franciscome@iteso.mx
%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{iteso-irr}[2026/03/19 v1.0
  ITESO Internal Research Report class for the PhD in Engineering Sciences]

%% ---------------------------------------------------------------------
%% Option handling
%% ---------------------------------------------------------------------
%% Pass every unknown option straight through to article.
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax

%% ---------------------------------------------------------------------
%% Base class
%% ---------------------------------------------------------------------
\LoadClass[12pt, letterpaper, twoside]{article}

%% ---------------------------------------------------------------------
%% Import all common style definitions
%% ---------------------------------------------------------------------
\input{iteso-phdengsci.def}

\endinput
