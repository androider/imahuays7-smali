.class public Lorg/fourthline/cling/model/ServiceReference;
.super Ljava/lang/Object;
.source "ServiceReference.java"


# static fields
.field public static final DELIMITER:Ljava/lang/String; = "/"


# instance fields
.field private final serviceId:Lorg/fourthline/cling/model/types/ServiceId;

.field private final udn:Lorg/fourthline/cling/model/types/UDN;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "/"

    .line 44
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 45
    array-length v0, p1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 46
    aget-object v0, p1, v0

    invoke-static {v0}, Lorg/fourthline/cling/model/types/UDN;->valueOf(Ljava/lang/String;)Lorg/fourthline/cling/model/types/UDN;

    move-result-object v0

    iput-object v0, p0, Lorg/fourthline/cling/model/ServiceReference;->udn:Lorg/fourthline/cling/model/types/UDN;

    const/4 v0, 0x1

    .line 47
    aget-object p1, p1, v0

    invoke-static {p1}, Lorg/fourthline/cling/model/types/ServiceId;->valueOf(Ljava/lang/String;)Lorg/fourthline/cling/model/types/ServiceId;

    move-result-object p1

    iput-object p1, p0, Lorg/fourthline/cling/model/ServiceReference;->serviceId:Lorg/fourthline/cling/model/types/ServiceId;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 49
    iput-object p1, p0, Lorg/fourthline/cling/model/ServiceReference;->udn:Lorg/fourthline/cling/model/types/UDN;

    .line 50
    iput-object p1, p0, Lorg/fourthline/cling/model/ServiceReference;->serviceId:Lorg/fourthline/cling/model/types/ServiceId;

    :goto_0
    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/types/UDN;Lorg/fourthline/cling/model/types/ServiceId;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lorg/fourthline/cling/model/ServiceReference;->udn:Lorg/fourthline/cling/model/types/UDN;

    .line 56
    iput-object p2, p0, Lorg/fourthline/cling/model/ServiceReference;->serviceId:Lorg/fourthline/cling/model/types/ServiceId;

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

    if-eqz p1, :cond_4

    .line 70
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 72
    :cond_1
    check-cast p1, Lorg/fourthline/cling/model/ServiceReference;

    .line 74
    iget-object v2, p0, Lorg/fourthline/cling/model/ServiceReference;->serviceId:Lorg/fourthline/cling/model/types/ServiceId;

    iget-object v3, p1, Lorg/fourthline/cling/model/ServiceReference;->serviceId:Lorg/fourthline/cling/model/types/ServiceId;

    invoke-virtual {v2, v3}, Lorg/fourthline/cling/model/types/ServiceId;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 75
    :cond_2
    iget-object v2, p0, Lorg/fourthline/cling/model/ServiceReference;->udn:Lorg/fourthline/cling/model/types/UDN;

    iget-object p1, p1, Lorg/fourthline/cling/model/ServiceReference;->udn:Lorg/fourthline/cling/model/types/UDN;

    invoke-virtual {v2, p1}, Lorg/fourthline/cling/model/types/UDN;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    return v0

    :cond_4
    :goto_0
    return v1
.end method

.method public getServiceId()Lorg/fourthline/cling/model/types/ServiceId;
    .locals 1

    .line 64
    iget-object v0, p0, Lorg/fourthline/cling/model/ServiceReference;->serviceId:Lorg/fourthline/cling/model/types/ServiceId;

    return-object v0
.end method

.method public getUdn()Lorg/fourthline/cling/model/types/UDN;
    .locals 1

    .line 60
    iget-object v0, p0, Lorg/fourthline/cling/model/ServiceReference;->udn:Lorg/fourthline/cling/model/types/UDN;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 82
    iget-object v0, p0, Lorg/fourthline/cling/model/ServiceReference;->udn:Lorg/fourthline/cling/model/types/UDN;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/types/UDN;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 83
    iget-object v1, p0, Lorg/fourthline/cling/model/ServiceReference;->serviceId:Lorg/fourthline/cling/model/types/ServiceId;

    invoke-virtual {v1}, Lorg/fourthline/cling/model/types/ServiceId;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 89
    iget-object v0, p0, Lorg/fourthline/cling/model/ServiceReference;->udn:Lorg/fourthline/cling/model/types/UDN;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/fourthline/cling/model/ServiceReference;->serviceId:Lorg/fourthline/cling/model/types/ServiceId;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/fourthline/cling/model/ServiceReference;->udn:Lorg/fourthline/cling/model/types/UDN;

    invoke-virtual {v1}, Lorg/fourthline/cling/model/types/UDN;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/fourthline/cling/model/ServiceReference;->serviceId:Lorg/fourthline/cling/model/types/ServiceId;

    invoke-virtual {v1}, Lorg/fourthline/cling/model/types/ServiceId;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    :goto_0
    const-string v0, ""

    :goto_1
    return-object v0
.end method
