.class public Lorg/fourthline/cling/support/model/container/StorageFolder;
.super Lorg/fourthline/cling/support/model/container/Container;
.source "StorageFolder.java"


# static fields
.field public static final CLASS:Lorg/fourthline/cling/support/model/DIDLObject$Class;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 25
    new-instance v0, Lorg/fourthline/cling/support/model/DIDLObject$Class;

    const-string v1, "object.container.storageFolder"

    invoke-direct {v0, v1}, Lorg/fourthline/cling/support/model/DIDLObject$Class;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/fourthline/cling/support/model/container/StorageFolder;->CLASS:Lorg/fourthline/cling/support/model/DIDLObject$Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Lorg/fourthline/cling/support/model/container/Container;-><init>()V

    .line 28
    sget-object v0, Lorg/fourthline/cling/support/model/container/StorageFolder;->CLASS:Lorg/fourthline/cling/support/model/DIDLObject$Class;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/container/StorageFolder;->setClazz(Lorg/fourthline/cling/support/model/DIDLObject$Class;)Lorg/fourthline/cling/support/model/DIDLObject;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;)V
    .locals 7

    .line 42
    sget-object v5, Lorg/fourthline/cling/support/model/container/StorageFolder;->CLASS:Lorg/fourthline/cling/support/model/DIDLObject$Class;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/fourthline/cling/support/model/container/Container;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/fourthline/cling/support/model/DIDLObject$Class;Ljava/lang/Integer;)V

    if-eqz p6, :cond_0

    .line 44
    invoke-virtual {p0, p6}, Lorg/fourthline/cling/support/model/container/StorageFolder;->setStorageUsed(Ljava/lang/Long;)Lorg/fourthline/cling/support/model/container/StorageFolder;

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/fourthline/cling/support/model/container/Container;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;)V
    .locals 7

    .line 37
    invoke-virtual {p2}, Lorg/fourthline/cling/support/model/container/Container;->getId()Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lorg/fourthline/cling/support/model/container/StorageFolder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;)V

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/support/model/container/Container;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lorg/fourthline/cling/support/model/container/Container;-><init>(Lorg/fourthline/cling/support/model/container/Container;)V

    return-void
.end method


# virtual methods
.method public getStorageUsed()Ljava/lang/Long;
    .locals 1

    .line 48
    const-class v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$STORAGE_USED;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/container/StorageFolder;->getFirstPropertyValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    return-object v0
.end method

.method public setStorageUsed(Ljava/lang/Long;)Lorg/fourthline/cling/support/model/container/StorageFolder;
    .locals 1

    .line 52
    new-instance v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$STORAGE_USED;

    invoke-direct {v0, p1}, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$STORAGE_USED;-><init>(Ljava/lang/Long;)V

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/container/StorageFolder;->replaceFirstProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    return-object p0
.end method
