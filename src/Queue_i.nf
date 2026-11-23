Normalised(
THEORY MagicNumberX IS
  MagicNumber(Implementation(Queue_i))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Implementation(Queue_i))==(Machine(Queue));
  Level(Implementation(Queue_i))==(1);
  Upper_Level(Implementation(Queue_i))==(Machine(Queue))
END
&
THEORY LoadedStructureX IS
  Implementation(Queue_i)
END
&
THEORY ListSeesX IS
  List_Sees(Implementation(Queue_i))==(Queue_ctx)
END
&
THEORY ListIncludesX IS
  List_Includes(Implementation(Queue_i))==(?);
  Inherited_List_Includes(Implementation(Queue_i))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Implementation(Queue_i))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Implementation(Queue_i))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Implementation(Queue_i))==(?);
  Context_List_Variables(Implementation(Queue_i))==(?);
  Abstract_List_Variables(Implementation(Queue_i))==(contents);
  Local_List_Variables(Implementation(Queue_i))==(?);
  List_Variables(Implementation(Queue_i))==(?);
  External_List_Variables(Implementation(Queue_i))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Implementation(Queue_i))==(?);
  Abstract_List_VisibleVariables(Implementation(Queue_i))==(?);
  External_List_VisibleVariables(Implementation(Queue_i))==(?);
  Expanded_List_VisibleVariables(Implementation(Queue_i))==(?);
  List_VisibleVariables(Implementation(Queue_i))==(max_array_size,pos,sze,array);
  Internal_List_VisibleVariables(Implementation(Queue_i))==(max_array_size,pos,sze,array)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Implementation(Queue_i))==(btrue);
  Expanded_List_Invariant(Implementation(Queue_i))==(btrue);
  Abstract_List_Invariant(Implementation(Queue_i))==(contents: seq(PRODUCT) & size(contents)<=QUEUE_SIZE);
  Context_List_Invariant(Implementation(Queue_i))==(btrue);
  List_Invariant(Implementation(Queue_i))==(max_array_size: NAT & max_array_size = QUEUE_SIZE-1 & array: 0..max_array_size --> PRODUCT & sze: 0..QUEUE_SIZE & pos: 0..max_array_size & #aseq.(aseq = %ii.(ii: 1..card(array) | array(ii-1)) & contents = aseq\|/pos^(aseq/|\pos)/|\sze))
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Implementation(Queue_i))==(btrue);
  Abstract_List_Assertions(Implementation(Queue_i))==(btrue);
  Context_List_Assertions(Implementation(Queue_i))==(btrue);
  List_Assertions(Implementation(Queue_i))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Implementation(Queue_i))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Implementation(Queue_i))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Implementation(Queue_i))==((QUEUE_SIZE-1: INT & QUEUE_SIZE: INT & 1: INT | max_array_size:=QUEUE_SIZE-1);array:=(0..max_array_size)*{pp0};(0: INT | sze:=0);(0: INT | pos:=0));
  Context_List_Initialisation(Implementation(Queue_i))==(skip);
  List_Initialisation(Implementation(Queue_i))==(max_array_size:=QUEUE_SIZE-1;array:=(0..max_array_size)*{pp0};sze:=0;pos:=0)
END
&
THEORY ListParametersX IS
  List_Parameters(Implementation(Queue_i))==(?)
END
&
THEORY ListInstanciatedParametersX IS
  List_Instanciated_Parameters(Implementation(Queue_i),Machine(Queue_ctx))==(?)
END
&
THEORY ListConstraintsX IS
  List_Constraints(Implementation(Queue_i))==(btrue);
  List_Context_Constraints(Implementation(Queue_i))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Implementation(Queue_i))==(push,pop);
  List_Operations(Implementation(Queue_i))==(push,pop)
END
&
THEORY ListInputX IS
  List_Input(Implementation(Queue_i),push)==(ee);
  List_Input(Implementation(Queue_i),pop)==(?)
END
&
THEORY ListOutputX IS
  List_Output(Implementation(Queue_i),push)==(?);
  List_Output(Implementation(Queue_i),pop)==(ee)
END
&
THEORY ListHeaderX IS
  List_Header(Implementation(Queue_i),push)==(push(ee));
  List_Header(Implementation(Queue_i),pop)==(ee <-- pop)
END
&
THEORY ListPreconditionX IS
  Own_Precondition(Implementation(Queue_i),push)==(btrue);
  List_Precondition(Implementation(Queue_i),push)==(ee: PRODUCT & size(contents)<QUEUE_SIZE);
  Own_Precondition(Implementation(Queue_i),pop)==(btrue);
  List_Precondition(Implementation(Queue_i),pop)==(size(contents)>0)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Implementation(Queue_i),pop)==(size(contents)>0 | (pos: dom(array) | ee:=array(pos));(pos+1: INT & pos: INT & 1: INT | pos:=pos+1);(sze+1: INT & sze: INT & 1: INT | sze:=sze+1));
  Expanded_List_Substitution(Implementation(Queue_i),push)==(ee: PRODUCT & size(contents)<QUEUE_SIZE | (sze+pos: INT & sze: INT & pos: INT & (sze+pos) mod QUEUE_SIZE: NAT & sze+pos: NAT & QUEUE_SIZE: NAT1 & (sze+pos) mod QUEUE_SIZE: dom(array) | array:=array<+{(sze+pos) mod QUEUE_SIZE|->ee});(sze+1: INT & sze: INT & 1: INT | sze:=sze+1));
  List_Substitution(Implementation(Queue_i),push)==(array((sze+pos) mod QUEUE_SIZE):=ee;sze:=sze+1);
  List_Substitution(Implementation(Queue_i),pop)==(ee:=array(pos);pos:=pos+1;sze:=sze+1)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Implementation(Queue_i))==(?);
  Inherited_List_Constants(Implementation(Queue_i))==(?);
  List_Constants(Implementation(Queue_i))==(?)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Implementation(Queue_i))==(?);
  Context_List_Defered(Implementation(Queue_i))==(PRODUCT);
  Context_List_Sets(Implementation(Queue_i))==(PRODUCT);
  List_Own_Enumerated(Implementation(Queue_i))==(?);
  List_Valuable_Sets(Implementation(Queue_i))==(?);
  Inherited_List_Enumerated(Implementation(Queue_i))==(?);
  Inherited_List_Defered(Implementation(Queue_i))==(?);
  Inherited_List_Sets(Implementation(Queue_i))==(?);
  List_Enumerated(Implementation(Queue_i))==(?);
  List_Defered(Implementation(Queue_i))==(?);
  List_Sets(Implementation(Queue_i))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Implementation(Queue_i))==(?);
  Expanded_List_HiddenConstants(Implementation(Queue_i))==(?);
  List_HiddenConstants(Implementation(Queue_i))==(?);
  External_List_HiddenConstants(Implementation(Queue_i))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Implementation(Queue_i))==(btrue);
  Context_List_Properties(Implementation(Queue_i))==(QUEUE_SIZE: NAT & pp0: PRODUCT & QUEUE_SIZE>=1 & PRODUCT: FIN(INTEGER) & not(PRODUCT = {}));
  Inherited_List_Properties(Implementation(Queue_i))==(btrue);
  List_Properties(Implementation(Queue_i))==(btrue)
END
&
THEORY ListValuesX IS
  Values_Subs(Implementation(Queue_i))==(aa: aa);
  List_Values(Implementation(Queue_i))==(?)
END
&
THEORY ListSeenInfoX IS
  Seen_Internal_List_Operations(Implementation(Queue_i),Machine(Queue_ctx))==(?);
  Seen_Context_List_Enumerated(Implementation(Queue_i))==(?);
  Seen_Context_List_Invariant(Implementation(Queue_i))==(btrue);
  Seen_Context_List_Assertions(Implementation(Queue_i))==(btrue);
  Seen_Context_List_Properties(Implementation(Queue_i))==(btrue);
  Seen_List_Constraints(Implementation(Queue_i))==(btrue);
  Seen_List_Operations(Implementation(Queue_i),Machine(Queue_ctx))==(?);
  Seen_Expanded_List_Invariant(Implementation(Queue_i),Machine(Queue_ctx))==(btrue)
END
&
THEORY ListIncludedOperationsX END
&
THEORY InheritedEnvX IS
  VisibleVariables(Implementation(Queue_i))==(Type(array) == Mvv(SetOf(btype(INTEGER,0,max_array_size)*atype(PRODUCT,"[PRODUCT","]PRODUCT")));Type(sze) == Mvv(btype(INTEGER,?,?));Type(pos) == Mvv(btype(INTEGER,?,?));Type(max_array_size) == Mvv(btype(INTEGER,?,?)));
  Operations(Implementation(Queue_i))==(Type(pop) == Cst(atype(PRODUCT,?,?),No_type);Type(push) == Cst(No_type,atype(PRODUCT,?,?)))
END
&
THEORY ListVisibleStaticX IS
  List_Constants(Implementation(Queue_i),Machine(Queue_ctx))==(QUEUE_SIZE,pp0);
  List_Constants_Env(Implementation(Queue_i),Machine(Queue_ctx))==(Type(QUEUE_SIZE) == Cst(btype(INTEGER,?,?));Type(pp0) == Cst(atype(PRODUCT,?,?)));
  List_Defered_Sets(Implementation(Queue_i),Machine(Queue_ctx))==(PRODUCT)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Implementation(Queue_i)) == (? | ? | ? | ? | push,pop | ? | seen(Machine(Queue_ctx)) | ? | Queue_i);
  List_Of_HiddenCst_Ids(Implementation(Queue_i)) == (? | ?);
  List_Of_VisibleCst_Ids(Implementation(Queue_i)) == (?);
  List_Of_VisibleVar_Ids(Implementation(Queue_i)) == (max_array_size,pos,sze,array | ?);
  List_Of_Ids_SeenBNU(Implementation(Queue_i)) == (?: ?);
  List_Of_Ids(Machine(Queue_ctx)) == (QUEUE_SIZE,pp0,PRODUCT | ? | ? | ? | ? | ? | ? | ? | Queue_ctx);
  List_Of_HiddenCst_Ids(Machine(Queue_ctx)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Queue_ctx)) == (QUEUE_SIZE,pp0);
  List_Of_VisibleVar_Ids(Machine(Queue_ctx)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Queue_ctx)) == (?: ?)
END
&
THEORY VisibleVariablesEnvX IS
  VisibleVariables(Implementation(Queue_i)) == (Type(max_array_size) == Mvv(btype(INTEGER,?,?));Type(pos) == Mvv(btype(INTEGER,?,?));Type(sze) == Mvv(btype(INTEGER,?,?));Type(array) == Mvv(SetOf(btype(INTEGER,0,max_array_size)*atype(PRODUCT,"[PRODUCT","]PRODUCT"))))
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
  List_Local_Operations(Implementation(Queue_i))==(?)
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
  TypingPredicate(Implementation(Queue_i))==(array: POW(INTEGER*PRODUCT) & sze: INTEGER & pos: INTEGER & max_array_size: INTEGER)
END
&
THEORY ImportedVariablesListX END
&
THEORY ListLocalOpInvariantX END
)
