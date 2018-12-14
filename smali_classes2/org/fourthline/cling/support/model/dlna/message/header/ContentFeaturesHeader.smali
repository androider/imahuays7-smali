.class public Lorg/fourthline/cling/support/model/dlna/message/header/ContentFeaturesHeader;
.super Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader;
.source "ContentFeaturesHeader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader<",
        "Ljava/util/EnumMap<",
        "Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;",
        "Lorg/fourthline/cling/support/model/dlna/DLNAAttribute;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 26
    invoke-direct {p0}, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader;-><init>()V

    .line 27
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/dlna/message/header/ContentFeaturesHeader;->setValue(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getString()Ljava/lang/String;
    .locals 7

    const-string v0, ""

    .line 50
    invoke-static {}, Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;->values()[Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v1, v3

    .line 51
    invoke-virtual {p0}, Lorg/fourthline/cling/support/model/dlna/message/header/ContentFeaturesHeader;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/EnumMap;

    invoke-virtual {v5, v4}, Ljava/util/EnumMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lorg/fourthline/cling/support/model/dlna/message/header/ContentFeaturesHeader;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/EnumMap;

    invoke-virtual {v5, v4}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/fourthline/cling/support/model/dlna/DLNAAttribute;

    invoke-virtual {v5}, Lorg/fourthline/cling/support/model/dlna/DLNAAttribute;->getString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_2

    .line 52
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_2

    .line 53
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

.method public setString(Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/model/message/header/InvalidHeaderException;
        }
    .end annotation

    .line 32
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, ";"

    .line 33
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 34
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    const-string v4, "="

    .line 35
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 36
    array-length v4, v3

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 37
    aget-object v4, v3, v1

    invoke-static {v4}, Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;->valueOfAttributeName(Ljava/lang/String;)Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;

    move-result-object v4

    if-eqz v4, :cond_0

    const/4 v5, 0x1

    .line 39
    aget-object v3, v3, v5

    const-string v5, ""

    invoke-static {v4, v3, v5}, Lorg/fourthline/cling/support/model/dlna/DLNAAttribute;->newInstance(Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;Ljava/lang/String;Ljava/lang/String;)Lorg/fourthline/cling/support/model/dlna/DLNAAttribute;

    move-result-object v3

    .line 40
    invoke-virtual {p0}, Lorg/fourthline/cling/support/model/dlna/message/header/ContentFeaturesHeader;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/EnumMap;

    invoke-virtual {v5, v4, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
