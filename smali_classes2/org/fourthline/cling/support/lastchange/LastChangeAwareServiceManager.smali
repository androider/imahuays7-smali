.class public Lorg/fourthline/cling/support/lastchange/LastChangeAwareServiceManager;
.super Lorg/fourthline/cling/model/DefaultServiceManager;
.source "LastChangeAwareServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/fourthline/cling/support/lastchange/LastChangeDelegator;",
        ">",
        "Lorg/fourthline/cling/model/DefaultServiceManager<",
        "TT;>;"
    }
.end annotation


# instance fields
.field protected final lastChangeParser:Lorg/fourthline/cling/support/lastchange/LastChangeParser;


# direct methods
.method public constructor <init>(Lorg/fourthline/cling/model/meta/LocalService;Ljava/lang/Class;Lorg/fourthline/cling/support/lastchange/LastChangeParser;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fourthline/cling/model/meta/LocalService<",
            "TT;>;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lorg/fourthline/cling/support/lastchange/LastChangeParser;",
            ")V"
        }
    .end annotation

    .line 55
    invoke-direct {p0, p1, p2}, Lorg/fourthline/cling/model/DefaultServiceManager;-><init>(Lorg/fourthline/cling/model/meta/LocalService;Ljava/lang/Class;)V

    .line 56
    iput-object p3, p0, Lorg/fourthline/cling/support/lastchange/LastChangeAwareServiceManager;->lastChangeParser:Lorg/fourthline/cling/support/lastchange/LastChangeParser;

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/meta/LocalService;Lorg/fourthline/cling/support/lastchange/LastChangeParser;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fourthline/cling/model/meta/LocalService<",
            "TT;>;",
            "Lorg/fourthline/cling/support/lastchange/LastChangeParser;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 49
    invoke-direct {p0, p1, v0, p2}, Lorg/fourthline/cling/support/lastchange/LastChangeAwareServiceManager;-><init>(Lorg/fourthline/cling/model/meta/LocalService;Ljava/lang/Class;Lorg/fourthline/cling/support/lastchange/LastChangeParser;)V

    return-void
.end method


# virtual methods
.method public fireLastChange()V
    .locals 2

    .line 72
    invoke-virtual {p0}, Lorg/fourthline/cling/support/lastchange/LastChangeAwareServiceManager;->lock()V

    .line 74
    :try_start_0
    invoke-virtual {p0}, Lorg/fourthline/cling/support/lastchange/LastChangeAwareServiceManager;->getImplementation()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/lastchange/LastChangeDelegator;

    invoke-interface {v0}, Lorg/fourthline/cling/support/lastchange/LastChangeDelegator;->getLastChange()Lorg/fourthline/cling/support/lastchange/LastChange;

    move-result-object v0

    invoke-virtual {p0}, Lorg/fourthline/cling/support/lastchange/LastChangeAwareServiceManager;->getPropertyChangeSupport()Ljava/beans/PropertyChangeSupport;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/fourthline/cling/support/lastchange/LastChange;->fire(Ljava/beans/PropertyChangeSupport;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    invoke-virtual {p0}, Lorg/fourthline/cling/support/lastchange/LastChangeAwareServiceManager;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lorg/fourthline/cling/support/lastchange/LastChangeAwareServiceManager;->unlock()V

    throw v0
.end method

.method protected getLastChangeParser()Lorg/fourthline/cling/support/lastchange/LastChangeParser;
    .locals 1

    .line 60
    iget-object v0, p0, Lorg/fourthline/cling/support/lastchange/LastChangeAwareServiceManager;->lastChangeParser:Lorg/fourthline/cling/support/lastchange/LastChangeParser;

    return-object v0
.end method

.method protected readInitialEventedStateVariableValues()Ljava/util/Collection;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/fourthline/cling/model/state/StateVariableValue;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 86
    new-instance v0, Lorg/fourthline/cling/support/lastchange/LastChange;

    invoke-virtual {p0}, Lorg/fourthline/cling/support/lastchange/LastChangeAwareServiceManager;->getLastChangeParser()Lorg/fourthline/cling/support/lastchange/LastChangeParser;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/fourthline/cling/support/lastchange/LastChange;-><init>(Lorg/fourthline/cling/support/lastchange/LastChangeParser;)V

    .line 89
    invoke-virtual {p0}, Lorg/fourthline/cling/support/lastchange/LastChangeAwareServiceManager;->getImplementation()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/fourthline/cling/support/lastchange/LastChangeDelegator;

    invoke-interface {v1}, Lorg/fourthline/cling/support/lastchange/LastChangeDelegator;->getCurrentInstanceIds()[Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    move-result-object v1

    .line 90
    array-length v2, v1

    if-lez v2, :cond_0

    .line 91
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 93
    invoke-virtual {p0}, Lorg/fourthline/cling/support/lastchange/LastChangeAwareServiceManager;->getImplementation()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/fourthline/cling/support/lastchange/LastChangeDelegator;

    invoke-interface {v5, v0, v4}, Lorg/fourthline/cling/support/lastchange/LastChangeDelegator;->appendCurrentState(Lorg/fourthline/cling/support/lastchange/LastChange;Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 97
    :cond_0
    invoke-virtual {p0}, Lorg/fourthline/cling/support/lastchange/LastChangeAwareServiceManager;->getImplementation()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/fourthline/cling/support/lastchange/LastChangeDelegator;

    new-instance v2, Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    const-wide/16 v3, 0x0

    invoke-direct {v2, v3, v4}, Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;-><init>(J)V

    invoke-interface {v1, v0, v2}, Lorg/fourthline/cling/support/lastchange/LastChangeDelegator;->appendCurrentState(Lorg/fourthline/cling/support/lastchange/LastChange;Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;)V

    .line 101
    :cond_1
    invoke-virtual {p0}, Lorg/fourthline/cling/support/lastchange/LastChangeAwareServiceManager;->getService()Lorg/fourthline/cling/model/meta/LocalService;

    move-result-object v1

    const-string v2, "LastChange"

    invoke-virtual {v1, v2}, Lorg/fourthline/cling/model/meta/LocalService;->getStateVariable(Ljava/lang/String;)Lorg/fourthline/cling/model/meta/StateVariable;

    move-result-object v1

    .line 102
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 103
    new-instance v3, Lorg/fourthline/cling/model/state/StateVariableValue;

    invoke-virtual {v0}, Lorg/fourthline/cling/support/lastchange/LastChange;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v1, v0}, Lorg/fourthline/cling/model/state/StateVariableValue;-><init>(Lorg/fourthline/cling/model/meta/StateVariable;Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-object v2
.end method
