\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{mytheme}[8/11/2018 Test Theme]
\LoadClass{article}

\RequirePackage{fontspec}
\RequirePackage{xcolor}
\RequirePackage{sectsty}
\RequirePackage[margin=1in]{geometry}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}

\definecolor{themegrey}{HTML}{2C3539}
\definecolor{themeblue}{HTML}{204A87}
\definecolor{themegreen}{HTML}{4E9A06}

\setmainfont{Ubuntu}
\setmonofont{Ubuntu Mono}

\sectionfont{\color{themeblue}}
\subsectionfont{\color{themegreen}}
\subsubsectionfont{\color{themegreen}}

\color{themegrey}
