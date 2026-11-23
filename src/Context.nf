Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(Context))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(Context))==(Machine(Context));
  Level(Machine(Context))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(Context)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(Context))==(Queue_ctx)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(Context))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(Context))==(?);
  List_Includes(Machine(Context))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(Context))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(Context))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(Context))==(?);
  Context_List_Variables(Machine(Context))==(?);
  Abstract_List_Variables(Machine(Context))==(?);
  Local_List_Variables(Machine(Context))==(?);
  List_Variables(Machine(Context))==(?);
  External_List_Variables(Machine(Context))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(Context))==(?);
  Abstract_List_VisibleVariables(Machine(Context))==(?);
  External_List_VisibleVariables(Machine(Context))==(?);
  Expanded_List_VisibleVariables(Machine(Context))==(?);
  List_VisibleVariables(Machine(Context))==(?);
  Internal_List_VisibleVariables(Machine(Context))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(Context))==(btrue);
  Gluing_List_Invariant(Machine(Context))==(btrue);
  Expanded_List_Invariant(Machine(Context))==(btrue);
  Abstract_List_Invariant(Machine(Context))==(btrue);
  Context_List_Invariant(Machine(Context))==(btrue);
  List_Invariant(Machine(Context))==(btrue)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(Context))==(btrue);
  Abstract_List_Assertions(Machine(Context))==(btrue);
  Context_List_Assertions(Machine(Context))==(btrue);
  List_Assertions(Machine(Context))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(Context))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(Context))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(Context))==(skip);
  Context_List_Initialisation(Machine(Context))==(skip);
  List_Initialisation(Machine(Context))==(skip)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(Context))==(?)
END
&
THEORY ListInstanciatedParametersX IS
  List_Instanciated_Parameters(Machine(Context),Machine(Queue_ctx))==(?)
END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(Context))==(btrue);
  List_Constraints(Machine(Context))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(Context))==(?);
  List_Operations(Machine(Context))==(?)
END
&
THEORY ListInputX END
&
THEORY ListOutputX END
&
THEORY ListHeaderX END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX END
&
THEORY ListSubstitutionX END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(Context))==(?);
  Inherited_List_Constants(Machine(Context))==(?);
  List_Constants(Machine(Context))==(?)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Machine(Context))==(?);
  Context_List_Defered(Machine(Context))==(PRODUCT);
  Context_List_Sets(Machine(Context))==(PRODUCT);
  List_Valuable_Sets(Machine(Context))==(?);
  Inherited_List_Enumerated(Machine(Context))==(?);
  Inherited_List_Defered(Machine(Context))==(?);
  Inherited_List_Sets(Machine(Context))==(?);
  List_Enumerated(Machine(Context))==(?);
  List_Defered(Machine(Context))==(?);
  List_Sets(Machine(Context))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(Context))==(?);
  Expanded_List_HiddenConstants(Machine(Context))==(?);
  List_HiddenConstants(Machine(Context))==(?);
  External_List_HiddenConstants(Machine(Context))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(Context))==(btrue);
  Context_List_Properties(Machine(Context))==(QUEUE_SIZE: NAT & pp0: PRODUCT & QUEUE_SIZE>=1 & PRODUCT: FIN(INTEGER) & not(PRODUCT = {}));
  Inherited_List_Properties(Machine(Context))==(btrue);
  List_Properties(Machine(Context))==(btrue)
END
&
THEORY ListSeenInfoX IS
  Seen_Internal_List_Operations(Machine(Context),Machine(Queue_ctx))==(?);
  Seen_Context_List_Enumerated(Machine(Context))==(?);
  Seen_Context_List_Invariant(Machine(Context))==(btrue);
  Seen_Context_List_Assertions(Machine(Context))==(btrue);
  Seen_Context_List_Properties(Machine(Context))==(btrue);
  Seen_List_Constraints(Machine(Context))==(btrue);
  Seen_List_Operations(Machine(Context),Machine(Queue_ctx))==(?);
  Seen_Expanded_List_Invariant(Machine(Context),Machine(Queue_ctx))==(btrue)
END
&
THEORY ListANYVarX END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(Context)) == (? | ? | ? | ? | ? | ? | seen(Machine(Queue_ctx)) | ? | Context);
  List_Of_HiddenCst_Ids(Machine(Context)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Context)) == (?);
  List_Of_VisibleVar_Ids(Machine(Context)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Context)) == (?: ?);
  List_Of_Ids(Machine(Queue_ctx)) == (QUEUE_SIZE,pp0,PRODUCT | ? | ? | ? | ? | ? | ? | ? | Queue_ctx);
  List_Of_HiddenCst_Ids(Machine(Queue_ctx)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Queue_ctx)) == (QUEUE_SIZE,pp0);
  List_Of_VisibleVar_Ids(Machine(Queue_ctx)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Queue_ctx)) == (?: ?)
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
