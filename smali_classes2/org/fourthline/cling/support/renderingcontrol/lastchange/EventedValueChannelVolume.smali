.class public Lorg/fourthline/cling/support/renderingcontrol/lastchange/EventedValueChannelVolume;
.super Lorg/fourthline/cling/support/lastchange/EventedValue;
.source "EventedValueChannelVolume.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/fourthline/cling/support/lastchange/EventedValue<",
        "Lorg/fourthline/cling/support/renderingcontrol/lastchange/ChannelVolume;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/fourthline/cling/support/renderingcontrol/lastchange/ChannelVolume;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lorg/fourthline/cling/support/lastchange/EventedValue;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>([Ljava/util/Map$Entry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 38
    invoke-direct {p0, p1}, Lorg/fourthline/cling/support/lastchange/EventedValue;-><init>([Ljava/util/Map$Entry;)V

    return-void
.end method


# virtual methods
.method public getAttributes()[Ljava/util/Map$Entry;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    .line 58
    new-array v0, v0, [Ljava/util/Map$Entry;

    new-instance v1, Lorg/fourthline/cling/support/shared/AbstractMap$SimpleEntry;

    const-string v2, "val"

    new-instance v3, Lorg/fourthline/cling/model/types/UnsignedIntegerTwoBytesDatatype;

    invoke-direct {v3}, Lorg/fourthline/cling/model/types/UnsignedIntegerTwoBytesDatatype;-><init>()V

    new-instance v4, Lorg/fourthline/cling/model/types/UnsignedIntegerTwoBytes;

    .line 62
    invoke-virtual {p0}, Lorg/fourthline/cling/support/renderingcontrol/lastchange/EventedValueChannelVolume;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/fourthline/cling/support/renderingcontrol/lastchange/ChannelVolume;

    invoke-virtual {v5}, Lorg/fourthline/cling/support/renderingcontrol/lastchange/ChannelVolume;->getVolume()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-long v5, v5

    invoke-direct {v4, v5, v6}, Lorg/fourthline/cling/model/types/UnsignedIntegerTwoBytes;-><init>(J)V

    .line 61
    invoke-virtual {v3, v4}, Lorg/fourthline/cling/model/types/UnsignedIntegerTwoBytesDatatype;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/fourthline/cling/support/shared/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lorg/fourthline/cling/support/shared/AbstractMap$SimpleEntry;

    const-string v2, "channel"

    .line 67
    invoke-virtual {p0}, Lorg/fourthline/cling/support/renderingcontrol/lastchange/EventedValueChannelVolume;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/fourthline/cling/support/renderingcontrol/lastchange/ChannelVolume;

    invoke-virtual {v3}, Lorg/fourthline/cling/support/renderingcontrol/lastchange/ChannelVolume;->getChannel()Lorg/fourthline/cling/support/model/Channel;

    move-result-object v3

    invoke-virtual {v3}, Lorg/fourthline/cling/support/model/Channel;->name()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/fourthline/cling/support/shared/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method protected getDatatype()Lorg/fourthline/cling/model/types/Datatype;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 74
    invoke-virtual {p0}, Lorg/fourthline/cling/support/renderingcontrol/lastchange/EventedValueChannelVolume;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/renderingcontrol/lastchange/ChannelVolume;

    invoke-virtual {v0}, Lorg/fourthline/cling/support/renderingcontrol/lastchange/ChannelVolume;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic valueOf([Ljava/util/Map$Entry;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/model/types/InvalidValueException;
        }
    .end annotation

    .line 31
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/support/renderingcontrol/lastchange/EventedValueChannelVolume;->valueOf([Ljava/util/Map$Entry;)Lorg/fourthline/cling/support/renderingcontrol/lastchange/ChannelVolume;

    move-result-object p1

    return-object p1
.end method

.method protected valueOf([Ljava/util/Map$Entry;)Lorg/fourthline/cling/support/renderingcontrol/lastchange/ChannelVolume;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/fourthline/cling/support/renderingcontrol/lastchange/ChannelVolume;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/model/types/InvalidValueException;
        }
    .end annotation

    .line 45
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v1

    move-object v4, v3

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v5, p1, v2

    .line 46
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "channel"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 47
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lorg/fourthline/cling/support/model/Channel;->valueOf(Ljava/lang/String;)Lorg/fourthline/cling/support/model/Channel;

    move-result-object v3

    .line 48
    :cond_0
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "val"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 49
    new-instance v4, Lorg/fourthline/cling/model/types/UnsignedIntegerTwoBytesDatatype;

    invoke-direct {v4}, Lorg/fourthline/cling/model/types/UnsignedIntegerTwoBytesDatatype;-><init>()V

    .line 50
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Lorg/fourthline/cling/model/types/UnsignedIntegerTwoBytesDatatype;->valueOf(Ljava/lang/String;)Lorg/fourthline/cling/model/types/UnsignedIntegerTwoBytes;

    move-result-object v4

    .line 51
    invoke-virtual {v4}, Lorg/fourthline/cling/model/types/UnsignedIntegerTwoBytes;->getValue()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->intValue()I

    move-result v4

    .line 49
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    if-eqz v3, :cond_3

    if-eqz v4, :cond_3

    .line 53
    new-instance v1, Lorg/fourthline/cling/support/renderingcontrol/lastchange/ChannelVolume;

    invoke-direct {v1, v3, v4}, Lorg/fourthline/cling/support/renderingcontrol/lastchange/ChannelVolume;-><init>(Lorg/fourthline/cling/support/model/Channel;Ljava/lang/Integer;)V

    :cond_3
    return-object v1
.end method
