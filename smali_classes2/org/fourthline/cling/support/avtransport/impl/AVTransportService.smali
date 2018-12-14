.class public Lorg/fourthline/cling/support/avtransport/impl/AVTransportService;
.super Lorg/fourthline/cling/support/avtransport/AbstractAVTransportService;
.source "AVTransportService.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lorg/fourthline/cling/support/model/AVTransport;",
        ">",
        "Lorg/fourthline/cling/support/avtransport/AbstractAVTransportService;"
    }
.end annotation


# static fields
.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field final initialState:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lorg/fourthline/cling/support/avtransport/impl/state/AbstractState;",
            ">;"
        }
    .end annotation
.end field

.field final stateMachineDefinition:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lorg/fourthline/cling/support/avtransport/impl/AVTransportStateMachine;",
            ">;"
        }
    .end annotation
.end field

.field private final stateMachines:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lorg/fourthline/cling/support/avtransport/impl/AVTransportStateMachine;",
            ">;"
        }
    .end annotation
.end field

.field final transportClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lorg/fourthline/cling/support/model/AVTransport;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 81
    const-class v0, Lorg/fourthline/cling/support/avtransport/impl/AVTransportService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/fourthline/cling/support/avtransport/impl/AVTransportService;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lorg/fourthline/cling/support/avtransport/impl/AVTransportStateMachine;",
            ">;",
            "Ljava/lang/Class<",
            "+",
            "Lorg/fourthline/cling/support/avtransport/impl/state/AbstractState;",
            ">;)V"
        }
    .end annotation

    .line 91
    const-class v0, Lorg/fourthline/cling/support/model/AVTransport;

    invoke-direct {p0, p1, p2, v0}, Lorg/fourthline/cling/support/avtransport/impl/AVTransportService;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lorg/fourthline/cling/support/avtransport/impl/AVTransportStateMachine;",
            ">;",
            "Ljava/lang/Class<",
            "+",
            "Lorg/fourthline/cling/support/avtransport/impl/state/AbstractState;",
            ">;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 96
    invoke-direct {p0}, Lorg/fourthline/cling/support/avtransport/AbstractAVTransportService;-><init>()V

    .line 83
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/fourthline/cling/support/avtransport/impl/AVTransportService;->stateMachines:Ljava/util/Map;

    .line 97
    iput-object p1, p0, Lorg/fourthline/cling/support/avtransport/impl/AVTransportService;->stateMachineDefinition:Ljava/lang/Class;

    .line 98
    iput-object p2, p0, Lorg/fourthline/cling/support/avtransport/impl/AVTransportService;->initialState:Ljava/lang/Class;

    .line 99
    iput-object p3, p0, Lorg/fourthline/cling/support/avtransport/impl/AVTransportService;->transportClass:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method protected createStateMachine(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;)Lorg/fourthline/cling/support/avtransport/impl/AVTransportStateMachine;
    .locals 6

    .line 306
    iget-object v0, p0, Lorg/fourthline/cling/support/avtransport/impl/AVTransportService;->stateMachineDefinition:Ljava/lang/Class;

    iget-object v1, p0, Lorg/fourthline/cling/support/avtransport/impl/AVTransportService;->initialState:Ljava/lang/Class;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    iget-object v4, p0, Lorg/fourthline/cling/support/avtransport/impl/AVTransportService;->transportClass:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    new-array v2, v2, [Ljava/lang/Object;

    .line 310
    invoke-virtual {p0}, Lorg/fourthline/cling/support/avtransport/impl/AVTransportService;->getLastChange()Lorg/fourthline/cling/support/lastchange/LastChange;

    move-result-object v4

    invoke-virtual {p0, p1, v4}, Lorg/fourthline/cling/support/avtransport/impl/AVTransportService;->createTransport(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;Lorg/fourthline/cling/support/lastchange/LastChange;)Lorg/fourthline/cling/support/model/AVTransport;

    move-result-object p1

    aput-object p1, v2, v5

    .line 306
    invoke-static {v0, v1, v3, v2}, Lorg/seamless/statemachine/StateMachineBuilder;->build(Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Lorg/seamless/statemachine/StateMachine;

    move-result-object p1

    check-cast p1, Lorg/fourthline/cling/support/avtransport/impl/AVTransportStateMachine;

    return-object p1
.end method

.method protected createTransport(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;Lorg/fourthline/cling/support/lastchange/LastChange;)Lorg/fourthline/cling/support/model/AVTransport;
    .locals 2

    .line 315
    new-instance v0, Lorg/fourthline/cling/support/model/AVTransport;

    sget-object v1, Lorg/fourthline/cling/support/model/StorageMedium;->NETWORK:Lorg/fourthline/cling/support/model/StorageMedium;

    invoke-direct {v0, p1, p2, v1}, Lorg/fourthline/cling/support/model/AVTransport;-><init>(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;Lorg/fourthline/cling/support/lastchange/LastChange;Lorg/fourthline/cling/support/model/StorageMedium;)V

    return-object v0
.end method

.method protected findStateMachine(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;)Lorg/fourthline/cling/support/avtransport/impl/AVTransportStateMachine;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/support/avtransport/AVTransportException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 285
    invoke-virtual {p0, p1, v0}, Lorg/fourthline/cling/support/avtransport/impl/AVTransportService;->findStateMachine(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;Z)Lorg/fourthline/cling/support/avtransport/impl/AVTransportStateMachine;

    move-result-object p1

    return-object p1
.end method

.method protected findStateMachine(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;Z)Lorg/fourthline/cling/support/avtransport/impl/AVTransportStateMachine;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/support/avtransport/AVTransportException;
        }
    .end annotation

    .line 289
    iget-object v0, p0, Lorg/fourthline/cling/support/avtransport/impl/AVTransportService;->stateMachines:Ljava/util/Map;

    monitor-enter v0

    .line 290
    :try_start_0
    invoke-virtual {p1}, Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;->getValue()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 291
    iget-object v3, p0, Lorg/fourthline/cling/support/avtransport/impl/AVTransportService;->stateMachines:Ljava/util/Map;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/fourthline/cling/support/avtransport/impl/AVTransportStateMachine;

    if-nez v3, :cond_0

    const-wide/16 v4, 0x0

    cmp-long v6, v1, v4

    if-nez v6, :cond_0

    if-eqz p2, :cond_0

    .line 293
    sget-object p2, Lorg/fourthline/cling/support/avtransport/impl/AVTransportService;->log:Ljava/util/logging/Logger;

    const-string v3, "Creating default transport instance with ID \'0\'"

    invoke-virtual {p2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 294
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/support/avtransport/impl/AVTransportService;->createStateMachine(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;)Lorg/fourthline/cling/support/avtransport/impl/AVTransportStateMachine;

    move-result-object v3

    .line 295
    iget-object p1, p0, Lorg/fourthline/cling/support/avtransport/impl/AVTransportService;->stateMachines:Ljava/util/Map;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {p1, p2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    if-nez v3, :cond_1

    .line 297
    new-instance p1, Lorg/fourthline/cling/support/avtransport/AVTransportException;

    sget-object p2, Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;->INVALID_INSTANCE_ID:Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;

    invoke-direct {p1, p2}, Lorg/fourthline/cling/support/avtransport/AVTransportException;-><init>(Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;)V

    throw p1

    .line 299
    :cond_1
    :goto_0
    sget-object p1, Lorg/fourthline/cling/support/avtransport/impl/AVTransportService;->log:Ljava/util/logging/Logger;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Found transport control with ID \'"

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 300
    monitor-exit v0

    return-object v3

    :catchall_0
    move-exception p1

    .line 301
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getCurrentInstanceIds()[Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;
    .locals 8

    .line 273
    iget-object v0, p0, Lorg/fourthline/cling/support/avtransport/impl/AVTransportService;->stateMachines:Ljava/util/Map;

    monitor-enter v0

    .line 274
    :try_start_0
    iget-object v1, p0, Lorg/fourthline/cling/support/avtransport/impl/AVTransportService;->stateMachines:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    const/4 v2, 0x0

    .line 276
    iget-object v3, p0, Lorg/fourthline/cling/support/avtransport/impl/AVTransportService;->stateMachines:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 277
    new-instance v5, Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;-><init>(J)V

    aput-object v5, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 280
    :cond_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 281
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected getCurrentTransportActions(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;)[Lorg/fourthline/cling/support/model/TransportAction;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 263
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/support/avtransport/impl/AVTransportService;->findStateMachine(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;)Lorg/fourthline/cling/support/avtransport/impl/AVTransportStateMachine;

    move-result-object p1

    .line 265
    :try_start_0
    invoke-interface {p1}, Lorg/fourthline/cling/support/avtransport/impl/AVTransportStateMachine;->getCurrentState()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/fourthline/cling/support/avtransport/impl/state/AbstractState;

    invoke-virtual {p1}, Lorg/fourthline/cling/support/avtransport/impl/state/AbstractState;->getCurrentTransportActions()[Lorg/fourthline/cling/support/model/TransportAction;

    move-result-object p1
    :try_end_0
    .catch Lorg/seamless/statemachine/TransitionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    .line 267
    new-array p1, p1, [Lorg/fourthline/cling/support/model/TransportAction;

    return-object p1
.end method

.method public getDeviceCapabilities(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;)Lorg/fourthline/cling/support/model/DeviceCapabilities;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/support/avtransport/AVTransportException;
        }
    .end annotation

    .line 189
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/support/avtransport/impl/AVTransportService;->findStateMachine(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;)Lorg/fourthline/cling/support/avtransport/impl/AVTransportStateMachine;

    move-result-object p1

    invoke-interface {p1}, Lorg/fourthline/cling/support/avtransport/impl/AVTransportStateMachine;->getCurrentState()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/fourthline/cling/support/avtransport/impl/state/AbstractState;

    invoke-virtual {p1}, Lorg/fourthline/cling/support/avtransport/impl/state/AbstractState;->getTransport()Lorg/fourthline/cling/support/model/AVTransport;

    move-result-object p1

    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/AVTransport;->getDeviceCapabilities()Lorg/fourthline/cling/support/model/DeviceCapabilities;

    move-result-object p1

    return-object p1
.end method

.method public getMediaInfo(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;)Lorg/fourthline/cling/support/model/MediaInfo;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/support/avtransport/AVTransportException;
        }
    .end annotation

    .line 177
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/support/avtransport/impl/AVTransportService;->findStateMachine(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;)Lorg/fourthline/cling/support/avtransport/impl/AVTransportStateMachine;

    move-result-object p1

    invoke-interface {p1}, Lorg/fourthline/cling/support/avtransport/impl/AVTransportStateMachine;->getCurrentState()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/fourthline/cling/support/avtransport/impl/state/AbstractState;

    invoke-virtual {p1}, Lorg/fourthline/cling/support/avtransport/impl/state/AbstractState;->getTransport()Lorg/fourthline/cling/support/model/AVTransport;

    move-result-object p1

    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/AVTransport;->getMediaInfo()Lorg/fourthline/cling/support/model/MediaInfo;

    move-result-object p1

    return-object p1
.end method

.method public getPositionInfo(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;)Lorg/fourthline/cling/support/model/PositionInfo;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/support/avtransport/AVTransportException;
        }
    .end annotation

    .line 185
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/support/avtransport/impl/AVTransportService;->findStateMachine(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;)Lorg/fourthline/cling/support/avtransport/impl/AVTransportStateMachine;

    move-result-object p1

    invoke-interface {p1}, Lorg/fourthline/cling/support/avtransport/impl/AVTransportStateMachine;->getCurrentState()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/fourthline/cling/support/avtransport/impl/state/AbstractState;

    invoke-virtual {p1}, Lorg/fourthline/cling/support/avtransport/impl/state/AbstractState;->getTransport()Lorg/fourthline/cling/support/model/AVTransport;

    move-result-object p1

    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/AVTransport;->getPositionInfo()Lorg/fourthline/cling/support/model/PositionInfo;

    move-result-object p1

    return-object p1
.end method

.method public getTransportInfo(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;)Lorg/fourthline/cling/support/model/TransportInfo;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/support/avtransport/AVTransportException;
        }
    .end annotation

    .line 181
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/support/avtransport/impl/AVTransportService;->findStateMachine(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;)Lorg/fourthline/cling/support/avtransport/impl/AVTransportStateMachine;

    move-result-object p1

    invoke-interface {p1}, Lorg/fourthline/cling/support/avtransport/impl/AVTransportStateMachine;->getCurrentState()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/fourthline/cling/support/avtransport/impl/state/AbstractState;

    invoke-virtual {p1}, Lorg/fourthline/cling/support/avtransport/impl/state/AbstractState;->getTransport()Lorg/fourthline/cling/support/model/AVTransport;

    move-result-object p1

    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/AVTransport;->getTransportInfo()Lorg/fourthline/cling/support/model/TransportInfo;

    move-result-object p1

    return-object p1
.end method

.method public getTransportSettings(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;)Lorg/fourthline/cling/support/model/TransportSettings;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/support/avtransport/AVTransportException;
        }
    .end annotation

    .line 193
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/support/avtransport/impl/AVTransportService;->findStateMachine(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;)Lorg/fourthline/cling/support/avtransport/impl/AVTransportStateMachine;

    move-result-object p1

    invoke-interface {p1}, Lorg/fourthline/cling/support/avtransport/impl/AVTransportStateMachine;->getCurrentState()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/fourthline/cling/support/avtransport/impl/state/AbstractState;

    invoke-virtual {p1}, Lorg/fourthline/cling/support/avtransport/impl/state/AbstractState;->getTransport()Lorg/fourthline/cling/support/model/AVTransport;

    move-result-object p1

    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/AVTransport;->getTransportSettings()Lorg/fourthline/cling/support/model/TransportSettings;

    move-result-object p1

    return-object p1
.end method

.method public next(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/support/avtransport/AVTransportException;
        }
    .end annotation

    .line 247
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/support/avtransport/impl/AVTransportService;->findStateMachine(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;)Lorg/fourthline/cling/support/avtransport/impl/AVTransportStateMachine;

    move-result-object p1

    invoke-interface {p1}, Lorg/fourthline/cling/support/avtransport/impl/AVTransportStateMachine;->next()V
    :try_end_0
    .catch Lorg/seamless/statemachine/TransitionException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 249
    new-instance v0, Lorg/fourthline/cling/support/avtransport/AVTransportException;

    sget-object v1, Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;->TRANSITION_NOT_AVAILABLE:Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;

    invoke-virtual {p1}, Lorg/seamless/statemachine/TransitionException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lorg/fourthline/cling/support/avtransport/AVTransportException;-><init>(Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;Ljava/lang/String;)V

    throw v0
.end method

.method public pause(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/support/avtransport/AVTransportException;
        }
    .end annotation

    .line 214
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/support/avtransport/impl/AVTransportService;->findStateMachine(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;)Lorg/fourthline/cling/support/avtransport/impl/AVTransportStateMachine;

    move-result-object p1

    invoke-interface {p1}, Lorg/fourthline/cling/support/avtransport/impl/AVTransportStateMachine;->pause()V
    :try_end_0
    .catch Lorg/seamless/statemachine/TransitionException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 216
    new-instance v0, Lorg/fourthline/cling/support/avtransport/AVTransportException;

    sget-object v1, Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;->TRANSITION_NOT_AVAILABLE:Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;

    invoke-virtual {p1}, Lorg/seamless/statemachine/TransitionException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lorg/fourthline/cling/support/avtransport/AVTransportException;-><init>(Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;Ljava/lang/String;)V

    throw v0
.end method

.method public play(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/support/avtransport/AVTransportException;
        }
    .end annotation

    .line 206
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/support/avtransport/impl/AVTransportService;->findStateMachine(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;)Lorg/fourthline/cling/support/avtransport/impl/AVTransportStateMachine;

    move-result-object p1

    invoke-interface {p1, p2}, Lorg/fourthline/cling/support/avtransport/impl/AVTransportStateMachine;->play(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/seamless/statemachine/TransitionException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 208
    new-instance p2, Lorg/fourthline/cling/support/avtransport/AVTransportException;

    sget-object v0, Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;->TRANSITION_NOT_AVAILABLE:Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;

    invoke-virtual {p1}, Lorg/seamless/statemachine/TransitionException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Lorg/fourthline/cling/support/avtransport/AVTransportException;-><init>(Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;Ljava/lang/String;)V

    throw p2
.end method

.method public previous(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/support/avtransport/AVTransportException;
        }
    .end annotation

    .line 255
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/support/avtransport/impl/AVTransportService;->findStateMachine(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;)Lorg/fourthline/cling/support/avtransport/impl/AVTransportStateMachine;

    move-result-object p1

    invoke-interface {p1}, Lorg/fourthline/cling/support/avtransport/impl/AVTransportStateMachine;->previous()V
    :try_end_0
    .catch Lorg/seamless/statemachine/TransitionException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 257
    new-instance v0, Lorg/fourthline/cling/support/avtransport/AVTransportException;

    sget-object v1, Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;->TRANSITION_NOT_AVAILABLE:Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;

    invoke-virtual {p1}, Lorg/seamless/statemachine/TransitionException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lorg/fourthline/cling/support/avtransport/AVTransportException;-><init>(Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;Ljava/lang/String;)V

    throw v0
.end method

.method public record(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/support/avtransport/AVTransportException;
        }
    .end annotation

    .line 222
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/support/avtransport/impl/AVTransportService;->findStateMachine(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;)Lorg/fourthline/cling/support/avtransport/impl/AVTransportStateMachine;

    move-result-object p1

    invoke-interface {p1}, Lorg/fourthline/cling/support/avtransport/impl/AVTransportStateMachine;->record()V
    :try_end_0
    .catch Lorg/seamless/statemachine/TransitionException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 224
    new-instance v0, Lorg/fourthline/cling/support/avtransport/AVTransportException;

    sget-object v1, Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;->TRANSITION_NOT_AVAILABLE:Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;

    invoke-virtual {p1}, Lorg/seamless/statemachine/TransitionException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lorg/fourthline/cling/support/avtransport/AVTransportException;-><init>(Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;Ljava/lang/String;)V

    throw v0
.end method

.method public seek(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/support/avtransport/AVTransportException;
        }
    .end annotation

    .line 231
    :try_start_0
    invoke-static {p2}, Lorg/fourthline/cling/support/model/SeekMode;->valueOrExceptionOf(Ljava/lang/String;)Lorg/fourthline/cling/support/model/SeekMode;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 239
    :try_start_1
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/support/avtransport/impl/AVTransportService;->findStateMachine(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;)Lorg/fourthline/cling/support/avtransport/impl/AVTransportStateMachine;

    move-result-object p1

    invoke-interface {p1, v0, p3}, Lorg/fourthline/cling/support/avtransport/impl/AVTransportStateMachine;->seek(Lorg/fourthline/cling/support/model/SeekMode;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/seamless/statemachine/TransitionException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 241
    new-instance p2, Lorg/fourthline/cling/support/avtransport/AVTransportException;

    sget-object p3, Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;->TRANSITION_NOT_AVAILABLE:Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;

    invoke-virtual {p1}, Lorg/seamless/statemachine/TransitionException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p3, p1}, Lorg/fourthline/cling/support/avtransport/AVTransportException;-><init>(Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;Ljava/lang/String;)V

    throw p2

    .line 233
    :catch_1
    new-instance p1, Lorg/fourthline/cling/support/avtransport/AVTransportException;

    sget-object p3, Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;->SEEKMODE_NOT_SUPPORTED:Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported seek mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p3, p2}, Lorg/fourthline/cling/support/avtransport/AVTransportException;-><init>(Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;Ljava/lang/String;)V

    throw p1
.end method

.method public setAVTransportURI(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/support/avtransport/AVTransportException;
        }
    .end annotation

    .line 108
    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 p2, 0x1

    .line 116
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lorg/fourthline/cling/support/avtransport/impl/AVTransportService;->findStateMachine(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;Z)Lorg/fourthline/cling/support/avtransport/impl/AVTransportStateMachine;

    move-result-object p1

    .line 117
    invoke-interface {p1, v0, p3}, Lorg/fourthline/cling/support/avtransport/impl/AVTransportStateMachine;->setTransportURI(Ljava/net/URI;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/seamless/statemachine/TransitionException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 119
    new-instance p2, Lorg/fourthline/cling/support/avtransport/AVTransportException;

    sget-object p3, Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;->TRANSITION_NOT_AVAILABLE:Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;

    invoke-virtual {p1}, Lorg/seamless/statemachine/TransitionException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p3, p1}, Lorg/fourthline/cling/support/avtransport/AVTransportException;-><init>(Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;Ljava/lang/String;)V

    throw p2

    .line 110
    :catch_1
    new-instance p1, Lorg/fourthline/cling/support/avtransport/AVTransportException;

    sget-object p2, Lorg/fourthline/cling/model/types/ErrorCode;->INVALID_ARGS:Lorg/fourthline/cling/model/types/ErrorCode;

    const-string p3, "CurrentURI can not be null or malformed"

    invoke-direct {p1, p2, p3}, Lorg/fourthline/cling/support/avtransport/AVTransportException;-><init>(Lorg/fourthline/cling/model/types/ErrorCode;Ljava/lang/String;)V

    throw p1
.end method

.method public setNextAVTransportURI(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/support/avtransport/AVTransportException;
        }
    .end annotation

    .line 129
    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 p2, 0x1

    .line 137
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lorg/fourthline/cling/support/avtransport/impl/AVTransportService;->findStateMachine(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;Z)Lorg/fourthline/cling/support/avtransport/impl/AVTransportStateMachine;

    move-result-object p1

    .line 138
    invoke-interface {p1, v0, p3}, Lorg/fourthline/cling/support/avtransport/impl/AVTransportStateMachine;->setNextTransportURI(Ljava/net/URI;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/seamless/statemachine/TransitionException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 140
    new-instance p2, Lorg/fourthline/cling/support/avtransport/AVTransportException;

    sget-object p3, Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;->TRANSITION_NOT_AVAILABLE:Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;

    invoke-virtual {p1}, Lorg/seamless/statemachine/TransitionException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p3, p1}, Lorg/fourthline/cling/support/avtransport/AVTransportException;-><init>(Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;Ljava/lang/String;)V

    throw p2

    .line 131
    :catch_1
    new-instance p1, Lorg/fourthline/cling/support/avtransport/AVTransportException;

    sget-object p2, Lorg/fourthline/cling/model/types/ErrorCode;->INVALID_ARGS:Lorg/fourthline/cling/model/types/ErrorCode;

    const-string p3, "NextURI can not be null or malformed"

    invoke-direct {p1, p2, p3}, Lorg/fourthline/cling/support/avtransport/AVTransportException;-><init>(Lorg/fourthline/cling/model/types/ErrorCode;Ljava/lang/String;)V

    throw p1
.end method

.method public setPlayMode(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/support/avtransport/AVTransportException;
        }
    .end annotation

    .line 145
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/support/avtransport/impl/AVTransportService;->findStateMachine(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;)Lorg/fourthline/cling/support/avtransport/impl/AVTransportStateMachine;

    move-result-object p1

    invoke-interface {p1}, Lorg/fourthline/cling/support/avtransport/impl/AVTransportStateMachine;->getCurrentState()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/fourthline/cling/support/avtransport/impl/state/AbstractState;

    invoke-virtual {p1}, Lorg/fourthline/cling/support/avtransport/impl/state/AbstractState;->getTransport()Lorg/fourthline/cling/support/model/AVTransport;

    move-result-object p1

    .line 147
    :try_start_0
    new-instance v0, Lorg/fourthline/cling/support/model/TransportSettings;

    .line 149
    invoke-static {p2}, Lorg/fourthline/cling/support/model/PlayMode;->valueOf(Ljava/lang/String;)Lorg/fourthline/cling/support/model/PlayMode;

    move-result-object v1

    .line 150
    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/AVTransport;->getTransportSettings()Lorg/fourthline/cling/support/model/TransportSettings;

    move-result-object v2

    invoke-virtual {v2}, Lorg/fourthline/cling/support/model/TransportSettings;->getRecQualityMode()Lorg/fourthline/cling/support/model/RecordQualityMode;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/fourthline/cling/support/model/TransportSettings;-><init>(Lorg/fourthline/cling/support/model/PlayMode;Lorg/fourthline/cling/support/model/RecordQualityMode;)V

    .line 147
    invoke-virtual {p1, v0}, Lorg/fourthline/cling/support/model/AVTransport;->setTransportSettings(Lorg/fourthline/cling/support/model/TransportSettings;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 154
    :catch_0
    new-instance p1, Lorg/fourthline/cling/support/avtransport/AVTransportException;

    sget-object v0, Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;->PLAYMODE_NOT_SUPPORTED:Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported play mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v0, p2}, Lorg/fourthline/cling/support/avtransport/AVTransportException;-><init>(Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;Ljava/lang/String;)V

    throw p1
.end method

.method public setRecordQualityMode(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/support/avtransport/AVTransportException;
        }
    .end annotation

    .line 161
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/support/avtransport/impl/AVTransportService;->findStateMachine(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;)Lorg/fourthline/cling/support/avtransport/impl/AVTransportStateMachine;

    move-result-object p1

    invoke-interface {p1}, Lorg/fourthline/cling/support/avtransport/impl/AVTransportStateMachine;->getCurrentState()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/fourthline/cling/support/avtransport/impl/state/AbstractState;

    invoke-virtual {p1}, Lorg/fourthline/cling/support/avtransport/impl/state/AbstractState;->getTransport()Lorg/fourthline/cling/support/model/AVTransport;

    move-result-object p1

    .line 163
    :try_start_0
    new-instance v0, Lorg/fourthline/cling/support/model/TransportSettings;

    .line 165
    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/AVTransport;->getTransportSettings()Lorg/fourthline/cling/support/model/TransportSettings;

    move-result-object v1

    invoke-virtual {v1}, Lorg/fourthline/cling/support/model/TransportSettings;->getPlayMode()Lorg/fourthline/cling/support/model/PlayMode;

    move-result-object v1

    .line 166
    invoke-static {p2}, Lorg/fourthline/cling/support/model/RecordQualityMode;->valueOrExceptionOf(Ljava/lang/String;)Lorg/fourthline/cling/support/model/RecordQualityMode;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/fourthline/cling/support/model/TransportSettings;-><init>(Lorg/fourthline/cling/support/model/PlayMode;Lorg/fourthline/cling/support/model/RecordQualityMode;)V

    .line 163
    invoke-virtual {p1, v0}, Lorg/fourthline/cling/support/model/AVTransport;->setTransportSettings(Lorg/fourthline/cling/support/model/TransportSettings;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 170
    :catch_0
    new-instance p1, Lorg/fourthline/cling/support/avtransport/AVTransportException;

    sget-object v0, Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;->RECORDQUALITYMODE_NOT_SUPPORTED:Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported record quality mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v0, p2}, Lorg/fourthline/cling/support/avtransport/AVTransportException;-><init>(Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;Ljava/lang/String;)V

    throw p1
.end method

.method public stop(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/support/avtransport/AVTransportException;
        }
    .end annotation

    .line 198
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/support/avtransport/impl/AVTransportService;->findStateMachine(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;)Lorg/fourthline/cling/support/avtransport/impl/AVTransportStateMachine;

    move-result-object p1

    invoke-interface {p1}, Lorg/fourthline/cling/support/avtransport/impl/AVTransportStateMachine;->stop()V
    :try_end_0
    .catch Lorg/seamless/statemachine/TransitionException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 200
    new-instance v0, Lorg/fourthline/cling/support/avtransport/AVTransportException;

    sget-object v1, Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;->TRANSITION_NOT_AVAILABLE:Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;

    invoke-virtual {p1}, Lorg/seamless/statemachine/TransitionException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lorg/fourthline/cling/support/avtransport/AVTransportException;-><init>(Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;Ljava/lang/String;)V

    throw v0
.end method
