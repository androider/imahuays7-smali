.class public abstract Lorg/fourthline/cling/model/meta/Service;
.super Ljava/lang/Object;
.source "Service.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Lorg/fourthline/cling/model/meta/Device;",
        "S:",
        "Lorg/fourthline/cling/model/meta/Service;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field private final actions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/fourthline/cling/model/meta/Action;",
            ">;"
        }
    .end annotation
.end field

.field private device:Lorg/fourthline/cling/model/meta/Device;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TD;"
        }
    .end annotation
.end field

.field private final serviceId:Lorg/fourthline/cling/model/types/ServiceId;

.field private final serviceType:Lorg/fourthline/cling/model/types/ServiceType;

.field private final stateVariables:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/fourthline/cling/model/meta/StateVariable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    const-class v0, Lorg/fourthline/cling/model/meta/Service;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/fourthline/cling/model/meta/Service;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/types/ServiceType;Lorg/fourthline/cling/model/types/ServiceId;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/model/ValidationException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 51
    invoke-direct {p0, p1, p2, v0, v0}, Lorg/fourthline/cling/model/meta/Service;-><init>(Lorg/fourthline/cling/model/types/ServiceType;Lorg/fourthline/cling/model/types/ServiceId;[Lorg/fourthline/cling/model/meta/Action;[Lorg/fourthline/cling/model/meta/StateVariable;)V

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/types/ServiceType;Lorg/fourthline/cling/model/types/ServiceId;[Lorg/fourthline/cling/model/meta/Action;[Lorg/fourthline/cling/model/meta/StateVariable;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fourthline/cling/model/types/ServiceType;",
            "Lorg/fourthline/cling/model/types/ServiceId;",
            "[",
            "Lorg/fourthline/cling/model/meta/Action<",
            "TS;>;[",
            "Lorg/fourthline/cling/model/meta/StateVariable<",
            "TS;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/model/ValidationException;
        }
    .end annotation

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/fourthline/cling/model/meta/Service;->actions:Ljava/util/Map;

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/fourthline/cling/model/meta/Service;->stateVariables:Ljava/util/Map;

    .line 57
    iput-object p1, p0, Lorg/fourthline/cling/model/meta/Service;->serviceType:Lorg/fourthline/cling/model/types/ServiceType;

    .line 58
    iput-object p2, p0, Lorg/fourthline/cling/model/meta/Service;->serviceId:Lorg/fourthline/cling/model/types/ServiceId;

    const/4 p1, 0x0

    if-eqz p3, :cond_0

    .line 61
    array-length p2, p3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    aget-object v1, p3, v0

    .line 62
    iget-object v2, p0, Lorg/fourthline/cling/model/meta/Service;->actions:Ljava/util/Map;

    invoke-virtual {v1}, Lorg/fourthline/cling/model/meta/Action;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    invoke-virtual {v1, p0}, Lorg/fourthline/cling/model/meta/Action;->setService(Lorg/fourthline/cling/model/meta/Service;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-eqz p4, :cond_1

    .line 68
    array-length p2, p4

    :goto_1
    if-ge p1, p2, :cond_1

    aget-object p3, p4, p1

    .line 69
    iget-object v0, p0, Lorg/fourthline/cling/model/meta/Service;->stateVariables:Ljava/util/Map;

    invoke-virtual {p3}, Lorg/fourthline/cling/model/meta/StateVariable;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    invoke-virtual {p3, p0}, Lorg/fourthline/cling/model/meta/StateVariable;->setService(Lorg/fourthline/cling/model/meta/Service;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method public getAction(Ljava/lang/String;)Lorg/fourthline/cling/model/meta/Action;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/fourthline/cling/model/meta/Action<",
            "TS;>;"
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lorg/fourthline/cling/model/meta/Service;->actions:Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/fourthline/cling/model/meta/Service;->actions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/fourthline/cling/model/meta/Action;

    :goto_0
    return-object p1
.end method

.method public getActions()[Lorg/fourthline/cling/model/meta/Action;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lorg/fourthline/cling/model/meta/Action<",
            "TS;>;"
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lorg/fourthline/cling/model/meta/Service;->actions:Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/fourthline/cling/model/meta/Service;->actions:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lorg/fourthline/cling/model/meta/Service;->actions:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    new-array v1, v1, [Lorg/fourthline/cling/model/meta/Action;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/fourthline/cling/model/meta/Action;

    :goto_0
    return-object v0
.end method

.method public getDatatype(Lorg/fourthline/cling/model/meta/ActionArgument;)Lorg/fourthline/cling/model/types/Datatype;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fourthline/cling/model/meta/ActionArgument;",
            ")",
            "Lorg/fourthline/cling/model/types/Datatype<",
            "TS;>;"
        }
    .end annotation

    .line 137
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/model/meta/Service;->getRelatedStateVariable(Lorg/fourthline/cling/model/meta/ActionArgument;)Lorg/fourthline/cling/model/meta/StateVariable;

    move-result-object p1

    invoke-virtual {p1}, Lorg/fourthline/cling/model/meta/StateVariable;->getTypeDetails()Lorg/fourthline/cling/model/meta/StateVariableTypeDetails;

    move-result-object p1

    invoke-virtual {p1}, Lorg/fourthline/cling/model/meta/StateVariableTypeDetails;->getDatatype()Lorg/fourthline/cling/model/types/Datatype;

    move-result-object p1

    return-object p1
.end method

.method public getDevice()Lorg/fourthline/cling/model/meta/Device;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TD;"
        }
    .end annotation

    .line 102
    iget-object v0, p0, Lorg/fourthline/cling/model/meta/Service;->device:Lorg/fourthline/cling/model/meta/Device;

    return-object v0
.end method

.method public abstract getQueryStateVariableAction()Lorg/fourthline/cling/model/meta/Action;
.end method

.method public getReference()Lorg/fourthline/cling/model/ServiceReference;
    .locals 3

    .line 141
    new-instance v0, Lorg/fourthline/cling/model/ServiceReference;

    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/Service;->getDevice()Lorg/fourthline/cling/model/meta/Device;

    move-result-object v1

    invoke-virtual {v1}, Lorg/fourthline/cling/model/meta/Device;->getIdentity()Lorg/fourthline/cling/model/meta/DeviceIdentity;

    move-result-object v1

    invoke-virtual {v1}, Lorg/fourthline/cling/model/meta/DeviceIdentity;->getUdn()Lorg/fourthline/cling/model/types/UDN;

    move-result-object v1

    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/Service;->getServiceId()Lorg/fourthline/cling/model/types/ServiceId;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/fourthline/cling/model/ServiceReference;-><init>(Lorg/fourthline/cling/model/types/UDN;Lorg/fourthline/cling/model/types/ServiceId;)V

    return-object v0
.end method

.method public getRelatedStateVariable(Lorg/fourthline/cling/model/meta/ActionArgument;)Lorg/fourthline/cling/model/meta/StateVariable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fourthline/cling/model/meta/ActionArgument;",
            ")",
            "Lorg/fourthline/cling/model/meta/StateVariable<",
            "TS;>;"
        }
    .end annotation

    .line 133
    invoke-virtual {p1}, Lorg/fourthline/cling/model/meta/ActionArgument;->getRelatedStateVariableName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/fourthline/cling/model/meta/Service;->getStateVariable(Ljava/lang/String;)Lorg/fourthline/cling/model/meta/StateVariable;

    move-result-object p1

    return-object p1
.end method

.method public getServiceId()Lorg/fourthline/cling/model/types/ServiceId;
    .locals 1

    .line 81
    iget-object v0, p0, Lorg/fourthline/cling/model/meta/Service;->serviceId:Lorg/fourthline/cling/model/types/ServiceId;

    return-object v0
.end method

.method public getServiceType()Lorg/fourthline/cling/model/types/ServiceType;
    .locals 1

    .line 77
    iget-object v0, p0, Lorg/fourthline/cling/model/meta/Service;->serviceType:Lorg/fourthline/cling/model/types/ServiceType;

    return-object v0
.end method

.method public getStateVariable(Ljava/lang/String;)Lorg/fourthline/cling/model/meta/StateVariable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/fourthline/cling/model/meta/StateVariable<",
            "TS;>;"
        }
    .end annotation

    const-string v0, "VirtualQueryActionInput"

    .line 117
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    new-instance p1, Lorg/fourthline/cling/model/meta/StateVariable;

    const-string v0, "VirtualQueryActionInput"

    new-instance v1, Lorg/fourthline/cling/model/meta/StateVariableTypeDetails;

    sget-object v2, Lorg/fourthline/cling/model/types/Datatype$Builtin;->STRING:Lorg/fourthline/cling/model/types/Datatype$Builtin;

    .line 120
    invoke-virtual {v2}, Lorg/fourthline/cling/model/types/Datatype$Builtin;->getDatatype()Lorg/fourthline/cling/model/types/Datatype;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/fourthline/cling/model/meta/StateVariableTypeDetails;-><init>(Lorg/fourthline/cling/model/types/Datatype;)V

    invoke-direct {p1, v0, v1}, Lorg/fourthline/cling/model/meta/StateVariable;-><init>(Ljava/lang/String;Lorg/fourthline/cling/model/meta/StateVariableTypeDetails;)V

    return-object p1

    :cond_0
    const-string v0, "VirtualQueryActionOutput"

    .line 123
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 124
    new-instance p1, Lorg/fourthline/cling/model/meta/StateVariable;

    const-string v0, "VirtualQueryActionOutput"

    new-instance v1, Lorg/fourthline/cling/model/meta/StateVariableTypeDetails;

    sget-object v2, Lorg/fourthline/cling/model/types/Datatype$Builtin;->STRING:Lorg/fourthline/cling/model/types/Datatype$Builtin;

    .line 126
    invoke-virtual {v2}, Lorg/fourthline/cling/model/types/Datatype$Builtin;->getDatatype()Lorg/fourthline/cling/model/types/Datatype;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/fourthline/cling/model/meta/StateVariableTypeDetails;-><init>(Lorg/fourthline/cling/model/types/Datatype;)V

    invoke-direct {p1, v0, v1}, Lorg/fourthline/cling/model/meta/StateVariable;-><init>(Ljava/lang/String;Lorg/fourthline/cling/model/meta/StateVariableTypeDetails;)V

    return-object p1

    .line 129
    :cond_1
    iget-object v0, p0, Lorg/fourthline/cling/model/meta/Service;->stateVariables:Ljava/util/Map;

    if-nez v0, :cond_2

    const/4 p1, 0x0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/fourthline/cling/model/meta/Service;->stateVariables:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/fourthline/cling/model/meta/StateVariable;

    :goto_0
    return-object p1
.end method

.method public getStateVariables()[Lorg/fourthline/cling/model/meta/StateVariable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lorg/fourthline/cling/model/meta/StateVariable<",
            "TS;>;"
        }
    .end annotation

    .line 98
    iget-object v0, p0, Lorg/fourthline/cling/model/meta/Service;->stateVariables:Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/fourthline/cling/model/meta/Service;->stateVariables:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lorg/fourthline/cling/model/meta/Service;->stateVariables:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    new-array v1, v1, [Lorg/fourthline/cling/model/meta/StateVariable;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/fourthline/cling/model/meta/StateVariable;

    :goto_0
    return-object v0
.end method

.method public hasActions()Z
    .locals 1

    .line 85
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/Service;->getActions()[Lorg/fourthline/cling/model/meta/Action;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/Service;->getActions()[Lorg/fourthline/cling/model/meta/Action;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasStateVariables()Z
    .locals 1

    .line 94
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/Service;->getStateVariables()[Lorg/fourthline/cling/model/meta/StateVariable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/Service;->getStateVariables()[Lorg/fourthline/cling/model/meta/StateVariable;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method setDevice(Lorg/fourthline/cling/model/meta/Device;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lorg/fourthline/cling/model/meta/Service;->device:Lorg/fourthline/cling/model/meta/Device;

    if-eqz v0, :cond_0

    .line 107
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Final value has been set already, model is immutable"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 108
    :cond_0
    iput-object p1, p0, Lorg/fourthline/cling/model/meta/Service;->device:Lorg/fourthline/cling/model/meta/Device;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") ServiceId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/Service;->getServiceId()Lorg/fourthline/cling/model/types/ServiceId;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public validate()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/fourthline/cling/model/ValidationError;",
            ">;"
        }
    .end annotation

    .line 145
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 147
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/Service;->getServiceType()Lorg/fourthline/cling/model/types/ServiceType;

    move-result-object v1

    if-nez v1, :cond_0

    .line 148
    new-instance v1, Lorg/fourthline/cling/model/ValidationError;

    .line 149
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "serviceType"

    const-string v4, "Service type/info is required"

    invoke-direct {v1, v2, v3, v4}, Lorg/fourthline/cling/model/ValidationError;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    :cond_0
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/Service;->getServiceId()Lorg/fourthline/cling/model/types/ServiceId;

    move-result-object v1

    if-nez v1, :cond_1

    .line 156
    new-instance v1, Lorg/fourthline/cling/model/ValidationError;

    .line 157
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "serviceId"

    const-string v4, "Service ID is required"

    invoke-direct {v1, v2, v3, v4}, Lorg/fourthline/cling/model/ValidationError;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    :cond_1
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/Service;->hasStateVariables()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 177
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/Service;->getStateVariables()[Lorg/fourthline/cling/model/meta/StateVariable;

    move-result-object v1

    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v1, v4

    .line 178
    invoke-virtual {v5}, Lorg/fourthline/cling/model/meta/StateVariable;->validate()Ljava/util/List;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 182
    :cond_2
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/Service;->hasActions()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 183
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/Service;->getActions()[Lorg/fourthline/cling/model/meta/Action;

    move-result-object v1

    array-length v3, v1

    :goto_1
    if-ge v2, v3, :cond_4

    aget-object v4, v1, v2

    .line 188
    invoke-virtual {v4}, Lorg/fourthline/cling/model/meta/Action;->validate()Ljava/util/List;

    move-result-object v5

    .line 189
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_3

    .line 190
    iget-object v6, p0, Lorg/fourthline/cling/model/meta/Service;->actions:Ljava/util/Map;

    invoke-virtual {v4}, Lorg/fourthline/cling/model/meta/Action;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    sget-object v6, Lorg/fourthline/cling/model/meta/Service;->log:Ljava/util/logging/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Discarding invalid action of service \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/Service;->getServiceId()Lorg/fourthline/cling/model/types/ServiceId;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, "\': "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lorg/fourthline/cling/model/meta/Action;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 192
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/fourthline/cling/model/ValidationError;

    .line 193
    sget-object v7, Lorg/fourthline/cling/model/meta/Service;->log:Ljava/util/logging/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid action \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lorg/fourthline/cling/model/meta/Action;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\': "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    return-object v0
.end method
