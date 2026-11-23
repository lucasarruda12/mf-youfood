Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(Queue_ctx))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(Queue_ctx))==(Machine(Queue_ctx));
  Level(Machine(Queue_ctx))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(Queue_ctx)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(Queue_ctx))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(Queue_ctx))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(Queue_ctx))==(?);
  List_Includes(Machine(Queue_ctx))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(Queue_ctx))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(Queue_ctx))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(Queue_ctx))==(?);
  Context_List_Variables(Machine(Queue_ctx))==(?);
  Abstract_List_Variables(Machine(Queue_ctx))==(?);
  Local_List_Variables(Machine(Queue_ctx))==(?);
  List_Variables(Machine(Queue_ctx))==(?);
  External_List_Variables(Machine(Queue_ctx))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(Queue_ctx))==(?);
  Abstract_List_VisibleVariables(Machine(Queue_ctx))==(?);
  External_List_VisibleVariables(Machine(Queue_ctx))==(?);
  Expanded_List_VisibleVariables(Machine(Queue_ctx))==(?);
  List_VisibleVariables(Machine(Queue_ctx))==(?);
  Internal_List_VisibleVariables(Machine(Queue_ctx))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(Queue_ctx))==(btrue);
  Gluing_List_Invariant(Machine(Queue_ctx))==(btrue);
  Expanded_List_Invariant(Machine(Queue_ctx))==(btrue);
  Abstract_List_Invariant(Machine(Queue_ctx))==(btrue);
  Context_List_Invariant(Machine(Queue_ctx))==(btrue);
  List_Invariant(Machine(Queue_ctx))==(btrue)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(Queue_ctx))==(btrue);
  Abstract_List_Assertions(Machine(Queue_ctx))==(btrue);
  Context_List_Assertions(Machine(Queue_ctx))==(btrue);
  List_Assertions(Machine(Queue_ctx))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(Queue_ctx))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(Queue_ctx))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(Queue_ctx))==(skip);
  Context_List_Initialisation(Machine(Queue_ctx))==(skip);
  List_Initialisation(Machine(Queue_ctx))==(skip)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(Queue_ctx))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(Queue_ctx))==(btrue);
  List_Constraints(Machine(Queue_ctx))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(Queue_ctx))==(?);
  List_Operations(Machine(Queue_ctx))==(?)
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
  List_Valuable_Constants(Machine(Queue_ctx))==(QUEUE_SIZE,pp0);
  Inherited_List_Constants(Machine(Queue_ctx))==(?);
  List_Constants(Machine(Queue_ctx))==(QUEUE_SIZE,pp0)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(Queue_ctx),PRODUCT)==(?);
  Context_List_Enumerated(Machine(Queue_ctx))==(?);
  Context_List_Defered(Machine(Queue_ctx))==(?);
  Context_List_Sets(Machine(Queue_ctx))==(?);
  List_Valuable_Sets(Machine(Queue_ctx))==(PRODUCT);
  Inherited_List_Enumerated(Machine(Queue_ctx))==(?);
  Inherited_List_Defered(Machine(Queue_ctx))==(?);
  Inherited_List_Sets(Machine(Queue_ctx))==(?);
  List_Enumerated(Machine(Queue_ctx))==(?);
  List_Defered(Machine(Queue_ctx))==(PRODUCT);
  List_Sets(Machine(Queue_ctx))==(PRODUCT)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(Queue_ctx))==(?);
  Expanded_List_HiddenConstants(Machine(Queue_ctx))==(?);
  List_HiddenConstants(Machine(Queue_ctx))==(?);
  External_List_HiddenConstants(Machine(Queue_ctx))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(Queue_ctx))==(btrue);
  Context_List_Properties(Machine(Queue_ctx))==(btrue);
  Inherited_List_Properties(Machine(Queue_ctx))==(btrue);
  List_Properties(Machine(Queue_ctx))==(QUEUE_SIZE: NAT & pp0: PRODUCT & QUEUE_SIZE>=1 & PRODUCT: FIN(INTEGER) & not(PRODUCT = {}))
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(Queue_ctx)) == (QUEUE_SIZE,pp0,PRODUCT | ? | ? | ? | ? | ? | ? | ? | Queue_ctx);
  List_Of_HiddenCst_Ids(Machine(Queue_ctx)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Queue_ctx)) == (QUEUE_SIZE,pp0);
  List_Of_VisibleVar_Ids(Machine(Queue_ctx)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Queue_ctx)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Machine(Queue_ctx)) == (Type(PRODUCT) == Cst(SetOf(atype(PRODUCT,"[PRODUCT","]PRODUCT"))))
END
&
THEORY ConstantsEnvX IS
  Constants(Machine(Queue_ctx)) == (Type(QUEUE_SIZE) == Cst(btype(INTEGER,?,?));Type(pp0) == Cst(atype(PRODUCT,?,?)))
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
