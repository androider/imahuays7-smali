.class public Lorg/fourthline/cling/support/model/ProtocolInfo;
.super Ljava/lang/Object;
.source "ProtocolInfo.java"


# static fields
.field public static final WILDCARD:Ljava/lang/String; = "*"


# instance fields
.field protected additionalInfo:Ljava/lang/String;

.field protected contentFormat:Ljava/lang/String;

.field protected network:Ljava/lang/String;

.field protected protocol:Lorg/fourthline/cling/support/model/Protocol;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/model/types/InvalidValueException;
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    sget-object v0, Lorg/fourthline/cling/support/model/Protocol;->ALL:Lorg/fourthline/cling/support/model/Protocol;

    iput-object v0, p0, Lorg/fourthline/cling/support/model/ProtocolInfo;->protocol:Lorg/fourthline/cling/support/model/Protocol;

    const-string v0, "*"

    .line 31
    iput-object v0, p0, Lorg/fourthline/cling/support/model/ProtocolInfo;->network:Ljava/lang/String;

    const-string v0, "*"

    .line 32
    iput-object v0, p0, Lorg/fourthline/cling/support/model/ProtocolInfo;->contentFormat:Ljava/lang/String;

    const-string v0, "*"

    .line 33
    iput-object v0, p0, Lorg/fourthline/cling/support/model/ProtocolInfo;->additionalInfo:Ljava/lang/String;

    if-nez p1, :cond_0

    .line 36
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 37
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v0, ":"

    .line 38
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 39
    array-length v1, v0

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    .line 40
    new-instance v0, Lorg/fourthline/cling/model/types/InvalidValueException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t parse ProtocolInfo string: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/fourthline/cling/model/types/InvalidValueException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 p1, 0x0

    .line 42
    aget-object p1, v0, p1

    invoke-static {p1}, Lorg/fourthline/cling/support/model/Protocol;->value(Ljava/lang/String;)Lorg/fourthline/cling/support/model/Protocol;

    move-result-object p1

    iput-object p1, p0, Lorg/fourthline/cling/support/model/ProtocolInfo;->protocol:Lorg/fourthline/cling/support/model/Protocol;

    const/4 p1, 0x1

    .line 43
    aget-object p1, v0, p1

    iput-object p1, p0, Lorg/fourthline/cling/support/model/ProtocolInfo;->network:Ljava/lang/String;

    const/4 p1, 0x2

    .line 44
    aget-object p1, v0, p1

    iput-object p1, p0, Lorg/fourthline/cling/support/model/ProtocolInfo;->contentFormat:Ljava/lang/String;

    const/4 p1, 0x3

    .line 45
    aget-object p1, v0, p1

    iput-object p1, p0, Lorg/fourthline/cling/support/model/ProtocolInfo;->additionalInfo:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/support/model/Protocol;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    sget-object v0, Lorg/fourthline/cling/support/model/Protocol;->ALL:Lorg/fourthline/cling/support/model/Protocol;

    iput-object v0, p0, Lorg/fourthline/cling/support/model/ProtocolInfo;->protocol:Lorg/fourthline/cling/support/model/Protocol;

    const-string v0, "*"

    .line 31
    iput-object v0, p0, Lorg/fourthline/cling/support/model/ProtocolInfo;->network:Ljava/lang/String;

    const-string v0, "*"

    .line 32
    iput-object v0, p0, Lorg/fourthline/cling/support/model/ProtocolInfo;->contentFormat:Ljava/lang/String;

    const-string v0, "*"

    .line 33
    iput-object v0, p0, Lorg/fourthline/cling/support/model/ProtocolInfo;->additionalInfo:Ljava/lang/String;

    .line 54
    iput-object p1, p0, Lorg/fourthline/cling/support/model/ProtocolInfo;->protocol:Lorg/fourthline/cling/support/model/Protocol;

    .line 55
    iput-object p2, p0, Lorg/fourthline/cling/support/model/ProtocolInfo;->network:Ljava/lang/String;

    .line 56
    iput-object p3, p0, Lorg/fourthline/cling/support/model/ProtocolInfo;->contentFormat:Ljava/lang/String;

    .line 57
    iput-object p4, p0, Lorg/fourthline/cling/support/model/ProtocolInfo;->additionalInfo:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/seamless/util/MimeType;)V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    sget-object v0, Lorg/fourthline/cling/support/model/Protocol;->ALL:Lorg/fourthline/cling/support/model/Protocol;

    iput-object v0, p0, Lorg/fourthline/cling/support/model/ProtocolInfo;->protocol:Lorg/fourthline/cling/support/model/Protocol;

    const-string v0, "*"

    .line 31
    iput-object v0, p0, Lorg/fourthline/cling/support/model/ProtocolInfo;->network:Ljava/lang/String;

    const-string v0, "*"

    .line 32
    iput-object v0, p0, Lorg/fourthline/cling/support/model/ProtocolInfo;->contentFormat:Ljava/lang/String;

    const-string v0, "*"

    .line 33
    iput-object v0, p0, Lorg/fourthline/cling/support/model/ProtocolInfo;->additionalInfo:Ljava/lang/String;

    .line 49
    sget-object v0, Lorg/fourthline/cling/support/model/Protocol;->HTTP_GET:Lorg/fourthline/cling/support/model/Protocol;

    iput-object v0, p0, Lorg/fourthline/cling/support/model/ProtocolInfo;->protocol:Lorg/fourthline/cling/support/model/Protocol;

    .line 50
    invoke-virtual {p1}, Lorg/seamless/util/MimeType;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/fourthline/cling/support/model/ProtocolInfo;->contentFormat:Ljava/lang/String;

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

    if-eqz p1, :cond_6

    .line 83
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 85
    :cond_1
    check-cast p1, Lorg/fourthline/cling/support/model/ProtocolInfo;

    .line 87
    iget-object v2, p0, Lorg/fourthline/cling/support/model/ProtocolInfo;->additionalInfo:Ljava/lang/String;

    iget-object v3, p1, Lorg/fourthline/cling/support/model/ProtocolInfo;->additionalInfo:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 88
    :cond_2
    iget-object v2, p0, Lorg/fourthline/cling/support/model/ProtocolInfo;->contentFormat:Ljava/lang/String;

    iget-object v3, p1, Lorg/fourthline/cling/support/model/ProtocolInfo;->contentFormat:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 89
    :cond_3
    iget-object v2, p0, Lorg/fourthline/cling/support/model/ProtocolInfo;->network:Ljava/lang/String;

    iget-object v3, p1, Lorg/fourthline/cling/support/model/ProtocolInfo;->network:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 90
    :cond_4
    iget-object v2, p0, Lorg/fourthline/cling/support/model/ProtocolInfo;->protocol:Lorg/fourthline/cling/support/model/Protocol;

    iget-object p1, p1, Lorg/fourthline/cling/support/model/ProtocolInfo;->protocol:Lorg/fourthline/cling/support/model/Protocol;

    if-eq v2, p1, :cond_5

    return v1

    :cond_5
    return v0

    :cond_6
    :goto_0
    return v1
.end method

.method public getAdditionalInfo()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lorg/fourthline/cling/support/model/ProtocolInfo;->additionalInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getContentFormat()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lorg/fourthline/cling/support/model/ProtocolInfo;->contentFormat:Ljava/lang/String;

    return-object v0
.end method

.method public getContentFormatMimeType()Lorg/seamless/util/MimeType;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lorg/fourthline/cling/support/model/ProtocolInfo;->contentFormat:Ljava/lang/String;

    invoke-static {v0}, Lorg/seamless/util/MimeType;->valueOf(Ljava/lang/String;)Lorg/seamless/util/MimeType;

    move-result-object v0

    return-object v0
.end method

.method public getNetwork()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lorg/fourthline/cling/support/model/ProtocolInfo;->network:Ljava/lang/String;

    return-object v0
.end method

.method public getProtocol()Lorg/fourthline/cling/support/model/Protocol;
    .locals 1

    .line 61
    iget-object v0, p0, Lorg/fourthline/cling/support/model/ProtocolInfo;->protocol:Lorg/fourthline/cling/support/model/Protocol;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 97
    iget-object v0, p0, Lorg/fourthline/cling/support/model/ProtocolInfo;->protocol:Lorg/fourthline/cling/support/model/Protocol;

    invoke-virtual {v0}, Lorg/fourthline/cling/support/model/Protocol;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 98
    iget-object v1, p0, Lorg/fourthline/cling/support/model/ProtocolInfo;->network:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 99
    iget-object v1, p0, Lorg/fourthline/cling/support/model/ProtocolInfo;->contentFormat:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 100
    iget-object v1, p0, Lorg/fourthline/cling/support/model/ProtocolInfo;->additionalInfo:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/fourthline/cling/support/model/ProtocolInfo;->protocol:Lorg/fourthline/cling/support/model/Protocol;

    invoke-virtual {v1}, Lorg/fourthline/cling/support/model/Protocol;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/fourthline/cling/support/model/ProtocolInfo;->network:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/fourthline/cling/support/model/ProtocolInfo;->contentFormat:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/fourthline/cling/support/model/ProtocolInfo;->additionalInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
