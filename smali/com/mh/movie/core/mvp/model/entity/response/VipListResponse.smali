.class public Lcom/mh/movie/core/mvp/model/entity/response/VipListResponse;
.super Ljava/lang/Object;
.source "VipListResponse.java"


# instance fields
.field private basePalyNum:I

.field private classifyType:Ljava/lang/String;

.field private code:Ljava/lang/String;

.field private coverHUrl:Ljava/lang/String;

.field private coverTime:I

.field private coverUrl:Ljava/lang/String;

.field private director:Ljava/lang/String;

.field private doubanScore:D

.field private downloadScore:I

.field private episodeState:I

.field private episodeTotalCount:I

.field private episodeUploadCount:I

.field private focus:Ljava/lang/String;

.field private highCoverHUrl:Ljava/lang/String;

.field private highCoverUrl:Ljava/lang/String;

.field private hotPlayNum:Ljava/lang/Object;

.field private id:I

.field private imdbScore:D

.field private intro:Ljava/lang/String;

.field private playCount:I

.field private playScore:I

.field private playTimeLength:I

.field private staring:Ljava/lang/String;

.field private tag:I

.field private tagDTO:Lcom/mh/movie/core/mvp/model/entity/TagDTOBean;

.field private tagName:Ljava/lang/String;

.field private tagSource:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private type:I

.field private videoClassifyList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBasePalyNum()I
    .locals 1

    .line 264
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/VipListResponse;->basePalyNum:I

    return v0
.end method

.method public getClassifyType()Ljava/lang/String;
    .locals 1

    .line 256
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/VipListResponse;->classifyType:Ljava/lang/String;

    return-object v0
.end method

.method public getCode()Ljava/lang/String;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/VipListResponse;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getCoverHUrl()Ljava/lang/String;
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/VipListResponse;->coverHUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getCoverTime()I
    .locals 1

    .line 192
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/VipListResponse;->coverTime:I

    return v0
.end method

.method public getCoverUrl()Ljava/lang/String;
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/VipListResponse;->coverUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getDirector()Ljava/lang/String;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/VipListResponse;->director:Ljava/lang/String;

    return-object v0
.end method

.method public getDoubanScore()D
    .locals 2

    .line 136
    iget-wide v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/VipListResponse;->doubanScore:D

    return-wide v0
.end method

.method public getDownloadScore()I
    .locals 1

    .line 240
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/VipListResponse;->downloadScore:I

    return v0
.end method

.method public getEpisodeState()I
    .locals 1

    .line 160
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/VipListResponse;->episodeState:I

    return v0
.end method

.method public getEpisodeTotalCount()I
    .locals 1

    .line 168
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/VipListResponse;->episodeTotalCount:I

    return v0
.end method

.method public getEpisodeUploadCount()I
    .locals 1

    .line 176
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/VipListResponse;->episodeUploadCount:I

    return v0
.end method

.method public getFocus()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/VipListResponse;->focus:Ljava/lang/String;

    return-object v0
.end method

.method public getHighCoverHUrl()Ljava/lang/String;
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/VipListResponse;->highCoverHUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getHighCoverUrl()Ljava/lang/String;
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/VipListResponse;->highCoverUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getHotPlayNum()Ljava/lang/Object;
    .locals 1

    .line 272
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/VipListResponse;->hotPlayNum:Ljava/lang/Object;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 88
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/VipListResponse;->id:I

    return v0
.end method

.method public getImdbScore()D
    .locals 2

    .line 144
    iget-wide v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/VipListResponse;->imdbScore:D

    return-wide v0
.end method

.method public getIntro()Ljava/lang/String;
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/VipListResponse;->intro:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayCount()I
    .locals 1

    .line 184
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/VipListResponse;->playCount:I

    return v0
.end method

.method public getPlayScore()I
    .locals 1

    .line 232
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/VipListResponse;->playScore:I

    return v0
.end method

.method public getPlayTimeLength()I
    .locals 1

    .line 248
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/VipListResponse;->playTimeLength:I

    return v0
.end method

.method public getStaring()Ljava/lang/String;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/VipListResponse;->staring:Ljava/lang/String;

    return-object v0
.end method

.method public getTag()I
    .locals 1

    .line 280
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/VipListResponse;->tag:I

    return v0
.end method

.method public getTagDTO()Lcom/mh/movie/core/mvp/model/entity/TagDTOBean;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/VipListResponse;->tagDTO:Lcom/mh/movie/core/mvp/model/entity/TagDTOBean;

    return-object v0
.end method

.method public getTagName()Ljava/lang/String;
    .locals 1

    .line 288
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/VipListResponse;->tagName:Ljava/lang/String;

    return-object v0
.end method

.method public getTagSource()Ljava/lang/String;
    .locals 1

    .line 296
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/VipListResponse;->tagSource:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/VipListResponse;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 104
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/VipListResponse;->type:I

    return v0
.end method

.method public getVideoClassifyList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 304
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/VipListResponse;->videoClassifyList:Ljava/util/List;

    return-object v0
.end method

.method public setBasePalyNum(I)V
    .locals 0

    .line 268
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/VipListResponse;->basePalyNum:I

    return-void
.end method

.method public setClassifyType(Ljava/lang/String;)V
    .locals 0

    .line 260
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/VipListResponse;->classifyType:Ljava/lang/String;

    return-void
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/VipListResponse;->code:Ljava/lang/String;

    return-void
.end method

.method public setCoverHUrl(Ljava/lang/String;)V
    .locals 0

    .line 212
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/VipListResponse;->coverHUrl:Ljava/lang/String;

    return-void
.end method

.method public setCoverTime(I)V
    .locals 0

    .line 196
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/VipListResponse;->coverTime:I

    return-void
.end method

.method public setCoverUrl(Ljava/lang/String;)V
    .locals 0

    .line 204
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/VipListResponse;->coverUrl:Ljava/lang/String;

    return-void
.end method

.method public setDirector(Ljava/lang/String;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/VipListResponse;->director:Ljava/lang/String;

    return-void
.end method

.method public setDoubanScore(D)V
    .locals 0

    .line 140
    iput-wide p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/VipListResponse;->doubanScore:D

    return-void
.end method

.method public setDownloadScore(I)V
    .locals 0

    .line 244
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/VipListResponse;->downloadScore:I

    return-void
.end method

.method public setEpisodeState(I)V
    .locals 0

    .line 164
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/VipListResponse;->episodeState:I

    return-void
.end method

.method public setEpisodeTotalCount(I)V
    .locals 0

    .line 172
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/VipListResponse;->episodeTotalCount:I

    return-void
.end method

.method public setEpisodeUploadCount(I)V
    .locals 0

    .line 180
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/VipListResponse;->episodeUploadCount:I

    return-void
.end method

.method public setFocus(Ljava/lang/String;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/VipListResponse;->focus:Ljava/lang/String;

    return-void
.end method

.method public setHighCoverHUrl(Ljava/lang/String;)V
    .locals 0

    .line 228
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/VipListResponse;->highCoverHUrl:Ljava/lang/String;

    return-void
.end method

.method public setHighCoverUrl(Ljava/lang/String;)V
    .locals 0

    .line 220
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/VipListResponse;->highCoverUrl:Ljava/lang/String;

    return-void
.end method

.method public setHotPlayNum(Ljava/lang/Object;)V
    .locals 0

    .line 276
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/VipListResponse;->hotPlayNum:Ljava/lang/Object;

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 92
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/VipListResponse;->id:I

    return-void
.end method

.method public setImdbScore(D)V
    .locals 0

    .line 148
    iput-wide p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/VipListResponse;->imdbScore:D

    return-void
.end method

.method public setIntro(Ljava/lang/String;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/VipListResponse;->intro:Ljava/lang/String;

    return-void
.end method

.method public setPlayCount(I)V
    .locals 0

    .line 188
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/VipListResponse;->playCount:I

    return-void
.end method

.method public setPlayScore(I)V
    .locals 0

    .line 236
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/VipListResponse;->playScore:I

    return-void
.end method

.method public setPlayTimeLength(I)V
    .locals 0

    .line 252
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/VipListResponse;->playTimeLength:I

    return-void
.end method

.method public setStaring(Ljava/lang/String;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/VipListResponse;->staring:Ljava/lang/String;

    return-void
.end method

.method public setTag(I)V
    .locals 0

    .line 284
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/VipListResponse;->tag:I

    return-void
.end method

.method public setTagDTO(Lcom/mh/movie/core/mvp/model/entity/TagDTOBean;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/VipListResponse;->tagDTO:Lcom/mh/movie/core/mvp/model/entity/TagDTOBean;

    return-void
.end method

.method public setTagName(Ljava/lang/String;)V
    .locals 0

    .line 292
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/VipListResponse;->tagName:Ljava/lang/String;

    return-void
.end method

.method public setTagSource(Ljava/lang/String;)V
    .locals 0

    .line 300
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/VipListResponse;->tagSource:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/VipListResponse;->title:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 108
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/VipListResponse;->type:I

    return-void
.end method

.method public setVideoClassifyList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 308
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/VipListResponse;->videoClassifyList:Ljava/util/List;

    return-void
.end method
