.class public Lorg/fourthline/cling/binding/staging/MutableService;
.super Ljava/lang/Object;
.source "MutableService.java"


# instance fields
.field public actions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/fourthline/cling/binding/staging/MutableAction;",
            ">;"
        }
    .end annotation
.end field

.field public controlURI:Ljava/net/URI;

.field public descriptorURI:Ljava/net/URI;

.field public eventSubscriptionURI:Ljava/net/URI;

.field public serviceId:Lorg/fourthline/cling/model/types/ServiceId;

.field public serviceType:Lorg/fourthline/cling/model/types/ServiceType;

.field public stateVariables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/fourthline/cling/binding/staging/MutableStateVariable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/fourthline/cling/binding/staging/MutableService;->actions:Ljava/util/List;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/fourthline/cling/binding/staging/MutableService;->stateVariables:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public build(Lorg/fourthline/cling/model/meta/Device;)Lorg/fourthline/cling/model/meta/Service;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/model/ValidationException;
        }
    .end annotation

    .line 45
    iget-object v1, p0, Lorg/fourthline/cling/binding/staging/MutableService;->serviceType:Lorg/fourthline/cling/model/types/ServiceType;

    iget-object v2, p0, Lorg/fourthline/cling/binding/staging/MutableService;->serviceId:Lorg/fourthline/cling/model/types/ServiceId;

    iget-object v3, p0, Lorg/fourthline/cling/binding/staging/MutableService;->descriptorURI:Ljava/net/URI;

    iget-object v4, p0, Lorg/fourthline/cling/binding/staging/MutableService;->controlURI:Ljava/net/URI;

    iget-object v5, p0, Lorg/fourthline/cling/binding/staging/MutableService;->eventSubscriptionURI:Ljava/net/URI;

    .line 48
    invoke-virtual {p0}, Lorg/fourthline/cling/binding/staging/MutableService;->createActions()[Lorg/fourthline/cling/model/meta/Action;

    move-result-object v6

    .line 49
    invoke-virtual {p0}, Lorg/fourthline/cling/binding/staging/MutableService;->createStateVariables()[Lorg/fourthline/cling/model/meta/StateVariable;

    move-result-object v7

    move-object v0, p1

    .line 45
    invoke-virtual/range {v0 .. v7}, Lorg/fourthline/cling/model/meta/Device;->newInstance(Lorg/fourthline/cling/model/types/ServiceType;Lorg/fourthline/cling/model/types/ServiceId;Ljava/net/URI;Ljava/net/URI;Ljava/net/URI;[Lorg/fourthline/cling/model/meta/Action;[Lorg/fourthline/cling/model/meta/StateVariable;)Lorg/fourthline/cling/model/meta/Service;

    move-result-object p1

    return-object p1
.end method

.method public createActions()[Lorg/fourthline/cling/model/meta/Action;
    .locals 5

    .line 54
    iget-object v0, p0, Lorg/fourthline/cling/binding/staging/MutableService;->actions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lorg/fourthline/cling/model/meta/Action;

    .line 56
    iget-object v1, p0, Lorg/fourthline/cling/binding/staging/MutableService;->actions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/fourthline/cling/binding/staging/MutableAction;

    add-int/lit8 v4, v2, 0x1

    .line 57
    invoke-virtual {v3}, Lorg/fourthline/cling/binding/staging/MutableAction;->build()Lorg/fourthline/cling/model/meta/Action;

    move-result-object v3

    aput-object v3, v0, v2

    move v2, v4

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public createStateVariables()[Lorg/fourthline/cling/model/meta/StateVariable;
    .locals 5

    .line 63
    iget-object v0, p0, Lorg/fourthline/cling/binding/staging/MutableService;->stateVariables:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lorg/fourthline/cling/model/meta/StateVariable;

    .line 65
    iget-object v1, p0, Lorg/fourthline/cling/binding/staging/MutableService;->stateVariables:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/fourthline/cling/binding/staging/MutableStateVariable;

    add-int/lit8 v4, v2, 0x1

    .line 66
    invoke-virtual {v3}, Lorg/fourthline/cling/binding/staging/MutableStateVariable;->build()Lorg/fourthline/cling/model/meta/StateVariable;

    move-result-object v3

    aput-object v3, v0, v2

    move v2, v4

    goto :goto_0

    :cond_0
    return-object v0
.end method
