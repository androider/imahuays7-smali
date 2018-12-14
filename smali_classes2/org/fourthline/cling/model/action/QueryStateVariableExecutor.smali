.class public Lorg/fourthline/cling/model/action/QueryStateVariableExecutor;
.super Lorg/fourthline/cling/model/action/AbstractActionExecutor;
.source "QueryStateVariableExecutor.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lorg/fourthline/cling/model/action/AbstractActionExecutor;-><init>()V

    return-void
.end method


# virtual methods
.method protected execute(Lorg/fourthline/cling/model/action/ActionInvocation;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fourthline/cling/model/action/ActionInvocation<",
            "Lorg/fourthline/cling/model/meta/LocalService;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 35
    invoke-virtual {p1}, Lorg/fourthline/cling/model/action/ActionInvocation;->getAction()Lorg/fourthline/cling/model/meta/Action;

    move-result-object v0

    instance-of v0, v0, Lorg/fourthline/cling/model/meta/QueryStateVariableAction;

    if-eqz v0, :cond_1

    .line 36
    invoke-virtual {p1}, Lorg/fourthline/cling/model/action/ActionInvocation;->getAction()Lorg/fourthline/cling/model/meta/Action;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fourthline/cling/model/meta/Action;->getService()Lorg/fourthline/cling/model/meta/Service;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/meta/LocalService;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/meta/LocalService;->isSupportsQueryStateVariables()Z

    move-result v0

    if-nez v0, :cond_0

    .line 37
    new-instance p2, Lorg/fourthline/cling/model/action/ActionException;

    sget-object v0, Lorg/fourthline/cling/model/types/ErrorCode;->INVALID_ACTION:Lorg/fourthline/cling/model/types/ErrorCode;

    const-string v1, "This service does not support querying state variables"

    invoke-direct {p2, v0, v1}, Lorg/fourthline/cling/model/action/ActionException;-><init>(Lorg/fourthline/cling/model/types/ErrorCode;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lorg/fourthline/cling/model/action/ActionInvocation;->setFailure(Lorg/fourthline/cling/model/action/ActionException;)V

    goto :goto_0

    .line 41
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/fourthline/cling/model/action/QueryStateVariableExecutor;->executeQueryStateVariable(Lorg/fourthline/cling/model/action/ActionInvocation;Ljava/lang/Object;)V

    :goto_0
    return-void

    .line 44
    :cond_1
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "This class can only execute QueryStateVariableAction\'s, not: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {p1}, Lorg/fourthline/cling/model/action/ActionInvocation;->getAction()Lorg/fourthline/cling/model/meta/Action;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method protected executeQueryStateVariable(Lorg/fourthline/cling/model/action/ActionInvocation;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fourthline/cling/model/action/ActionInvocation<",
            "Lorg/fourthline/cling/model/meta/LocalService;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 52
    invoke-virtual {p1}, Lorg/fourthline/cling/model/action/ActionInvocation;->getAction()Lorg/fourthline/cling/model/meta/Action;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fourthline/cling/model/meta/Action;->getService()Lorg/fourthline/cling/model/meta/Service;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/meta/LocalService;

    const-string v1, "varName"

    .line 54
    invoke-virtual {p1, v1}, Lorg/fourthline/cling/model/action/ActionInvocation;->getInput(Ljava/lang/String;)Lorg/fourthline/cling/model/action/ActionArgumentValue;

    move-result-object v1

    invoke-virtual {v1}, Lorg/fourthline/cling/model/action/ActionArgumentValue;->toString()Ljava/lang/String;

    move-result-object v1

    .line 55
    invoke-virtual {v0, v1}, Lorg/fourthline/cling/model/meta/LocalService;->getStateVariable(Ljava/lang/String;)Lorg/fourthline/cling/model/meta/StateVariable;

    move-result-object v2

    if-nez v2, :cond_0

    .line 58
    new-instance p1, Lorg/fourthline/cling/model/action/ActionException;

    sget-object p2, Lorg/fourthline/cling/model/types/ErrorCode;->ARGUMENT_VALUE_INVALID:Lorg/fourthline/cling/model/types/ErrorCode;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No state variable found: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lorg/fourthline/cling/model/action/ActionException;-><init>(Lorg/fourthline/cling/model/types/ErrorCode;Ljava/lang/String;)V

    throw p1

    .line 64
    :cond_0
    invoke-virtual {v2}, Lorg/fourthline/cling/model/meta/StateVariable;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/fourthline/cling/model/meta/LocalService;->getAccessor(Ljava/lang/String;)Lorg/fourthline/cling/model/state/StateVariableAccessor;

    move-result-object v0

    if-nez v0, :cond_1

    .line 65
    new-instance p1, Lorg/fourthline/cling/model/action/ActionException;

    sget-object p2, Lorg/fourthline/cling/model/types/ErrorCode;->ARGUMENT_VALUE_INVALID:Lorg/fourthline/cling/model/types/ErrorCode;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No accessor for state variable, can\'t read state: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lorg/fourthline/cling/model/action/ActionException;-><init>(Lorg/fourthline/cling/model/types/ErrorCode;Ljava/lang/String;)V

    throw p1

    .line 73
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Lorg/fourthline/cling/model/action/ActionInvocation;->getAction()Lorg/fourthline/cling/model/meta/Action;

    move-result-object v1

    const-string v3, "return"

    invoke-virtual {v1, v3}, Lorg/fourthline/cling/model/meta/Action;->getOutputArgument(Ljava/lang/String;)Lorg/fourthline/cling/model/meta/ActionArgument;

    move-result-object v1

    .line 74
    invoke-virtual {v0, v2, p2}, Lorg/fourthline/cling/model/state/StateVariableAccessor;->read(Lorg/fourthline/cling/model/meta/StateVariable;Ljava/lang/Object;)Lorg/fourthline/cling/model/state/StateVariableValue;

    move-result-object p2

    invoke-virtual {p2}, Lorg/fourthline/cling/model/state/StateVariableValue;->toString()Ljava/lang/String;

    move-result-object p2

    .line 71
    invoke-virtual {p0, p1, v1, p2}, Lorg/fourthline/cling/model/action/QueryStateVariableExecutor;->setOutputArgumentValue(Lorg/fourthline/cling/model/action/ActionInvocation;Lorg/fourthline/cling/model/meta/ActionArgument;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 77
    new-instance p2, Lorg/fourthline/cling/model/action/ActionException;

    sget-object v0, Lorg/fourthline/cling/model/types/ErrorCode;->ACTION_FAILED:Lorg/fourthline/cling/model/types/ErrorCode;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Lorg/fourthline/cling/model/action/ActionException;-><init>(Lorg/fourthline/cling/model/types/ErrorCode;Ljava/lang/String;)V

    throw p2
.end method
