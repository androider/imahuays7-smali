.class public Lorg/fourthline/cling/support/model/Connection$StatusInfo;
.super Ljava/lang/Object;
.source "Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fourthline/cling/support/model/Connection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StatusInfo"
.end annotation


# instance fields
.field private lastError:Lorg/fourthline/cling/support/model/Connection$Error;

.field private status:Lorg/fourthline/cling/support/model/Connection$Status;

.field private uptimeSeconds:J


# direct methods
.method public constructor <init>(Lorg/fourthline/cling/support/model/Connection$Status;JLorg/fourthline/cling/support/model/Connection$Error;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lorg/fourthline/cling/support/model/Connection$StatusInfo;->status:Lorg/fourthline/cling/support/model/Connection$Status;

    .line 37
    iput-wide p2, p0, Lorg/fourthline/cling/support/model/Connection$StatusInfo;->uptimeSeconds:J

    .line 38
    iput-object p4, p0, Lorg/fourthline/cling/support/model/Connection$StatusInfo;->lastError:Lorg/fourthline/cling/support/model/Connection$Error;

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/support/model/Connection$Status;Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;Lorg/fourthline/cling/support/model/Connection$Error;)V
    .locals 2

    .line 32
    invoke-virtual {p2}, Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;->getValue()Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1, p3}, Lorg/fourthline/cling/support/model/Connection$StatusInfo;-><init>(Lorg/fourthline/cling/support/model/Connection$Status;JLorg/fourthline/cling/support/model/Connection$Error;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_5

    .line 60
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 62
    :cond_1
    check-cast p1, Lorg/fourthline/cling/support/model/Connection$StatusInfo;

    .line 64
    iget-wide v2, p0, Lorg/fourthline/cling/support/model/Connection$StatusInfo;->uptimeSeconds:J

    iget-wide v4, p1, Lorg/fourthline/cling/support/model/Connection$StatusInfo;->uptimeSeconds:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_2

    return v1

    .line 65
    :cond_2
    iget-object v2, p0, Lorg/fourthline/cling/support/model/Connection$StatusInfo;->lastError:Lorg/fourthline/cling/support/model/Connection$Error;

    iget-object v3, p1, Lorg/fourthline/cling/support/model/Connection$StatusInfo;->lastError:Lorg/fourthline/cling/support/model/Connection$Error;

    if-eq v2, v3, :cond_3

    return v1

    .line 66
    :cond_3
    iget-object v2, p0, Lorg/fourthline/cling/support/model/Connection$StatusInfo;->status:Lorg/fourthline/cling/support/model/Connection$Status;

    iget-object p1, p1, Lorg/fourthline/cling/support/model/Connection$StatusInfo;->status:Lorg/fourthline/cling/support/model/Connection$Status;

    if-eq v2, p1, :cond_4

    return v1

    :cond_4
    return v0

    :cond_5
    :goto_0
    return v1
.end method

.method public getLastError()Lorg/fourthline/cling/support/model/Connection$Error;
    .locals 1

    .line 54
    iget-object v0, p0, Lorg/fourthline/cling/support/model/Connection$StatusInfo;->lastError:Lorg/fourthline/cling/support/model/Connection$Error;

    return-object v0
.end method

.method public getStatus()Lorg/fourthline/cling/support/model/Connection$Status;
    .locals 1

    .line 42
    iget-object v0, p0, Lorg/fourthline/cling/support/model/Connection$StatusInfo;->status:Lorg/fourthline/cling/support/model/Connection$Status;

    return-object v0
.end method

.method public getUptime()Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;
    .locals 3

    .line 50
    new-instance v0, Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    invoke-virtual {p0}, Lorg/fourthline/cling/support/model/Connection$StatusInfo;->getUptimeSeconds()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;-><init>(J)V

    return-object v0
.end method

.method public getUptimeSeconds()J
    .locals 2

    .line 46
    iget-wide v0, p0, Lorg/fourthline/cling/support/model/Connection$StatusInfo;->uptimeSeconds:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 7

    .line 73
    iget-object v0, p0, Lorg/fourthline/cling/support/model/Connection$StatusInfo;->status:Lorg/fourthline/cling/support/model/Connection$Status;

    invoke-virtual {v0}, Lorg/fourthline/cling/support/model/Connection$Status;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 74
    iget-wide v1, p0, Lorg/fourthline/cling/support/model/Connection$StatusInfo;->uptimeSeconds:J

    iget-wide v3, p0, Lorg/fourthline/cling/support/model/Connection$StatusInfo;->uptimeSeconds:J

    const/16 v5, 0x20

    ushr-long/2addr v3, v5

    xor-long v5, v1, v3

    long-to-int v1, v5

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 75
    iget-object v1, p0, Lorg/fourthline/cling/support/model/Connection$StatusInfo;->lastError:Lorg/fourthline/cling/support/model/Connection$Error;

    invoke-virtual {v1}, Lorg/fourthline/cling/support/model/Connection$Error;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 81
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

    invoke-virtual {p0}, Lorg/fourthline/cling/support/model/Connection$StatusInfo;->getStatus()Lorg/fourthline/cling/support/model/Connection$Status;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
