.class public Lorg/fourthline/cling/support/renderingcontrol/lastchange/ChannelMute;
.super Ljava/lang/Object;
.source "ChannelMute.java"


# instance fields
.field protected channel:Lorg/fourthline/cling/support/model/Channel;

.field protected mute:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Lorg/fourthline/cling/support/model/Channel;Ljava/lang/Boolean;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lorg/fourthline/cling/support/renderingcontrol/lastchange/ChannelMute;->channel:Lorg/fourthline/cling/support/model/Channel;

    .line 30
    iput-object p2, p0, Lorg/fourthline/cling/support/renderingcontrol/lastchange/ChannelMute;->mute:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public getChannel()Lorg/fourthline/cling/support/model/Channel;
    .locals 1

    .line 34
    iget-object v0, p0, Lorg/fourthline/cling/support/renderingcontrol/lastchange/ChannelMute;->channel:Lorg/fourthline/cling/support/model/Channel;

    return-object v0
.end method

.method public getMute()Ljava/lang/Boolean;
    .locals 1

    .line 38
    iget-object v0, p0, Lorg/fourthline/cling/support/renderingcontrol/lastchange/ChannelMute;->mute:Ljava/lang/Boolean;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Mute: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/fourthline/cling/support/renderingcontrol/lastchange/ChannelMute;->getMute()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/fourthline/cling/support/renderingcontrol/lastchange/ChannelMute;->getChannel()Lorg/fourthline/cling/support/model/Channel;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
