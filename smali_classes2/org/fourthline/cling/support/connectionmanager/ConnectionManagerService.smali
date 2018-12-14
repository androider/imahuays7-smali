.class public Lorg/fourthline/cling/support/connectionmanager/ConnectionManagerService;
.super Ljava/lang/Object;
.source "ConnectionManagerService.java"


# annotations
.annotation runtime Lorg/fourthline/cling/binding/annotations/UpnpService;
    serviceId = .subannotation Lorg/fourthline/cling/binding/annotations/UpnpServiceId;
        value = "ConnectionManager"
    .end subannotation
    serviceType = .subannotation Lorg/fourthline/cling/binding/annotations/UpnpServiceType;
        value = "ConnectionManager"
        version = 0x1
    .end subannotation
    stringConvertibleTypes = {
        Lorg/fourthline/cling/support/model/ProtocolInfo;,
        Lorg/fourthline/cling/support/model/ProtocolInfos;,
        Lorg/fourthline/cling/model/ServiceReference;
    }
.end annotation

.annotation runtime Lorg/fourthline/cling/binding/annotations/UpnpStateVariables;
    value = {
        .subannotation Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;
            datatype = "string"
            name = "SourceProtocolInfo"
        .end subannotation,
        .subannotation Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;
            datatype = "string"
            name = "SinkProtocolInfo"
        .end subannotation,
        .subannotation Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;
            datatype = "string"
            name = "CurrentConnectionIDs"
        .end subannotation,
        .subannotation Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;
            allowedValuesEnum = Lorg/fourthline/cling/support/model/ConnectionInfo$Status;
            name = "A_ARG_TYPE_ConnectionStatus"
            sendEvents = false
        .end subannotation,
        .subannotation Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;
            datatype = "string"
            name = "A_ARG_TYPE_ConnectionManager"
            sendEvents = false
        .end subannotation,
        .subannotation Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;
            allowedValuesEnum = Lorg/fourthline/cling/support/model/ConnectionInfo$Direction;
            name = "A_ARG_TYPE_Direction"
            sendEvents = false
        .end subannotation,
        .subannotation Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;
            datatype = "string"
            name = "A_ARG_TYPE_ProtocolInfo"
            sendEvents = false
        .end subannotation,
        .subannotation Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;
            datatype = "i4"
            name = "A_ARG_TYPE_ConnectionID"
            sendEvents = false
        .end subannotation,
        .subannotation Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;
            datatype = "i4"
            name = "A_ARG_TYPE_AVTransportID"
            sendEvents = false
        .end subannotation,
        .subannotation Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;
            datatype = "i4"
            name = "A_ARG_TYPE_RcsID"
            sendEvents = false
        .end subannotation
    }
.end annotation


# static fields
.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field protected final activeConnections:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/fourthline/cling/support/model/ConnectionInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected final propertyChangeSupport:Ljava/beans/PropertyChangeSupport;

.field protected final sinkProtocolInfo:Lorg/fourthline/cling/support/model/ProtocolInfos;

.field protected final sourceProtocolInfo:Lorg/fourthline/cling/support/model/ProtocolInfos;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 65
    const-class v0, Lorg/fourthline/cling/support/connectionmanager/ConnectionManagerService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/fourthline/cling/support/connectionmanager/ConnectionManagerService;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x1

    .line 76
    new-array v0, v0, [Lorg/fourthline/cling/support/model/ConnectionInfo;

    new-instance v1, Lorg/fourthline/cling/support/model/ConnectionInfo;

    invoke-direct {v1}, Lorg/fourthline/cling/support/model/ConnectionInfo;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-direct {p0, v0}, Lorg/fourthline/cling/support/connectionmanager/ConnectionManagerService;-><init>([Lorg/fourthline/cling/support/model/ConnectionInfo;)V

    return-void
.end method

.method public varargs constructor <init>(Ljava/beans/PropertyChangeSupport;Lorg/fourthline/cling/support/model/ProtocolInfos;Lorg/fourthline/cling/support/model/ProtocolInfos;[Lorg/fourthline/cling/support/model/ConnectionInfo;)V
    .locals 2

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/fourthline/cling/support/connectionmanager/ConnectionManagerService;->activeConnections:Ljava/util/Map;

    if-nez p1, :cond_0

    .line 97
    new-instance p1, Ljava/beans/PropertyChangeSupport;

    invoke-direct {p1, p0}, Ljava/beans/PropertyChangeSupport;-><init>(Ljava/lang/Object;)V

    :cond_0
    iput-object p1, p0, Lorg/fourthline/cling/support/connectionmanager/ConnectionManagerService;->propertyChangeSupport:Ljava/beans/PropertyChangeSupport;

    .line 101
    iput-object p2, p0, Lorg/fourthline/cling/support/connectionmanager/ConnectionManagerService;->sourceProtocolInfo:Lorg/fourthline/cling/support/model/ProtocolInfos;

    .line 102
    iput-object p3, p0, Lorg/fourthline/cling/support/connectionmanager/ConnectionManagerService;->sinkProtocolInfo:Lorg/fourthline/cling/support/model/ProtocolInfos;

    .line 104
    array-length p1, p4

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_1

    aget-object p3, p4, p2

    .line 105
    iget-object v0, p0, Lorg/fourthline/cling/support/connectionmanager/ConnectionManagerService;->activeConnections:Ljava/util/Map;

    invoke-virtual {p3}, Lorg/fourthline/cling/support/model/ConnectionInfo;->getConnectionID()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/support/model/ProtocolInfos;Lorg/fourthline/cling/support/model/ProtocolInfos;)V
    .locals 3

    const/4 v0, 0x1

    .line 83
    new-array v0, v0, [Lorg/fourthline/cling/support/model/ConnectionInfo;

    new-instance v1, Lorg/fourthline/cling/support/model/ConnectionInfo;

    invoke-direct {v1}, Lorg/fourthline/cling/support/model/ConnectionInfo;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-direct {p0, p1, p2, v0}, Lorg/fourthline/cling/support/connectionmanager/ConnectionManagerService;-><init>(Lorg/fourthline/cling/support/model/ProtocolInfos;Lorg/fourthline/cling/support/model/ProtocolInfos;[Lorg/fourthline/cling/support/model/ConnectionInfo;)V

    return-void
.end method

.method public varargs constructor <init>(Lorg/fourthline/cling/support/model/ProtocolInfos;Lorg/fourthline/cling/support/model/ProtocolInfos;[Lorg/fourthline/cling/support/model/ConnectionInfo;)V
    .locals 1

    const/4 v0, 0x0

    .line 91
    invoke-direct {p0, v0, p1, p2, p3}, Lorg/fourthline/cling/support/connectionmanager/ConnectionManagerService;-><init>(Ljava/beans/PropertyChangeSupport;Lorg/fourthline/cling/support/model/ProtocolInfos;Lorg/fourthline/cling/support/model/ProtocolInfos;[Lorg/fourthline/cling/support/model/ConnectionInfo;)V

    return-void
.end method

.method public varargs constructor <init>([Lorg/fourthline/cling/support/model/ConnectionInfo;)V
    .locals 3

    .line 87
    new-instance v0, Lorg/fourthline/cling/support/model/ProtocolInfos;

    const/4 v1, 0x0

    new-array v2, v1, [Lorg/fourthline/cling/support/model/ProtocolInfo;

    invoke-direct {v0, v2}, Lorg/fourthline/cling/support/model/ProtocolInfos;-><init>([Lorg/fourthline/cling/support/model/ProtocolInfo;)V

    new-instance v2, Lorg/fourthline/cling/support/model/ProtocolInfos;

    new-array v1, v1, [Lorg/fourthline/cling/support/model/ProtocolInfo;

    invoke-direct {v2, v1}, Lorg/fourthline/cling/support/model/ProtocolInfos;-><init>([Lorg/fourthline/cling/support/model/ProtocolInfo;)V

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0, v2, p1}, Lorg/fourthline/cling/support/connectionmanager/ConnectionManagerService;-><init>(Ljava/beans/PropertyChangeSupport;Lorg/fourthline/cling/support/model/ProtocolInfos;Lorg/fourthline/cling/support/model/ProtocolInfos;[Lorg/fourthline/cling/support/model/ConnectionInfo;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized getCurrentConnectionIDs()Lorg/fourthline/cling/model/types/csv/CSV;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/fourthline/cling/model/types/csv/CSV<",
            "Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/fourthline/cling/binding/annotations/UpnpAction;
        out = {
            .subannotation Lorg/fourthline/cling/binding/annotations/UpnpOutputArgument;
                name = "ConnectionIDs"
            .end subannotation
        }
    .end annotation

    monitor-enter p0

    .line 139
    :try_start_0
    new-instance v0, Lorg/fourthline/cling/model/types/csv/CSVUnsignedIntegerFourBytes;

    invoke-direct {v0}, Lorg/fourthline/cling/model/types/csv/CSVUnsignedIntegerFourBytes;-><init>()V

    .line 140
    iget-object v1, p0, Lorg/fourthline/cling/support/connectionmanager/ConnectionManagerService;->activeConnections:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 141
    new-instance v3, Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v4, v2

    invoke-direct {v3, v4, v5}, Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;-><init>(J)V

    invoke-virtual {v0, v3}, Lorg/fourthline/cling/model/types/csv/CSV;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 143
    :cond_0
    sget-object v1, Lorg/fourthline/cling/support/connectionmanager/ConnectionManagerService;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Returning current connection IDs: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/types/csv/CSV;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 138
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getCurrentConnectionInfo(I)Lorg/fourthline/cling/support/model/ConnectionInfo;
    .locals 4
    .param p1    # I
        .annotation runtime Lorg/fourthline/cling/binding/annotations/UpnpInputArgument;
            name = "ConnectionID"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/model/action/ActionException;
        }
    .end annotation

    .annotation runtime Lorg/fourthline/cling/binding/annotations/UpnpAction;
        out = {
            .subannotation Lorg/fourthline/cling/binding/annotations/UpnpOutputArgument;
                getterName = "getRcsID"
                name = "RcsID"
            .end subannotation,
            .subannotation Lorg/fourthline/cling/binding/annotations/UpnpOutputArgument;
                getterName = "getAvTransportID"
                name = "AVTransportID"
            .end subannotation,
            .subannotation Lorg/fourthline/cling/binding/annotations/UpnpOutputArgument;
                getterName = "getProtocolInfo"
                name = "ProtocolInfo"
            .end subannotation,
            .subannotation Lorg/fourthline/cling/binding/annotations/UpnpOutputArgument;
                getterName = "getPeerConnectionManager"
                name = "PeerConnectionManager"
                stateVariable = "A_ARG_TYPE_ConnectionManager"
            .end subannotation,
            .subannotation Lorg/fourthline/cling/binding/annotations/UpnpOutputArgument;
                getterName = "getPeerConnectionID"
                name = "PeerConnectionID"
                stateVariable = "A_ARG_TYPE_ConnectionID"
            .end subannotation,
            .subannotation Lorg/fourthline/cling/binding/annotations/UpnpOutputArgument;
                getterName = "getDirection"
                name = "Direction"
            .end subannotation,
            .subannotation Lorg/fourthline/cling/binding/annotations/UpnpOutputArgument;
                getterName = "getConnectionStatus"
                name = "Status"
                stateVariable = "A_ARG_TYPE_ConnectionStatus"
            .end subannotation
        }
    .end annotation

    monitor-enter p0

    .line 124
    :try_start_0
    sget-object v0, Lorg/fourthline/cling/support/connectionmanager/ConnectionManagerService;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Getting connection information of connection ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lorg/fourthline/cling/support/connectionmanager/ConnectionManagerService;->activeConnections:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/model/ConnectionInfo;

    if-nez v0, :cond_0

    .line 127
    new-instance v0, Lorg/fourthline/cling/support/connectionmanager/ConnectionManagerException;

    sget-object v1, Lorg/fourthline/cling/support/connectionmanager/ConnectionManagerErrorCode;->INVALID_CONNECTION_REFERENCE:Lorg/fourthline/cling/support/connectionmanager/ConnectionManagerErrorCode;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Non-active connection ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lorg/fourthline/cling/support/connectionmanager/ConnectionManagerException;-><init>(Lorg/fourthline/cling/support/connectionmanager/ConnectionManagerErrorCode;Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    .line 123
    monitor-exit p0

    throw p1
.end method

.method public getPropertyChangeSupport()Ljava/beans/PropertyChangeSupport;
    .locals 1

    .line 110
    iget-object v0, p0, Lorg/fourthline/cling/support/connectionmanager/ConnectionManagerService;->propertyChangeSupport:Ljava/beans/PropertyChangeSupport;

    return-object v0
.end method

.method public declared-synchronized getProtocolInfo()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/model/action/ActionException;
        }
    .end annotation

    .annotation runtime Lorg/fourthline/cling/binding/annotations/UpnpAction;
        out = {
            .subannotation Lorg/fourthline/cling/binding/annotations/UpnpOutputArgument;
                getterName = "getSourceProtocolInfo"
                name = "Source"
                stateVariable = "SourceProtocolInfo"
            .end subannotation,
            .subannotation Lorg/fourthline/cling/binding/annotations/UpnpOutputArgument;
                getterName = "getSinkProtocolInfo"
                name = "Sink"
                stateVariable = "SinkProtocolInfo"
            .end subannotation
        }
    .end annotation

    monitor-enter p0

    .line 153
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized getSinkProtocolInfo()Lorg/fourthline/cling/support/model/ProtocolInfos;
    .locals 1

    monitor-enter p0

    .line 160
    :try_start_0
    iget-object v0, p0, Lorg/fourthline/cling/support/connectionmanager/ConnectionManagerService;->sinkProtocolInfo:Lorg/fourthline/cling/support/model/ProtocolInfos;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSourceProtocolInfo()Lorg/fourthline/cling/support/model/ProtocolInfos;
    .locals 1

    monitor-enter p0

    .line 156
    :try_start_0
    iget-object v0, p0, Lorg/fourthline/cling/support/connectionmanager/ConnectionManagerService;->sourceProtocolInfo:Lorg/fourthline/cling/support/model/ProtocolInfos;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
