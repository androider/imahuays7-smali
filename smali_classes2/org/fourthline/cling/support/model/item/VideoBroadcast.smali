.class public Lorg/fourthline/cling/support/model/item/VideoBroadcast;
.super Lorg/fourthline/cling/support/model/item/VideoItem;
.source "VideoBroadcast.java"


# static fields
.field public static final CLASS:Lorg/fourthline/cling/support/model/DIDLObject$Class;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 30
    new-instance v0, Lorg/fourthline/cling/support/model/DIDLObject$Class;

    const-string v1, "object.item.videoItem.videoBroadcast"

    invoke-direct {v0, v1}, Lorg/fourthline/cling/support/model/DIDLObject$Class;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/fourthline/cling/support/model/item/VideoBroadcast;->CLASS:Lorg/fourthline/cling/support/model/DIDLObject$Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Lorg/fourthline/cling/support/model/item/VideoItem;-><init>()V

    .line 33
    sget-object v0, Lorg/fourthline/cling/support/model/item/VideoBroadcast;->CLASS:Lorg/fourthline/cling/support/model/DIDLObject$Class;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/item/VideoBroadcast;->setClazz(Lorg/fourthline/cling/support/model/DIDLObject$Class;)Lorg/fourthline/cling/support/model/DIDLObject;

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/fourthline/cling/support/model/Res;)V
    .locals 0

    .line 45
    invoke-direct/range {p0 .. p5}, Lorg/fourthline/cling/support/model/item/VideoItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/fourthline/cling/support/model/Res;)V

    .line 46
    sget-object p1, Lorg/fourthline/cling/support/model/item/VideoBroadcast;->CLASS:Lorg/fourthline/cling/support/model/DIDLObject$Class;

    invoke-virtual {p0, p1}, Lorg/fourthline/cling/support/model/item/VideoBroadcast;->setClazz(Lorg/fourthline/cling/support/model/DIDLObject$Class;)Lorg/fourthline/cling/support/model/DIDLObject;

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;Lorg/fourthline/cling/support/model/container/Container;Ljava/lang/String;Ljava/lang/String;[Lorg/fourthline/cling/support/model/Res;)V
    .locals 6

    .line 41
    invoke-virtual {p2}, Lorg/fourthline/cling/support/model/container/Container;->getId()Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/fourthline/cling/support/model/item/VideoBroadcast;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/fourthline/cling/support/model/Res;)V

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/support/model/item/Item;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lorg/fourthline/cling/support/model/item/VideoItem;-><init>(Lorg/fourthline/cling/support/model/item/Item;)V

    return-void
.end method


# virtual methods
.method public getChannelNr()Ljava/lang/Integer;
    .locals 1

    .line 68
    const-class v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$CHANNEL_NR;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/item/VideoBroadcast;->getFirstPropertyValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public getIcon()Ljava/net/URI;
    .locals 1

    .line 50
    const-class v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$ICON;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/item/VideoBroadcast;->getFirstPropertyValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URI;

    return-object v0
.end method

.method public getRegion()Ljava/lang/String;
    .locals 1

    .line 59
    const-class v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$REGION;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/item/VideoBroadcast;->getFirstPropertyValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public setChannelNr(Ljava/lang/Integer;)Lorg/fourthline/cling/support/model/item/VideoBroadcast;
    .locals 1

    .line 72
    new-instance v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$CHANNEL_NR;

    invoke-direct {v0, p1}, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$CHANNEL_NR;-><init>(Ljava/lang/Integer;)V

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/item/VideoBroadcast;->replaceFirstProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    return-object p0
.end method

.method public setIcon(Ljava/net/URI;)Lorg/fourthline/cling/support/model/item/VideoBroadcast;
    .locals 1

    .line 54
    new-instance v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$ICON;

    invoke-direct {v0, p1}, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$ICON;-><init>(Ljava/net/URI;)V

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/item/VideoBroadcast;->replaceFirstProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    return-object p0
.end method

.method public setRegion(Ljava/lang/String;)Lorg/fourthline/cling/support/model/item/VideoBroadcast;
    .locals 1

    .line 63
    new-instance v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$REGION;

    invoke-direct {v0, p1}, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$REGION;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/item/VideoBroadcast;->replaceFirstProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    return-object p0
.end method
