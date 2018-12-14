.class public Lorg/fourthline/cling/support/model/ConnectionInfo;
.super Ljava/lang/Object;
.source "ConnectionInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/fourthline/cling/support/model/ConnectionInfo$Direction;,
        Lorg/fourthline/cling/support/model/ConnectionInfo$Status;
    }
.end annotation


# instance fields
.field protected final avTransportID:I

.field protected final connectionID:I

.field protected connectionStatus:Lorg/fourthline/cling/support/model/ConnectionInfo$Status;

.field protected final direction:Lorg/fourthline/cling/support/model/ConnectionInfo$Direction;

.field protected final peerConnectionID:I

.field protected final peerConnectionManager:Lorg/fourthline/cling/model/ServiceReference;

.field protected final protocolInfo:Lorg/fourthline/cling/support/model/ProtocolInfo;

.field protected final rcsID:I


# direct methods
.method public constructor <init>()V
    .locals 9

    .line 81
    sget-object v7, Lorg/fourthline/cling/support/model/ConnectionInfo$Direction;->Input:Lorg/fourthline/cling/support/model/ConnectionInfo$Direction;

    sget-object v8, Lorg/fourthline/cling/support/model/ConnectionInfo$Status;->Unknown:Lorg/fourthline/cling/support/model/ConnectionInfo$Status;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lorg/fourthline/cling/support/model/ConnectionInfo;-><init>(IIILorg/fourthline/cling/support/model/ProtocolInfo;Lorg/fourthline/cling/model/ServiceReference;ILorg/fourthline/cling/support/model/ConnectionInfo$Direction;Lorg/fourthline/cling/support/model/ConnectionInfo$Status;)V

    return-void
.end method

.method public constructor <init>(IIILorg/fourthline/cling/support/model/ProtocolInfo;Lorg/fourthline/cling/model/ServiceReference;ILorg/fourthline/cling/support/model/ConnectionInfo$Direction;Lorg/fourthline/cling/support/model/ConnectionInfo$Status;)V
    .locals 1

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    sget-object v0, Lorg/fourthline/cling/support/model/ConnectionInfo$Status;->Unknown:Lorg/fourthline/cling/support/model/ConnectionInfo$Status;

    iput-object v0, p0, Lorg/fourthline/cling/support/model/ConnectionInfo;->connectionStatus:Lorg/fourthline/cling/support/model/ConnectionInfo$Status;

    .line 90
    iput p1, p0, Lorg/fourthline/cling/support/model/ConnectionInfo;->connectionID:I

    .line 91
    iput p2, p0, Lorg/fourthline/cling/support/model/ConnectionInfo;->rcsID:I

    .line 92
    iput p3, p0, Lorg/fourthline/cling/support/model/ConnectionInfo;->avTransportID:I

    .line 93
    iput-object p4, p0, Lorg/fourthline/cling/support/model/ConnectionInfo;->protocolInfo:Lorg/fourthline/cling/support/model/ProtocolInfo;

    .line 94
    iput-object p5, p0, Lorg/fourthline/cling/support/model/ConnectionInfo;->peerConnectionManager:Lorg/fourthline/cling/model/ServiceReference;

    .line 95
    iput p6, p0, Lorg/fourthline/cling/support/model/ConnectionInfo;->peerConnectionID:I

    .line 96
    iput-object p7, p0, Lorg/fourthline/cling/support/model/ConnectionInfo;->direction:Lorg/fourthline/cling/support/model/ConnectionInfo$Direction;

    .line 97
    iput-object p8, p0, Lorg/fourthline/cling/support/model/ConnectionInfo;->connectionStatus:Lorg/fourthline/cling/support/model/ConnectionInfo$Status;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_c

    .line 139
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_2

    .line 141
    :cond_1
    check-cast p1, Lorg/fourthline/cling/support/model/ConnectionInfo;

    .line 143
    iget v2, p0, Lorg/fourthline/cling/support/model/ConnectionInfo;->avTransportID:I

    iget v3, p1, Lorg/fourthline/cling/support/model/ConnectionInfo;->avTransportID:I

    if-eq v2, v3, :cond_2

    return v1

    .line 144
    :cond_2
    iget v2, p0, Lorg/fourthline/cling/support/model/ConnectionInfo;->connectionID:I

    iget v3, p1, Lorg/fourthline/cling/support/model/ConnectionInfo;->connectionID:I

    if-eq v2, v3, :cond_3

    return v1

    .line 145
    :cond_3
    iget v2, p0, Lorg/fourthline/cling/support/model/ConnectionInfo;->peerConnectionID:I

    iget v3, p1, Lorg/fourthline/cling/support/model/ConnectionInfo;->peerConnectionID:I

    if-eq v2, v3, :cond_4

    return v1

    .line 146
    :cond_4
    iget v2, p0, Lorg/fourthline/cling/support/model/ConnectionInfo;->rcsID:I

    iget v3, p1, Lorg/fourthline/cling/support/model/ConnectionInfo;->rcsID:I

    if-eq v2, v3, :cond_5

    return v1

    .line 147
    :cond_5
    iget-object v2, p0, Lorg/fourthline/cling/support/model/ConnectionInfo;->connectionStatus:Lorg/fourthline/cling/support/model/ConnectionInfo$Status;

    iget-object v3, p1, Lorg/fourthline/cling/support/model/ConnectionInfo;->connectionStatus:Lorg/fourthline/cling/support/model/ConnectionInfo$Status;

    if-eq v2, v3, :cond_6

    return v1

    .line 148
    :cond_6
    iget-object v2, p0, Lorg/fourthline/cling/support/model/ConnectionInfo;->direction:Lorg/fourthline/cling/support/model/ConnectionInfo$Direction;

    iget-object v3, p1, Lorg/fourthline/cling/support/model/ConnectionInfo;->direction:Lorg/fourthline/cling/support/model/ConnectionInfo$Direction;

    if-eq v2, v3, :cond_7

    return v1

    .line 149
    :cond_7
    iget-object v2, p0, Lorg/fourthline/cling/support/model/ConnectionInfo;->peerConnectionManager:Lorg/fourthline/cling/model/ServiceReference;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lorg/fourthline/cling/support/model/ConnectionInfo;->peerConnectionManager:Lorg/fourthline/cling/model/ServiceReference;

    iget-object v3, p1, Lorg/fourthline/cling/support/model/ConnectionInfo;->peerConnectionManager:Lorg/fourthline/cling/model/ServiceReference;

    invoke-virtual {v2, v3}, Lorg/fourthline/cling/model/ServiceReference;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    goto :goto_0

    :cond_8
    iget-object v2, p1, Lorg/fourthline/cling/support/model/ConnectionInfo;->peerConnectionManager:Lorg/fourthline/cling/model/ServiceReference;

    if-eqz v2, :cond_9

    :goto_0
    return v1

    .line 151
    :cond_9
    iget-object v2, p0, Lorg/fourthline/cling/support/model/ConnectionInfo;->protocolInfo:Lorg/fourthline/cling/support/model/ProtocolInfo;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lorg/fourthline/cling/support/model/ConnectionInfo;->protocolInfo:Lorg/fourthline/cling/support/model/ProtocolInfo;

    iget-object p1, p1, Lorg/fourthline/cling/support/model/ConnectionInfo;->protocolInfo:Lorg/fourthline/cling/support/model/ProtocolInfo;

    invoke-virtual {v2, p1}, Lorg/fourthline/cling/support/model/ProtocolInfo;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    goto :goto_1

    :cond_a
    iget-object p1, p1, Lorg/fourthline/cling/support/model/ConnectionInfo;->protocolInfo:Lorg/fourthline/cling/support/model/ProtocolInfo;

    if-eqz p1, :cond_b

    :goto_1
    return v1

    :cond_b
    return v0

    :cond_c
    :goto_2
    return v1
.end method

.method public getAvTransportID()I
    .locals 1

    .line 109
    iget v0, p0, Lorg/fourthline/cling/support/model/ConnectionInfo;->avTransportID:I

    return v0
.end method

.method public getConnectionID()I
    .locals 1

    .line 101
    iget v0, p0, Lorg/fourthline/cling/support/model/ConnectionInfo;->connectionID:I

    return v0
.end method

.method public declared-synchronized getConnectionStatus()Lorg/fourthline/cling/support/model/ConnectionInfo$Status;
    .locals 1

    monitor-enter p0

    .line 129
    :try_start_0
    iget-object v0, p0, Lorg/fourthline/cling/support/model/ConnectionInfo;->connectionStatus:Lorg/fourthline/cling/support/model/ConnectionInfo$Status;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDirection()Lorg/fourthline/cling/support/model/ConnectionInfo$Direction;
    .locals 1

    .line 125
    iget-object v0, p0, Lorg/fourthline/cling/support/model/ConnectionInfo;->direction:Lorg/fourthline/cling/support/model/ConnectionInfo$Direction;

    return-object v0
.end method

.method public getPeerConnectionID()I
    .locals 1

    .line 121
    iget v0, p0, Lorg/fourthline/cling/support/model/ConnectionInfo;->peerConnectionID:I

    return v0
.end method

.method public getPeerConnectionManager()Lorg/fourthline/cling/model/ServiceReference;
    .locals 1

    .line 117
    iget-object v0, p0, Lorg/fourthline/cling/support/model/ConnectionInfo;->peerConnectionManager:Lorg/fourthline/cling/model/ServiceReference;

    return-object v0
.end method

.method public getProtocolInfo()Lorg/fourthline/cling/support/model/ProtocolInfo;
    .locals 1

    .line 113
    iget-object v0, p0, Lorg/fourthline/cling/support/model/ConnectionInfo;->protocolInfo:Lorg/fourthline/cling/support/model/ProtocolInfo;

    return-object v0
.end method

.method public getRcsID()I
    .locals 1

    .line 105
    iget v0, p0, Lorg/fourthline/cling/support/model/ConnectionInfo;->rcsID:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 158
    iget v0, p0, Lorg/fourthline/cling/support/model/ConnectionInfo;->connectionID:I

    mul-int/lit8 v0, v0, 0x1f

    .line 159
    iget v1, p0, Lorg/fourthline/cling/support/model/ConnectionInfo;->rcsID:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 160
    iget v1, p0, Lorg/fourthline/cling/support/model/ConnectionInfo;->avTransportID:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 161
    iget-object v1, p0, Lorg/fourthline/cling/support/model/ConnectionInfo;->protocolInfo:Lorg/fourthline/cling/support/model/ProtocolInfo;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/fourthline/cling/support/model/ConnectionInfo;->protocolInfo:Lorg/fourthline/cling/support/model/ProtocolInfo;

    invoke-virtual {v1}, Lorg/fourthline/cling/support/model/ProtocolInfo;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 162
    iget-object v1, p0, Lorg/fourthline/cling/support/model/ConnectionInfo;->peerConnectionManager:Lorg/fourthline/cling/model/ServiceReference;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/fourthline/cling/support/model/ConnectionInfo;->peerConnectionManager:Lorg/fourthline/cling/model/ServiceReference;

    invoke-virtual {v1}, Lorg/fourthline/cling/model/ServiceReference;->hashCode()I

    move-result v2

    :cond_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 163
    iget v1, p0, Lorg/fourthline/cling/support/model/ConnectionInfo;->peerConnectionID:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 164
    iget-object v1, p0, Lorg/fourthline/cling/support/model/ConnectionInfo;->direction:Lorg/fourthline/cling/support/model/ConnectionInfo$Direction;

    invoke-virtual {v1}, Lorg/fourthline/cling/support/model/ConnectionInfo$Direction;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 165
    iget-object v1, p0, Lorg/fourthline/cling/support/model/ConnectionInfo;->connectionStatus:Lorg/fourthline/cling/support/model/ConnectionInfo$Status;

    invoke-virtual {v1}, Lorg/fourthline/cling/support/model/ConnectionInfo$Status;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public declared-synchronized setConnectionStatus(Lorg/fourthline/cling/support/model/ConnectionInfo$Status;)V
    .locals 0

    monitor-enter p0

    .line 133
    :try_start_0
    iput-object p1, p0, Lorg/fourthline/cling/support/model/ConnectionInfo;->connectionStatus:Lorg/fourthline/cling/support/model/ConnectionInfo$Status;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 132
    monitor-exit p0

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") ID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/fourthline/cling/support/model/ConnectionInfo;->getConnectionID()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", Status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/fourthline/cling/support/model/ConnectionInfo;->getConnectionStatus()Lorg/fourthline/cling/support/model/ConnectionInfo$Status;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
