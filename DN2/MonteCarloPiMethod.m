(* Content-type: application/vnd.wolfram.mathematica *)

(*** Wolfram Notebook File ***)
(* http://www.wolfram.com/nb *)

(* CreatedBy='Mathematica 13.3' *)

(*CacheID: 234*)
(* Internal cache information:
NotebookFileLineBreakTest
NotebookFileLineBreakTest
NotebookDataPosition[       158,          7]
NotebookDataLength[      2843,         85]
NotebookOptionsPosition[      2479,         71]
NotebookOutlinePosition[      2890,         87]
CellTagsIndexPosition[      2847,         84]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{
Cell[BoxData[
 RowBox[{
  RowBox[{
   RowBox[{
    RowBox[{"monteCarloPi", "[", "n_", "]"}], ":=", 
    RowBox[{"Module", "[", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"pointsInsideCircle", ",", "totalPoints", ",", "approxPi"}], 
       "}"}], ",", 
      RowBox[{
       RowBox[{"pointsInsideCircle", "=", "0"}], ";", "\[IndentingNewLine]", 
       RowBox[{"totalPoints", "=", "0"}], ";", "\[IndentingNewLine]", 
       RowBox[{"Do", "[", 
        RowBox[{
         RowBox[{
          RowBox[{
           RowBox[{"{", 
            RowBox[{"x", ",", "y"}], "}"}], "=", 
           RowBox[{"RandomReal", "[", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{
               RowBox[{"-", "1"}], ",", "1"}], "}"}], ",", "2"}], "]"}]}], 
          ";", "\[IndentingNewLine]", 
          RowBox[{"If", "[", 
           RowBox[{
            RowBox[{
             RowBox[{
              RowBox[{"x", "^", "2"}], "+", 
              RowBox[{"y", "^", "2"}]}], "<=", "1"}], ",", 
            RowBox[{"pointsInsideCircle", "++"}]}], "]"}], ";", 
          "\[IndentingNewLine]", 
          RowBox[{"totalPoints", "++"}], ";"}], ",", 
         RowBox[{"{", "n", "}"}]}], "]"}], ";", "\[IndentingNewLine]", 
       RowBox[{"approxPi", "=", 
        RowBox[{"4", "*", 
         RowBox[{"pointsInsideCircle", "/", "totalPoints"}]}]}], ";", 
       "\[IndentingNewLine]", 
       RowBox[{"Print", "[", 
        RowBox[{
        "\"\<Approximation of Pi using Monte Carlo method: \>\"", ",", 
         "approxPi"}], "]"}], ";", "\[IndentingNewLine]", 
       RowBox[{"Print", "[", 
        RowBox[{"\"\<Error: \>\"", ",", 
         RowBox[{"Abs", "[", 
          RowBox[{"Pi", "-", "approxPi"}], "]"}]}], "]"}], ";"}]}], "]"}]}], 
   ";"}], "\n"}]], "Input",
 CellChangeTimes->{{3.908795840702957*^9, 3.908795840703957*^9}},
 CellLabel->"In[1]:=",ExpressionUUID->"70896f72-840a-48a5-9822-d01d3b4b9bc3"]
},
WindowSize->{581.25, 487.5},
WindowMargins->{{-624.75, Automatic}, {-84.75, Automatic}},
FrontEndVersion->"13.3 for Microsoft Windows (64-bit) (June 3, 2023)",
StyleDefinitions->"Default.nb",
ExpressionUUID->"fedaac52-5a8c-4991-9074-6bdb1b4480ef"
]
(* End of Notebook Content *)

(* Internal cache information *)
(*CellTagsOutline
CellTagsIndex->{}
*)
(*CellTagsIndex
CellTagsIndex->{}
*)
(*NotebookFileOutline
Notebook[{
Cell[558, 20, 1917, 49, 238, "Input",ExpressionUUID->"70896f72-840a-48a5-9822-d01d3b4b9bc3"]
}
]
*)

