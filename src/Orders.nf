Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(Orders))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(Orders))==(Machine(Orders));
  Level(Machine(Orders))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(Orders)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(Orders))==(Context,Queue_ctx)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(Orders))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(Orders))==(?);
  List_Includes(Machine(Orders))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(Orders))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(Orders))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(Orders))==(?);
  Context_List_Variables(Machine(Orders))==(?);
  Abstract_List_Variables(Machine(Orders))==(?);
  Local_List_Variables(Machine(Orders))==(current_ident,order_state,who,where,what);
  List_Variables(Machine(Orders))==(current_ident,order_state,who,where,what);
  External_List_Variables(Machine(Orders))==(current_ident,order_state,who,where,what)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(Orders))==(?);
  Abstract_List_VisibleVariables(Machine(Orders))==(?);
  External_List_VisibleVariables(Machine(Orders))==(?);
  Expanded_List_VisibleVariables(Machine(Orders))==(?);
  List_VisibleVariables(Machine(Orders))==(?);
  Internal_List_VisibleVariables(Machine(Orders))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(Orders))==(btrue);
  Gluing_List_Invariant(Machine(Orders))==(btrue);
  Expanded_List_Invariant(Machine(Orders))==(btrue);
  Abstract_List_Invariant(Machine(Orders))==(btrue);
  Context_List_Invariant(Machine(Orders))==(btrue);
  List_Invariant(Machine(Orders))==(what: NAT1 +-> NAT & where: NAT1 +-> ADDRESS & who: NAT1 +-> USER & order_state: NAT1 +-> ORDER_STATE & current_ident: NAT1 & dom(what) = dom(order_state) & dom(where) = dom(order_state) & dom(who) = dom(order_state) & card(order_state)<=MAX_ORDERS & !oid.(oid: dom(order_state) => oid<current_ident))
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(Orders))==(btrue);
  Abstract_List_Assertions(Machine(Orders))==(btrue);
  Context_List_Assertions(Machine(Orders))==(btrue);
  List_Assertions(Machine(Orders))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(Orders))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(Orders))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(Orders))==(what,where,who,order_state,current_ident:={},{},{},{},1);
  Context_List_Initialisation(Machine(Orders))==(skip);
  List_Initialisation(Machine(Orders))==(what:={} || where:={} || who:={} || order_state:={} || current_ident:=1)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(Orders))==(?)
END
&
THEORY ListInstanciatedParametersX IS
  List_Instanciated_Parameters(Machine(Orders),Machine(Context))==(?);
  List_Instanciated_Parameters(Machine(Orders),Machine(Queue_ctx))==(?)
END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(Orders))==(btrue);
  List_Constraints(Machine(Orders))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(Orders))==(create_order,mark_order_ready,mark_order_moving,mark_order_delivered,get_order_state,get_order_user,get_order_address,order_exists);
  List_Operations(Machine(Orders))==(create_order,mark_order_ready,mark_order_moving,mark_order_delivered,get_order_state,get_order_user,get_order_address,order_exists)
END
&
THEORY ListInputX IS
  List_Input(Machine(Orders),create_order)==(prod_qty,aa,uu);
  List_Input(Machine(Orders),mark_order_ready)==(oid);
  List_Input(Machine(Orders),mark_order_moving)==(oid);
  List_Input(Machine(Orders),mark_order_delivered)==(oid);
  List_Input(Machine(Orders),get_order_state)==(oid);
  List_Input(Machine(Orders),get_order_user)==(oid);
  List_Input(Machine(Orders),get_order_address)==(oid);
  List_Input(Machine(Orders),order_exists)==(oid)
END
&
THEORY ListOutputX IS
  List_Output(Machine(Orders),create_order)==(oid);
  List_Output(Machine(Orders),mark_order_ready)==(?);
  List_Output(Machine(Orders),mark_order_moving)==(?);
  List_Output(Machine(Orders),mark_order_delivered)==(?);
  List_Output(Machine(Orders),get_order_state)==(st);
  List_Output(Machine(Orders),get_order_user)==(uu);
  List_Output(Machine(Orders),get_order_address)==(aa);
  List_Output(Machine(Orders),order_exists)==(ex)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(Orders),create_order)==(oid <-- create_order(prod_qty,aa,uu));
  List_Header(Machine(Orders),mark_order_ready)==(mark_order_ready(oid));
  List_Header(Machine(Orders),mark_order_moving)==(mark_order_moving(oid));
  List_Header(Machine(Orders),mark_order_delivered)==(mark_order_delivered(oid));
  List_Header(Machine(Orders),get_order_state)==(st <-- get_order_state(oid));
  List_Header(Machine(Orders),get_order_user)==(uu <-- get_order_user(oid));
  List_Header(Machine(Orders),get_order_address)==(aa <-- get_order_address(oid));
  List_Header(Machine(Orders),order_exists)==(ex <-- order_exists(oid))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(Orders),create_order)==(prod_qty: NAT & aa: ADDRESS & uu: USER & card(order_state)<MAX_ORDERS);
  List_Precondition(Machine(Orders),mark_order_ready)==(oid: NAT1 & oid: dom(order_state) & order_state(oid) = PREPARING);
  List_Precondition(Machine(Orders),mark_order_moving)==(oid: NAT1 & oid: dom(order_state) & order_state(oid) = READY);
  List_Precondition(Machine(Orders),mark_order_delivered)==(oid: NAT1 & oid: dom(order_state) & order_state(oid) = MOVING);
  List_Precondition(Machine(Orders),get_order_state)==(oid: NAT1 & oid: dom(order_state));
  List_Precondition(Machine(Orders),get_order_user)==(oid: NAT1 & oid: dom(who));
  List_Precondition(Machine(Orders),get_order_address)==(oid: NAT1 & oid: dom(where));
  List_Precondition(Machine(Orders),order_exists)==(oid: NAT1)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(Orders),order_exists)==(oid: NAT1 | oid: dom(order_state) ==> ex:=TRUE [] not(oid: dom(order_state)) ==> ex:=FALSE);
  Expanded_List_Substitution(Machine(Orders),get_order_address)==(oid: NAT1 & oid: dom(where) | aa:=where(oid));
  Expanded_List_Substitution(Machine(Orders),get_order_user)==(oid: NAT1 & oid: dom(who) | uu:=who(oid));
  Expanded_List_Substitution(Machine(Orders),get_order_state)==(oid: NAT1 & oid: dom(order_state) | st:=order_state(oid));
  Expanded_List_Substitution(Machine(Orders),mark_order_delivered)==(oid: NAT1 & oid: dom(order_state) & order_state(oid) = MOVING | order_state:=order_state<+{oid|->DELIVERED});
  Expanded_List_Substitution(Machine(Orders),mark_order_moving)==(oid: NAT1 & oid: dom(order_state) & order_state(oid) = READY | order_state:=order_state<+{oid|->MOVING});
  Expanded_List_Substitution(Machine(Orders),mark_order_ready)==(oid: NAT1 & oid: dom(order_state) & order_state(oid) = PREPARING | order_state:=order_state<+{oid|->READY});
  Expanded_List_Substitution(Machine(Orders),create_order)==(prod_qty: NAT & aa: ADDRESS & uu: USER & card(order_state)<MAX_ORDERS | oid,what,where,who,order_state,current_ident:=current_ident,what\/{current_ident|->prod_qty},where\/{current_ident|->aa},who\/{current_ident|->uu},order_state\/{current_ident|->PREPARING},current_ident+1);
  List_Substitution(Machine(Orders),create_order)==(oid:=current_ident || what:=what\/{current_ident|->prod_qty} || where:=where\/{current_ident|->aa} || who:=who\/{current_ident|->uu} || order_state:=order_state\/{current_ident|->PREPARING} || current_ident:=current_ident+1);
  List_Substitution(Machine(Orders),mark_order_ready)==(order_state(oid):=READY);
  List_Substitution(Machine(Orders),mark_order_moving)==(order_state(oid):=MOVING);
  List_Substitution(Machine(Orders),mark_order_delivered)==(order_state(oid):=DELIVERED);
  List_Substitution(Machine(Orders),get_order_state)==(st:=order_state(oid));
  List_Substitution(Machine(Orders),get_order_user)==(uu:=who(oid));
  List_Substitution(Machine(Orders),get_order_address)==(aa:=where(oid));
  List_Substitution(Machine(Orders),order_exists)==(IF oid: dom(order_state) THEN ex:=TRUE ELSE ex:=FALSE END)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(Orders))==(?);
  Inherited_List_Constants(Machine(Orders))==(?);
  List_Constants(Machine(Orders))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(Orders),DRIVER_STATE)==({AVAILABLE,BUSY});
  Context_List_Enumerated(Machine(Orders))==(ORDER_STATE,DRIVER_STATE);
  Context_List_Defered(Machine(Orders))==(USER,ADDRESS,PRODUCT);
  Context_List_Sets(Machine(Orders))==(USER,ADDRESS,ORDER_STATE,DRIVER_STATE,PRODUCT);
  List_Valuable_Sets(Machine(Orders))==(?);
  Inherited_List_Enumerated(Machine(Orders))==(?);
  Inherited_List_Defered(Machine(Orders))==(?);
  Inherited_List_Sets(Machine(Orders))==(?);
  List_Enumerated(Machine(Orders))==(?);
  List_Defered(Machine(Orders))==(?);
  List_Sets(Machine(Orders))==(?);
  Set_Definition(Machine(Orders),ORDER_STATE)==({PLACED,PREPARING,READY,MOVING,DELIVERED})
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(Orders))==(?);
  Expanded_List_HiddenConstants(Machine(Orders))==(?);
  List_HiddenConstants(Machine(Orders))==(?);
  External_List_HiddenConstants(Machine(Orders))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(Orders))==(btrue);
  Context_List_Properties(Machine(Orders))==(MAX_ORDERS: NAT1 & MAX_STORAGE: NAT1 & DRIVERS: NAT1 & ROUTE_SIZE: NAT1 & MAX_DISTANCE: NAT & default_addr: ADDRESS & default_user: USER & USER: FIN(INTEGER) & not(USER = {}) & ADDRESS: FIN(INTEGER) & not(ADDRESS = {}) & ORDER_STATE: FIN(INTEGER) & not(ORDER_STATE = {}) & DRIVER_STATE: FIN(INTEGER) & not(DRIVER_STATE = {}) & QUEUE_SIZE: NAT & pp0: PRODUCT & QUEUE_SIZE>=1 & PRODUCT: FIN(INTEGER) & not(PRODUCT = {}));
  Inherited_List_Properties(Machine(Orders))==(btrue);
  List_Properties(Machine(Orders))==(btrue)
END
&
THEORY ListSeenInfoX IS
  Seen_Internal_List_Operations(Machine(Orders),Machine(Queue_ctx))==(?);
  Seen_Context_List_Enumerated(Machine(Orders))==(?);
  Seen_Context_List_Invariant(Machine(Orders))==(btrue);
  Seen_Context_List_Assertions(Machine(Orders))==(btrue);
  Seen_Context_List_Properties(Machine(Orders))==(QUEUE_SIZE: NAT & pp0: PRODUCT & QUEUE_SIZE>=1 & PRODUCT: FIN(INTEGER) & not(PRODUCT = {}));
  Seen_List_Constraints(Machine(Orders))==(btrue);
  Seen_List_Operations(Machine(Orders),Machine(Queue_ctx))==(?);
  Seen_Expanded_List_Invariant(Machine(Orders),Machine(Queue_ctx))==(btrue);
  Seen_Internal_List_Operations(Machine(Orders),Machine(Context))==(?);
  Seen_List_Operations(Machine(Orders),Machine(Context))==(?);
  Seen_Expanded_List_Invariant(Machine(Orders),Machine(Context))==(btrue)
END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(Orders),create_order)==(?);
  List_ANY_Var(Machine(Orders),mark_order_ready)==(?);
  List_ANY_Var(Machine(Orders),mark_order_moving)==(?);
  List_ANY_Var(Machine(Orders),mark_order_delivered)==(?);
  List_ANY_Var(Machine(Orders),get_order_state)==(?);
  List_ANY_Var(Machine(Orders),get_order_user)==(?);
  List_ANY_Var(Machine(Orders),get_order_address)==(?);
  List_ANY_Var(Machine(Orders),order_exists)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(Orders)) == (? | ? | current_ident,order_state,who,where,what | ? | create_order,mark_order_ready,mark_order_moving,mark_order_delivered,get_order_state,get_order_user,get_order_address,order_exists | ? | seen(Machine(Context)),seen(Machine(Queue_ctx)) | ? | Orders);
  List_Of_HiddenCst_Ids(Machine(Orders)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Orders)) == (?);
  List_Of_VisibleVar_Ids(Machine(Orders)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Orders)) == (?: ?);
  List_Of_Ids(Machine(Queue_ctx)) == (QUEUE_SIZE,pp0,PRODUCT | ? | ? | ? | ? | ? | ? | ? | Queue_ctx);
  List_Of_HiddenCst_Ids(Machine(Queue_ctx)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Queue_ctx)) == (QUEUE_SIZE,pp0);
  List_Of_VisibleVar_Ids(Machine(Queue_ctx)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Queue_ctx)) == (?: ?);
  List_Of_Ids(Machine(Context)) == (MAX_ORDERS,MAX_STORAGE,DRIVERS,ROUTE_SIZE,MAX_DISTANCE,default_addr,default_user,USER,ADDRESS,ORDER_STATE,DRIVER_STATE,PLACED,PREPARING,READY,MOVING,DELIVERED,AVAILABLE,BUSY | ? | ? | ? | ? | ? | seen(Machine(Queue_ctx)) | ? | Context);
  List_Of_HiddenCst_Ids(Machine(Context)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Context)) == (MAX_ORDERS,MAX_STORAGE,DRIVERS,ROUTE_SIZE,MAX_DISTANCE,default_addr,default_user);
  List_Of_VisibleVar_Ids(Machine(Context)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Context)) == (?: ?)
END
&
THEORY VariablesEnvX IS
  Variables(Machine(Orders)) == (Type(current_ident) == Mvl(btype(INTEGER,?,?));Type(order_state) == Mvl(SetOf(btype(INTEGER,?,?)*etype(ORDER_STATE,?,?)));Type(who) == Mvl(SetOf(btype(INTEGER,?,?)*atype(USER,?,?)));Type(where) == Mvl(SetOf(btype(INTEGER,?,?)*atype(ADDRESS,?,?)));Type(what) == Mvl(SetOf(btype(INTEGER,?,?)*btype(INTEGER,?,?))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(Orders)) == (Type(order_exists) == Cst(btype(BOOL,?,?),btype(INTEGER,?,?));Type(get_order_address) == Cst(atype(ADDRESS,?,?),btype(INTEGER,?,?));Type(get_order_user) == Cst(atype(USER,?,?),btype(INTEGER,?,?));Type(get_order_state) == Cst(etype(ORDER_STATE,?,?),btype(INTEGER,?,?));Type(mark_order_delivered) == Cst(No_type,btype(INTEGER,?,?));Type(mark_order_moving) == Cst(No_type,btype(INTEGER,?,?));Type(mark_order_ready) == Cst(No_type,btype(INTEGER,?,?));Type(create_order) == Cst(btype(INTEGER,?,?),btype(INTEGER,?,?)*atype(ADDRESS,?,?)*atype(USER,?,?)));
  Observers(Machine(Orders)) == (Type(order_exists) == Cst(btype(BOOL,?,?),btype(INTEGER,?,?));Type(get_order_address) == Cst(atype(ADDRESS,?,?),btype(INTEGER,?,?));Type(get_order_user) == Cst(atype(USER,?,?),btype(INTEGER,?,?));Type(get_order_state) == Cst(etype(ORDER_STATE,?,?),btype(INTEGER,?,?)))
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
