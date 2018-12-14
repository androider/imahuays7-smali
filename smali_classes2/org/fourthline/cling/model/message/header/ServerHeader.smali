.class public Lorg/fourthline/cling/model/message/header/ServerHeader;
.super Lorg/fourthline/cling/model/message/header/UpnpHeader;
.source "ServerHeader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/fourthline/cling/model/message/header/UpnpHeader<",
        "Lorg/fourthline/cling/model/ServerClientTokens;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Lorg/fourthline/cling/model/message/header/UpnpHeader;-><init>()V

    .line 26
    new-instance v0, Lorg/fourthline/cling/model/ServerClientTokens;

    invoke-direct {v0}, Lorg/fourthline/cling/model/ServerClientTokens;-><init>()V

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/model/message/header/ServerHeader;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/ServerClientTokens;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lorg/fourthline/cling/model/message/header/UpnpHeader;-><init>()V

    .line 30
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/model/message/header/ServerHeader;->setValue(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getString()Ljava/lang/String;
    .locals 1

    .line 123
    invoke-virtual {p0}, Lorg/fourthline/cling/model/message/header/ServerHeader;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/ServerClientTokens;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/ServerClientTokens;->getHttpToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setString(Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/model/message/header/InvalidHeaderException;
        }
    .end annotation

    .line 38
    new-instance v0, Lorg/fourthline/cling/model/ServerClientTokens;

    invoke-direct {v0}, Lorg/fourthline/cling/model/ServerClientTokens;-><init>()V

    const-string v1, "UNKNOWN"

    .line 41
    invoke-virtual {v0, v1}, Lorg/fourthline/cling/model/ServerClientTokens;->setOsName(Ljava/lang/String;)V

    const-string v1, "UNKNOWN"

    .line 42
    invoke-virtual {v0, v1}, Lorg/fourthline/cling/model/ServerClientTokens;->setOsVersion(Ljava/lang/String;)V

    const-string v1, "UNKNOWN"

    .line 43
    invoke-virtual {v0, v1}, Lorg/fourthline/cling/model/ServerClientTokens;->setProductName(Ljava/lang/String;)V

    const-string v1, "UNKNOWN"

    .line 44
    invoke-virtual {v0, v1}, Lorg/fourthline/cling/model/ServerClientTokens;->setProductVersion(Ljava/lang/String;)V

    const-string v1, "UPnP/1.1"

    .line 47
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 48
    invoke-virtual {v0, v2}, Lorg/fourthline/cling/model/ServerClientTokens;->setMinorVersion(I)V

    goto :goto_0

    :cond_0
    const-string v1, "UPnP/1."

    .line 49
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 50
    new-instance v0, Lorg/fourthline/cling/model/message/header/InvalidHeaderException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Missing \'UPnP/1.\' in server information: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/fourthline/cling/model/message/header/InvalidHeaderException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 57
    :goto_1
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_3

    .line 58
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x20

    if-ne v5, v6, :cond_2

    add-int/lit8 v4, v4, 0x1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    const-string v3, ","

    .line 64
    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v5, 0x2

    if-eqz v3, :cond_4

    const-string v3, ","

    .line 67
    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 68
    aget-object v3, p1, v1

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 69
    aget-object p1, p1, v5

    const-string v4, "/"

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_4
    if-le v4, v5, :cond_5

    const-string v3, "UPnP/1."

    .line 74
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UPnP/1."

    .line 75
    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x8

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v4, "/"

    .line 76
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const-string v4, "/"

    .line 77
    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_5
    const-string v3, " "

    .line 82
    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 83
    aget-object v3, p1, v1

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 84
    aget-object p1, p1, v5

    const-string v4, "/"

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 88
    :goto_2
    aget-object v4, v3, v1

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/fourthline/cling/model/ServerClientTokens;->setOsName(Ljava/lang/String;)V

    .line 89
    array-length v4, v3

    if-le v4, v2, :cond_6

    .line 90
    aget-object v3, v3, v2

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/fourthline/cling/model/ServerClientTokens;->setOsVersion(Ljava/lang/String;)V

    .line 92
    :cond_6
    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/fourthline/cling/model/ServerClientTokens;->setProductName(Ljava/lang/String;)V

    .line 93
    array-length v1, p1

    if-le v1, v2, :cond_7

    .line 94
    aget-object p1, p1, v2

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/fourthline/cling/model/ServerClientTokens;->setProductVersion(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    const-string p1, "UNKNOWN"

    .line 100
    invoke-virtual {v0, p1}, Lorg/fourthline/cling/model/ServerClientTokens;->setOsName(Ljava/lang/String;)V

    const-string p1, "UNKNOWN"

    .line 101
    invoke-virtual {v0, p1}, Lorg/fourthline/cling/model/ServerClientTokens;->setOsVersion(Ljava/lang/String;)V

    const-string p1, "UNKNOWN"

    .line 102
    invoke-virtual {v0, p1}, Lorg/fourthline/cling/model/ServerClientTokens;->setProductName(Ljava/lang/String;)V

    const-string p1, "UNKNOWN"

    .line 103
    invoke-virtual {v0, p1}, Lorg/fourthline/cling/model/ServerClientTokens;->setProductVersion(Ljava/lang/String;)V

    .line 119
    :cond_7
    :goto_3
    invoke-virtual {p0, v0}, Lorg/fourthline/cling/model/message/header/ServerHeader;->setValue(Ljava/lang/Object;)V

    return-void
.end method
