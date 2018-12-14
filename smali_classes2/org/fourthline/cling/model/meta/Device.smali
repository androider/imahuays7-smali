.class public abstract Lorg/fourthline/cling/model/meta/Device;
.super Ljava/lang/Object;
.source "Device.java"

# interfaces
.implements Lorg/fourthline/cling/model/Validatable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<DI:",
        "Lorg/fourthline/cling/model/meta/DeviceIdentity;",
        "D:",
        "Lorg/fourthline/cling/model/meta/Device;",
        "S:",
        "Lorg/fourthline/cling/model/meta/Service;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/fourthline/cling/model/Validatable;"
    }
.end annotation


# static fields
.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field private final details:Lorg/fourthline/cling/model/meta/DeviceDetails;

.field protected final embeddedDevices:[Lorg/fourthline/cling/model/meta/Device;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TD;"
        }
    .end annotation
.end field

.field private final icons:[Lorg/fourthline/cling/model/meta/Icon;

.field private final identity:Lorg/fourthline/cling/model/meta/DeviceIdentity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TDI;"
        }
    .end annotation
.end field

.field private parentDevice:Lorg/fourthline/cling/model/meta/Device;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TD;"
        }
    .end annotation
.end field

.field protected final services:[Lorg/fourthline/cling/model/meta/Service;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TS;"
        }
    .end annotation
.end field

.field private final type:Lorg/fourthline/cling/model/types/DeviceType;

.field private final version:Lorg/fourthline/cling/model/meta/UDAVersion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    const-class v0, Lorg/fourthline/cling/model/meta/Device;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/fourthline/cling/model/meta/Device;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/meta/DeviceIdentity;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TDI;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/model/ValidationException;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 60
    invoke-direct/range {v0 .. v6}, Lorg/fourthline/cling/model/meta/Device;-><init>(Lorg/fourthline/cling/model/meta/DeviceIdentity;Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/meta/DeviceDetails;[Lorg/fourthline/cling/model/meta/Icon;[Lorg/fourthline/cling/model/meta/Service;[Lorg/fourthline/cling/model/meta/Device;)V

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/meta/DeviceIdentity;Lorg/fourthline/cling/model/meta/UDAVersion;Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/meta/DeviceDetails;[Lorg/fourthline/cling/model/meta/Icon;[Lorg/fourthline/cling/model/meta/Service;[Lorg/fourthline/cling/model/meta/Device;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TDI;",
            "Lorg/fourthline/cling/model/meta/UDAVersion;",
            "Lorg/fourthline/cling/model/types/DeviceType;",
            "Lorg/fourthline/cling/model/meta/DeviceDetails;",
            "[",
            "Lorg/fourthline/cling/model/meta/Icon;",
            "[TS;[TD;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/model/ValidationException;
        }
    .end annotation

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lorg/fourthline/cling/model/meta/Device;->identity:Lorg/fourthline/cling/model/meta/DeviceIdentity;

    if-nez p2, :cond_0

    .line 77
    new-instance p2, Lorg/fourthline/cling/model/meta/UDAVersion;

    invoke-direct {p2}, Lorg/fourthline/cling/model/meta/UDAVersion;-><init>()V

    :cond_0
    iput-object p2, p0, Lorg/fourthline/cling/model/meta/Device;->version:Lorg/fourthline/cling/model/meta/UDAVersion;

    .line 78
    iput-object p3, p0, Lorg/fourthline/cling/model/meta/Device;->type:Lorg/fourthline/cling/model/types/DeviceType;

    .line 79
    iput-object p4, p0, Lorg/fourthline/cling/model/meta/Device;->details:Lorg/fourthline/cling/model/meta/DeviceDetails;

    .line 84
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 p2, 0x0

    if-eqz p5, :cond_3

    .line 86
    array-length p3, p5

    const/4 p4, 0x0

    :goto_0
    if-ge p4, p3, :cond_3

    aget-object v0, p5, p4

    if-eqz v0, :cond_2

    .line 88
    invoke-virtual {v0, p0}, Lorg/fourthline/cling/model/meta/Icon;->setDevice(Lorg/fourthline/cling/model/meta/Device;)V

    .line 89
    invoke-virtual {v0}, Lorg/fourthline/cling/model/meta/Icon;->validate()Ljava/util/List;

    move-result-object v1

    .line 90
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 91
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 93
    :cond_1
    sget-object v2, Lorg/fourthline/cling/model/meta/Device;->log:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Discarding invalid \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\': "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    :cond_2
    :goto_1
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 98
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    new-array p3, p3, [Lorg/fourthline/cling/model/meta/Icon;

    invoke-interface {p1, p3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/fourthline/cling/model/meta/Icon;

    iput-object p1, p0, Lorg/fourthline/cling/model/meta/Device;->icons:[Lorg/fourthline/cling/model/meta/Icon;

    const/4 p1, 0x1

    if-eqz p6, :cond_5

    .line 102
    array-length p3, p6

    const/4 p4, 0x0

    const/4 p5, 0x1

    :goto_2
    if-ge p4, p3, :cond_6

    aget-object v0, p6, p4

    if-eqz v0, :cond_4

    .line 105
    invoke-virtual {v0, p0}, Lorg/fourthline/cling/model/meta/Service;->setDevice(Lorg/fourthline/cling/model/meta/Device;)V

    const/4 p5, 0x0

    :cond_4
    add-int/lit8 p4, p4, 0x1

    goto :goto_2

    :cond_5
    const/4 p5, 0x1

    :cond_6
    const/4 p3, 0x0

    if-eqz p6, :cond_7

    if-eqz p5, :cond_8

    :cond_7
    move-object p6, p3

    .line 109
    :cond_8
    iput-object p6, p0, Lorg/fourthline/cling/model/meta/Device;->services:[Lorg/fourthline/cling/model/meta/Service;

    if-eqz p7, :cond_b

    .line 113
    array-length p4, p7

    const/4 p1, 0x0

    const/4 p5, 0x1

    :goto_3
    if-ge p1, p4, :cond_a

    aget-object p6, p7, p1

    if-eqz p6, :cond_9

    .line 116
    invoke-virtual {p6, p0}, Lorg/fourthline/cling/model/meta/Device;->setParentDevice(Lorg/fourthline/cling/model/meta/Device;)V

    const/4 p5, 0x0

    :cond_9
    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_a
    move p1, p5

    :cond_b
    if-eqz p7, :cond_d

    if-eqz p1, :cond_c

    goto :goto_4

    :cond_c
    move-object p3, p7

    .line 120
    :cond_d
    :goto_4
    iput-object p3, p0, Lorg/fourthline/cling/model/meta/Device;->embeddedDevices:[Lorg/fourthline/cling/model/meta/Device;

    .line 122
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/Device;->validate()Ljava/util/List;

    move-result-object p1

    .line 123
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_f

    .line 124
    sget-object p2, Lorg/fourthline/cling/model/meta/Device;->log:Ljava/util/logging/Logger;

    sget-object p3, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {p2, p3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result p2

    if-eqz p2, :cond_e

    .line 125
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_e

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/fourthline/cling/model/ValidationError;

    .line 126
    sget-object p4, Lorg/fourthline/cling/model/meta/Device;->log:Ljava/util/logging/Logger;

    invoke-virtual {p3}, Lorg/fourthline/cling/model/ValidationError;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p3}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    goto :goto_5

    .line 129
    :cond_e
    new-instance p2, Lorg/fourthline/cling/model/ValidationException;

    const-string p3, "Validation of device graph failed, call getErrors() on exception"

    invoke-direct {p2, p3, p1}, Lorg/fourthline/cling/model/ValidationException;-><init>(Ljava/lang/String;Ljava/util/List;)V

    throw p2

    :cond_f
    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/meta/DeviceIdentity;Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/meta/DeviceDetails;[Lorg/fourthline/cling/model/meta/Icon;[Lorg/fourthline/cling/model/meta/Service;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TDI;",
            "Lorg/fourthline/cling/model/types/DeviceType;",
            "Lorg/fourthline/cling/model/meta/DeviceDetails;",
            "[",
            "Lorg/fourthline/cling/model/meta/Icon;",
            "[TS;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/model/ValidationException;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 65
    invoke-direct/range {v0 .. v7}, Lorg/fourthline/cling/model/meta/Device;-><init>(Lorg/fourthline/cling/model/meta/DeviceIdentity;Lorg/fourthline/cling/model/meta/UDAVersion;Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/meta/DeviceDetails;[Lorg/fourthline/cling/model/meta/Icon;[Lorg/fourthline/cling/model/meta/Service;[Lorg/fourthline/cling/model/meta/Device;)V

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/meta/DeviceIdentity;Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/meta/DeviceDetails;[Lorg/fourthline/cling/model/meta/Icon;[Lorg/fourthline/cling/model/meta/Service;[Lorg/fourthline/cling/model/meta/Device;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TDI;",
            "Lorg/fourthline/cling/model/types/DeviceType;",
            "Lorg/fourthline/cling/model/meta/DeviceDetails;",
            "[",
            "Lorg/fourthline/cling/model/meta/Icon;",
            "[TS;[TD;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/model/ValidationException;
        }
    .end annotation

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    .line 70
    invoke-direct/range {v0 .. v7}, Lorg/fourthline/cling/model/meta/Device;-><init>(Lorg/fourthline/cling/model/meta/DeviceIdentity;Lorg/fourthline/cling/model/meta/UDAVersion;Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/meta/DeviceDetails;[Lorg/fourthline/cling/model/meta/Icon;[Lorg/fourthline/cling/model/meta/Service;[Lorg/fourthline/cling/model/meta/Device;)V

    return-void
.end method

.method private isMatch(Lorg/fourthline/cling/model/meta/Service;Lorg/fourthline/cling/model/types/ServiceType;Lorg/fourthline/cling/model/types/ServiceId;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    .line 317
    invoke-virtual {p1}, Lorg/fourthline/cling/model/meta/Service;->getServiceType()Lorg/fourthline/cling/model/types/ServiceType;

    move-result-object v2

    invoke-virtual {v2, p2}, Lorg/fourthline/cling/model/types/ServiceType;->implementsVersion(Lorg/fourthline/cling/model/types/ServiceType;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p2, 0x1

    :goto_1
    if-eqz p3, :cond_3

    .line 318
    invoke-virtual {p1}, Lorg/fourthline/cling/model/meta/Service;->getServiceId()Lorg/fourthline/cling/model/types/ServiceId;

    move-result-object p1

    invoke-virtual {p1, p3}, Lorg/fourthline/cling/model/types/ServiceId;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 p1, 0x1

    :goto_3
    if-eqz p2, :cond_4

    if-eqz p1, :cond_4

    goto :goto_4

    :cond_4
    const/4 v0, 0x0

    :goto_4
    return v0
.end method


# virtual methods
.method public abstract discoverResources(Lorg/fourthline/cling/model/Namespace;)[Lorg/fourthline/cling/model/resource/Resource;
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 419
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 421
    :cond_1
    check-cast p1, Lorg/fourthline/cling/model/meta/Device;

    .line 423
    iget-object v2, p0, Lorg/fourthline/cling/model/meta/Device;->identity:Lorg/fourthline/cling/model/meta/DeviceIdentity;

    iget-object p1, p1, Lorg/fourthline/cling/model/meta/Device;->identity:Lorg/fourthline/cling/model/meta/DeviceIdentity;

    invoke-virtual {v2, p1}, Lorg/fourthline/cling/model/meta/DeviceIdentity;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v1

    :cond_2
    return v0

    :cond_3
    :goto_0
    return v1
.end method

.method protected find(Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/meta/Device;)Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fourthline/cling/model/types/DeviceType;",
            "TD;)",
            "Ljava/util/Collection<",
            "TD;>;"
        }
    .end annotation

    .line 253
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 255
    invoke-virtual {p2}, Lorg/fourthline/cling/model/meta/Device;->getType()Lorg/fourthline/cling/model/types/DeviceType;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Lorg/fourthline/cling/model/meta/Device;->getType()Lorg/fourthline/cling/model/types/DeviceType;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/fourthline/cling/model/types/DeviceType;->implementsVersion(Lorg/fourthline/cling/model/types/DeviceType;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 256
    invoke-interface {v0, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 258
    :cond_0
    invoke-virtual {p2}, Lorg/fourthline/cling/model/meta/Device;->hasEmbeddedDevices()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 259
    invoke-virtual {p2}, Lorg/fourthline/cling/model/meta/Device;->getEmbeddedDevices()[Lorg/fourthline/cling/model/meta/Device;

    move-result-object p2

    check-cast p2, [Lorg/fourthline/cling/model/meta/Device;

    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p2, v2

    .line 260
    invoke-virtual {p0, p1, v3}, Lorg/fourthline/cling/model/meta/Device;->find(Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/meta/Device;)Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method protected find(Lorg/fourthline/cling/model/types/ServiceType;Lorg/fourthline/cling/model/meta/Device;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fourthline/cling/model/types/ServiceType;",
            "TD;)",
            "Ljava/util/Collection<",
            "TD;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 267
    invoke-virtual {p0, p1, v0, p2}, Lorg/fourthline/cling/model/meta/Device;->findServices(Lorg/fourthline/cling/model/types/ServiceType;Lorg/fourthline/cling/model/types/ServiceId;Lorg/fourthline/cling/model/meta/Device;)Ljava/util/Collection;

    move-result-object p1

    .line 268
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    .line 269
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/meta/Service;

    .line 270
    invoke-virtual {v0}, Lorg/fourthline/cling/model/meta/Service;->getDevice()Lorg/fourthline/cling/model/meta/Device;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object p2
.end method

.method protected find(Lorg/fourthline/cling/model/types/UDN;Lorg/fourthline/cling/model/meta/Device;)Lorg/fourthline/cling/model/meta/Device;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fourthline/cling/model/types/UDN;",
            "TD;)TD;"
        }
    .end annotation

    .line 227
    invoke-virtual {p2}, Lorg/fourthline/cling/model/meta/Device;->getIdentity()Lorg/fourthline/cling/model/meta/DeviceIdentity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lorg/fourthline/cling/model/meta/Device;->getIdentity()Lorg/fourthline/cling/model/meta/DeviceIdentity;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fourthline/cling/model/meta/DeviceIdentity;->getUdn()Lorg/fourthline/cling/model/types/UDN;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 228
    invoke-virtual {p2}, Lorg/fourthline/cling/model/meta/Device;->getIdentity()Lorg/fourthline/cling/model/meta/DeviceIdentity;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fourthline/cling/model/meta/DeviceIdentity;->getUdn()Lorg/fourthline/cling/model/types/UDN;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/fourthline/cling/model/types/UDN;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p2

    .line 230
    :cond_0
    invoke-virtual {p2}, Lorg/fourthline/cling/model/meta/Device;->hasEmbeddedDevices()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 231
    invoke-virtual {p2}, Lorg/fourthline/cling/model/meta/Device;->getEmbeddedDevices()[Lorg/fourthline/cling/model/meta/Device;

    move-result-object p2

    check-cast p2, [Lorg/fourthline/cling/model/meta/Device;

    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p2, v1

    .line 233
    invoke-virtual {p0, p1, v2}, Lorg/fourthline/cling/model/meta/Device;->find(Lorg/fourthline/cling/model/types/UDN;Lorg/fourthline/cling/model/meta/Device;)Lorg/fourthline/cling/model/meta/Device;

    move-result-object v2

    if-eqz v2, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public abstract findDevice(Lorg/fourthline/cling/model/types/UDN;)Lorg/fourthline/cling/model/meta/Device;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fourthline/cling/model/types/UDN;",
            ")TD;"
        }
    .end annotation
.end method

.method public findDevices(Lorg/fourthline/cling/model/types/DeviceType;)[Lorg/fourthline/cling/model/meta/Device;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fourthline/cling/model/types/DeviceType;",
            ")[TD;"
        }
    .end annotation

    .line 197
    invoke-virtual {p0, p1, p0}, Lorg/fourthline/cling/model/meta/Device;->find(Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/meta/Device;)Ljava/util/Collection;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/fourthline/cling/model/meta/Device;->toDeviceArray(Ljava/util/Collection;)[Lorg/fourthline/cling/model/meta/Device;

    move-result-object p1

    return-object p1
.end method

.method public findDevices(Lorg/fourthline/cling/model/types/ServiceType;)[Lorg/fourthline/cling/model/meta/Device;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fourthline/cling/model/types/ServiceType;",
            ")[TD;"
        }
    .end annotation

    .line 201
    invoke-virtual {p0, p1, p0}, Lorg/fourthline/cling/model/meta/Device;->find(Lorg/fourthline/cling/model/types/ServiceType;Lorg/fourthline/cling/model/meta/Device;)Ljava/util/Collection;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/fourthline/cling/model/meta/Device;->toDeviceArray(Ljava/util/Collection;)[Lorg/fourthline/cling/model/meta/Device;

    move-result-object p1

    return-object p1
.end method

.method protected findEmbeddedDevices(Lorg/fourthline/cling/model/meta/Device;)Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)",
            "Ljava/util/Collection<",
            "TD;>;"
        }
    .end annotation

    .line 240
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 241
    invoke-virtual {p1}, Lorg/fourthline/cling/model/meta/Device;->isRoot()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lorg/fourthline/cling/model/meta/Device;->getIdentity()Lorg/fourthline/cling/model/meta/DeviceIdentity;

    move-result-object v1

    invoke-virtual {v1}, Lorg/fourthline/cling/model/meta/DeviceIdentity;->getUdn()Lorg/fourthline/cling/model/types/UDN;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 242
    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 244
    :cond_0
    invoke-virtual {p1}, Lorg/fourthline/cling/model/meta/Device;->hasEmbeddedDevices()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 245
    invoke-virtual {p1}, Lorg/fourthline/cling/model/meta/Device;->getEmbeddedDevices()[Lorg/fourthline/cling/model/meta/Device;

    move-result-object p1

    check-cast p1, [Lorg/fourthline/cling/model/meta/Device;

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    .line 246
    invoke-virtual {p0, v3}, Lorg/fourthline/cling/model/meta/Device;->findEmbeddedDevices(Lorg/fourthline/cling/model/meta/Device;)Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public findEmbeddedDevices()[Lorg/fourthline/cling/model/meta/Device;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TD;"
        }
    .end annotation

    .line 193
    invoke-virtual {p0, p0}, Lorg/fourthline/cling/model/meta/Device;->findEmbeddedDevices(Lorg/fourthline/cling/model/meta/Device;)Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/model/meta/Device;->toDeviceArray(Ljava/util/Collection;)[Lorg/fourthline/cling/model/meta/Device;

    move-result-object v0

    return-object v0
.end method

.method public findIcons()[Lorg/fourthline/cling/model/meta/Icon;
    .locals 6

    .line 205
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 206
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/Device;->hasIcons()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 207
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/Device;->getIcons()[Lorg/fourthline/cling/model/meta/Icon;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 209
    :cond_0
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/Device;->findEmbeddedDevices()[Lorg/fourthline/cling/model/meta/Device;

    move-result-object v1

    .line 210
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 211
    invoke-virtual {v4}, Lorg/fourthline/cling/model/meta/Device;->hasIcons()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 212
    invoke-virtual {v4}, Lorg/fourthline/cling/model/meta/Device;->getIcons()[Lorg/fourthline/cling/model/meta/Icon;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 215
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lorg/fourthline/cling/model/meta/Icon;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/fourthline/cling/model/meta/Icon;

    return-object v0
.end method

.method public findService(Lorg/fourthline/cling/model/types/ServiceId;)Lorg/fourthline/cling/model/meta/Service;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fourthline/cling/model/types/ServiceId;",
            ")TS;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 298
    invoke-virtual {p0, v0, p1, p0}, Lorg/fourthline/cling/model/meta/Device;->findServices(Lorg/fourthline/cling/model/types/ServiceType;Lorg/fourthline/cling/model/types/ServiceId;Lorg/fourthline/cling/model/meta/Device;)Ljava/util/Collection;

    move-result-object p1

    .line 299
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lorg/fourthline/cling/model/meta/Service;

    :cond_0
    return-object v0
.end method

.method public findService(Lorg/fourthline/cling/model/types/ServiceType;)Lorg/fourthline/cling/model/meta/Service;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fourthline/cling/model/types/ServiceType;",
            ")TS;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 303
    invoke-virtual {p0, p1, v0, p0}, Lorg/fourthline/cling/model/meta/Device;->findServices(Lorg/fourthline/cling/model/types/ServiceType;Lorg/fourthline/cling/model/types/ServiceId;Lorg/fourthline/cling/model/meta/Device;)Ljava/util/Collection;

    move-result-object p1

    .line 304
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lorg/fourthline/cling/model/meta/Service;

    :cond_0
    return-object v0
.end method

.method public findServiceTypes()[Lorg/fourthline/cling/model/types/ServiceType;
    .locals 3

    const/4 v0, 0x0

    .line 308
    invoke-virtual {p0, v0, v0, p0}, Lorg/fourthline/cling/model/meta/Device;->findServices(Lorg/fourthline/cling/model/types/ServiceType;Lorg/fourthline/cling/model/types/ServiceId;Lorg/fourthline/cling/model/meta/Device;)Ljava/util/Collection;

    move-result-object v0

    .line 309
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 310
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/fourthline/cling/model/meta/Service;

    .line 311
    invoke-virtual {v2}, Lorg/fourthline/cling/model/meta/Service;->getServiceType()Lorg/fourthline/cling/model/types/ServiceType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 313
    :cond_0
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Lorg/fourthline/cling/model/types/ServiceType;

    invoke-interface {v1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/fourthline/cling/model/types/ServiceType;

    return-object v0
.end method

.method protected findServices(Lorg/fourthline/cling/model/types/ServiceType;Lorg/fourthline/cling/model/types/ServiceId;Lorg/fourthline/cling/model/meta/Device;)Ljava/util/Collection;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fourthline/cling/model/types/ServiceType;",
            "Lorg/fourthline/cling/model/types/ServiceId;",
            "TD;)",
            "Ljava/util/Collection<",
            "TS;>;"
        }
    .end annotation

    .line 276
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 277
    invoke-virtual {p3}, Lorg/fourthline/cling/model/meta/Device;->hasServices()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 278
    invoke-virtual {p3}, Lorg/fourthline/cling/model/meta/Device;->getServices()[Lorg/fourthline/cling/model/meta/Service;

    move-result-object v1

    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v1, v4

    .line 279
    invoke-direct {p0, v5, p1, p2}, Lorg/fourthline/cling/model/meta/Device;->isMatch(Lorg/fourthline/cling/model/meta/Service;Lorg/fourthline/cling/model/types/ServiceType;Lorg/fourthline/cling/model/types/ServiceId;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 280
    invoke-interface {v0, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 283
    :cond_1
    invoke-virtual {p0, p3}, Lorg/fourthline/cling/model/meta/Device;->findEmbeddedDevices(Lorg/fourthline/cling/model/meta/Device;)Ljava/util/Collection;

    move-result-object p3

    if-eqz p3, :cond_4

    .line 285
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_2
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/fourthline/cling/model/meta/Device;

    .line 286
    invoke-virtual {v1}, Lorg/fourthline/cling/model/meta/Device;->hasServices()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 287
    invoke-virtual {v1}, Lorg/fourthline/cling/model/meta/Device;->getServices()[Lorg/fourthline/cling/model/meta/Service;

    move-result-object v1

    array-length v3, v1

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_2

    aget-object v5, v1, v4

    .line 288
    invoke-direct {p0, v5, p1, p2}, Lorg/fourthline/cling/model/meta/Device;->isMatch(Lorg/fourthline/cling/model/meta/Service;Lorg/fourthline/cling/model/types/ServiceType;Lorg/fourthline/cling/model/types/ServiceId;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 289
    invoke-interface {v0, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    return-object v0
.end method

.method public findServices()[Lorg/fourthline/cling/model/meta/Service;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TS;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 219
    invoke-virtual {p0, v0, v0, p0}, Lorg/fourthline/cling/model/meta/Device;->findServices(Lorg/fourthline/cling/model/types/ServiceType;Lorg/fourthline/cling/model/types/ServiceId;Lorg/fourthline/cling/model/meta/Device;)Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/model/meta/Device;->toServiceArray(Ljava/util/Collection;)[Lorg/fourthline/cling/model/meta/Service;

    move-result-object v0

    return-object v0
.end method

.method public findServices(Lorg/fourthline/cling/model/types/ServiceType;)[Lorg/fourthline/cling/model/meta/Service;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fourthline/cling/model/types/ServiceType;",
            ")[TS;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 223
    invoke-virtual {p0, p1, v0, p0}, Lorg/fourthline/cling/model/meta/Device;->findServices(Lorg/fourthline/cling/model/types/ServiceType;Lorg/fourthline/cling/model/types/ServiceId;Lorg/fourthline/cling/model/meta/Device;)Ljava/util/Collection;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/fourthline/cling/model/meta/Device;->toServiceArray(Ljava/util/Collection;)[Lorg/fourthline/cling/model/meta/Service;

    move-result-object p1

    return-object p1
.end method

.method public getDetails()Lorg/fourthline/cling/model/meta/DeviceDetails;
    .locals 1

    .line 146
    iget-object v0, p0, Lorg/fourthline/cling/model/meta/Device;->details:Lorg/fourthline/cling/model/meta/DeviceDetails;

    return-object v0
.end method

.method public getDetails(Lorg/fourthline/cling/model/profile/RemoteClientInfo;)Lorg/fourthline/cling/model/meta/DeviceDetails;
    .locals 0

    .line 150
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/Device;->getDetails()Lorg/fourthline/cling/model/meta/DeviceDetails;

    move-result-object p1

    return-object p1
.end method

.method public getDisplayString()Ljava/lang/String;
    .locals 5

    .line 337
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/Device;->getDetails()Lorg/fourthline/cling/model/meta/DeviceDetails;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/Device;->getDetails()Lorg/fourthline/cling/model/meta/DeviceDetails;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fourthline/cling/model/meta/DeviceDetails;->getModelDetails()Lorg/fourthline/cling/model/meta/ModelDetails;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 340
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/Device;->getDetails()Lorg/fourthline/cling/model/meta/DeviceDetails;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fourthline/cling/model/meta/DeviceDetails;->getModelDetails()Lorg/fourthline/cling/model/meta/ModelDetails;

    move-result-object v0

    .line 341
    invoke-virtual {v0}, Lorg/fourthline/cling/model/meta/ModelDetails;->getModelName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 342
    invoke-virtual {v0}, Lorg/fourthline/cling/model/meta/ModelDetails;->getModelNumber()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/fourthline/cling/model/meta/ModelDetails;->getModelName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lorg/fourthline/cling/model/meta/ModelDetails;->getModelNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 343
    invoke-virtual {v0}, Lorg/fourthline/cling/model/meta/ModelDetails;->getModelName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0}, Lorg/fourthline/cling/model/meta/ModelDetails;->getModelName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0}, Lorg/fourthline/cling/model/meta/ModelDetails;->getModelNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 344
    :cond_0
    invoke-virtual {v0}, Lorg/fourthline/cling/model/meta/ModelDetails;->getModelName()Ljava/lang/String;

    move-result-object v1

    :cond_1
    :goto_0
    if-eqz v1, :cond_3

    .line 349
    invoke-virtual {v0}, Lorg/fourthline/cling/model/meta/ModelDetails;->getModelNumber()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lorg/fourthline/cling/model/meta/ModelDetails;->getModelNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 350
    invoke-virtual {v0}, Lorg/fourthline/cling/model/meta/ModelDetails;->getModelNumber()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    const-string v0, ""

    goto :goto_1

    .line 353
    :cond_3
    invoke-virtual {v0}, Lorg/fourthline/cling/model/meta/ModelDetails;->getModelNumber()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    move-object v0, v1

    .line 357
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 359
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/Device;->getDetails()Lorg/fourthline/cling/model/meta/DeviceDetails;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/Device;->getDetails()Lorg/fourthline/cling/model/meta/DeviceDetails;

    move-result-object v3

    invoke-virtual {v3}, Lorg/fourthline/cling/model/meta/DeviceDetails;->getManufacturerDetails()Lorg/fourthline/cling/model/meta/ManufacturerDetails;

    move-result-object v3

    if-eqz v3, :cond_7

    if-eqz v1, :cond_6

    .line 362
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/Device;->getDetails()Lorg/fourthline/cling/model/meta/DeviceDetails;

    move-result-object v3

    invoke-virtual {v3}, Lorg/fourthline/cling/model/meta/DeviceDetails;->getManufacturerDetails()Lorg/fourthline/cling/model/meta/ManufacturerDetails;

    move-result-object v3

    invoke-virtual {v3}, Lorg/fourthline/cling/model/meta/ManufacturerDetails;->getManufacturer()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 363
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/Device;->getDetails()Lorg/fourthline/cling/model/meta/DeviceDetails;

    move-result-object v3

    invoke-virtual {v3}, Lorg/fourthline/cling/model/meta/DeviceDetails;->getManufacturerDetails()Lorg/fourthline/cling/model/meta/ManufacturerDetails;

    move-result-object v3

    invoke-virtual {v3}, Lorg/fourthline/cling/model/meta/ManufacturerDetails;->getManufacturer()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 364
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/Device;->getDetails()Lorg/fourthline/cling/model/meta/DeviceDetails;

    move-result-object v3

    invoke-virtual {v3}, Lorg/fourthline/cling/model/meta/DeviceDetails;->getManufacturerDetails()Lorg/fourthline/cling/model/meta/ManufacturerDetails;

    move-result-object v3

    invoke-virtual {v3}, Lorg/fourthline/cling/model/meta/ManufacturerDetails;->getManufacturer()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 365
    :cond_5
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 368
    :cond_6
    :goto_2
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/Device;->getDetails()Lorg/fourthline/cling/model/meta/DeviceDetails;

    move-result-object v3

    invoke-virtual {v3}, Lorg/fourthline/cling/model/meta/DeviceDetails;->getManufacturerDetails()Lorg/fourthline/cling/model/meta/ManufacturerDetails;

    move-result-object v3

    invoke-virtual {v3}, Lorg/fourthline/cling/model/meta/ManufacturerDetails;->getManufacturer()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 369
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/Device;->getDetails()Lorg/fourthline/cling/model/meta/DeviceDetails;

    move-result-object v3

    invoke-virtual {v3}, Lorg/fourthline/cling/model/meta/DeviceDetails;->getManufacturerDetails()Lorg/fourthline/cling/model/meta/ManufacturerDetails;

    move-result-object v3

    invoke-virtual {v3}, Lorg/fourthline/cling/model/meta/ManufacturerDetails;->getManufacturer()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    if-eqz v1, :cond_8

    .line 373
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_8

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_8
    const-string v1, ""

    :goto_3
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_9

    .line 374
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_9
    const-string v0, ""

    :goto_4
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract getEmbeddedDevices()[Lorg/fourthline/cling/model/meta/Device;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TD;"
        }
    .end annotation
.end method

.method public getIcons()[Lorg/fourthline/cling/model/meta/Icon;
    .locals 1

    .line 154
    iget-object v0, p0, Lorg/fourthline/cling/model/meta/Device;->icons:[Lorg/fourthline/cling/model/meta/Icon;

    return-object v0
.end method

.method public getIdentity()Lorg/fourthline/cling/model/meta/DeviceIdentity;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TDI;"
        }
    .end annotation

    .line 134
    iget-object v0, p0, Lorg/fourthline/cling/model/meta/Device;->identity:Lorg/fourthline/cling/model/meta/DeviceIdentity;

    return-object v0
.end method

.method public getParentDevice()Lorg/fourthline/cling/model/meta/Device;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TD;"
        }
    .end annotation

    .line 171
    iget-object v0, p0, Lorg/fourthline/cling/model/meta/Device;->parentDevice:Lorg/fourthline/cling/model/meta/Device;

    return-object v0
.end method

.method public abstract getRoot()Lorg/fourthline/cling/model/meta/Device;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TD;"
        }
    .end annotation
.end method

.method public abstract getServices()[Lorg/fourthline/cling/model/meta/Service;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TS;"
        }
    .end annotation
.end method

.method public getType()Lorg/fourthline/cling/model/types/DeviceType;
    .locals 1

    .line 142
    iget-object v0, p0, Lorg/fourthline/cling/model/meta/Device;->type:Lorg/fourthline/cling/model/types/DeviceType;

    return-object v0
.end method

.method public getVersion()Lorg/fourthline/cling/model/meta/UDAVersion;
    .locals 1

    .line 138
    iget-object v0, p0, Lorg/fourthline/cling/model/meta/Device;->version:Lorg/fourthline/cling/model/meta/UDAVersion;

    return-object v0
.end method

.method public hasEmbeddedDevices()Z
    .locals 1

    .line 167
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/Device;->getEmbeddedDevices()[Lorg/fourthline/cling/model/meta/Device;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/Device;->getEmbeddedDevices()[Lorg/fourthline/cling/model/meta/Device;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasIcons()Z
    .locals 1

    .line 158
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/Device;->getIcons()[Lorg/fourthline/cling/model/meta/Icon;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/Device;->getIcons()[Lorg/fourthline/cling/model/meta/Icon;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasServices()Z
    .locals 1

    .line 162
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/Device;->getServices()[Lorg/fourthline/cling/model/meta/Service;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/Device;->getServices()[Lorg/fourthline/cling/model/meta/Service;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 430
    iget-object v0, p0, Lorg/fourthline/cling/model/meta/Device;->identity:Lorg/fourthline/cling/model/meta/DeviceIdentity;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/meta/DeviceIdentity;->hashCode()I

    move-result v0

    return v0
.end method

.method public isFullyHydrated()Z
    .locals 5

    .line 323
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/Device;->findServices()[Lorg/fourthline/cling/model/meta/Service;

    move-result-object v0

    .line 324
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 325
    invoke-virtual {v4}, Lorg/fourthline/cling/model/meta/Service;->hasStateVariables()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public isRoot()Z
    .locals 1

    .line 181
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/Device;->getParentDevice()Lorg/fourthline/cling/model/meta/Device;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public abstract newInstance(Lorg/fourthline/cling/model/types/UDN;Lorg/fourthline/cling/model/meta/UDAVersion;Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/meta/DeviceDetails;[Lorg/fourthline/cling/model/meta/Icon;[Lorg/fourthline/cling/model/meta/Service;Ljava/util/List;)Lorg/fourthline/cling/model/meta/Device;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fourthline/cling/model/types/UDN;",
            "Lorg/fourthline/cling/model/meta/UDAVersion;",
            "Lorg/fourthline/cling/model/types/DeviceType;",
            "Lorg/fourthline/cling/model/meta/DeviceDetails;",
            "[",
            "Lorg/fourthline/cling/model/meta/Icon;",
            "[TS;",
            "Ljava/util/List<",
            "TD;>;)TD;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/model/ValidationException;
        }
    .end annotation
.end method

.method public abstract newInstance(Lorg/fourthline/cling/model/types/ServiceType;Lorg/fourthline/cling/model/types/ServiceId;Ljava/net/URI;Ljava/net/URI;Ljava/net/URI;[Lorg/fourthline/cling/model/meta/Action;[Lorg/fourthline/cling/model/meta/StateVariable;)Lorg/fourthline/cling/model/meta/Service;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fourthline/cling/model/types/ServiceType;",
            "Lorg/fourthline/cling/model/types/ServiceId;",
            "Ljava/net/URI;",
            "Ljava/net/URI;",
            "Ljava/net/URI;",
            "[",
            "Lorg/fourthline/cling/model/meta/Action<",
            "TS;>;[",
            "Lorg/fourthline/cling/model/meta/StateVariable<",
            "TS;>;)TS;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/model/ValidationException;
        }
    .end annotation
.end method

.method public abstract newServiceArray(I)[Lorg/fourthline/cling/model/meta/Service;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[TS;"
        }
    .end annotation
.end method

.method setParentDevice(Lorg/fourthline/cling/model/meta/Device;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    .line 175
    iget-object v0, p0, Lorg/fourthline/cling/model/meta/Device;->parentDevice:Lorg/fourthline/cling/model/meta/Device;

    if-eqz v0, :cond_0

    .line 176
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Final value has been set already, model is immutable"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 177
    :cond_0
    iput-object p1, p0, Lorg/fourthline/cling/model/meta/Device;->parentDevice:Lorg/fourthline/cling/model/meta/Device;

    return-void
.end method

.method public abstract toDeviceArray(Ljava/util/Collection;)[Lorg/fourthline/cling/model/meta/Device;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TD;>;)[TD;"
        }
    .end annotation
.end method

.method public abstract toServiceArray(Ljava/util/Collection;)[Lorg/fourthline/cling/model/meta/Service;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TS;>;)[TS;"
        }
    .end annotation
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 450
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") Identity: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/Device;->getIdentity()Lorg/fourthline/cling/model/meta/DeviceIdentity;

    move-result-object v1

    invoke-virtual {v1}, Lorg/fourthline/cling/model/meta/DeviceIdentity;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", Root: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/Device;->isRoot()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public validate()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/fourthline/cling/model/ValidationError;",
            ">;"
        }
    .end annotation

    .line 379
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 381
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/Device;->getType()Lorg/fourthline/cling/model/types/DeviceType;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 388
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/Device;->getVersion()Lorg/fourthline/cling/model/meta/UDAVersion;

    move-result-object v1

    invoke-virtual {v1}, Lorg/fourthline/cling/model/meta/UDAVersion;->validate()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 390
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/Device;->getIdentity()Lorg/fourthline/cling/model/meta/DeviceIdentity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 391
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/Device;->getIdentity()Lorg/fourthline/cling/model/meta/DeviceIdentity;

    move-result-object v1

    invoke-virtual {v1}, Lorg/fourthline/cling/model/meta/DeviceIdentity;->validate()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 394
    :cond_0
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/Device;->getDetails()Lorg/fourthline/cling/model/meta/DeviceDetails;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 395
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/Device;->getDetails()Lorg/fourthline/cling/model/meta/DeviceDetails;

    move-result-object v1

    invoke-virtual {v1}, Lorg/fourthline/cling/model/meta/DeviceDetails;->validate()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 398
    :cond_1
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/Device;->hasServices()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 399
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/Device;->getServices()[Lorg/fourthline/cling/model/meta/Service;

    move-result-object v1

    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, v1, v4

    if-eqz v5, :cond_2

    .line 401
    invoke-virtual {v5}, Lorg/fourthline/cling/model/meta/Service;->validate()Ljava/util/List;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 405
    :cond_3
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/Device;->hasEmbeddedDevices()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 406
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/Device;->getEmbeddedDevices()[Lorg/fourthline/cling/model/meta/Device;

    move-result-object v1

    array-length v3, v1

    :goto_1
    if-ge v2, v3, :cond_5

    aget-object v4, v1, v2

    if-eqz v4, :cond_4

    .line 408
    invoke-virtual {v4}, Lorg/fourthline/cling/model/meta/Device;->validate()Ljava/util/List;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    return-object v0
.end method
