Normalised(
THEORY MagicNumberX IS
  MagicNumber(Implementation(Queue_ctx_i))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Implementation(Queue_ctx_i))==(Machine(Queue_ctx));
  Level(Implementation(Queue_ctx_i))==(1);
  Upper_Level(Implementation(Queue_ctx_i))==(Machine(Queue_ctx))
END
&
THEORY LoadedStructureX IS
  Implementation(Queue_ctx_i)
END
&
THEORY ListSeesX IS
  List_Sees(Implementation(Queue_ctx_i))==(?)
END
&
THEORY ListIncludesX IS
  List_Includes(Implementation(Queue_ctx_i))==(?);
  Inherited_List_Includes(Implementation(Queue_ctx_i))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Implementation(Queue_ctx_i))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Implementation(Queue_ctx_i))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Implementation(Queue_ctx_i))==(?);
  Context_List_Variables(Implementation(Queue_ctx_i))==(?);
  Abstract_List_Variables(Implementation(Queue_ctx_i))==(?);
  Local_List_Variables(Implementation(Queue_ctx_i))==(?);
  List_Variables(Implementation(Queue_ctx_i))==(?);
  External_List_Variables(Implementation(Queue_ctx_i))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Implementation(Queue_ctx_i))==(?);
  Abstract_List_VisibleVariables(Implementation(Queue_ctx_i))==(?);
  External_List_VisibleVariables(Implementation(Queue_ctx_i))==(?);
  Expanded_List_VisibleVariables(Implementation(Queue_ctx_i))==(?);
  List_VisibleVariables(Implementation(Queue_ctx_i))==(?);
  Internal_List_VisibleVariables(Implementation(Queue_ctx_i))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Implementation(Queue_ctx_i))==(btrue);
  Expanded_List_Invariant(Implementation(Queue_ctx_i))==(btrue);
  Abstract_List_Invariant(Implementation(Queue_ctx_i))==(btrue);
  Context_List_Invariant(Implementation(Queue_ctx_i))==(btrue);
  List_Invariant(Implementation(Queue_ctx_i))==(btrue)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Implementation(Queue_ctx_i))==(btrue);
  Abstract_List_Assertions(Implementation(Queue_ctx_i))==(btrue);
  Context_List_Assertions(Implementation(Queue_ctx_i))==(btrue);
  List_Assertions(Implementation(Queue_ctx_i))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Implementation(Queue_ctx_i))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Implementation(Queue_ctx_i))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Implementation(Queue_ctx_i))==(skip);
  Context_List_Initialisation(Implementation(Queue_ctx_i))==(skip);
  List_Initialisation(Implementation(Queue_ctx_i))==(skip)
END
&
THEORY ListParametersX IS
  List_Parameters(Implementation(Queue_ctx_i))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Constraints(Implementation(Queue_ctx_i))==(btrue);
  List_Context_Constraints(Implementation(Queue_ctx_i))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Implementation(Queue_ctx_i))==(?);
  List_Operations(Implementation(Queue_ctx_i))==(?)
END
&
THEORY ListInputX END
&
THEORY ListOutputX END
&
THEORY ListHeaderX END
&
THEORY ListPreconditionX END
&
THEORY ListSubstitutionX END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Implementation(Queue_ctx_i))==(QUEUE_SIZE,pp0);
  Inherited_List_Constants(Implementation(Queue_ctx_i))==(QUEUE_SIZE,pp0);
  List_Constants(Implementation(Queue_ctx_i))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Implementation(Queue_ctx_i),PRODUCT)==(?);
  Context_List_Enumerated(Implementation(Queue_ctx_i))==(?);
  Context_List_Defered(Implementation(Queue_ctx_i))==(?);
  Context_List_Sets(Implementation(Queue_ctx_i))==(?);
  List_Own_Enumerated(Implementation(Queue_ctx_i))==(?);
  List_Valuable_Sets(Implementation(Queue_ctx_i))==(PRODUCT);
  Inherited_List_Enumerated(Implementation(Queue_ctx_i))==(?);
  Inherited_List_Defered(Implementation(Queue_ctx_i))==(PRODUCT);
  Inherited_List_Sets(Implementation(Queue_ctx_i))==(PRODUCT);
  List_Enumerated(Implementation(Queue_ctx_i))==(?);
  List_Defered(Implementation(Queue_ctx_i))==(?);
  List_Sets(Implementation(Queue_ctx_i))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Implementation(Queue_ctx_i))==(?);
  Expanded_List_HiddenConstants(Implementation(Queue_ctx_i))==(?);
  List_HiddenConstants(Implementation(Queue_ctx_i))==(?);
  External_List_HiddenConstants(Implementation(Queue_ctx_i))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Implementation(Queue_ctx_i))==(QUEUE_SIZE: NAT & pp0: PRODUCT & QUEUE_SIZE>=1 & PRODUCT: FIN(INTEGER) & not(PRODUCT = {}));
  Context_List_Properties(Implementation(Queue_ctx_i))==(btrue);
  Inherited_List_Properties(Implementation(Queue_ctx_i))==(btrue);
  List_Properties(Implementation(Queue_ctx_i))==(btrue)
END
&
THEORY ListValuesX IS
  Precond_Valued_Objects(Implementation(Queue_ctx_i))==(btrue);
  Values_Subs(Implementation(Queue_ctx_i))==(PRODUCT,QUEUE_SIZE,pp0: 0..10,30,3);
  List_Values(Implementation(Queue_ctx_i))==(PRODUCT = 0..10;QUEUE_SIZE = 30;pp0 = 3)
END
&
THEORY ListSeenInfoX END
&
THEORY ListIncludedOperationsX END
&
THEORY InheritedEnvX IS
  Constants(Implementation(Queue_ctx_i))==(Type(QUEUE_SIZE) == Cst(btype(INTEGER,?,?));Type(pp0) == Cst(atype(PRODUCT,?,?)))
END
&
THEORY ListVisibleStaticX END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Implementation(Queue_ctx_i)) == (? | ? | ? | ? | ? | ? | ? | ? | Queue_ctx_i);
  List_Of_HiddenCst_Ids(Implementation(Queue_ctx_i)) == (? | ?);
  List_Of_VisibleCst_Ids(Implementation(Queue_ctx_i)) == (?);
  List_Of_VisibleVar_Ids(Implementation(Queue_ctx_i)) == (? | ?);
  List_Of_Ids_SeenBNU(Implementation(Queue_ctx_i)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Implementation(Queue_ctx_i)) == (Type(PRODUCT) == Cst(SetOf(btype(INTEGER,"[PRODUCT","]PRODUCT"))))
END
&
THEORY ConstantsEnvX IS
  Constants(Implementation(Queue_ctx_i)) == (Type(pp0) == Cst(btype(INTEGER,?,?));Type(QUEUE_SIZE) == Cst(btype(INTEGER,?,?)))
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
&
THEORY ListLocalOperationsX IS
  List_Local_Operations(Implementation(Queue_ctx_i))==(?)
END
&
THEORY ListLocalInputX END
&
THEORY ListLocalOutputX END
&
THEORY ListLocalHeaderX END
&
THEORY ListLocalPreconditionX END
&
THEORY ListLocalSubstitutionX END
&
THEORY TypingPredicateX IS
  TypingPredicate(Implementation(Queue_ctx_i))==(btrue)
END
&
THEORY ImportedVariablesListX END
&
THEORY ListLocalOpInvariantX END
)
