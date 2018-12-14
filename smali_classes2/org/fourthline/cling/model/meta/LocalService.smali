.class public Lorg/fourthline/cling/model/meta/LocalService;
.super Lorg/fourthline/cling/model/meta/Service;
.source "LocalService.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/fourthline/cling/model/meta/Service<",
        "Lorg/fourthline/cling/model/meta/LocalDevice;",
        "Lorg/fourthline/cling/model/meta/LocalService;",
        ">;"
    }
.end annotation


# instance fields
.field protected final actionExecutors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/fourthline/cling/model/meta/Action;",
            "Lorg/fourthline/cling/model/action/ActionExecutor;",
            ">;"
        }
    .end annotation
.end field

.field protected manager:Lorg/fourthline/cling/model/ServiceManager;

.field protected final stateVariableAccessors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/fourthline/cling/model/meta/StateVariable;",
            "Lorg/fourthline/cling/model/state/StateVariableAccessor;",
            ">;"
        }
    .end annotation
.end field

.field protected final stringConvertibleTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field protected final supportsQueryStateVariables:Z


# direct methods
.method public constructor <init>(Lorg/fourthline/cling/model/types/ServiceType;Lorg/fourthline/cling/model/types/ServiceId;Ljava/util/Map;Ljava/util/Map;Ljava/util/Set;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fourthline/cling/model/types/ServiceType;",
            "Lorg/fourthline/cling/model/types/ServiceId;",
            "Ljava/util/Map<",
            "Lorg/fourthline/cling/model/meta/Action;",
            "Lorg/fourthline/cling/model/action/ActionExecutor;",
            ">;",
            "Ljava/util/Map<",
            "Lorg/fourthline/cling/model/meta/StateVariable;",
            "Lorg/fourthline/cling/model/state/StateVariableAccessor;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Class;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/model/ValidationException;
        }
    .end annotation

    .line 66
    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {p3}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Lorg/fourthline/cling/model/meta/Action;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/fourthline/cling/model/meta/Action;

    .line 67
    invoke-interface {p4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {p4}, Ljava/util/Map;->size()I

    move-result v2

    new-array v2, v2, [Lorg/fourthline/cling/model/meta/StateVariable;

    invoke-interface {v1, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/fourthline/cling/model/meta/StateVariable;

    .line 65
    invoke-direct {p0, p1, p2, v0, v1}, Lorg/fourthline/cling/model/meta/Service;-><init>(Lorg/fourthline/cling/model/types/ServiceType;Lorg/fourthline/cling/model/types/ServiceId;[Lorg/fourthline/cling/model/meta/Action;[Lorg/fourthline/cling/model/meta/StateVariable;)V

    .line 70
    iput-boolean p6, p0, Lorg/fourthline/cling/model/meta/LocalService;->supportsQueryStateVariables:Z

    .line 71
    iput-object p5, p0, Lorg/fourthline/cling/model/meta/LocalService;->stringConvertibleTypes:Ljava/util/Set;

    .line 72
    iput-object p4, p0, Lorg/fourthline/cling/model/meta/LocalService;->stateVariableAccessors:Ljava/util/Map;

    .line 73
    iput-object p3, p0, Lorg/fourthline/cling/model/meta/LocalService;->actionExecutors:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/types/ServiceType;Lorg/fourthline/cling/model/types/ServiceId;[Lorg/fourthline/cling/model/meta/Action;[Lorg/fourthline/cling/model/meta/StateVariable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/model/ValidationException;
        }
    .end annotation

    .line 51
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/fourthline/cling/model/meta/Service;-><init>(Lorg/fourthline/cling/model/types/ServiceType;Lorg/fourthline/cling/model/types/ServiceId;[Lorg/fourthline/cling/model/meta/Action;[Lorg/fourthline/cling/model/meta/StateVariable;)V

    const/4 p1, 0x0

    .line 52
    iput-object p1, p0, Lorg/fourthline/cling/model/meta/LocalService;->manager:Lorg/fourthline/cling/model/ServiceManager;

    .line 53
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/fourthline/cling/model/meta/LocalService;->actionExecutors:Ljava/util/Map;

    .line 54
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/fourthline/cling/model/meta/LocalService;->stateVariableAccessors:Ljava/util/Map;

    .line 55
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lorg/fourthline/cling/model/meta/LocalService;->stringConvertibleTypes:Ljava/util/Set;

    const/4 p1, 0x1

    .line 56
    iput-boolean p1, p0, Lorg/fourthline/cling/model/meta/LocalService;->supportsQueryStateVariables:Z

    return-void
.end method


# virtual methods
.method public getAccessor(Ljava/lang/String;)Lorg/fourthline/cling/model/state/StateVariableAccessor;
    .locals 0

    .line 108
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/model/meta/LocalService;->getStateVariable(Ljava/lang/String;)Lorg/fourthline/cling/model/meta/StateVariable;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lorg/fourthline/cling/model/meta/LocalService;->getAccessor(Lorg/fourthline/cling/model/meta/StateVariable;)Lorg/fourthline/cling/model/state/StateVariableAccessor;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getAccessor(Lorg/fourthline/cling/model/meta/StateVariable;)Lorg/fourthline/cling/model/state/StateVariableAccessor;
    .locals 1

    .line 112
    iget-object v0, p0, Lorg/fourthline/cling/model/meta/LocalService;->stateVariableAccessors:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/fourthline/cling/model/state/StateVariableAccessor;

    return-object p1
.end method

.method public getExecutor(Ljava/lang/String;)Lorg/fourthline/cling/model/action/ActionExecutor;
    .locals 0

    .line 117
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/model/meta/LocalService;->getAction(Ljava/lang/String;)Lorg/fourthline/cling/model/meta/Action;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lorg/fourthline/cling/model/meta/LocalService;->getExecutor(Lorg/fourthline/cling/model/meta/Action;)Lorg/fourthline/cling/model/action/ActionExecutor;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getExecutor(Lorg/fourthline/cling/model/meta/Action;)Lorg/fourthline/cling/model/action/ActionExecutor;
    .locals 1

    .line 121
    iget-object v0, p0, Lorg/fourthline/cling/model/meta/LocalService;->actionExecutors:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/fourthline/cling/model/action/ActionExecutor;

    return-object p1
.end method

.method public declared-synchronized getManager()Lorg/fourthline/cling/model/ServiceManager;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/fourthline/cling/model/ServiceManager<",
            "TT;>;"
        }
    .end annotation

    monitor-enter p0

    .line 84
    :try_start_0
    iget-object v0, p0, Lorg/fourthline/cling/model/meta/LocalService;->manager:Lorg/fourthline/cling/model/ServiceManager;

    if-nez v0, :cond_0

    .line 85
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unmanaged service, no implementation instance available"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_0
    iget-object v0, p0, Lorg/fourthline/cling/model/meta/LocalService;->manager:Lorg/fourthline/cling/model/ServiceManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 83
    monitor-exit p0

    throw v0
.end method

.method public getQueryStateVariableAction()Lorg/fourthline/cling/model/meta/Action;
    .locals 1

    const-string v0, "QueryStateVariable"

    .line 126
    invoke-virtual {p0, v0}, Lorg/fourthline/cling/model/meta/LocalService;->getAction(Ljava/lang/String;)Lorg/fourthline/cling/model/meta/Action;

    move-result-object v0

    return-object v0
.end method

.method public getStringConvertibleTypes()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lorg/fourthline/cling/model/meta/LocalService;->stringConvertibleTypes:Ljava/util/Set;

    return-object v0
.end method

.method public isStringConvertibleType(Ljava/lang/Class;)Z
    .locals 1

    .line 103
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/LocalService;->getStringConvertibleTypes()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/fourthline/cling/model/ModelUtil;->isStringConvertibleType(Ljava/util/Set;Ljava/lang/Class;)Z

    move-result p1

    return p1
.end method

.method public isStringConvertibleType(Ljava/lang/Object;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 99
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/fourthline/cling/model/meta/LocalService;->isStringConvertibleType(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isSupportsQueryStateVariables()Z
    .locals 1

    .line 91
    iget-boolean v0, p0, Lorg/fourthline/cling/model/meta/LocalService;->supportsQueryStateVariables:Z

    return v0
.end method

.method public declared-synchronized setManager(Lorg/fourthline/cling/model/ServiceManager;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fourthline/cling/model/ServiceManager<",
            "TT;>;)V"
        }
    .end annotation

    monitor-enter p0

    .line 77
    :try_start_0
    iget-object v0, p0, Lorg/fourthline/cling/model/meta/LocalService;->manager:Lorg/fourthline/cling/model/ServiceManager;

    if-eqz v0, :cond_0

    .line 78
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Manager is final"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 80
    :cond_0
    iput-object p1, p0, Lorg/fourthline/cling/model/meta/LocalService;->manager:Lorg/fourthline/cling/model/ServiceManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 76
    monitor-exit p0

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lorg/fourthline/cling/model/meta/Service;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", Manager: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/fourthline/cling/model/meta/LocalService;->manager:Lorg/fourthline/cling/model/ServiceManager;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
