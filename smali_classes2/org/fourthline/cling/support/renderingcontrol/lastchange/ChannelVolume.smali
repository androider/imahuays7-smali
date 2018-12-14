.class public Lorg/fourthline/cling/support/renderingcontrol/lastchange/ChannelVolume;
.super Ljava/lang/Object;
.source "ChannelVolume.java"


# instance fields
.field protected channel:Lorg/fourthline/cling/support/model/Channel;

.field protected volume:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Lorg/fourthline/cling/support/model/Channel;Ljava/lang/Integer;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lorg/fourthline/cling/support/renderingcontrol/lastchange/ChannelVolume;->channel:Lorg/fourthline/cling/support/model/Channel;

    .line 30
    iput-object p2, p0, Lorg/fourthline/cling/support/renderingcontrol/lastchange/ChannelVolume;->volume:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public getChannel()Lorg/fourthline/cling/support/model/Channel;
    .locals 1

    .line 34
    iget-object v0, p0, Lorg/fourthline/cling/support/renderingcontrol/lastchange/ChannelVolume;->channel:Lorg/fourthline/cling/support/model/Channel;

    return-object v0
.end method

.method public getVolume()Ljava/lang/Integer;
    .locals 1

    .line 38
    iget-object v0, p0, Lorg/fourthline/cling/support/renderingcontrol/lastchange/ChannelVolume;->volume:Ljava/lang/Integer;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Volume: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/fourthline/cling/support/renderingcontrol/lastchange/ChannelVolume;->getVolume()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/fourthline/cling/support/renderingcontrol/lastchange/ChannelVolume;->getChannel()Lorg/fourthline/cling/support/model/Channel;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
