Normalised(
THEORY MagicNumberX IS
  MagicNumber(Implementation(Context_i))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Implementation(Context_i))==(Machine(Context));
  Level(Implementation(Context_i))==(1);
  Upper_Level(Implementation(Context_i))==(Machine(Context))
END
&
THEORY LoadedStructureX IS
  Implementation(Context_i)
END
&
THEORY ListSeesX IS
  List_Sees(Implementation(Context_i))==(Queue_ctx)
END
&
THEORY ListIncludesX IS
  List_Includes(Implementation(Context_i))==(?);
  Inherited_List_Includes(Implementation(Context_i))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Implementation(Context_i))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Implementation(Context_i))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Implementation(Context_i))==(?);
  Context_List_Variables(Implementation(Context_i))==(?);
  Abstract_List_Variables(Implementation(Context_i))==(?);
  Local_List_Variables(Implementation(Context_i))==(?);
  List_Variables(Implementation(Context_i))==(?);
  External_List_Variables(Implementation(Context_i))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Implementation(Context_i))==(?);
  Abstract_List_VisibleVariables(Implementation(Context_i))==(?);
  External_List_VisibleVariables(Implementation(Context_i))==(?);
  Expanded_List_VisibleVariables(Implementation(Context_i))==(?);
  List_VisibleVariables(Implementation(Context_i))==(?);
  Internal_List_VisibleVariables(Implementation(Context_i))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Implementation(Context_i))==(btrue);
  Expanded_List_Invariant(Implementation(Context_i))==(btrue);
  Abstract_List_Invariant(Implementation(Context_i))==(btrue);
  Context_List_Invariant(Implementation(Context_i))==(btrue);
  List_Invariant(Implementation(Context_i))==(btrue)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Implementation(Context_i))==(btrue);
  Abstract_List_Assertions(Implementation(Context_i))==(btrue);
  Context_List_Assertions(Implementation(Context_i))==(btrue);
  List_Assertions(Implementation(Context_i))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Implementation(Context_i))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Implementation(Context_i))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Implementation(Context_i))==(skip);
  Context_List_Initialisation(Implementation(Context_i))==(skip);
  List_Initialisation(Implementation(Context_i))==(skip)
END
&
THEORY ListParametersX IS
  List_Parameters(Implementation(Context_i))==(?)
END
&
THEORY ListInstanciatedParametersX IS
  List_Instanciated_Parameters(Implementation(Context_i),Machine(Queue_ctx))==(?)
END
&
THEORY ListConstraintsX IS
  List_Constraints(Implementation(Context_i))==(btrue);
  List_Context_Constraints(Implementation(Context_i))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Implementation(Context_i))==(?);
  List_Operations(Implementation(Context_i))==(?)
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
  List_Valuable_Constants(Implementation(Context_i))==(MAX_ORDERS,MAX_STORAGE,DRIVERS,ROUTE_SIZE,MAX_DISTANCE,default_addr,default_user);
  Inherited_List_Constants(Implementation(Context_i))==(MAX_ORDERS,MAX_STORAGE,DRIVERS,ROUTE_SIZE,MAX_DISTANCE,default_addr,default_user);
  List_Constants(Implementation(Context_i))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Implementation(Context_i),DRIVER_STATE)==({AVAILABLE,BUSY});
  Context_List_Enumerated(Implementation(Context_i))==(?);
  Context_List_Defered(Implementation(Context_i))==(PRODUCT);
  Context_List_Sets(Implementation(Context_i))==(PRODUCT);
  List_Own_Enumerated(Implementation(Context_i))==(ORDER_STATE,DRIVER_STATE);
  List_Valuable_Sets(Implementation(Context_i))==(USER,ADDRESS);
  Inherited_List_Enumerated(Implementation(Context_i))==(ORDER_STATE,DRIVER_STATE);
  Inherited_List_Defered(Implementation(Context_i))==(USER,ADDRESS);
  Inherited_List_Sets(Implementation(Context_i))==(USER,ADDRESS,ORDER_STATE,DRIVER_STATE);
  List_Enumerated(Implementation(Context_i))==(?);
  List_Defered(Implementation(Context_i))==(?);
  List_Sets(Implementation(Context_i))==(?);
  Set_Definition(Implementation(Context_i),ORDER_STATE)==({PLACED,PREPARING,READY,MOVING,DELIVERED});
  Set_Definition(Implementation(Context_i),ADDRESS)==(?);
  Set_Definition(Implementation(Context_i),USER)==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Implementation(Context_i))==(?);
  Expanded_List_HiddenConstants(Implementation(Context_i))==(?);
  List_HiddenConstants(Implementation(Context_i))==(?);
  External_List_HiddenConstants(Implementation(Context_i))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Implementation(Context_i))==(MAX_ORDERS: NAT1 & MAX_STORAGE: NAT1 & DRIVERS: NAT1 & ROUTE_SIZE: NAT1 & MAX_DISTANCE: NAT & default_addr: ADDRESS & default_user: USER & USER: FIN(INTEGER) & not(USER = {}) & ADDRESS: FIN(INTEGER) & not(ADDRESS = {}) & ORDER_STATE: FIN(INTEGER) & not(ORDER_STATE = {}) & DRIVER_STATE: FIN(INTEGER) & not(DRIVER_STATE = {}));
  Context_List_Properties(Implementation(Context_i))==(QUEUE_SIZE: NAT & pp0: PRODUCT & QUEUE_SIZE>=1 & PRODUCT: FIN(INTEGER) & not(PRODUCT = {}));
  Inherited_List_Properties(Implementation(Context_i))==(btrue);
  List_Properties(Implementation(Context_i))==(btrue)
END
&
THEORY ListValuesX IS
  Precond_Valued_Objects(Implementation(Context_i))==(btrue);
  Values_Subs(Implementation(Context_i))==(MAX_ORDERS,MAX_STORAGE,DRIVERS,ROUTE_SIZE,MAX_DISTANCE,ADDRESS,USER,default_addr,default_user: 30,10,5,10,100,0..50,0..100,0,0);
  List_Values(Implementation(Context_i))==(MAX_ORDERS = 30;MAX_STORAGE = 10;DRIVERS = 5;ROUTE_SIZE = 10;MAX_DISTANCE = 100;ADDRESS = 0..50;USER = 0..100;default_addr = 0;default_user = 0)
END
&
THEORY ListSeenInfoX IS
  Seen_Internal_List_Operations(Implementation(Context_i),Machine(Queue_ctx))==(?);
  Seen_Context_List_Enumerated(Implementation(Context_i))==(?);
  Seen_Context_List_Invariant(Implementation(Context_i))==(btrue);
  Seen_Context_List_Assertions(Implementation(Context_i))==(btrue);
  Seen_Context_List_Properties(Implementation(Context_i))==(btrue);
  Seen_List_Constraints(Implementation(Context_i))==(btrue);
  Seen_List_Operations(Implementation(Context_i),Machine(Queue_ctx))==(?);
  Seen_Expanded_List_Invariant(Implementation(Context_i),Machine(Queue_ctx))==(btrue)
END
&
THEORY ListIncludedOperationsX END
&
THEORY InheritedEnvX IS
  Constants(Implementation(Context_i))==(Type(PLACED) == Cst(etype(ORDER_STATE,0,4));Type(PREPARING) == Cst(etype(ORDER_STATE,0,4));Type(READY) == Cst(etype(ORDER_STATE,0,4));Type(MOVING) == Cst(etype(ORDER_STATE,0,4));Type(DELIVERED) == Cst(etype(ORDER_STATE,0,4));Type(AVAILABLE) == Cst(etype(DRIVER_STATE,0,1));Type(BUSY) == Cst(etype(DRIVER_STATE,0,1));Type(MAX_ORDERS) == Cst(btype(INTEGER,?,?));Type(MAX_STORAGE) == Cst(btype(INTEGER,?,?));Type(DRIVERS) == Cst(btype(INTEGER,?,?));Type(ROUTE_SIZE) == Cst(btype(INTEGER,?,?));Type(MAX_DISTANCE) == Cst(btype(INTEGER,?,?));Type(default_addr) == Cst(atype(ADDRESS,?,?));Type(default_user) == Cst(atype(USER,?,?)))
END
&
THEORY ListVisibleStaticX IS
  List_Constants(Implementation(Context_i),Machine(Queue_ctx))==(QUEUE_SIZE,pp0);
  List_Constants_Env(Implementation(Context_i),Machine(Queue_ctx))==(Type(QUEUE_SIZE) == Cst(btype(INTEGER,?,?));Type(pp0) == Cst(atype(PRODUCT,?,?)));
  List_Defered_Sets(Implementation(Context_i),Machine(Queue_ctx))==(PRODUCT)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Implementation(Context_i)) == (? | ? | ? | ? | ? | ? | seen(Machine(Queue_ctx)) | ? | Context_i);
  List_Of_HiddenCst_Ids(Implementation(Context_i)) == (? | ?);
  List_Of_VisibleCst_Ids(Implementation(Context_i)) == (?);
  List_Of_VisibleVar_Ids(Implementation(Context_i)) == (? | ?);
  List_Of_Ids_SeenBNU(Implementation(Context_i)) == (?: ?);
  List_Of_Ids(Machine(Queue_ctx)) == (QUEUE_SIZE,pp0,PRODUCT | ? | ? | ? | ? | ? | ? | ? | Queue_ctx);
  List_Of_HiddenCst_Ids(Machine(Queue_ctx)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Queue_ctx)) == (QUEUE_SIZE,pp0);
  List_Of_VisibleVar_Ids(Machine(Queue_ctx)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Queue_ctx)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Implementation(Context_i)) == (Type(DRIVER_STATE) == Cst(SetOf(etype(DRIVER_STATE,0,1)));Type(ORDER_STATE) == Cst(SetOf(etype(ORDER_STATE,0,4)));Type(ADDRESS) == Cst(SetOf(btype(INTEGER,"[ADDRESS","]ADDRESS")));Type(USER) == Cst(SetOf(btype(INTEGER,"[USER","]USER"))))
END
&
THEORY ConstantsEnvX IS
  Constants(Implementation(Context_i)) == (Type(default_user) == Cst(btype(INTEGER,?,?));Type(default_addr) == Cst(btype(INTEGER,?,?));Type(MAX_DISTANCE) == Cst(btype(INTEGER,?,?));Type(ROUTE_SIZE) == Cst(btype(INTEGER,?,?));Type(DRIVERS) == Cst(btype(INTEGER,?,?));Type(MAX_STORAGE) == Cst(btype(INTEGER,?,?));Type(MAX_ORDERS) == Cst(btype(INTEGER,?,?));Type(BUSY) == Cst(etype(DRIVER_STATE,0,1));Type(AVAILABLE) == Cst(etype(DRIVER_STATE,0,1));Type(DELIVERED) == Cst(etype(ORDER_STATE,0,4));Type(MOVING) == Cst(etype(ORDER_STATE,0,4));Type(READY) == Cst(etype(ORDER_STATE,0,4));Type(PREPARING) == Cst(etype(ORDER_STATE,0,4));Type(PLACED) == Cst(etype(ORDER_STATE,0,4)))
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
  List_Local_Operations(Implementation(Context_i))==(?)
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
  TypingPredicate(Implementation(Context_i))==(btrue)
END
&
THEORY ImportedVariablesListX END
&
THEORY ListLocalOpInvariantX END
)
