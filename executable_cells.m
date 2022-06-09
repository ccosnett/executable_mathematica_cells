BeginPackage["executable_cells`", {"parser`"}];
Unprotect["executable_cells`*"]; ClearAll["executable_cells`*"]; ClearAll["executable_cells`Private`*"];






Begin["`Private`"];




wavenetSpeak[str_]:=RunProcess[{$HomeDirectory<>"/Dropbox/05_PROGRAMS/000_hyper_graph/gTalkerWavenet/wavn.py", str}];


cel[color_, evaluationFunction_,style_] :=
 (
   CellPrint[
     TextCell[
       Row[{Style["", FontWeight -> Normal(*, FontSize -> 8*), color]}],
       style,
       Evaluatable -> True,
       CellEvaluationFunction -> evaluationFunction,
       CellFrameLabels -> {{None, ""}, {None, None}},
       CellGroupingRules -> "InputGroupin"
         ,ShowCellLabel->False
     ]
   ];
  SelectionMove[EvaluationCell[], All, EvaluationCell];
  NotebookDelete[];
  SelectionMove[EvaluationNotebook[], Next, CellContents]
  );




cel[color_, evaluationFunction_] :=
 (
   CellPrint[
     TextCell[
       Row[{Style["", FontWeight -> Normal(*, FontSize -> 8*), color]}]
         , "Text"
         , Evaluatable -> True
         , CellEvaluationFunction -> evaluationFunction
         , CellFrameLabels -> {{None, ""}, {None, None}}
         , CellGroupingRules -> "InputGroupin"
         , ShowCellLabel->"False"
     ]
   ];
  SelectionMove[EvaluationCell[], All, EvaluationCell];
  NotebookDelete[];
  SelectionMove[EvaluationNotebook[], Next, CellContents]
  );







End[];

EndPackage[]