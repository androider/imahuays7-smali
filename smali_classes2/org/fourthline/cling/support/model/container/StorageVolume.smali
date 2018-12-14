.class public Lorg/fourthline/cling/support/model/container/StorageVolume;
.super Lorg/fourthline/cling/support/model/container/Container;
.source "StorageVolume.java"


# static fields
.field public static final CLASS:Lorg/fourthline/cling/support/model/DIDLObject$Class;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 27
    new-instance v0, Lorg/fourthline/cling/support/model/DIDLObject$Class;

    const-string v1, "object.container.storageVolume"

    invoke-direct {v0, v1}, Lorg/fourthline/cling/support/model/DIDLObject$Class;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/fourthline/cling/support/model/container/StorageVolume;->CLASS:Lorg/fourthline/cling/support/model/DIDLObject$Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Lorg/fourthline/cling/support/model/container/Container;-><init>()V

    .line 30
    sget-object v0, Lorg/fourthline/cling/support/model/container/StorageVolume;->CLASS:Lorg/fourthline/cling/support/model/DIDLObject$Class;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/container/StorageVolume;->setClazz(Lorg/fourthline/cling/support/model/DIDLObject$Class;)Lorg/fourthline/cling/support/model/DIDLObject;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Lorg/fourthline/cling/support/model/StorageMedium;)V
    .locals 12

    move-object v7, p0

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    .line 44
    sget-object v5, Lorg/fourthline/cling/support/model/container/StorageVolume;->CLASS:Lorg/fourthline/cling/support/model/DIDLObject$Class;

    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/fourthline/cling/support/model/container/Container;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/fourthline/cling/support/model/DIDLObject$Class;Ljava/lang/Integer;)V

    if-eqz v8, :cond_0

    .line 46
    invoke-virtual {v7, v8}, Lorg/fourthline/cling/support/model/container/StorageVolume;->setStorageTotal(Ljava/lang/Long;)Lorg/fourthline/cling/support/model/container/StorageVolume;

    :cond_0
    if-eqz v9, :cond_1

    .line 48
    invoke-virtual {v7, v9}, Lorg/fourthline/cling/support/model/container/StorageVolume;->setStorageUsed(Ljava/lang/Long;)Lorg/fourthline/cling/support/model/container/StorageVolume;

    :cond_1
    if-eqz v10, :cond_2

    .line 50
    invoke-virtual {v7, v10}, Lorg/fourthline/cling/support/model/container/StorageVolume;->setStorageFree(Ljava/lang/Long;)Lorg/fourthline/cling/support/model/container/StorageVolume;

    :cond_2
    if-eqz v11, :cond_3

    .line 52
    invoke-virtual {v7, v11}, Lorg/fourthline/cling/support/model/container/StorageVolume;->setStorageMedium(Lorg/fourthline/cling/support/model/StorageMedium;)Lorg/fourthline/cling/support/model/container/StorageVolume;

    :cond_3
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/fourthline/cling/support/model/container/Container;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Lorg/fourthline/cling/support/model/StorageMedium;)V
    .locals 10

    .line 39
    invoke-virtual {p2}, Lorg/fourthline/cling/support/model/container/Container;->getId()Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Lorg/fourthline/cling/support/model/container/StorageVolume;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Lorg/fourthline/cling/support/model/StorageMedium;)V

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/support/model/container/Container;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lorg/fourthline/cling/support/model/container/Container;-><init>(Lorg/fourthline/cling/support/model/container/Container;)V

    return-void
.end method


# virtual methods
.method public getStorageFree()Ljava/lang/Long;
    .locals 1

    .line 74
    const-class v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$STORAGE_FREE;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/container/StorageVolume;->getFirstPropertyValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    return-object v0
.end method

.method public getStorageMedium()Lorg/fourthline/cling/support/model/StorageMedium;
    .locals 1

    .line 83
    const-class v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$STORAGE_MEDIUM;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/container/StorageVolume;->getFirstPropertyValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/model/StorageMedium;

    return-object v0
.end method

.method public getStorageTotal()Ljava/lang/Long;
    .locals 1

    .line 56
    const-class v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$STORAGE_TOTAL;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/container/StorageVolume;->getFirstPropertyValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    return-object v0
.end method

.method public getStorageUsed()Ljava/lang/Long;
    .locals 1

    .line 65
    const-class v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$STORAGE_USED;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/container/StorageVolume;->getFirstPropertyValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    return-object v0
.end method

.method public setStorageFree(Ljava/lang/Long;)Lorg/fourthline/cling/support/model/container/StorageVolume;
    .locals 1

    .line 78
    new-instance v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$STORAGE_FREE;

    invoke-direct {v0, p1}, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$STORAGE_FREE;-><init>(Ljava/lang/Long;)V

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/container/StorageVolume;->replaceFirstProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    return-object p0
.end method

.method public setStorageMedium(Lorg/fourthline/cling/support/model/StorageMedium;)Lorg/fourthline/cling/support/model/container/StorageVolume;
    .locals 1

    .line 87
    new-instance v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$STORAGE_MEDIUM;

    invoke-direct {v0, p1}, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$STORAGE_MEDIUM;-><init>(Lorg/fourthline/cling/support/model/StorageMedium;)V

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/container/StorageVolume;->replaceFirstProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    return-object p0
.end method

.method public setStorageTotal(Ljava/lang/Long;)Lorg/fourthline/cling/support/model/container/StorageVolume;
    .locals 1

    .line 60
    new-instance v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$STORAGE_TOTAL;

    invoke-direct {v0, p1}, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$STORAGE_TOTAL;-><init>(Ljava/lang/Long;)V

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/container/StorageVolume;->replaceFirstProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    return-object p0
.end method

.method public setStorageUsed(Ljava/lang/Long;)Lorg/fourthline/cling/support/model/container/StorageVolume;
    .locals 1

    .line 69
    new-instance v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$STORAGE_USED;

    invoke-direct {v0, p1}, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$STORAGE_USED;-><init>(Ljava/lang/Long;)V

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/container/StorageVolume;->replaceFirstProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    return-object p0
.end method
