.class public Lorg/fourthline/cling/model/action/ActionInvocation;
.super Ljava/lang/Object;
.source "ActionInvocation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Lorg/fourthline/cling/model/meta/Service;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected final action:Lorg/fourthline/cling/model/meta/Action;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/fourthline/cling/model/meta/Action<",
            "TS;>;"
        }
    .end annotation
.end field

.field protected final clientInfo:Lorg/fourthline/cling/model/profile/ClientInfo;

.field protected failure:Lorg/fourthline/cling/model/action/ActionException;

.field protected input:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/fourthline/cling/model/action/ActionArgumentValue<",
            "TS;>;>;"
        }
    .end annotation
.end field

.field protected output:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/fourthline/cling/model/action/ActionArgumentValue<",
            "TS;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/fourthline/cling/model/action/ActionException;)V
    .locals 1

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/fourthline/cling/model/action/ActionInvocation;->input:Ljava/util/Map;

    .line 41
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/fourthline/cling/model/action/ActionInvocation;->output:Ljava/util/Map;

    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Lorg/fourthline/cling/model/action/ActionInvocation;->failure:Lorg/fourthline/cling/model/action/ActionException;

    .line 87
    iput-object v0, p0, Lorg/fourthline/cling/model/action/ActionInvocation;->action:Lorg/fourthline/cling/model/meta/Action;

    .line 88
    iput-object v0, p0, Lorg/fourthline/cling/model/action/ActionInvocation;->input:Ljava/util/Map;

    .line 89
    iput-object v0, p0, Lorg/fourthline/cling/model/action/ActionInvocation;->output:Ljava/util/Map;

    .line 90
    iput-object p1, p0, Lorg/fourthline/cling/model/action/ActionInvocation;->failure:Lorg/fourthline/cling/model/action/ActionException;

    .line 91
    iput-object v0, p0, Lorg/fourthline/cling/model/action/ActionInvocation;->clientInfo:Lorg/fourthline/cling/model/profile/ClientInfo;

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/meta/Action;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fourthline/cling/model/meta/Action<",
            "TS;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, p1, v0, v0, v0}, Lorg/fourthline/cling/model/action/ActionInvocation;-><init>(Lorg/fourthline/cling/model/meta/Action;[Lorg/fourthline/cling/model/action/ActionArgumentValue;[Lorg/fourthline/cling/model/action/ActionArgumentValue;Lorg/fourthline/cling/model/profile/ClientInfo;)V

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/meta/Action;Lorg/fourthline/cling/model/profile/ClientInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fourthline/cling/model/meta/Action<",
            "TS;>;",
            "Lorg/fourthline/cling/model/profile/ClientInfo;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 51
    invoke-direct {p0, p1, v0, v0, p2}, Lorg/fourthline/cling/model/action/ActionInvocation;-><init>(Lorg/fourthline/cling/model/meta/Action;[Lorg/fourthline/cling/model/action/ActionArgumentValue;[Lorg/fourthline/cling/model/action/ActionArgumentValue;Lorg/fourthline/cling/model/profile/ClientInfo;)V

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/meta/Action;[Lorg/fourthline/cling/model/action/ActionArgumentValue;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fourthline/cling/model/meta/Action<",
            "TS;>;[",
            "Lorg/fourthline/cling/model/action/ActionArgumentValue<",
            "TS;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 56
    invoke-direct {p0, p1, p2, v0, v0}, Lorg/fourthline/cling/model/action/ActionInvocation;-><init>(Lorg/fourthline/cling/model/meta/Action;[Lorg/fourthline/cling/model/action/ActionArgumentValue;[Lorg/fourthline/cling/model/action/ActionArgumentValue;Lorg/fourthline/cling/model/profile/ClientInfo;)V

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/meta/Action;[Lorg/fourthline/cling/model/action/ActionArgumentValue;Lorg/fourthline/cling/model/profile/ClientInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fourthline/cling/model/meta/Action<",
            "TS;>;[",
            "Lorg/fourthline/cling/model/action/ActionArgumentValue<",
            "TS;>;",
            "Lorg/fourthline/cling/model/profile/ClientInfo;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 62
    invoke-direct {p0, p1, p2, v0, p3}, Lorg/fourthline/cling/model/action/ActionInvocation;-><init>(Lorg/fourthline/cling/model/meta/Action;[Lorg/fourthline/cling/model/action/ActionArgumentValue;[Lorg/fourthline/cling/model/action/ActionArgumentValue;Lorg/fourthline/cling/model/profile/ClientInfo;)V

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/meta/Action;[Lorg/fourthline/cling/model/action/ActionArgumentValue;[Lorg/fourthline/cling/model/action/ActionArgumentValue;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fourthline/cling/model/meta/Action<",
            "TS;>;[",
            "Lorg/fourthline/cling/model/action/ActionArgumentValue<",
            "TS;>;[",
            "Lorg/fourthline/cling/model/action/ActionArgumentValue<",
            "TS;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 68
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/fourthline/cling/model/action/ActionInvocation;-><init>(Lorg/fourthline/cling/model/meta/Action;[Lorg/fourthline/cling/model/action/ActionArgumentValue;[Lorg/fourthline/cling/model/action/ActionArgumentValue;Lorg/fourthline/cling/model/profile/ClientInfo;)V

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/meta/Action;[Lorg/fourthline/cling/model/action/ActionArgumentValue;[Lorg/fourthline/cling/model/action/ActionArgumentValue;Lorg/fourthline/cling/model/profile/ClientInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fourthline/cling/model/meta/Action<",
            "TS;>;[",
            "Lorg/fourthline/cling/model/action/ActionArgumentValue<",
            "TS;>;[",
            "Lorg/fourthline/cling/model/action/ActionArgumentValue<",
            "TS;>;",
            "Lorg/fourthline/cling/model/profile/ClientInfo;",
            ")V"
        }
    .end annotation

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/fourthline/cling/model/action/ActionInvocation;->input:Ljava/util/Map;

    .line 41
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/fourthline/cling/model/action/ActionInvocation;->output:Ljava/util/Map;

    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Lorg/fourthline/cling/model/action/ActionInvocation;->failure:Lorg/fourthline/cling/model/action/ActionException;

    if-nez p1, :cond_0

    .line 76
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Action can not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 78
    :cond_0
    iput-object p1, p0, Lorg/fourthline/cling/model/action/ActionInvocation;->action:Lorg/fourthline/cling/model/meta/Action;

    .line 80
    invoke-virtual {p0, p2}, Lorg/fourthline/cling/model/action/ActionInvocation;->setInput([Lorg/fourthline/cling/model/action/ActionArgumentValue;)V

    .line 81
    invoke-virtual {p0, p3}, Lorg/fourthline/cling/model/action/ActionInvocation;->setOutput([Lorg/fourthline/cling/model/action/ActionArgumentValue;)V

    .line 83
    iput-object p4, p0, Lorg/fourthline/cling/model/action/ActionInvocation;->clientInfo:Lorg/fourthline/cling/model/profile/ClientInfo;

    return-void
.end method


# virtual methods
.method public getAction()Lorg/fourthline/cling/model/meta/Action;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/fourthline/cling/model/meta/Action<",
            "TS;>;"
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lorg/fourthline/cling/model/action/ActionInvocation;->action:Lorg/fourthline/cling/model/meta/Action;

    return-object v0
.end method

.method public getClientInfo()Lorg/fourthline/cling/model/profile/ClientInfo;
    .locals 1

    .line 187
    iget-object v0, p0, Lorg/fourthline/cling/model/action/ActionInvocation;->clientInfo:Lorg/fourthline/cling/model/profile/ClientInfo;

    return-object v0
.end method

.method public getFailure()Lorg/fourthline/cling/model/action/ActionException;
    .locals 1

    .line 176
    iget-object v0, p0, Lorg/fourthline/cling/model/action/ActionInvocation;->failure:Lorg/fourthline/cling/model/action/ActionException;

    return-object v0
.end method

.method public getInput(Ljava/lang/String;)Lorg/fourthline/cling/model/action/ActionArgumentValue;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/fourthline/cling/model/action/ActionArgumentValue<",
            "TS;>;"
        }
    .end annotation

    .line 103
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/model/action/ActionInvocation;->getInputArgument(Ljava/lang/String;)Lorg/fourthline/cling/model/meta/ActionArgument;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/fourthline/cling/model/action/ActionInvocation;->getInput(Lorg/fourthline/cling/model/meta/ActionArgument;)Lorg/fourthline/cling/model/action/ActionArgumentValue;

    move-result-object p1

    return-object p1
.end method

.method public getInput(Lorg/fourthline/cling/model/meta/ActionArgument;)Lorg/fourthline/cling/model/action/ActionArgumentValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fourthline/cling/model/meta/ActionArgument<",
            "TS;>;)",
            "Lorg/fourthline/cling/model/action/ActionArgumentValue<",
            "TS;>;"
        }
    .end annotation

    .line 107
    iget-object v0, p0, Lorg/fourthline/cling/model/action/ActionInvocation;->input:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/fourthline/cling/model/meta/ActionArgument;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/fourthline/cling/model/action/ActionArgumentValue;

    return-object p1
.end method

.method public getInput()[Lorg/fourthline/cling/model/action/ActionArgumentValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lorg/fourthline/cling/model/action/ActionArgumentValue<",
            "TS;>;"
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lorg/fourthline/cling/model/action/ActionInvocation;->input:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lorg/fourthline/cling/model/action/ActionInvocation;->input:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Lorg/fourthline/cling/model/action/ActionArgumentValue;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/fourthline/cling/model/action/ActionArgumentValue;

    return-object v0
.end method

.method protected getInputArgument(Ljava/lang/String;)Lorg/fourthline/cling/model/meta/ActionArgument;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/fourthline/cling/model/meta/ActionArgument<",
            "TS;>;"
        }
    .end annotation

    .line 161
    invoke-virtual {p0}, Lorg/fourthline/cling/model/action/ActionInvocation;->getAction()Lorg/fourthline/cling/model/meta/Action;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/fourthline/cling/model/meta/Action;->getInputArgument(Ljava/lang/String;)Lorg/fourthline/cling/model/meta/ActionArgument;

    move-result-object v0

    if-nez v0, :cond_0

    .line 162
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Argument not found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-object v0
.end method

.method public getInputMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/fourthline/cling/model/action/ActionArgumentValue<",
            "TS;>;>;"
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lorg/fourthline/cling/model/action/ActionInvocation;->input:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getOutput(Ljava/lang/String;)Lorg/fourthline/cling/model/action/ActionArgumentValue;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/fourthline/cling/model/action/ActionArgumentValue<",
            "TS;>;"
        }
    .end annotation

    .line 119
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/model/action/ActionInvocation;->getOutputArgument(Ljava/lang/String;)Lorg/fourthline/cling/model/meta/ActionArgument;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/fourthline/cling/model/action/ActionInvocation;->getOutput(Lorg/fourthline/cling/model/meta/ActionArgument;)Lorg/fourthline/cling/model/action/ActionArgumentValue;

    move-result-object p1

    return-object p1
.end method

.method public getOutput(Lorg/fourthline/cling/model/meta/ActionArgument;)Lorg/fourthline/cling/model/action/ActionArgumentValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fourthline/cling/model/meta/ActionArgument<",
            "TS;>;)",
            "Lorg/fourthline/cling/model/action/ActionArgumentValue<",
            "TS;>;"
        }
    .end annotation

    .line 127
    iget-object v0, p0, Lorg/fourthline/cling/model/action/ActionInvocation;->output:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/fourthline/cling/model/meta/ActionArgument;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/fourthline/cling/model/action/ActionArgumentValue;

    return-object p1
.end method

.method public getOutput()[Lorg/fourthline/cling/model/action/ActionArgumentValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lorg/fourthline/cling/model/action/ActionArgumentValue<",
            "TS;>;"
        }
    .end annotation

    .line 115
    iget-object v0, p0, Lorg/fourthline/cling/model/action/ActionInvocation;->output:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lorg/fourthline/cling/model/action/ActionInvocation;->output:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Lorg/fourthline/cling/model/action/ActionArgumentValue;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/fourthline/cling/model/action/ActionArgumentValue;

    return-object v0
.end method

.method protected getOutputArgument(Ljava/lang/String;)Lorg/fourthline/cling/model/meta/ActionArgument;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/fourthline/cling/model/meta/ActionArgument<",
            "TS;>;"
        }
    .end annotation

    .line 167
    invoke-virtual {p0}, Lorg/fourthline/cling/model/action/ActionInvocation;->getAction()Lorg/fourthline/cling/model/meta/Action;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/fourthline/cling/model/meta/Action;->getOutputArgument(Ljava/lang/String;)Lorg/fourthline/cling/model/meta/ActionArgument;

    move-result-object v0

    if-nez v0, :cond_0

    .line 168
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Argument not found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-object v0
.end method

.method public getOutputMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/fourthline/cling/model/action/ActionArgumentValue<",
            "TS;>;>;"
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lorg/fourthline/cling/model/action/ActionInvocation;->output:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public setFailure(Lorg/fourthline/cling/model/action/ActionException;)V
    .locals 0

    .line 180
    iput-object p1, p0, Lorg/fourthline/cling/model/action/ActionInvocation;->failure:Lorg/fourthline/cling/model/action/ActionException;

    return-void
.end method

.method public setInput(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/model/types/InvalidValueException;
        }
    .end annotation

    .line 131
    new-instance v0, Lorg/fourthline/cling/model/action/ActionArgumentValue;

    invoke-virtual {p0, p1}, Lorg/fourthline/cling/model/action/ActionInvocation;->getInputArgument(Ljava/lang/String;)Lorg/fourthline/cling/model/meta/ActionArgument;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lorg/fourthline/cling/model/action/ActionArgumentValue;-><init>(Lorg/fourthline/cling/model/meta/ActionArgument;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/model/action/ActionInvocation;->setInput(Lorg/fourthline/cling/model/action/ActionArgumentValue;)V

    return-void
.end method

.method public setInput(Lorg/fourthline/cling/model/action/ActionArgumentValue;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fourthline/cling/model/action/ActionArgumentValue<",
            "TS;>;)V"
        }
    .end annotation

    .line 135
    iget-object v0, p0, Lorg/fourthline/cling/model/action/ActionInvocation;->input:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/fourthline/cling/model/action/ActionArgumentValue;->getArgument()Lorg/fourthline/cling/model/meta/ActionArgument;

    move-result-object v1

    invoke-virtual {v1}, Lorg/fourthline/cling/model/meta/ActionArgument;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setInput([Lorg/fourthline/cling/model/action/ActionArgumentValue;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/fourthline/cling/model/action/ActionArgumentValue<",
            "TS;>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 140
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 141
    iget-object v3, p0, Lorg/fourthline/cling/model/action/ActionInvocation;->input:Ljava/util/Map;

    invoke-virtual {v2}, Lorg/fourthline/cling/model/action/ActionArgumentValue;->getArgument()Lorg/fourthline/cling/model/meta/ActionArgument;

    move-result-object v4

    invoke-virtual {v4}, Lorg/fourthline/cling/model/meta/ActionArgument;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setOutput(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/model/types/InvalidValueException;
        }
    .end annotation

    .line 146
    new-instance v0, Lorg/fourthline/cling/model/action/ActionArgumentValue;

    invoke-virtual {p0, p1}, Lorg/fourthline/cling/model/action/ActionInvocation;->getOutputArgument(Ljava/lang/String;)Lorg/fourthline/cling/model/meta/ActionArgument;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lorg/fourthline/cling/model/action/ActionArgumentValue;-><init>(Lorg/fourthline/cling/model/meta/ActionArgument;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/model/action/ActionInvocation;->setOutput(Lorg/fourthline/cling/model/action/ActionArgumentValue;)V

    return-void
.end method

.method public setOutput(Lorg/fourthline/cling/model/action/ActionArgumentValue;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fourthline/cling/model/action/ActionArgumentValue<",
            "TS;>;)V"
        }
    .end annotation

    .line 150
    iget-object v0, p0, Lorg/fourthline/cling/model/action/ActionInvocation;->output:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/fourthline/cling/model/action/ActionArgumentValue;->getArgument()Lorg/fourthline/cling/model/meta/ActionArgument;

    move-result-object v1

    invoke-virtual {v1}, Lorg/fourthline/cling/model/meta/ActionArgument;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setOutput([Lorg/fourthline/cling/model/action/ActionArgumentValue;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/fourthline/cling/model/action/ActionArgumentValue<",
            "TS;>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 155
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 156
    iget-object v3, p0, Lorg/fourthline/cling/model/action/ActionInvocation;->output:Ljava/util/Map;

    invoke-virtual {v2}, Lorg/fourthline/cling/model/action/ActionArgumentValue;->getArgument()Lorg/fourthline/cling/model/meta/ActionArgument;

    move-result-object v4

    invoke-virtual {v4}, Lorg/fourthline/cling/model/meta/ActionArgument;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/fourthline/cling/model/action/ActionInvocation;->getAction()Lorg/fourthline/cling/model/meta/Action;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
