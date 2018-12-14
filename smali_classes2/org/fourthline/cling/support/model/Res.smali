.class public Lorg/fourthline/cling/support/model/Res;
.super Ljava/lang/Object;
.source "Res.java"


# instance fields
.field protected bitrate:Ljava/lang/Long;

.field protected bitsPerSample:Ljava/lang/Long;

.field protected colorDepth:Ljava/lang/Long;

.field protected duration:Ljava/lang/String;

.field protected importUri:Ljava/net/URI;

.field protected nrAudioChannels:Ljava/lang/Long;

.field protected protection:Ljava/lang/String;

.field protected protocolInfo:Lorg/fourthline/cling/support/model/ProtocolInfo;

.field protected resolution:Ljava/lang/String;

.field protected sampleFrequency:Ljava/lang/Long;

.field protected size:Ljava/lang/Long;

.field protected value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)V
    .locals 6

    .line 45
    new-instance v1, Lorg/fourthline/cling/support/model/ProtocolInfo;

    sget-object v0, Lorg/fourthline/cling/support/model/Protocol;->HTTP_GET:Lorg/fourthline/cling/support/model/Protocol;

    const-string v2, "*"

    const-string v3, "*"

    invoke-direct {v1, v0, v2, p1, v3}, Lorg/fourthline/cling/support/model/ProtocolInfo;-><init>(Lorg/fourthline/cling/support/model/Protocol;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/fourthline/cling/support/model/Res;-><init>(Lorg/fourthline/cling/support/model/ProtocolInfo;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/net/URI;Lorg/fourthline/cling/support/model/ProtocolInfo;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lorg/fourthline/cling/support/model/Res;->importUri:Ljava/net/URI;

    .line 72
    iput-object p2, p0, Lorg/fourthline/cling/support/model/Res;->protocolInfo:Lorg/fourthline/cling/support/model/ProtocolInfo;

    .line 73
    iput-object p3, p0, Lorg/fourthline/cling/support/model/Res;->size:Ljava/lang/Long;

    .line 74
    iput-object p4, p0, Lorg/fourthline/cling/support/model/Res;->duration:Ljava/lang/String;

    .line 75
    iput-object p5, p0, Lorg/fourthline/cling/support/model/Res;->bitrate:Ljava/lang/Long;

    .line 76
    iput-object p6, p0, Lorg/fourthline/cling/support/model/Res;->sampleFrequency:Ljava/lang/Long;

    .line 77
    iput-object p7, p0, Lorg/fourthline/cling/support/model/Res;->bitsPerSample:Ljava/lang/Long;

    .line 78
    iput-object p8, p0, Lorg/fourthline/cling/support/model/Res;->nrAudioChannels:Ljava/lang/Long;

    .line 79
    iput-object p9, p0, Lorg/fourthline/cling/support/model/Res;->colorDepth:Ljava/lang/Long;

    .line 80
    iput-object p10, p0, Lorg/fourthline/cling/support/model/Res;->protection:Ljava/lang/String;

    .line 81
    iput-object p11, p0, Lorg/fourthline/cling/support/model/Res;->resolution:Ljava/lang/String;

    .line 82
    iput-object p12, p0, Lorg/fourthline/cling/support/model/Res;->value:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/support/model/ProtocolInfo;Ljava/lang/Long;Ljava/lang/String;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lorg/fourthline/cling/support/model/Res;->protocolInfo:Lorg/fourthline/cling/support/model/ProtocolInfo;

    .line 58
    iput-object p2, p0, Lorg/fourthline/cling/support/model/Res;->size:Ljava/lang/Long;

    .line 59
    iput-object p3, p0, Lorg/fourthline/cling/support/model/Res;->value:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/support/model/ProtocolInfo;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lorg/fourthline/cling/support/model/Res;->protocolInfo:Lorg/fourthline/cling/support/model/ProtocolInfo;

    .line 64
    iput-object p2, p0, Lorg/fourthline/cling/support/model/Res;->size:Ljava/lang/Long;

    .line 65
    iput-object p3, p0, Lorg/fourthline/cling/support/model/Res;->duration:Ljava/lang/String;

    .line 66
    iput-object p4, p0, Lorg/fourthline/cling/support/model/Res;->bitrate:Ljava/lang/Long;

    .line 67
    iput-object p5, p0, Lorg/fourthline/cling/support/model/Res;->value:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/seamless/util/MimeType;Ljava/lang/Long;Ljava/lang/String;)V
    .locals 1

    .line 53
    new-instance v0, Lorg/fourthline/cling/support/model/ProtocolInfo;

    invoke-direct {v0, p1}, Lorg/fourthline/cling/support/model/ProtocolInfo;-><init>(Lorg/seamless/util/MimeType;)V

    invoke-direct {p0, v0, p2, p3}, Lorg/fourthline/cling/support/model/Res;-><init>(Lorg/fourthline/cling/support/model/ProtocolInfo;Ljava/lang/Long;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/seamless/util/MimeType;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)V
    .locals 6

    .line 49
    new-instance v1, Lorg/fourthline/cling/support/model/ProtocolInfo;

    invoke-direct {v1, p1}, Lorg/fourthline/cling/support/model/ProtocolInfo;-><init>(Lorg/seamless/util/MimeType;)V

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/fourthline/cling/support/model/Res;-><init>(Lorg/fourthline/cling/support/model/ProtocolInfo;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getBitrate()Ljava/lang/Long;
    .locals 1

    .line 118
    iget-object v0, p0, Lorg/fourthline/cling/support/model/Res;->bitrate:Ljava/lang/Long;

    return-object v0
.end method

.method public getBitsPerSample()Ljava/lang/Long;
    .locals 1

    .line 134
    iget-object v0, p0, Lorg/fourthline/cling/support/model/Res;->bitsPerSample:Ljava/lang/Long;

    return-object v0
.end method

.method public getColorDepth()Ljava/lang/Long;
    .locals 1

    .line 150
    iget-object v0, p0, Lorg/fourthline/cling/support/model/Res;->colorDepth:Ljava/lang/Long;

    return-object v0
.end method

.method public getDuration()Ljava/lang/String;
    .locals 1

    .line 110
    iget-object v0, p0, Lorg/fourthline/cling/support/model/Res;->duration:Ljava/lang/String;

    return-object v0
.end method

.method public getImportUri()Ljava/net/URI;
    .locals 1

    .line 86
    iget-object v0, p0, Lorg/fourthline/cling/support/model/Res;->importUri:Ljava/net/URI;

    return-object v0
.end method

.method public getNrAudioChannels()Ljava/lang/Long;
    .locals 1

    .line 142
    iget-object v0, p0, Lorg/fourthline/cling/support/model/Res;->nrAudioChannels:Ljava/lang/Long;

    return-object v0
.end method

.method public getProtection()Ljava/lang/String;
    .locals 1

    .line 158
    iget-object v0, p0, Lorg/fourthline/cling/support/model/Res;->protection:Ljava/lang/String;

    return-object v0
.end method

.method public getProtocolInfo()Lorg/fourthline/cling/support/model/ProtocolInfo;
    .locals 1

    .line 94
    iget-object v0, p0, Lorg/fourthline/cling/support/model/Res;->protocolInfo:Lorg/fourthline/cling/support/model/ProtocolInfo;

    return-object v0
.end method

.method public getResolution()Ljava/lang/String;
    .locals 1

    .line 166
    iget-object v0, p0, Lorg/fourthline/cling/support/model/Res;->resolution:Ljava/lang/String;

    return-object v0
.end method

.method public getResolutionX()I
    .locals 3

    .line 178
    invoke-virtual {p0}, Lorg/fourthline/cling/support/model/Res;->getResolution()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/fourthline/cling/support/model/Res;->getResolution()Ljava/lang/String;

    move-result-object v0

    const-string v2, "x"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 179
    invoke-virtual {p0}, Lorg/fourthline/cling/support/model/Res;->getResolution()Ljava/lang/String;

    move-result-object v0

    const-string v2, "x"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :cond_0
    return v1
.end method

.method public getResolutionY()I
    .locals 2

    .line 184
    invoke-virtual {p0}, Lorg/fourthline/cling/support/model/Res;->getResolution()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/fourthline/cling/support/model/Res;->getResolution()Ljava/lang/String;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 185
    invoke-virtual {p0}, Lorg/fourthline/cling/support/model/Res;->getResolution()Ljava/lang/String;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getSampleFrequency()Ljava/lang/Long;
    .locals 1

    .line 126
    iget-object v0, p0, Lorg/fourthline/cling/support/model/Res;->sampleFrequency:Ljava/lang/Long;

    return-object v0
.end method

.method public getSize()Ljava/lang/Long;
    .locals 1

    .line 102
    iget-object v0, p0, Lorg/fourthline/cling/support/model/Res;->size:Ljava/lang/Long;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 190
    iget-object v0, p0, Lorg/fourthline/cling/support/model/Res;->value:Ljava/lang/String;

    return-object v0
.end method

.method public setBitrate(Ljava/lang/Long;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lorg/fourthline/cling/support/model/Res;->bitrate:Ljava/lang/Long;

    return-void
.end method

.method public setBitsPerSample(Ljava/lang/Long;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lorg/fourthline/cling/support/model/Res;->bitsPerSample:Ljava/lang/Long;

    return-void
.end method

.method public setColorDepth(Ljava/lang/Long;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lorg/fourthline/cling/support/model/Res;->colorDepth:Ljava/lang/Long;

    return-void
.end method

.method public setDuration(Ljava/lang/String;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lorg/fourthline/cling/support/model/Res;->duration:Ljava/lang/String;

    return-void
.end method

.method public setImportUri(Ljava/net/URI;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lorg/fourthline/cling/support/model/Res;->importUri:Ljava/net/URI;

    return-void
.end method

.method public setNrAudioChannels(Ljava/lang/Long;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lorg/fourthline/cling/support/model/Res;->nrAudioChannels:Ljava/lang/Long;

    return-void
.end method

.method public setProtection(Ljava/lang/String;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lorg/fourthline/cling/support/model/Res;->protection:Ljava/lang/String;

    return-void
.end method

.method public setProtocolInfo(Lorg/fourthline/cling/support/model/ProtocolInfo;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lorg/fourthline/cling/support/model/Res;->protocolInfo:Lorg/fourthline/cling/support/model/ProtocolInfo;

    return-void
.end method

.method public setResolution(II)V
    .locals 1

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "x"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/fourthline/cling/support/model/Res;->resolution:Ljava/lang/String;

    return-void
.end method

.method public setResolution(Ljava/lang/String;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lorg/fourthline/cling/support/model/Res;->resolution:Ljava/lang/String;

    return-void
.end method

.method public setSampleFrequency(Ljava/lang/Long;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lorg/fourthline/cling/support/model/Res;->sampleFrequency:Ljava/lang/Long;

    return-void
.end method

.method public setSize(Ljava/lang/Long;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lorg/fourthline/cling/support/model/Res;->size:Ljava/lang/Long;

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    .line 194
    iput-object p1, p0, Lorg/fourthline/cling/support/model/Res;->value:Ljava/lang/String;

    return-void
.end method
