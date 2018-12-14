.class public Lorg/fourthline/cling/support/model/dlna/DLNAPlaySpeedAttribute;
.super Lorg/fourthline/cling/support/model/dlna/DLNAAttribute;
.source "DLNAPlaySpeedAttribute.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/fourthline/cling/support/model/dlna/DLNAAttribute<",
        "[",
        "Lorg/fourthline/cling/support/avtransport/lastchange/AVTransportVariable$TransportPlaySpeed;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Lorg/fourthline/cling/support/model/dlna/DLNAAttribute;-><init>()V

    const/4 v0, 0x0

    .line 26
    new-array v0, v0, [Lorg/fourthline/cling/support/avtransport/lastchange/AVTransportVariable$TransportPlaySpeed;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/dlna/DLNAPlaySpeedAttribute;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 4

    .line 33
    invoke-direct {p0}, Lorg/fourthline/cling/support/model/dlna/DLNAAttribute;-><init>()V

    .line 34
    array-length v0, p1

    new-array v0, v0, [Lorg/fourthline/cling/support/avtransport/lastchange/AVTransportVariable$TransportPlaySpeed;

    const/4 v1, 0x0

    .line 36
    :goto_0
    :try_start_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 37
    new-instance v2, Lorg/fourthline/cling/support/avtransport/lastchange/AVTransportVariable$TransportPlaySpeed;

    aget-object v3, p1, v1

    invoke-direct {v2, v3}, Lorg/fourthline/cling/support/avtransport/lastchange/AVTransportVariable$TransportPlaySpeed;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1
    :try_end_0
    .catch Lorg/fourthline/cling/model/types/InvalidValueException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 42
    :cond_0
    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/dlna/DLNAPlaySpeedAttribute;->setValue(Ljava/lang/Object;)V

    return-void

    .line 40
    :catch_0
    new-instance p1, Lorg/fourthline/cling/support/model/dlna/InvalidDLNAProtocolAttributeException;

    const-string v0, "Can\'t parse DLNA play speeds."

    invoke-direct {p1, v0}, Lorg/fourthline/cling/support/model/dlna/InvalidDLNAProtocolAttributeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>([Lorg/fourthline/cling/support/avtransport/lastchange/AVTransportVariable$TransportPlaySpeed;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lorg/fourthline/cling/support/model/dlna/DLNAAttribute;-><init>()V

    .line 30
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/support/model/dlna/DLNAPlaySpeedAttribute;->setValue(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getString()Ljava/lang/String;
    .locals 7

    const-string v0, ""

    .line 66
    invoke-virtual {p0}, Lorg/fourthline/cling/support/model/dlna/DLNAPlaySpeedAttribute;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/fourthline/cling/support/avtransport/lastchange/AVTransportVariable$TransportPlaySpeed;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 67
    invoke-virtual {v4}, Lorg/fourthline/cling/support/avtransport/lastchange/AVTransportVariable$TransportPlaySpeed;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_2

    .line 69
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ""

    goto :goto_1

    :cond_1
    const-string v0, ","

    :goto_1
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public setString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/support/model/dlna/InvalidDLNAProtocolAttributeException;
        }
    .end annotation

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 47
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, ","

    .line 48
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 50
    :try_start_0
    array-length v1, v0

    new-array v1, v1, [Lorg/fourthline/cling/support/avtransport/lastchange/AVTransportVariable$TransportPlaySpeed;

    const/4 v2, 0x0

    .line 51
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 52
    new-instance v3, Lorg/fourthline/cling/support/avtransport/lastchange/AVTransportVariable$TransportPlaySpeed;

    aget-object v4, v0, v2

    invoke-direct {v3, v4}, Lorg/fourthline/cling/support/avtransport/lastchange/AVTransportVariable$TransportPlaySpeed;-><init>(Ljava/lang/String;)V

    aput-object v3, v1, v2
    :try_end_0
    .catch Lorg/fourthline/cling/model/types/InvalidValueException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move-object p2, v1

    :catch_0
    :cond_1
    if-nez p2, :cond_2

    .line 59
    new-instance p2, Lorg/fourthline/cling/support/model/dlna/InvalidDLNAProtocolAttributeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t parse DLNA play speeds from: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/fourthline/cling/support/model/dlna/InvalidDLNAProtocolAttributeException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 61
    :cond_2
    invoke-virtual {p0, p2}, Lorg/fourthline/cling/support/model/dlna/DLNAPlaySpeedAttribute;->setValue(Ljava/lang/Object;)V

    return-void
.end method
