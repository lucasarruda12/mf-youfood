Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(Queue))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(Queue))==(Machine(Queue));
  Level(Machine(Queue))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(Queue)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(Queue))==(Queue_ctx)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(Queue))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(Queue))==(?);
  List_Includes(Machine(Queue))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(Queue))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(Queue))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(Queue))==(?);
  Context_List_Variables(Machine(Queue))==(?);
  Abstract_List_Variables(Machine(Queue))==(?);
  Local_List_Variables(Machine(Queue))==(contents);
  List_Variables(Machine(Queue))==(contents);
  External_List_Variables(Machine(Queue))==(contents)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(Queue))==(?);
  Abstract_List_VisibleVariables(Machine(Queue))==(?);
  External_List_VisibleVariables(Machine(Queue))==(?);
  Expanded_List_VisibleVariables(Machine(Queue))==(?);
  List_VisibleVariables(Machine(Queue))==(?);
  Internal_List_VisibleVariables(Machine(Queue))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(Queue))==(btrue);
  Gluing_List_Invariant(Machine(Queue))==(btrue);
  Expanded_List_Invariant(Machine(Queue))==(btrue);
  Abstract_List_Invariant(Machine(Queue))==(btrue);
  Context_List_Invariant(Machine(Queue))==(btrue);
  List_Invariant(Machine(Queue))==(contents: seq(PRODUCT) & size(contents)<=QUEUE_SIZE)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(Queue))==(btrue);
  Abstract_List_Assertions(Machine(Queue))==(btrue);
  Context_List_Assertions(Machine(Queue))==(btrue);
  List_Assertions(Machine(Queue))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(Queue))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(Queue))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(Queue))==(contents:=<>);
  Context_List_Initialisation(Machine(Queue))==(skip);
  List_Initialisation(Machine(Queue))==(contents:=<>)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(Queue))==(?)
END
&
THEORY ListInstanciatedParametersX IS
  List_Instanciated_Parameters(Machine(Queue),Machine(Queue_ctx))==(?)
END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(Queue))==(btrue);
  List_Constraints(Machine(Queue))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(Queue))==(push,pop);
  List_Operations(Machine(Queue))==(push,pop)
END
&
THEORY ListInputX IS
  List_Input(Machine(Queue),push)==(ee);
  List_Input(Machine(Queue),pop)==(?)
END
&
THEORY ListOutputX IS
  List_Output(Machine(Queue),push)==(?);
  List_Output(Machine(Queue),pop)==(ee)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(Queue),push)==(push(ee));
  List_Header(Machine(Queue),pop)==(ee <-- pop)
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(Queue),push)==(ee: PRODUCT & size(contents)<QUEUE_SIZE);
  List_Precondition(Machine(Queue),pop)==(size(contents)>0)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(Queue),pop)==(size(contents)>0 | ee,contents:=first(contents),tail(contents));
  Expanded_List_Substitution(Machine(Queue),push)==(ee: PRODUCT & size(contents)<QUEUE_SIZE | contents:=contents<-ee);
  List_Substitution(Machine(Queue),push)==(contents:=contents<-ee);
  List_Substitution(Machine(Queue),pop)==(ee:=first(contents) || contents:=tail(contents))
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(Queue))==(?);
  Inherited_List_Constants(Machine(Queue))==(?);
  List_Constants(Machine(Queue))==(?)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Machine(Queue))==(?);
  Context_List_Defered(Machine(Queue))==(PRODUCT);
  Context_List_Sets(Machine(Queue))==(PRODUCT);
  List_Valuable_Sets(Machine(Queue))==(?);
  Inherited_List_Enumerated(Machine(Queue))==(?);
  Inherited_List_Defered(Machine(Queue))==(?);
  Inherited_List_Sets(Machine(Queue))==(?);
  List_Enumerated(Machine(Queue))==(?);
  List_Defered(Machine(Queue))==(?);
  List_Sets(Machine(Queue))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(Queue))==(?);
  Expanded_List_HiddenConstants(Machine(Queue))==(?);
  List_HiddenConstants(Machine(Queue))==(?);
  External_List_HiddenConstants(Machine(Queue))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(Queue))==(btrue);
  Context_List_Properties(Machine(Queue))==(QUEUE_SIZE: NAT & pp0: PRODUCT & QUEUE_SIZE>=1 & PRODUCT: FIN(INTEGER) & not(PRODUCT = {}));
  Inherited_List_Properties(Machine(Queue))==(btrue);
  List_Properties(Machine(Queue))==(btrue)
END
&
THEORY ListSeenInfoX IS
  Seen_Internal_List_Operations(Machine(Queue),Machine(Queue_ctx))==(?);
  Seen_Context_List_Enumerated(Machine(Queue))==(?);
  Seen_Context_List_Invariant(Machine(Queue))==(btrue);
  Seen_Context_List_Assertions(Machine(Queue))==(btrue);
  Seen_Context_List_Properties(Machine(Queue))==(btrue);
  Seen_List_Constraints(Machine(Queue))==(btrue);
  Seen_List_Operations(Machine(Queue),Machine(Queue_ctx))==(?);
  Seen_Expanded_List_Invariant(Machine(Queue),Machine(Queue_ctx))==(btrue)
END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(Queue),push)==(?);
  List_ANY_Var(Machine(Queue),pop)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(Queue)) == (? | ? | contents | ? | push,pop | ? | seen(Machine(Queue_ctx)) | ? | Queue);
  List_Of_HiddenCst_Ids(Machine(Queue)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Queue)) == (?);
  List_Of_VisibleVar_Ids(Machine(Queue)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Queue)) == (?: ?);
  List_Of_Ids(Machine(Queue_ctx)) == (QUEUE_SIZE,pp0,PRODUCT | ? | ? | ? | ? | ? | ? | ? | Queue_ctx);
  List_Of_HiddenCst_Ids(Machine(Queue_ctx)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Queue_ctx)) == (QUEUE_SIZE,pp0);
  List_Of_VisibleVar_Ids(Machine(Queue_ctx)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Queue_ctx)) == (?: ?)
END
&
THEORY VariablesEnvX IS
  Variables(Machine(Queue)) == (Type(contents) == Mvl(SetOf(btype(INTEGER,?,?)*atype(PRODUCT,?,?))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(Queue)) == (Type(pop) == Cst(atype(PRODUCT,?,?),No_type);Type(push) == Cst(No_type,atype(PRODUCT,?,?)))
END
&
THEORY TCIntRdX IS
  predB0 == OK;
  extended_sees == KO;
  B0check_tab == KO;
  local_op == OK;
  abstract_constants_visible_in_values == KO;
  project_type == SOFTWARE_TYPE;
  event_b_deadlockfreeness == KO;
  variant_clause_mandatory == KO;
  event_b_coverage == KO;
  event_b_exclusivity == KO;
  genFeasibilityPO == KO
END
)
