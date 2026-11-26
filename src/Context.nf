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
  List_Valuable_Constants(Machine(Context))==(MAX_ORDERS,MAX_STORAGE,DRIVERS,ROUTE_SIZE,MAX_DISTANCE,default_addr,default_user);
  Inherited_List_Constants(Machine(Context))==(?);
  List_Constants(Machine(Context))==(MAX_ORDERS,MAX_STORAGE,DRIVERS,ROUTE_SIZE,MAX_DISTANCE,default_addr,default_user)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(Context),USER)==(?);
  Context_List_Enumerated(Machine(Context))==(?);
  Context_List_Defered(Machine(Context))==(PRODUCT);
  Context_List_Sets(Machine(Context))==(PRODUCT);
  List_Valuable_Sets(Machine(Context))==(USER,ADDRESS);
  Inherited_List_Enumerated(Machine(Context))==(?);
  Inherited_List_Defered(Machine(Context))==(?);
  Inherited_List_Sets(Machine(Context))==(?);
  List_Enumerated(Machine(Context))==(ORDER_STATE,DRIVER_STATE);
  List_Defered(Machine(Context))==(USER,ADDRESS);
  List_Sets(Machine(Context))==(USER,ADDRESS,ORDER_STATE,DRIVER_STATE);
  Set_Definition(Machine(Context),ADDRESS)==(?);
  Set_Definition(Machine(Context),ORDER_STATE)==({PLACED,PREPARING,READY,MOVING,DELIVERED});
  Set_Definition(Machine(Context),DRIVER_STATE)==({AVAILABLE,BUSY})
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
  List_Properties(Machine(Context))==(MAX_ORDERS: NAT1 & MAX_STORAGE: NAT1 & DRIVERS: NAT1 & ROUTE_SIZE: NAT1 & MAX_DISTANCE: NAT & default_addr: ADDRESS & default_user: USER & USER: FIN(INTEGER) & not(USER = {}) & ADDRESS: FIN(INTEGER) & not(ADDRESS = {}) & ORDER_STATE: FIN(INTEGER) & not(ORDER_STATE = {}) & DRIVER_STATE: FIN(INTEGER) & not(DRIVER_STATE = {}))
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
  List_Of_Ids(Machine(Context)) == (MAX_ORDERS,MAX_STORAGE,DRIVERS,ROUTE_SIZE,MAX_DISTANCE,default_addr,default_user,USER,ADDRESS,ORDER_STATE,DRIVER_STATE,PLACED,PREPARING,READY,MOVING,DELIVERED,AVAILABLE,BUSY | ? | ? | ? | ? | ? | seen(Machine(Queue_ctx)) | ? | Context);
  List_Of_HiddenCst_Ids(Machine(Context)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Context)) == (MAX_ORDERS,MAX_STORAGE,DRIVERS,ROUTE_SIZE,MAX_DISTANCE,default_addr,default_user);
  List_Of_VisibleVar_Ids(Machine(Context)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Context)) == (?: ?);
  List_Of_Ids(Machine(Queue_ctx)) == (QUEUE_SIZE,pp0,PRODUCT | ? | ? | ? | ? | ? | ? | ? | Queue_ctx);
  List_Of_HiddenCst_Ids(Machine(Queue_ctx)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Queue_ctx)) == (QUEUE_SIZE,pp0);
  List_Of_VisibleVar_Ids(Machine(Queue_ctx)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Queue_ctx)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Machine(Context)) == (Type(USER) == Cst(SetOf(atype(USER,"[USER","]USER")));Type(ADDRESS) == Cst(SetOf(atype(ADDRESS,"[ADDRESS","]ADDRESS")));Type(ORDER_STATE) == Cst(SetOf(etype(ORDER_STATE,0,4)));Type(DRIVER_STATE) == Cst(SetOf(etype(DRIVER_STATE,0,1))))
END
&
THEORY ConstantsEnvX IS
  Constants(Machine(Context)) == (Type(PLACED) == Cst(etype(ORDER_STATE,0,4));Type(PREPARING) == Cst(etype(ORDER_STATE,0,4));Type(READY) == Cst(etype(ORDER_STATE,0,4));Type(MOVING) == Cst(etype(ORDER_STATE,0,4));Type(DELIVERED) == Cst(etype(ORDER_STATE,0,4));Type(AVAILABLE) == Cst(etype(DRIVER_STATE,0,1));Type(BUSY) == Cst(etype(DRIVER_STATE,0,1));Type(MAX_ORDERS) == Cst(btype(INTEGER,?,?));Type(MAX_STORAGE) == Cst(btype(INTEGER,?,?));Type(DRIVERS) == Cst(btype(INTEGER,?,?));Type(ROUTE_SIZE) == Cst(btype(INTEGER,?,?));Type(MAX_DISTANCE) == Cst(btype(INTEGER,?,?));Type(default_addr) == Cst(atype(ADDRESS,?,?));Type(default_user) == Cst(atype(USER,?,?)))
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
