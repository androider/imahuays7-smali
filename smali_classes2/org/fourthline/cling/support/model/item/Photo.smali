.class public Lorg/fourthline/cling/support/model/item/Photo;
.super Lorg/fourthline/cling/support/model/item/ImageItem;
.source "Photo.java"


# static fields
.field public static final CLASS:Lorg/fourthline/cling/support/model/DIDLObject$Class;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 28
    new-instance v0, Lorg/fourthline/cling/support/model/DIDLObject$Class;

    const-string v1, "object.item.imageItem.photo"

    invoke-direct {v0, v1}, Lorg/fourthline/cling/support/model/DIDLObject$Class;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/fourthline/cling/support/model/item/Photo;->CLASS:Lorg/fourthline/cling/support/model/DIDLObject$Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Lorg/fourthline/cling/support/model/item/ImageItem;-><init>()V

    .line 31
    sget-object v0, Lorg/fourthline/cling/support/model/item/Photo;->CLASS:Lorg/fourthline/cling/support/model/DIDLObject$Class;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/item/Photo;->setClazz(Lorg/fourthline/cling/support/model/DIDLObject$Class;)Lorg/fourthline/cling/support/model/DIDLObject;

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/fourthline/cling/support/model/Res;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p6

    .line 43
    invoke-direct/range {v0 .. v5}, Lorg/fourthline/cling/support/model/item/ImageItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/fourthline/cling/support/model/Res;)V

    .line 44
    sget-object p1, Lorg/fourthline/cling/support/model/item/Photo;->CLASS:Lorg/fourthline/cling/support/model/DIDLObject$Class;

    invoke-virtual {p0, p1}, Lorg/fourthline/cling/support/model/item/Photo;->setClazz(Lorg/fourthline/cling/support/model/DIDLObject$Class;)Lorg/fourthline/cling/support/model/DIDLObject;

    if-eqz p5, :cond_0

    .line 46
    invoke-virtual {p0, p5}, Lorg/fourthline/cling/support/model/item/Photo;->setAlbum(Ljava/lang/String;)Lorg/fourthline/cling/support/model/item/Photo;

    :cond_0
    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;Lorg/fourthline/cling/support/model/container/Container;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/fourthline/cling/support/model/Res;)V
    .locals 7

    .line 39
    invoke-virtual {p2}, Lorg/fourthline/cling/support/model/container/Container;->getId()Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lorg/fourthline/cling/support/model/item/Photo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/fourthline/cling/support/model/Res;)V

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/support/model/item/Item;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lorg/fourthline/cling/support/model/item/ImageItem;-><init>(Lorg/fourthline/cling/support/model/item/Item;)V

    return-void
.end method


# virtual methods
.method public getAlbum()Ljava/lang/String;
    .locals 1

    .line 50
    const-class v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$ALBUM;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/item/Photo;->getFirstPropertyValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public setAlbum(Ljava/lang/String;)Lorg/fourthline/cling/support/model/item/Photo;
    .locals 1

    .line 54
    new-instance v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$ALBUM;

    invoke-direct {v0, p1}, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$ALBUM;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/item/Photo;->replaceFirstProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    return-object p0
.end method
