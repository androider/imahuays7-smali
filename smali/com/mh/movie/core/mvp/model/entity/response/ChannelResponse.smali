.class public Lcom/mh/movie/core/mvp/model/entity/response/ChannelResponse;
.super Ljava/lang/Object;
.source "ChannelResponse.java"


# instance fields
.field private audit:Z

.field private desc:Ljava/lang/String;

.field private upAppLog:Z

.field private update:Z

.field private url:Ljava/lang/String;

.field private version:Ljava/lang/String;

.field private weixinKey:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDesc()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/ChannelResponse;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/ChannelResponse;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/ChannelResponse;->version:Ljava/lang/String;

    return-object v0
.end method

.method public getWeixinKey()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/ChannelResponse;->weixinKey:Ljava/lang/String;

    return-object v0
.end method

.method public isAudit()Z
    .locals 1

    .line 21
    iget-boolean v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/ChannelResponse;->audit:Z

    return v0
.end method

.method public isUpAppLog()Z
    .locals 1

    .line 37
    iget-boolean v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/ChannelResponse;->upAppLog:Z

    return v0
.end method

.method public isUpdate()Z
    .registers 2

    .prologue
    .line 12
    const/4 v0, 0x0

    return v0
.end method

.method public setAudit(Z)V
    .locals 0

    .line 25
    iput-boolean p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/ChannelResponse;->audit:Z

    return-void
.end method

.method public setDesc(Ljava/lang/String;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/ChannelResponse;->desc:Ljava/lang/String;

    return-void
.end method

.method public setUpAppLog(Z)V
    .locals 0

    .line 41
    iput-boolean p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/ChannelResponse;->upAppLog:Z

    return-void
.end method

.method public setUpdate(Z)V
    .locals 0

    .line 33
    iput-boolean p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/ChannelResponse;->update:Z

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/ChannelResponse;->url:Ljava/lang/String;

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/ChannelResponse;->version:Ljava/lang/String;

    return-void
.end method

.method public setWeixinKey(Ljava/lang/String;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/ChannelResponse;->weixinKey:Ljava/lang/String;

    return-void
.end method
