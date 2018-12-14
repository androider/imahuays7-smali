.class public Lorg/fourthline/cling/model/ServerClientTokens;
.super Ljava/lang/Object;
.source "ServerClientTokens.java"


# static fields
.field public static final UNKNOWN_PLACEHOLDER:Ljava/lang/String; = "UNKNOWN"


# instance fields
.field private majorVersion:I

.field private minorVersion:I

.field private osName:Ljava/lang/String;

.field private osVersion:Ljava/lang/String;

.field private productName:Ljava/lang/String;

.field private productVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 32
    iput v0, p0, Lorg/fourthline/cling/model/ServerClientTokens;->majorVersion:I

    const/4 v0, 0x0

    .line 33
    iput v0, p0, Lorg/fourthline/cling/model/ServerClientTokens;->minorVersion:I

    const-string v0, "os.name"

    .line 35
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[^a-zA-Z0-9\\.\\-_]"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/fourthline/cling/model/ServerClientTokens;->osName:Ljava/lang/String;

    const-string v0, "os.version"

    .line 36
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[^a-zA-Z0-9\\.\\-_]"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/fourthline/cling/model/ServerClientTokens;->osVersion:Ljava/lang/String;

    const-string v0, "Cling"

    .line 37
    iput-object v0, p0, Lorg/fourthline/cling/model/ServerClientTokens;->productName:Ljava/lang/String;

    const-string v0, "2.0"

    .line 38
    iput-object v0, p0, Lorg/fourthline/cling/model/ServerClientTokens;->productVersion:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 3

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 32
    iput v0, p0, Lorg/fourthline/cling/model/ServerClientTokens;->majorVersion:I

    const/4 v0, 0x0

    .line 33
    iput v0, p0, Lorg/fourthline/cling/model/ServerClientTokens;->minorVersion:I

    const-string v0, "os.name"

    .line 35
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[^a-zA-Z0-9\\.\\-_]"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/fourthline/cling/model/ServerClientTokens;->osName:Ljava/lang/String;

    const-string v0, "os.version"

    .line 36
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[^a-zA-Z0-9\\.\\-_]"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/fourthline/cling/model/ServerClientTokens;->osVersion:Ljava/lang/String;

    const-string v0, "Cling"

    .line 37
    iput-object v0, p0, Lorg/fourthline/cling/model/ServerClientTokens;->productName:Ljava/lang/String;

    const-string v0, "2.0"

    .line 38
    iput-object v0, p0, Lorg/fourthline/cling/model/ServerClientTokens;->productVersion:Ljava/lang/String;

    .line 44
    iput p1, p0, Lorg/fourthline/cling/model/ServerClientTokens;->majorVersion:I

    .line 45
    iput p2, p0, Lorg/fourthline/cling/model/ServerClientTokens;->minorVersion:I

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 32
    iput v0, p0, Lorg/fourthline/cling/model/ServerClientTokens;->majorVersion:I

    const/4 v0, 0x0

    .line 33
    iput v0, p0, Lorg/fourthline/cling/model/ServerClientTokens;->minorVersion:I

    const-string v0, "os.name"

    .line 35
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[^a-zA-Z0-9\\.\\-_]"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/fourthline/cling/model/ServerClientTokens;->osName:Ljava/lang/String;

    const-string v0, "os.version"

    .line 36
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[^a-zA-Z0-9\\.\\-_]"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/fourthline/cling/model/ServerClientTokens;->osVersion:Ljava/lang/String;

    const-string v0, "Cling"

    .line 37
    iput-object v0, p0, Lorg/fourthline/cling/model/ServerClientTokens;->productName:Ljava/lang/String;

    const-string v0, "2.0"

    .line 38
    iput-object v0, p0, Lorg/fourthline/cling/model/ServerClientTokens;->productVersion:Ljava/lang/String;

    .line 54
    iput p1, p0, Lorg/fourthline/cling/model/ServerClientTokens;->majorVersion:I

    .line 55
    iput p2, p0, Lorg/fourthline/cling/model/ServerClientTokens;->minorVersion:I

    .line 56
    iput-object p3, p0, Lorg/fourthline/cling/model/ServerClientTokens;->osName:Ljava/lang/String;

    .line 57
    iput-object p4, p0, Lorg/fourthline/cling/model/ServerClientTokens;->osVersion:Ljava/lang/String;

    .line 58
    iput-object p5, p0, Lorg/fourthline/cling/model/ServerClientTokens;->productName:Ljava/lang/String;

    .line 59
    iput-object p6, p0, Lorg/fourthline/cling/model/ServerClientTokens;->productVersion:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 32
    iput v0, p0, Lorg/fourthline/cling/model/ServerClientTokens;->majorVersion:I

    const/4 v0, 0x0

    .line 33
    iput v0, p0, Lorg/fourthline/cling/model/ServerClientTokens;->minorVersion:I

    const-string v0, "os.name"

    .line 35
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[^a-zA-Z0-9\\.\\-_]"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/fourthline/cling/model/ServerClientTokens;->osName:Ljava/lang/String;

    const-string v0, "os.version"

    .line 36
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[^a-zA-Z0-9\\.\\-_]"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/fourthline/cling/model/ServerClientTokens;->osVersion:Ljava/lang/String;

    const-string v0, "Cling"

    .line 37
    iput-object v0, p0, Lorg/fourthline/cling/model/ServerClientTokens;->productName:Ljava/lang/String;

    const-string v0, "2.0"

    .line 38
    iput-object v0, p0, Lorg/fourthline/cling/model/ServerClientTokens;->productVersion:Ljava/lang/String;

    .line 49
    iput-object p1, p0, Lorg/fourthline/cling/model/ServerClientTokens;->productName:Ljava/lang/String;

    .line 50
    iput-object p2, p0, Lorg/fourthline/cling/model/ServerClientTokens;->productVersion:Ljava/lang/String;

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

    if-eqz p1, :cond_8

    .line 145
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 147
    :cond_1
    check-cast p1, Lorg/fourthline/cling/model/ServerClientTokens;

    .line 149
    iget v2, p0, Lorg/fourthline/cling/model/ServerClientTokens;->majorVersion:I

    iget v3, p1, Lorg/fourthline/cling/model/ServerClientTokens;->majorVersion:I

    if-eq v2, v3, :cond_2

    return v1

    .line 150
    :cond_2
    iget v2, p0, Lorg/fourthline/cling/model/ServerClientTokens;->minorVersion:I

    iget v3, p1, Lorg/fourthline/cling/model/ServerClientTokens;->minorVersion:I

    if-eq v2, v3, :cond_3

    return v1

    .line 151
    :cond_3
    iget-object v2, p0, Lorg/fourthline/cling/model/ServerClientTokens;->osName:Ljava/lang/String;

    iget-object v3, p1, Lorg/fourthline/cling/model/ServerClientTokens;->osName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 152
    :cond_4
    iget-object v2, p0, Lorg/fourthline/cling/model/ServerClientTokens;->osVersion:Ljava/lang/String;

    iget-object v3, p1, Lorg/fourthline/cling/model/ServerClientTokens;->osVersion:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    .line 153
    :cond_5
    iget-object v2, p0, Lorg/fourthline/cling/model/ServerClientTokens;->productName:Ljava/lang/String;

    iget-object v3, p1, Lorg/fourthline/cling/model/ServerClientTokens;->productName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 154
    :cond_6
    iget-object v2, p0, Lorg/fourthline/cling/model/ServerClientTokens;->productVersion:Ljava/lang/String;

    iget-object p1, p1, Lorg/fourthline/cling/model/ServerClientTokens;->productVersion:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return v1

    :cond_7
    return v0

    :cond_8
    :goto_0
    return v1
.end method

.method public getHttpToken()Ljava/lang/String;
    .locals 6

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 119
    iget-object v1, p0, Lorg/fourthline/cling/model/ServerClientTokens;->osName:Ljava/lang/String;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/16 v3, 0x5f

    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    iget-object v1, p0, Lorg/fourthline/cling/model/ServerClientTokens;->osName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/fourthline/cling/model/ServerClientTokens;->osName:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    .line 120
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 121
    iget-object v5, p0, Lorg/fourthline/cling/model/ServerClientTokens;->osVersion:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-eq v5, v4, :cond_1

    iget-object v5, p0, Lorg/fourthline/cling/model/ServerClientTokens;->osVersion:Ljava/lang/String;

    invoke-virtual {v5, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_1
    iget-object v5, p0, Lorg/fourthline/cling/model/ServerClientTokens;->osVersion:Ljava/lang/String;

    :goto_1
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " UPnP/"

    .line 122
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    iget v5, p0, Lorg/fourthline/cling/model/ServerClientTokens;->majorVersion:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v5, 0x2e

    .line 124
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 125
    iget v5, p0, Lorg/fourthline/cling/model/ServerClientTokens;->minorVersion:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 126
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 127
    iget-object v5, p0, Lorg/fourthline/cling/model/ServerClientTokens;->productName:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-eq v5, v4, :cond_2

    iget-object v5, p0, Lorg/fourthline/cling/model/ServerClientTokens;->productName:Ljava/lang/String;

    invoke-virtual {v5, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_2
    iget-object v5, p0, Lorg/fourthline/cling/model/ServerClientTokens;->productName:Ljava/lang/String;

    :goto_2
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 129
    iget-object v1, p0, Lorg/fourthline/cling/model/ServerClientTokens;->productVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v1, v4, :cond_3

    iget-object v1, p0, Lorg/fourthline/cling/model/ServerClientTokens;->productVersion:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_3
    iget-object v1, p0, Lorg/fourthline/cling/model/ServerClientTokens;->productVersion:Ljava/lang/String;

    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMajorVersion()I
    .locals 1

    .line 63
    iget v0, p0, Lorg/fourthline/cling/model/ServerClientTokens;->majorVersion:I

    return v0
.end method

.method public getMinorVersion()I
    .locals 1

    .line 71
    iget v0, p0, Lorg/fourthline/cling/model/ServerClientTokens;->minorVersion:I

    return v0
.end method

.method public getOsName()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lorg/fourthline/cling/model/ServerClientTokens;->osName:Ljava/lang/String;

    return-object v0
.end method

.method public getOsToken()Ljava/lang/String;
    .locals 4

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/fourthline/cling/model/ServerClientTokens;->getOsName()Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    const-string v3, "_"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/fourthline/cling/model/ServerClientTokens;->getOsVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    const-string v3, "_"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOsVersion()Ljava/lang/String;
    .locals 1

    .line 87
    iget-object v0, p0, Lorg/fourthline/cling/model/ServerClientTokens;->osVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getProductName()Ljava/lang/String;
    .locals 1

    .line 95
    iget-object v0, p0, Lorg/fourthline/cling/model/ServerClientTokens;->productName:Ljava/lang/String;

    return-object v0
.end method

.method public getProductToken()Ljava/lang/String;
    .locals 4

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/fourthline/cling/model/ServerClientTokens;->getProductName()Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    const-string v3, "_"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/fourthline/cling/model/ServerClientTokens;->getProductVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    const-string v3, "_"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProductVersion()Ljava/lang/String;
    .locals 1

    .line 103
    iget-object v0, p0, Lorg/fourthline/cling/model/ServerClientTokens;->productVersion:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 161
    iget v0, p0, Lorg/fourthline/cling/model/ServerClientTokens;->majorVersion:I

    mul-int/lit8 v0, v0, 0x1f

    .line 162
    iget v1, p0, Lorg/fourthline/cling/model/ServerClientTokens;->minorVersion:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 163
    iget-object v1, p0, Lorg/fourthline/cling/model/ServerClientTokens;->osName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 164
    iget-object v1, p0, Lorg/fourthline/cling/model/ServerClientTokens;->osVersion:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 165
    iget-object v1, p0, Lorg/fourthline/cling/model/ServerClientTokens;->productName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 166
    iget-object v1, p0, Lorg/fourthline/cling/model/ServerClientTokens;->productVersion:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public setMajorVersion(I)V
    .locals 0

    .line 67
    iput p1, p0, Lorg/fourthline/cling/model/ServerClientTokens;->majorVersion:I

    return-void
.end method

.method public setMinorVersion(I)V
    .locals 0

    .line 75
    iput p1, p0, Lorg/fourthline/cling/model/ServerClientTokens;->minorVersion:I

    return-void
.end method

.method public setOsName(Ljava/lang/String;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lorg/fourthline/cling/model/ServerClientTokens;->osName:Ljava/lang/String;

    return-void
.end method

.method public setOsVersion(Ljava/lang/String;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lorg/fourthline/cling/model/ServerClientTokens;->osVersion:Ljava/lang/String;

    return-void
.end method

.method public setProductName(Ljava/lang/String;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lorg/fourthline/cling/model/ServerClientTokens;->productName:Ljava/lang/String;

    return-void
.end method

.method public setProductVersion(Ljava/lang/String;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lorg/fourthline/cling/model/ServerClientTokens;->productVersion:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/fourthline/cling/model/ServerClientTokens;->getOsName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/fourthline/cling/model/ServerClientTokens;->getOsVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " UPnP/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    invoke-virtual {p0}, Lorg/fourthline/cling/model/ServerClientTokens;->getMajorVersion()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/fourthline/cling/model/ServerClientTokens;->getMinorVersion()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    invoke-virtual {p0}, Lorg/fourthline/cling/model/ServerClientTokens;->getProductName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/fourthline/cling/model/ServerClientTokens;->getProductVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
