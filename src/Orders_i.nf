Normalised(
THEORY MagicNumberX IS
  MagicNumber(Implementation(Orders_i))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Implementation(Orders_i))==(Machine(Orders));
  Level(Implementation(Orders_i))==(1);
  Upper_Level(Implementation(Orders_i))==(Machine(Orders))
END
&
THEORY LoadedStructureX IS
  Implementation(Orders_i)
END
&
THEORY ListSeesX IS
  List_Sees(Implementation(Orders_i))==(Context,Queue_ctx)
END
&
THEORY ListIncludesX IS
  List_Includes(Implementation(Orders_i))==(?);
  Inherited_List_Includes(Implementation(Orders_i))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Implementation(Orders_i))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Implementation(Orders_i))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Implementation(Orders_i))==(?);
  Context_List_Variables(Implementation(Orders_i))==(?);
  Abstract_List_Variables(Implementation(Orders_i))==(current_ident,order_state,who,where,what);
  Local_List_Variables(Implementation(Orders_i))==(?);
  List_Variables(Implementation(Orders_i))==(?);
  External_List_Variables(Implementation(Orders_i))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Implementation(Orders_i))==(?);
  Abstract_List_VisibleVariables(Implementation(Orders_i))==(?);
  External_List_VisibleVariables(Implementation(Orders_i))==(?);
  Expanded_List_VisibleVariables(Implementation(Orders_i))==(?);
  List_VisibleVariables(Implementation(Orders_i))==(active_count,next_id,arr_state,arr_who,arr_where,arr_what,arr_id);
  Internal_List_VisibleVariables(Implementation(Orders_i))==(active_count,next_id,arr_state,arr_who,arr_where,arr_what,arr_id)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Implementation(Orders_i))==(btrue);
  Expanded_List_Invariant(Implementation(Orders_i))==(btrue);
  Abstract_List_Invariant(Implementation(Orders_i))==(what: NAT1 +-> NAT & where: NAT1 +-> ADDRESS & who: NAT1 +-> USER & order_state: NAT1 +-> ORDER_STATE & current_ident: NAT1 & dom(what) = dom(order_state) & dom(where) = dom(order_state) & dom(who) = dom(order_state) & card(order_state)<=MAX_ORDERS & !oid.(oid: dom(order_state) => oid<current_ident));
  Context_List_Invariant(Implementation(Orders_i))==(btrue);
  List_Invariant(Implementation(Orders_i))==(arr_id: 0..max_order_idx --> NAT & arr_what: 0..max_order_idx --> NAT & arr_where: 0..max_order_idx --> ADDRESS & arr_who: 0..max_order_idx --> USER & arr_state: 0..max_order_idx --> ORDER_STATE & next_id: NAT1 & active_count: 0..MAX_ORDERS)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Implementation(Orders_i))==(btrue);
  Abstract_List_Assertions(Implementation(Orders_i))==(btrue);
  Context_List_Assertions(Implementation(Orders_i))==(btrue);
  List_Assertions(Implementation(Orders_i))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Implementation(Orders_i))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Implementation(Orders_i))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Implementation(Orders_i))==(@ii.((0: INT | ii:=0);WHILE ii<MAX_ORDERS DO (ii: dom(arr_id) & 0: INT | arr_id:=arr_id<+{ii|->0});(ii: dom(arr_what) & 0: INT | arr_what:=arr_what<+{ii|->0});(ii: dom(arr_where) | arr_where:=arr_where<+{ii|->default_addr});(ii: dom(arr_who) | arr_who:=arr_who<+{ii|->default_user});(ii: dom(arr_state) | arr_state:=arr_state<+{ii|->PLACED});(ii+1: INT & ii: INT & 1: INT | ii:=ii+1) INVARIANT ii: 0..MAX_ORDERS VARIANT MAX_ORDERS-ii END);(1: INT | next_id:=1);(0: INT | active_count:=0));
  Context_List_Initialisation(Implementation(Orders_i))==(skip);
  List_Initialisation(Implementation(Orders_i))==(VAR ii IN ii:=0;WHILE ii<MAX_ORDERS DO arr_id(ii):=0;arr_what(ii):=0;arr_where(ii):=default_addr;arr_who(ii):=default_user;arr_state(ii):=PLACED;ii:=ii+1 INVARIANT ii: 0..MAX_ORDERS VARIANT MAX_ORDERS-ii END END;next_id:=1;active_count:=0)
END
&
THEORY ListParametersX IS
  List_Parameters(Implementation(Orders_i))==(?)
END
&
THEORY ListInstanciatedParametersX IS
  List_Instanciated_Parameters(Implementation(Orders_i),Machine(Context))==(?);
  List_Instanciated_Parameters(Implementation(Orders_i),Machine(Queue_ctx))==(?)
END
&
THEORY ListConstraintsX IS
  List_Constraints(Implementation(Orders_i))==(btrue);
  List_Context_Constraints(Implementation(Orders_i))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Implementation(Orders_i))==(create_order,mark_order_ready,mark_order_moving,mark_order_delivered,get_order_state,get_order_user,get_order_address,order_exists);
  List_Operations(Implementation(Orders_i))==(create_order,mark_order_ready,mark_order_moving,mark_order_delivered,get_order_state,get_order_user,get_order_address,order_exists)
END
&
THEORY ListInputX IS
  List_Input(Implementation(Orders_i),create_order)==(prod_qty,aa,uu);
  List_Input(Implementation(Orders_i),mark_order_ready)==(oid);
  List_Input(Implementation(Orders_i),mark_order_moving)==(oid);
  List_Input(Implementation(Orders_i),mark_order_delivered)==(oid);
  List_Input(Implementation(Orders_i),get_order_state)==(oid);
  List_Input(Implementation(Orders_i),get_order_user)==(oid);
  List_Input(Implementation(Orders_i),get_order_address)==(oid);
  List_Input(Implementation(Orders_i),order_exists)==(oid)
END
&
THEORY ListOutputX IS
  List_Output(Implementation(Orders_i),create_order)==(oid);
  List_Output(Implementation(Orders_i),mark_order_ready)==(?);
  List_Output(Implementation(Orders_i),mark_order_moving)==(?);
  List_Output(Implementation(Orders_i),mark_order_delivered)==(?);
  List_Output(Implementation(Orders_i),get_order_state)==(st);
  List_Output(Implementation(Orders_i),get_order_user)==(uu);
  List_Output(Implementation(Orders_i),get_order_address)==(aa);
  List_Output(Implementation(Orders_i),order_exists)==(ex)
END
&
THEORY ListHeaderX IS
  List_Header(Implementation(Orders_i),create_order)==(oid <-- create_order(prod_qty,aa,uu));
  List_Header(Implementation(Orders_i),mark_order_ready)==(mark_order_ready(oid));
  List_Header(Implementation(Orders_i),mark_order_moving)==(mark_order_moving(oid));
  List_Header(Implementation(Orders_i),mark_order_delivered)==(mark_order_delivered(oid));
  List_Header(Implementation(Orders_i),get_order_state)==(st <-- get_order_state(oid));
  List_Header(Implementation(Orders_i),get_order_user)==(uu <-- get_order_user(oid));
  List_Header(Implementation(Orders_i),get_order_address)==(aa <-- get_order_address(oid));
  List_Header(Implementation(Orders_i),order_exists)==(ex <-- order_exists(oid))
END
&
THEORY ListPreconditionX IS
  Own_Precondition(Implementation(Orders_i),create_order)==(btrue);
  List_Precondition(Implementation(Orders_i),create_order)==(prod_qty: NAT & aa: ADDRESS & uu: USER & card(order_state)<MAX_ORDERS);
  Own_Precondition(Implementation(Orders_i),mark_order_ready)==(btrue);
  List_Precondition(Implementation(Orders_i),mark_order_ready)==(oid: NAT1 & oid: dom(order_state) & order_state(oid) = PREPARING);
  Own_Precondition(Implementation(Orders_i),mark_order_moving)==(btrue);
  List_Precondition(Implementation(Orders_i),mark_order_moving)==(oid: NAT1 & oid: dom(order_state) & order_state(oid) = READY);
  Own_Precondition(Implementation(Orders_i),mark_order_delivered)==(btrue);
  List_Precondition(Implementation(Orders_i),mark_order_delivered)==(oid: NAT1 & oid: dom(order_state) & order_state(oid) = MOVING);
  Own_Precondition(Implementation(Orders_i),get_order_state)==(btrue);
  List_Precondition(Implementation(Orders_i),get_order_state)==(oid: NAT1 & oid: dom(order_state));
  Own_Precondition(Implementation(Orders_i),get_order_user)==(btrue);
  List_Precondition(Implementation(Orders_i),get_order_user)==(oid: NAT1 & oid: dom(who));
  Own_Precondition(Implementation(Orders_i),get_order_address)==(btrue);
  List_Precondition(Implementation(Orders_i),get_order_address)==(oid: NAT1 & oid: dom(where));
  Own_Precondition(Implementation(Orders_i),order_exists)==(btrue);
  List_Precondition(Implementation(Orders_i),order_exists)==(oid: NAT1)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Implementation(Orders_i),order_exists)==(oid: NAT1 | @(ii,found,cur_id).((0: INT | ii:=0);found:=FALSE;WHILE ii<active_count & found = FALSE DO (ii: dom(arr_id) | cur_id:=arr_id(ii));(cur_id = oid ==> found:=TRUE [] not(cur_id = oid) ==> skip);(ii+1: INT & ii: INT & 1: INT | ii:=ii+1) INVARIANT ii: 0..active_count & found: BOOL VARIANT active_count-ii END;ex:=found));
  Expanded_List_Substitution(Implementation(Orders_i),get_order_address)==(oid: NAT1 & oid: dom(where) | @(ii,res,found,cur_id,cur_aa).((0: INT | ii:=0);res:=default_addr;found:=FALSE;WHILE ii<active_count & found = FALSE DO (ii: dom(arr_id) | cur_id:=arr_id(ii));(ii: dom(arr_where) | cur_aa:=arr_where(ii));(cur_id = oid ==> (res:=cur_aa;found:=TRUE) [] not(cur_id = oid) ==> skip);(ii+1: INT & ii: INT & 1: INT | ii:=ii+1) INVARIANT ii: 0..active_count & res: ADDRESS & found: BOOL VARIANT active_count-ii END;aa:=res));
  Expanded_List_Substitution(Implementation(Orders_i),get_order_user)==(oid: NAT1 & oid: dom(who) | @(ii,res,found,cur_id,cur_uu).((0: INT | ii:=0);res:=default_user;found:=FALSE;WHILE ii<active_count & found = FALSE DO (ii: dom(arr_id) | cur_id:=arr_id(ii));(ii: dom(arr_who) | cur_uu:=arr_who(ii));(cur_id = oid ==> (res:=cur_uu;found:=TRUE) [] not(cur_id = oid) ==> skip);(ii+1: INT & ii: INT & 1: INT | ii:=ii+1) INVARIANT ii: 0..active_count & res: USER & found: BOOL VARIANT active_count-ii END;uu:=res));
  Expanded_List_Substitution(Implementation(Orders_i),get_order_state)==(oid: NAT1 & oid: dom(order_state) | @(ii,res,found,cur_id,cur_st).((0: INT | ii:=0);res:=PLACED;found:=FALSE;WHILE ii<active_count & found = FALSE DO (ii: dom(arr_id) | cur_id:=arr_id(ii));(ii: dom(arr_state) | cur_st:=arr_state(ii));(cur_id = oid ==> (res:=cur_st;found:=TRUE) [] not(cur_id = oid) ==> skip);(ii+1: INT & ii: INT & 1: INT | ii:=ii+1) INVARIANT ii: 0..active_count & res: ORDER_STATE & found: BOOL VARIANT active_count-ii END;st:=res));
  Expanded_List_Substitution(Implementation(Orders_i),mark_order_delivered)==(oid: NAT1 & oid: dom(order_state) & order_state(oid) = MOVING | @(ii,found,cur_id).((0: INT | ii:=0);found:=FALSE;WHILE ii<active_count & found = FALSE DO (ii: dom(arr_id) | cur_id:=arr_id(ii));(cur_id = oid ==> ((ii: dom(arr_state) | arr_state:=arr_state<+{ii|->DELIVERED});found:=TRUE) [] not(cur_id = oid) ==> skip);(ii+1: INT & ii: INT & 1: INT | ii:=ii+1) INVARIANT ii: 0..active_count & found: BOOL VARIANT active_count-ii END));
  Expanded_List_Substitution(Implementation(Orders_i),mark_order_moving)==(oid: NAT1 & oid: dom(order_state) & order_state(oid) = READY | @(ii,found,cur_id).((0: INT | ii:=0);found:=FALSE;WHILE ii<active_count & found = FALSE DO (ii: dom(arr_id) | cur_id:=arr_id(ii));(cur_id = oid ==> ((ii: dom(arr_state) | arr_state:=arr_state<+{ii|->MOVING});found:=TRUE) [] not(cur_id = oid) ==> skip);(ii+1: INT & ii: INT & 1: INT | ii:=ii+1) INVARIANT ii: 0..active_count & found: BOOL VARIANT active_count-ii END));
  Expanded_List_Substitution(Implementation(Orders_i),mark_order_ready)==(oid: NAT1 & oid: dom(order_state) & order_state(oid) = PREPARING | @(ii,found,cur_id).((0: INT | ii:=0);found:=FALSE;WHILE ii<active_count & found = FALSE DO (ii: dom(arr_id) | cur_id:=arr_id(ii));(cur_id = oid ==> ((ii: dom(arr_state) | arr_state:=arr_state<+{ii|->READY});found:=TRUE) [] not(cur_id = oid) ==> skip);(ii+1: INT & ii: INT & 1: INT | ii:=ii+1) INVARIANT ii: 0..active_count & found: BOOL VARIANT active_count-ii END));
  Expanded_List_Substitution(Implementation(Orders_i),create_order)==(prod_qty: NAT & aa: ADDRESS & uu: USER & card(order_state)<MAX_ORDERS | (next_id: INT | oid:=next_id);(active_count: dom(arr_id) & next_id: INT | arr_id:=arr_id<+{active_count|->next_id});(active_count: dom(arr_what) & prod_qty: INT | arr_what:=arr_what<+{active_count|->prod_qty});(active_count: dom(arr_where) | arr_where:=arr_where<+{active_count|->aa});(active_count: dom(arr_who) | arr_who:=arr_who<+{active_count|->uu});(active_count: dom(arr_state) | arr_state:=arr_state<+{active_count|->PREPARING});(active_count+1: INT & active_count: INT & 1: INT | active_count:=active_count+1);(next_id+1: INT & next_id: INT & 1: INT | next_id:=next_id+1));
  List_Substitution(Implementation(Orders_i),create_order)==(oid:=next_id;arr_id(active_count):=next_id;arr_what(active_count):=prod_qty;arr_where(active_count):=aa;arr_who(active_count):=uu;arr_state(active_count):=PREPARING;active_count:=active_count+1;next_id:=next_id+1);
  List_Substitution(Implementation(Orders_i),mark_order_ready)==(VAR ii,found,cur_id IN ii:=0;found:=FALSE;WHILE ii<active_count & found = FALSE DO cur_id:=arr_id(ii);IF cur_id = oid THEN arr_state(ii):=READY;found:=TRUE END;ii:=ii+1 INVARIANT ii: 0..active_count & found: BOOL VARIANT active_count-ii END END);
  List_Substitution(Implementation(Orders_i),mark_order_moving)==(VAR ii,found,cur_id IN ii:=0;found:=FALSE;WHILE ii<active_count & found = FALSE DO cur_id:=arr_id(ii);IF cur_id = oid THEN arr_state(ii):=MOVING;found:=TRUE END;ii:=ii+1 INVARIANT ii: 0..active_count & found: BOOL VARIANT active_count-ii END END);
  List_Substitution(Implementation(Orders_i),mark_order_delivered)==(VAR ii,found,cur_id IN ii:=0;found:=FALSE;WHILE ii<active_count & found = FALSE DO cur_id:=arr_id(ii);IF cur_id = oid THEN arr_state(ii):=DELIVERED;found:=TRUE END;ii:=ii+1 INVARIANT ii: 0..active_count & found: BOOL VARIANT active_count-ii END END);
  List_Substitution(Implementation(Orders_i),get_order_state)==(VAR ii,res,found,cur_id,cur_st IN ii:=0;res:=PLACED;found:=FALSE;WHILE ii<active_count & found = FALSE DO cur_id:=arr_id(ii);cur_st:=arr_state(ii);IF cur_id = oid THEN res:=cur_st;found:=TRUE END;ii:=ii+1 INVARIANT ii: 0..active_count & res: ORDER_STATE & found: BOOL VARIANT active_count-ii END;st:=res END);
  List_Substitution(Implementation(Orders_i),get_order_user)==(VAR ii,res,found,cur_id,cur_uu IN ii:=0;res:=default_user;found:=FALSE;WHILE ii<active_count & found = FALSE DO cur_id:=arr_id(ii);cur_uu:=arr_who(ii);IF cur_id = oid THEN res:=cur_uu;found:=TRUE END;ii:=ii+1 INVARIANT ii: 0..active_count & res: USER & found: BOOL VARIANT active_count-ii END;uu:=res END);
  List_Substitution(Implementation(Orders_i),get_order_address)==(VAR ii,res,found,cur_id,cur_aa IN ii:=0;res:=default_addr;found:=FALSE;WHILE ii<active_count & found = FALSE DO cur_id:=arr_id(ii);cur_aa:=arr_where(ii);IF cur_id = oid THEN res:=cur_aa;found:=TRUE END;ii:=ii+1 INVARIANT ii: 0..active_count & res: ADDRESS & found: BOOL VARIANT active_count-ii END;aa:=res END);
  List_Substitution(Implementation(Orders_i),order_exists)==(VAR ii,found,cur_id IN ii:=0;found:=FALSE;WHILE ii<active_count & found = FALSE DO cur_id:=arr_id(ii);IF cur_id = oid THEN found:=TRUE END;ii:=ii+1 INVARIANT ii: 0..active_count & found: BOOL VARIANT active_count-ii END;ex:=found END)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Implementation(Orders_i))==(max_order_idx);
  Inherited_List_Constants(Implementation(Orders_i))==(?);
  List_Constants(Implementation(Orders_i))==(max_order_idx)
END
&
THEORY ListSetsX IS
  Set_Definition(Implementation(Orders_i),DRIVER_STATE)==({AVAILABLE,BUSY});
  Context_List_Enumerated(Implementation(Orders_i))==(ORDER_STATE,DRIVER_STATE);
  Context_List_Defered(Implementation(Orders_i))==(USER,ADDRESS,PRODUCT);
  Context_List_Sets(Implementation(Orders_i))==(USER,ADDRESS,ORDER_STATE,DRIVER_STATE,PRODUCT);
  List_Own_Enumerated(Implementation(Orders_i))==(?);
  List_Valuable_Sets(Implementation(Orders_i))==(?);
  Inherited_List_Enumerated(Implementation(Orders_i))==(?);
  Inherited_List_Defered(Implementation(Orders_i))==(?);
  Inherited_List_Sets(Implementation(Orders_i))==(?);
  List_Enumerated(Implementation(Orders_i))==(?);
  List_Defered(Implementation(Orders_i))==(?);
  List_Sets(Implementation(Orders_i))==(?);
  Set_Definition(Implementation(Orders_i),ORDER_STATE)==({PLACED,PREPARING,READY,MOVING,DELIVERED})
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Implementation(Orders_i))==(?);
  Expanded_List_HiddenConstants(Implementation(Orders_i))==(?);
  List_HiddenConstants(Implementation(Orders_i))==(?);
  External_List_HiddenConstants(Implementation(Orders_i))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Implementation(Orders_i))==(btrue);
  Context_List_Properties(Implementation(Orders_i))==(MAX_ORDERS: NAT1 & MAX_STORAGE: NAT1 & DRIVERS: NAT1 & ROUTE_SIZE: NAT1 & MAX_DISTANCE: NAT & default_addr: ADDRESS & default_user: USER & USER: FIN(INTEGER) & not(USER = {}) & ADDRESS: FIN(INTEGER) & not(ADDRESS = {}) & ORDER_STATE: FIN(INTEGER) & not(ORDER_STATE = {}) & DRIVER_STATE: FIN(INTEGER) & not(DRIVER_STATE = {}) & QUEUE_SIZE: NAT & pp0: PRODUCT & QUEUE_SIZE>=1 & PRODUCT: FIN(INTEGER) & not(PRODUCT = {}));
  Inherited_List_Properties(Implementation(Orders_i))==(btrue);
  List_Properties(Implementation(Orders_i))==(max_order_idx: NAT & max_order_idx = MAX_ORDERS-1)
END
&
THEORY ListValuesX IS
  Precond_Valued_Objects(Implementation(Orders_i))==(MAX_ORDERS-1: INT & MAX_ORDERS: INT & 1: INT);
  Values_Subs(Implementation(Orders_i))==(max_order_idx: MAX_ORDERS-1);
  List_Values(Implementation(Orders_i))==(max_order_idx = MAX_ORDERS-1)
END
&
THEORY ListSeenInfoX IS
  Seen_Internal_List_Operations(Implementation(Orders_i),Machine(Queue_ctx))==(?);
  Seen_Context_List_Enumerated(Implementation(Orders_i))==(?);
  Seen_Context_List_Invariant(Implementation(Orders_i))==(btrue);
  Seen_Context_List_Assertions(Implementation(Orders_i))==(btrue);
  Seen_Context_List_Properties(Implementation(Orders_i))==(QUEUE_SIZE: NAT & pp0: PRODUCT & QUEUE_SIZE>=1 & PRODUCT: FIN(INTEGER) & not(PRODUCT = {}));
  Seen_List_Constraints(Implementation(Orders_i))==(btrue);
  Seen_List_Operations(Implementation(Orders_i),Machine(Queue_ctx))==(?);
  Seen_Expanded_List_Invariant(Implementation(Orders_i),Machine(Queue_ctx))==(btrue);
  Seen_Internal_List_Operations(Implementation(Orders_i),Machine(Context))==(?);
  Seen_List_Operations(Implementation(Orders_i),Machine(Context))==(?);
  Seen_Expanded_List_Invariant(Implementation(Orders_i),Machine(Context))==(btrue)
END
&
THEORY ListIncludedOperationsX END
&
THEORY InheritedEnvX IS
  Constants(Implementation(Orders_i))==(Type(max_order_idx) == Cst(btype(INTEGER,?,?)));
  VisibleVariables(Implementation(Orders_i))==(Type(arr_id) == Mvv(SetOf(btype(INTEGER,0,max_order_idx)*btype(INTEGER,0,MAXINT)));Type(arr_what) == Mvv(SetOf(btype(INTEGER,0,max_order_idx)*btype(INTEGER,0,MAXINT)));Type(arr_where) == Mvv(SetOf(btype(INTEGER,0,max_order_idx)*atype(ADDRESS,"[ADDRESS","]ADDRESS")));Type(arr_who) == Mvv(SetOf(btype(INTEGER,0,max_order_idx)*atype(USER,"[USER","]USER")));Type(arr_state) == Mvv(SetOf(btype(INTEGER,0,max_order_idx)*etype(ORDER_STATE,0,4)));Type(next_id) == Mvv(btype(INTEGER,?,?));Type(active_count) == Mvv(btype(INTEGER,?,?)));
  Operations(Implementation(Orders_i))==(Type(order_exists) == Cst(btype(BOOL,?,?),btype(INTEGER,?,?));Type(get_order_address) == Cst(atype(ADDRESS,?,?),btype(INTEGER,?,?));Type(get_order_user) == Cst(atype(USER,?,?),btype(INTEGER,?,?));Type(get_order_state) == Cst(etype(ORDER_STATE,?,?),btype(INTEGER,?,?));Type(mark_order_delivered) == Cst(No_type,btype(INTEGER,?,?));Type(mark_order_moving) == Cst(No_type,btype(INTEGER,?,?));Type(mark_order_ready) == Cst(No_type,btype(INTEGER,?,?));Type(create_order) == Cst(btype(INTEGER,?,?),btype(INTEGER,?,?)*atype(ADDRESS,?,?)*atype(USER,?,?)))
END
&
THEORY ListVisibleStaticX IS
  List_Constants(Implementation(Orders_i),Machine(Queue_ctx))==(QUEUE_SIZE,pp0);
  List_Constants_Env(Implementation(Orders_i),Machine(Queue_ctx))==(Type(QUEUE_SIZE) == Cst(btype(INTEGER,?,?));Type(pp0) == Cst(atype(PRODUCT,?,?)));
  List_Defered_Sets(Implementation(Orders_i),Machine(Queue_ctx))==(PRODUCT);
  List_Constants(Implementation(Orders_i),Machine(Context))==(MAX_ORDERS,MAX_STORAGE,DRIVERS,ROUTE_SIZE,MAX_DISTANCE,default_addr,default_user);
  List_Constants_Env(Implementation(Orders_i),Machine(Context))==(Type(PLACED) == Cst(etype(ORDER_STATE,0,4));Type(PREPARING) == Cst(etype(ORDER_STATE,0,4));Type(READY) == Cst(etype(ORDER_STATE,0,4));Type(MOVING) == Cst(etype(ORDER_STATE,0,4));Type(DELIVERED) == Cst(etype(ORDER_STATE,0,4));Type(AVAILABLE) == Cst(etype(DRIVER_STATE,0,1));Type(BUSY) == Cst(etype(DRIVER_STATE,0,1));Type(MAX_ORDERS) == Cst(btype(INTEGER,?,?));Type(MAX_STORAGE) == Cst(btype(INTEGER,?,?));Type(DRIVERS) == Cst(btype(INTEGER,?,?));Type(ROUTE_SIZE) == Cst(btype(INTEGER,?,?));Type(MAX_DISTANCE) == Cst(btype(INTEGER,?,?));Type(default_addr) == Cst(atype(ADDRESS,?,?));Type(default_user) == Cst(atype(USER,?,?)));
  List_Defered_Sets(Implementation(Orders_i),Machine(Context))==(USER,ADDRESS);
  Enumerate_Definition(Implementation(Orders_i),Machine(Context),DRIVER_STATE)==({AVAILABLE,BUSY});
  Enumerate_Definition(Implementation(Orders_i),Machine(Context),ORDER_STATE)==({PLACED,PREPARING,READY,MOVING,DELIVERED})
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Implementation(Orders_i)) == (max_order_idx | ? | ? | ? | create_order,mark_order_ready,mark_order_moving,mark_order_delivered,get_order_state,get_order_user,get_order_address,order_exists | ? | seen(Machine(Context)),seen(Machine(Queue_ctx)) | ? | Orders_i);
  List_Of_HiddenCst_Ids(Implementation(Orders_i)) == (? | ?);
  List_Of_VisibleCst_Ids(Implementation(Orders_i)) == (max_order_idx);
  List_Of_VisibleVar_Ids(Implementation(Orders_i)) == (active_count,next_id,arr_state,arr_who,arr_where,arr_what,arr_id | ?);
  List_Of_Ids_SeenBNU(Implementation(Orders_i)) == (?: ?);
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
THEORY ConstantsEnvX IS
  Constants(Implementation(Orders_i)) == (Type(max_order_idx) == Cst(btype(INTEGER,?,?)))
END
&
THEORY VisibleVariablesEnvX IS
  VisibleVariables(Implementation(Orders_i)) == (Type(active_count) == Mvv(btype(INTEGER,?,?));Type(next_id) == Mvv(btype(INTEGER,?,?));Type(arr_state) == Mvv(SetOf(btype(INTEGER,0,max_order_idx)*etype(ORDER_STATE,0,4)));Type(arr_who) == Mvv(SetOf(btype(INTEGER,0,max_order_idx)*atype(USER,"[USER","]USER")));Type(arr_where) == Mvv(SetOf(btype(INTEGER,0,max_order_idx)*atype(ADDRESS,"[ADDRESS","]ADDRESS")));Type(arr_what) == Mvv(SetOf(btype(INTEGER,0,max_order_idx)*btype(INTEGER,0,MAXINT)));Type(arr_id) == Mvv(SetOf(btype(INTEGER,0,max_order_idx)*btype(INTEGER,0,MAXINT))))
END
&
THEORY VariablesLocEnvX IS
  Variables_Loc(Implementation(Orders_i),?, 1) == (Type(ii) == Lvl(btype(INTEGER,?,?)));
  Variables_Loc(Implementation(Orders_i),mark_order_ready, 1) == (Type(ii) == Lvl(btype(INTEGER,?,?));Type(found) == Lvl(btype(BOOL,?,?));Type(cur_id) == Lvl(btype(INTEGER,?,?)));
  Variables_Loc(Implementation(Orders_i),mark_order_moving, 1) == (Type(ii) == Lvl(btype(INTEGER,?,?));Type(found) == Lvl(btype(BOOL,?,?));Type(cur_id) == Lvl(btype(INTEGER,?,?)));
  Variables_Loc(Implementation(Orders_i),mark_order_delivered, 1) == (Type(ii) == Lvl(btype(INTEGER,?,?));Type(found) == Lvl(btype(BOOL,?,?));Type(cur_id) == Lvl(btype(INTEGER,?,?)));
  Variables_Loc(Implementation(Orders_i),get_order_state, 1) == (Type(ii) == Lvl(btype(INTEGER,?,?));Type(res) == Lvl(etype(ORDER_STATE,?,?));Type(found) == Lvl(btype(BOOL,?,?));Type(cur_id) == Lvl(btype(INTEGER,?,?));Type(cur_st) == Lvl(etype(ORDER_STATE,?,?)));
  Variables_Loc(Implementation(Orders_i),get_order_user, 1) == (Type(ii) == Lvl(btype(INTEGER,?,?));Type(res) == Lvl(atype(USER,?,?));Type(found) == Lvl(btype(BOOL,?,?));Type(cur_id) == Lvl(btype(INTEGER,?,?));Type(cur_uu) == Lvl(atype(USER,?,?)));
  Variables_Loc(Implementation(Orders_i),get_order_address, 1) == (Type(ii) == Lvl(btype(INTEGER,?,?));Type(res) == Lvl(atype(ADDRESS,?,?));Type(found) == Lvl(btype(BOOL,?,?));Type(cur_id) == Lvl(btype(INTEGER,?,?));Type(cur_aa) == Lvl(atype(ADDRESS,?,?)));
  Variables_Loc(Implementation(Orders_i),order_exists, 1) == (Type(ii) == Lvl(btype(INTEGER,?,?));Type(found) == Lvl(btype(BOOL,?,?));Type(cur_id) == Lvl(btype(INTEGER,?,?)))
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
  List_Local_Operations(Implementation(Orders_i))==(?)
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
  TypingPredicate(Implementation(Orders_i))==(arr_id: POW(INTEGER*INTEGER) & arr_what: POW(INTEGER*INTEGER) & arr_where: POW(INTEGER*ADDRESS) & arr_who: POW(INTEGER*USER) & arr_state: POW(INTEGER*ORDER_STATE) & next_id: INTEGER & active_count: INTEGER)
END
&
THEORY ImportedVariablesListX END
&
THEORY ListLocalOpInvariantX END
)
