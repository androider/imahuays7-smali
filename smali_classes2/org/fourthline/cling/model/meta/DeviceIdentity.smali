.class public Lorg/fourthline/cling/model/meta/DeviceIdentity;
.super Ljava/lang/Object;
.source "DeviceIdentity.java"

# interfaces
.implements Lorg/fourthline/cling/model/Validatable;


# instance fields
.field private final maxAgeSeconds:Ljava/lang/Integer;

.field private final udn:Lorg/fourthline/cling/model/types/UDN;


# direct methods
.method public constructor <init>(Lorg/fourthline/cling/model/types/UDN;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lorg/fourthline/cling/model/meta/DeviceIdentity;->udn:Lorg/fourthline/cling/model/types/UDN;

    const/16 p1, 0x708

    .line 43
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/fourthline/cling/model/meta/DeviceIdentity;->maxAgeSeconds:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/types/UDN;Ljava/lang/Integer;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lorg/fourthline/cling/model/meta/DeviceIdentity;->udn:Lorg/fourthline/cling/model/types/UDN;

    .line 48
    iput-object p2, p0, Lorg/fourthline/cling/model/meta/DeviceIdentity;->maxAgeSeconds:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/types/UDN;Lorg/fourthline/cling/model/meta/DeviceIdentity;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lorg/fourthline/cling/model/meta/DeviceIdentity;->udn:Lorg/fourthline/cling/model/types/UDN;

    .line 38
    invoke-virtual {p2}, Lorg/fourthline/cling/model/meta/DeviceIdentity;->getMaxAgeSeconds()Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/fourthline/cling/model/meta/DeviceIdentity;->maxAgeSeconds:Ljava/lang/Integer;

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

    if-eqz p1, :cond_3

    .line 62
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 64
    :cond_1
    check-cast p1, Lorg/fourthline/cling/model/meta/DeviceIdentity;

    .line 66
    iget-object v2, p0, Lorg/fourthline/cling/model/meta/DeviceIdentity;->udn:Lorg/fourthline/cling/model/types/UDN;

    iget-object p1, p1, Lorg/fourthline/cling/model/meta/DeviceIdentity;->udn:Lorg/fourthline/cling/model/types/UDN;

    invoke-virtual {v2, p1}, Lorg/fourthline/cling/model/types/UDN;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v1

    :cond_2
    return v0

    :cond_3
    :goto_0
    return v1
.end method

.method public getMaxAgeSeconds()Ljava/lang/Integer;
    .locals 1

    .line 56
    iget-object v0, p0, Lorg/fourthline/cling/model/meta/DeviceIdentity;->maxAgeSeconds:Ljava/lang/Integer;

    return-object v0
.end method

.method public getUdn()Lorg/fourthline/cling/model/types/UDN;
    .locals 1

    .line 52
    iget-object v0, p0, Lorg/fourthline/cling/model/meta/DeviceIdentity;->udn:Lorg/fourthline/cling/model/types/UDN;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 73
    iget-object v0, p0, Lorg/fourthline/cling/model/meta/DeviceIdentity;->udn:Lorg/fourthline/cling/model/types/UDN;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/types/UDN;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") UDN: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/DeviceIdentity;->getUdn()Lorg/fourthline/cling/model/types/UDN;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public validate()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/fourthline/cling/model/ValidationError;",
            ">;"
        }
    .end annotation

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 85
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/DeviceIdentity;->getUdn()Lorg/fourthline/cling/model/types/UDN;

    move-result-object v1

    if-nez v1, :cond_0

    .line 86
    new-instance v1, Lorg/fourthline/cling/model/ValidationError;

    .line 87
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "major"

    const-string v4, "Device has no UDN"

    invoke-direct {v1, v2, v3, v4}, Lorg/fourthline/cling/model/ValidationError;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0
.end method
