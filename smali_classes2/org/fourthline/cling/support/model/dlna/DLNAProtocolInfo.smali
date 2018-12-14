.class public Lorg/fourthline/cling/support/model/dlna/DLNAProtocolInfo;
.super Lorg/fourthline/cling/support/model/ProtocolInfo;
.source "DLNAProtocolInfo.java"


# instance fields
.field protected final attributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;",
            "Lorg/fourthline/cling/support/model/dlna/DLNAAttribute;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/model/types/InvalidValueException;
        }
    .end annotation

    .line 37
    invoke-direct {p0, p1}, Lorg/fourthline/cling/support/model/ProtocolInfo;-><init>(Ljava/lang/String;)V

    .line 34
    new-instance p1, Ljava/util/EnumMap;

    const-class v0, Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;

    invoke-direct {p1, v0}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object p1, p0, Lorg/fourthline/cling/support/model/dlna/DLNAProtocolInfo;->attributes:Ljava/util/Map;

    .line 38
    invoke-virtual {p0}, Lorg/fourthline/cling/support/model/dlna/DLNAProtocolInfo;->parseAdditionalInfo()V

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/support/model/Protocol;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/fourthline/cling/support/model/ProtocolInfo;-><init>(Lorg/fourthline/cling/support/model/Protocol;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    new-instance p1, Ljava/util/EnumMap;

    const-class p2, Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;

    invoke-direct {p1, p2}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object p1, p0, Lorg/fourthline/cling/support/model/dlna/DLNAProtocolInfo;->attributes:Ljava/util/Map;

    .line 60
    invoke-virtual {p0}, Lorg/fourthline/cling/support/model/dlna/DLNAProtocolInfo;->parseAdditionalInfo()V

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/support/model/Protocol;Ljava/lang/String;Ljava/lang/String;Ljava/util/EnumMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fourthline/cling/support/model/Protocol;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/EnumMap<",
            "Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;",
            "Lorg/fourthline/cling/support/model/dlna/DLNAAttribute;",
            ">;)V"
        }
    .end annotation

    const-string v0, ""

    .line 64
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/fourthline/cling/support/model/ProtocolInfo;-><init>(Lorg/fourthline/cling/support/model/Protocol;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    new-instance p1, Ljava/util/EnumMap;

    const-class p2, Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;

    invoke-direct {p1, p2}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object p1, p0, Lorg/fourthline/cling/support/model/dlna/DLNAProtocolInfo;->attributes:Ljava/util/Map;

    .line 65
    iget-object p1, p0, Lorg/fourthline/cling/support/model/dlna/DLNAProtocolInfo;->attributes:Ljava/util/Map;

    invoke-interface {p1, p4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 66
    invoke-virtual {p0}, Lorg/fourthline/cling/support/model/dlna/DLNAProtocolInfo;->getAttributesString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/fourthline/cling/support/model/dlna/DLNAProtocolInfo;->additionalInfo:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/support/model/ProtocolInfo;)V
    .locals 3

    .line 70
    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/ProtocolInfo;->getProtocol()Lorg/fourthline/cling/support/model/Protocol;

    move-result-object v0

    .line 71
    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/ProtocolInfo;->getNetwork()Ljava/lang/String;

    move-result-object v1

    .line 72
    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/ProtocolInfo;->getContentFormat()Ljava/lang/String;

    move-result-object v2

    .line 73
    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/ProtocolInfo;->getAdditionalInfo()Ljava/lang/String;

    move-result-object p1

    .line 70
    invoke-direct {p0, v0, v1, v2, p1}, Lorg/fourthline/cling/support/model/dlna/DLNAProtocolInfo;-><init>(Lorg/fourthline/cling/support/model/Protocol;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/support/model/dlna/DLNAProfiles;)V
    .locals 3

    .line 46
    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/dlna/DLNAProfiles;->getContentFormat()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/seamless/util/MimeType;->valueOf(Ljava/lang/String;)Lorg/seamless/util/MimeType;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/fourthline/cling/support/model/ProtocolInfo;-><init>(Lorg/seamless/util/MimeType;)V

    .line 34
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/fourthline/cling/support/model/dlna/DLNAProtocolInfo;->attributes:Ljava/util/Map;

    .line 47
    iget-object v0, p0, Lorg/fourthline/cling/support/model/dlna/DLNAProtocolInfo;->attributes:Ljava/util/Map;

    sget-object v1, Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;->DLNA_ORG_PN:Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;

    new-instance v2, Lorg/fourthline/cling/support/model/dlna/DLNAProfileAttribute;

    invoke-direct {v2, p1}, Lorg/fourthline/cling/support/model/dlna/DLNAProfileAttribute;-><init>(Lorg/fourthline/cling/support/model/dlna/DLNAProfiles;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    invoke-virtual {p0}, Lorg/fourthline/cling/support/model/dlna/DLNAProtocolInfo;->getAttributesString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/fourthline/cling/support/model/dlna/DLNAProtocolInfo;->additionalInfo:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/support/model/dlna/DLNAProfiles;Ljava/util/EnumMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fourthline/cling/support/model/dlna/DLNAProfiles;",
            "Ljava/util/EnumMap<",
            "Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;",
            "Lorg/fourthline/cling/support/model/dlna/DLNAAttribute;",
            ">;)V"
        }
    .end annotation

    .line 52
    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/dlna/DLNAProfiles;->getContentFormat()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/seamless/util/MimeType;->valueOf(Ljava/lang/String;)Lorg/seamless/util/MimeType;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/fourthline/cling/support/model/ProtocolInfo;-><init>(Lorg/seamless/util/MimeType;)V

    .line 34
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/fourthline/cling/support/model/dlna/DLNAProtocolInfo;->attributes:Ljava/util/Map;

    .line 53
    iget-object v0, p0, Lorg/fourthline/cling/support/model/dlna/DLNAProtocolInfo;->attributes:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 54
    iget-object p2, p0, Lorg/fourthline/cling/support/model/dlna/DLNAProtocolInfo;->attributes:Ljava/util/Map;

    sget-object v0, Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;->DLNA_ORG_PN:Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;

    new-instance v1, Lorg/fourthline/cling/support/model/dlna/DLNAProfileAttribute;

    invoke-direct {v1, p1}, Lorg/fourthline/cling/support/model/dlna/DLNAProfileAttribute;-><init>(Lorg/fourthline/cling/support/model/dlna/DLNAProfiles;)V

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    invoke-virtual {p0}, Lorg/fourthline/cling/support/model/dlna/DLNAProtocolInfo;->getAttributesString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/fourthline/cling/support/model/dlna/DLNAProtocolInfo;->additionalInfo:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/seamless/util/MimeType;)V
    .locals 1

    .line 42
    invoke-direct {p0, p1}, Lorg/fourthline/cling/support/model/ProtocolInfo;-><init>(Lorg/seamless/util/MimeType;)V

    .line 34
    new-instance p1, Ljava/util/EnumMap;

    const-class v0, Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;

    invoke-direct {p1, v0}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object p1, p0, Lorg/fourthline/cling/support/model/dlna/DLNAProtocolInfo;->attributes:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public contains(Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;)Z
    .locals 1

    .line 78
    iget-object v0, p0, Lorg/fourthline/cling/support/model/dlna/DLNAProtocolInfo;->attributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getAttribute(Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;)Lorg/fourthline/cling/support/model/dlna/DLNAAttribute;
    .locals 1

    .line 82
    iget-object v0, p0, Lorg/fourthline/cling/support/model/dlna/DLNAProtocolInfo;->attributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/fourthline/cling/support/model/dlna/DLNAAttribute;

    return-object p1
.end method

.method public getAttributes()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;",
            "Lorg/fourthline/cling/support/model/dlna/DLNAAttribute;",
            ">;"
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lorg/fourthline/cling/support/model/dlna/DLNAProtocolInfo;->attributes:Ljava/util/Map;

    return-object v0
.end method

.method protected getAttributesString()Ljava/lang/String;
    .locals 7

    const-string v0, ""

    .line 91
    invoke-static {}, Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;->values()[Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v1, v3

    .line 92
    iget-object v5, p0, Lorg/fourthline/cling/support/model/dlna/DLNAProtocolInfo;->attributes:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lorg/fourthline/cling/support/model/dlna/DLNAProtocolInfo;->attributes:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/fourthline/cling/support/model/dlna/DLNAAttribute;

    invoke-virtual {v5}, Lorg/fourthline/cling/support/model/dlna/DLNAAttribute;->getString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_2

    .line 93
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_2

    .line 94
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ""

    goto :goto_2

    :cond_1
    const-string v0, ";"

    :goto_2
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;->getAttributeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method protected parseAdditionalInfo()V
    .locals 7

    .line 100
    iget-object v0, p0, Lorg/fourthline/cling/support/model/dlna/DLNAProtocolInfo;->additionalInfo:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 101
    iget-object v0, p0, Lorg/fourthline/cling/support/model/dlna/DLNAProtocolInfo;->additionalInfo:Ljava/lang/String;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 102
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    const-string v5, "="

    .line 103
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 104
    array-length v5, v4

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 105
    aget-object v5, v4, v2

    .line 106
    invoke-static {v5}, Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;->valueOfAttributeName(Ljava/lang/String;)Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;

    move-result-object v5

    if-eqz v5, :cond_0

    const/4 v6, 0x1

    .line 108
    aget-object v4, v4, v6

    .line 109
    invoke-virtual {p0}, Lorg/fourthline/cling/support/model/dlna/DLNAProtocolInfo;->getContentFormat()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v4, v6}, Lorg/fourthline/cling/support/model/dlna/DLNAAttribute;->newInstance(Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;Ljava/lang/String;Ljava/lang/String;)Lorg/fourthline/cling/support/model/dlna/DLNAAttribute;

    move-result-object v4

    .line 110
    iget-object v6, p0, Lorg/fourthline/cling/support/model/dlna/DLNAProtocolInfo;->attributes:Ljava/util/Map;

    invoke-interface {v6, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
