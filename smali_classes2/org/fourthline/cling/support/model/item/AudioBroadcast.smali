.class public Lorg/fourthline/cling/support/model/item/AudioBroadcast;
.super Lorg/fourthline/cling/support/model/item/AudioItem;
.source "AudioBroadcast.java"


# static fields
.field public static final CLASS:Lorg/fourthline/cling/support/model/DIDLObject$Class;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 27
    new-instance v0, Lorg/fourthline/cling/support/model/DIDLObject$Class;

    const-string v1, "object.item.audioItem.audioBroadcast"

    invoke-direct {v0, v1}, Lorg/fourthline/cling/support/model/DIDLObject$Class;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/fourthline/cling/support/model/item/AudioBroadcast;->CLASS:Lorg/fourthline/cling/support/model/DIDLObject$Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Lorg/fourthline/cling/support/model/item/AudioItem;-><init>()V

    .line 30
    sget-object v0, Lorg/fourthline/cling/support/model/item/AudioBroadcast;->CLASS:Lorg/fourthline/cling/support/model/DIDLObject$Class;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/item/AudioBroadcast;->setClazz(Lorg/fourthline/cling/support/model/DIDLObject$Class;)Lorg/fourthline/cling/support/model/DIDLObject;

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/fourthline/cling/support/model/Res;)V
    .locals 0

    .line 38
    invoke-direct/range {p0 .. p5}, Lorg/fourthline/cling/support/model/item/AudioItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/fourthline/cling/support/model/Res;)V

    .line 39
    sget-object p1, Lorg/fourthline/cling/support/model/item/AudioBroadcast;->CLASS:Lorg/fourthline/cling/support/model/DIDLObject$Class;

    invoke-virtual {p0, p1}, Lorg/fourthline/cling/support/model/item/AudioBroadcast;->setClazz(Lorg/fourthline/cling/support/model/DIDLObject$Class;)Lorg/fourthline/cling/support/model/DIDLObject;

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/support/model/item/Item;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lorg/fourthline/cling/support/model/item/AudioItem;-><init>(Lorg/fourthline/cling/support/model/item/Item;)V

    return-void
.end method


# virtual methods
.method public getChannelNr()Ljava/lang/Integer;
    .locals 1

    .line 79
    const-class v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$CHANNEL_NR;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/item/AudioBroadcast;->getFirstPropertyValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public getRadioBand()Ljava/lang/String;
    .locals 1

    .line 70
    const-class v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$RADIO_BAND;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/item/AudioBroadcast;->getFirstPropertyValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getRadioCallSign()Ljava/lang/String;
    .locals 1

    .line 52
    const-class v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$RADIO_CALL_SIGN;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/item/AudioBroadcast;->getFirstPropertyValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getRadioStationID()Ljava/lang/String;
    .locals 1

    .line 61
    const-class v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$RADIO_STATION_ID;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/item/AudioBroadcast;->getFirstPropertyValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getRegion()Ljava/lang/String;
    .locals 1

    .line 43
    const-class v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$REGION;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/item/AudioBroadcast;->getFirstPropertyValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public setChannelNr(Ljava/lang/Integer;)Lorg/fourthline/cling/support/model/item/AudioBroadcast;
    .locals 1

    .line 83
    new-instance v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$CHANNEL_NR;

    invoke-direct {v0, p1}, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$CHANNEL_NR;-><init>(Ljava/lang/Integer;)V

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/item/AudioBroadcast;->replaceFirstProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    return-object p0
.end method

.method public setRadioBand(Ljava/lang/String;)Lorg/fourthline/cling/support/model/item/AudioBroadcast;
    .locals 1

    .line 74
    new-instance v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$RADIO_BAND;

    invoke-direct {v0, p1}, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$RADIO_BAND;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/item/AudioBroadcast;->replaceFirstProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    return-object p0
.end method

.method public setRadioCallSign(Ljava/lang/String;)Lorg/fourthline/cling/support/model/item/AudioBroadcast;
    .locals 1

    .line 56
    new-instance v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$RADIO_CALL_SIGN;

    invoke-direct {v0, p1}, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$RADIO_CALL_SIGN;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/item/AudioBroadcast;->replaceFirstProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    return-object p0
.end method

.method public setRadioStationID(Ljava/lang/String;)Lorg/fourthline/cling/support/model/item/AudioBroadcast;
    .locals 1

    .line 65
    new-instance v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$RADIO_STATION_ID;

    invoke-direct {v0, p1}, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$RADIO_STATION_ID;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/item/AudioBroadcast;->replaceFirstProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    return-object p0
.end method

.method public setRegion(Ljava/lang/String;)Lorg/fourthline/cling/support/model/item/AudioBroadcast;
    .locals 1

    .line 47
    new-instance v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$REGION;

    invoke-direct {v0, p1}, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$REGION;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/item/AudioBroadcast;->replaceFirstProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    return-object p0
.end method
