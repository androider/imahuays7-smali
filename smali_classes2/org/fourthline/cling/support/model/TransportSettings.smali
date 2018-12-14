.class public Lorg/fourthline/cling/support/model/TransportSettings;
.super Ljava/lang/Object;
.source "TransportSettings.java"


# instance fields
.field private playMode:Lorg/fourthline/cling/support/model/PlayMode;

.field private recQualityMode:Lorg/fourthline/cling/support/model/RecordQualityMode;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    sget-object v0, Lorg/fourthline/cling/support/model/PlayMode;->NORMAL:Lorg/fourthline/cling/support/model/PlayMode;

    iput-object v0, p0, Lorg/fourthline/cling/support/model/TransportSettings;->playMode:Lorg/fourthline/cling/support/model/PlayMode;

    .line 24
    sget-object v0, Lorg/fourthline/cling/support/model/RecordQualityMode;->NOT_IMPLEMENTED:Lorg/fourthline/cling/support/model/RecordQualityMode;

    iput-object v0, p0, Lorg/fourthline/cling/support/model/TransportSettings;->recQualityMode:Lorg/fourthline/cling/support/model/RecordQualityMode;

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/support/model/PlayMode;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    sget-object v0, Lorg/fourthline/cling/support/model/PlayMode;->NORMAL:Lorg/fourthline/cling/support/model/PlayMode;

    iput-object v0, p0, Lorg/fourthline/cling/support/model/TransportSettings;->playMode:Lorg/fourthline/cling/support/model/PlayMode;

    .line 24
    sget-object v0, Lorg/fourthline/cling/support/model/RecordQualityMode;->NOT_IMPLEMENTED:Lorg/fourthline/cling/support/model/RecordQualityMode;

    iput-object v0, p0, Lorg/fourthline/cling/support/model/TransportSettings;->recQualityMode:Lorg/fourthline/cling/support/model/RecordQualityMode;

    .line 30
    iput-object p1, p0, Lorg/fourthline/cling/support/model/TransportSettings;->playMode:Lorg/fourthline/cling/support/model/PlayMode;

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/support/model/PlayMode;Lorg/fourthline/cling/support/model/RecordQualityMode;)V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    sget-object v0, Lorg/fourthline/cling/support/model/PlayMode;->NORMAL:Lorg/fourthline/cling/support/model/PlayMode;

    iput-object v0, p0, Lorg/fourthline/cling/support/model/TransportSettings;->playMode:Lorg/fourthline/cling/support/model/PlayMode;

    .line 24
    sget-object v0, Lorg/fourthline/cling/support/model/RecordQualityMode;->NOT_IMPLEMENTED:Lorg/fourthline/cling/support/model/RecordQualityMode;

    iput-object v0, p0, Lorg/fourthline/cling/support/model/TransportSettings;->recQualityMode:Lorg/fourthline/cling/support/model/RecordQualityMode;

    .line 34
    iput-object p1, p0, Lorg/fourthline/cling/support/model/TransportSettings;->playMode:Lorg/fourthline/cling/support/model/PlayMode;

    .line 35
    iput-object p2, p0, Lorg/fourthline/cling/support/model/TransportSettings;->recQualityMode:Lorg/fourthline/cling/support/model/RecordQualityMode;

    return-void
.end method


# virtual methods
.method public getPlayMode()Lorg/fourthline/cling/support/model/PlayMode;
    .locals 1

    .line 39
    iget-object v0, p0, Lorg/fourthline/cling/support/model/TransportSettings;->playMode:Lorg/fourthline/cling/support/model/PlayMode;

    return-object v0
.end method

.method public getRecQualityMode()Lorg/fourthline/cling/support/model/RecordQualityMode;
    .locals 1

    .line 43
    iget-object v0, p0, Lorg/fourthline/cling/support/model/TransportSettings;->recQualityMode:Lorg/fourthline/cling/support/model/RecordQualityMode;

    return-object v0
.end method
