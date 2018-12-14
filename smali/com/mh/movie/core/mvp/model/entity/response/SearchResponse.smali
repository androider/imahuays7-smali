.class public Lcom/mh/movie/core/mvp/model/entity/response/SearchResponse;
.super Ljava/lang/Object;
.source "SearchResponse.java"


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

.field private hotPlayNum:Ljava/lang/Object;

.field private id:I

.field private imdbScore:D

.field private intro:Ljava/lang/String;

.field private lastPeriod:Ljava/lang/String;

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

    .line 244
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/SearchResponse;->basePalyNum:I

    return v0
.end method

.method public getClassifyType()Ljava/lang/String;
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/SearchResponse;->classifyType:Ljava/lang/String;

    return-object v0
.end method

.method public getCode()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/SearchResponse;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getCoverHUrl()Ljava/lang/String;
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/SearchResponse;->coverHUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getCoverTime()I
    .locals 1

    .line 188
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/SearchResponse;->coverTime:I

    return v0
.end method

.method public getCoverUrl()Ljava/lang/String;
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/SearchResponse;->coverUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getDirector()Ljava/lang/String;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/SearchResponse;->director:Ljava/lang/String;

    return-object v0
.end method

.method public getDoubanScore()D
    .locals 2

    .line 132
    iget-wide v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/SearchResponse;->doubanScore:D

    return-wide v0
.end method

.method public getDownloadScore()I
    .locals 1

    .line 220
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/SearchResponse;->downloadScore:I

    return v0
.end method

.method public getEpisodeState()I
    .locals 1

    .line 156
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/SearchResponse;->episodeState:I

    return v0
.end method

.method public getEpisodeTotalCount()I
    .locals 1

    .line 164
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/SearchResponse;->episodeTotalCount:I

    return v0
.end method

.method public getEpisodeUploadCount()I
    .locals 1

    .line 172
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/SearchResponse;->episodeUploadCount:I

    return v0
.end method

.method public getHotPlayNum()Ljava/lang/Object;
    .locals 1

    .line 252
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/SearchResponse;->hotPlayNum:Ljava/lang/Object;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 84
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/SearchResponse;->id:I

    return v0
.end method

.method public getImdbScore()D
    .locals 2

    .line 140
    iget-wide v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/SearchResponse;->imdbScore:D

    return-wide v0
.end method

.method public getIntro()Ljava/lang/String;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/SearchResponse;->intro:Ljava/lang/String;

    return-object v0
.end method

.method public getLastPeriod()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/SearchResponse;->lastPeriod:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayCount()I
    .locals 1

    .line 180
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/SearchResponse;->playCount:I

    return v0
.end method

.method public getPlayScore()I
    .locals 1

    .line 212
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/SearchResponse;->playScore:I

    return v0
.end method

.method public getPlayTimeLength()I
    .locals 1

    .line 228
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/SearchResponse;->playTimeLength:I

    return v0
.end method

.method public getStaring()Ljava/lang/String;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/SearchResponse;->staring:Ljava/lang/String;

    return-object v0
.end method

.method public getTag()I
    .locals 1

    .line 260
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/SearchResponse;->tag:I

    return v0
.end method

.method public getTagDTO()Lcom/mh/movie/core/mvp/model/entity/TagDTOBean;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/SearchResponse;->tagDTO:Lcom/mh/movie/core/mvp/model/entity/TagDTOBean;

    return-object v0
.end method

.method public getTagName()Ljava/lang/String;
    .locals 1

    .line 268
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/SearchResponse;->tagName:Ljava/lang/String;

    return-object v0
.end method

.method public getTagSource()Ljava/lang/String;
    .locals 1

    .line 276
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/SearchResponse;->tagSource:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/SearchResponse;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 100
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/SearchResponse;->type:I

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

    .line 284
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/SearchResponse;->videoClassifyList:Ljava/util/List;

    return-object v0
.end method

.method public setBasePalyNum(I)V
    .locals 0

    .line 248
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/SearchResponse;->basePalyNum:I

    return-void
.end method

.method public setClassifyType(Ljava/lang/String;)V
    .locals 0

    .line 240
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/SearchResponse;->classifyType:Ljava/lang/String;

    return-void
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/SearchResponse;->code:Ljava/lang/String;

    return-void
.end method

.method public setCoverHUrl(Ljava/lang/String;)V
    .locals 0

    .line 208
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/SearchResponse;->coverHUrl:Ljava/lang/String;

    return-void
.end method

.method public setCoverTime(I)V
    .locals 0

    .line 192
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/SearchResponse;->coverTime:I

    return-void
.end method

.method public setCoverUrl(Ljava/lang/String;)V
    .locals 0

    .line 200
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/SearchResponse;->coverUrl:Ljava/lang/String;

    return-void
.end method

.method public setDirector(Ljava/lang/String;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/SearchResponse;->director:Ljava/lang/String;

    return-void
.end method

.method public setDoubanScore(D)V
    .locals 0

    .line 136
    iput-wide p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/SearchResponse;->doubanScore:D

    return-void
.end method

.method public setDownloadScore(I)V
    .locals 0

    .line 224
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/SearchResponse;->downloadScore:I

    return-void
.end method

.method public setEpisodeState(I)V
    .locals 0

    .line 160
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/SearchResponse;->episodeState:I

    return-void
.end method

.method public setEpisodeTotalCount(I)V
    .locals 0

    .line 168
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/SearchResponse;->episodeTotalCount:I

    return-void
.end method

.method public setEpisodeUploadCount(I)V
    .locals 0

    .line 176
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/SearchResponse;->episodeUploadCount:I

    return-void
.end method

.method public setHotPlayNum(Ljava/lang/Object;)V
    .locals 0

    .line 256
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/SearchResponse;->hotPlayNum:Ljava/lang/Object;

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 88
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/SearchResponse;->id:I

    return-void
.end method

.method public setImdbScore(D)V
    .locals 0

    .line 144
    iput-wide p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/SearchResponse;->imdbScore:D

    return-void
.end method

.method public setIntro(Ljava/lang/String;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/SearchResponse;->intro:Ljava/lang/String;

    return-void
.end method

.method public setLastPeriod(Ljava/lang/String;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/SearchResponse;->lastPeriod:Ljava/lang/String;

    return-void
.end method

.method public setPlayCount(I)V
    .locals 0

    .line 184
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/SearchResponse;->playCount:I

    return-void
.end method

.method public setPlayScore(I)V
    .locals 0

    .line 216
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/SearchResponse;->playScore:I

    return-void
.end method

.method public setPlayTimeLength(I)V
    .locals 0

    .line 232
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/SearchResponse;->playTimeLength:I

    return-void
.end method

.method public setStaring(Ljava/lang/String;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/SearchResponse;->staring:Ljava/lang/String;

    return-void
.end method

.method public setTag(I)V
    .locals 0

    .line 264
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/SearchResponse;->tag:I

    return-void
.end method

.method public setTagDTO(Lcom/mh/movie/core/mvp/model/entity/TagDTOBean;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/SearchResponse;->tagDTO:Lcom/mh/movie/core/mvp/model/entity/TagDTOBean;

    return-void
.end method

.method public setTagName(Ljava/lang/String;)V
    .locals 0

    .line 272
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/SearchResponse;->tagName:Ljava/lang/String;

    return-void
.end method

.method public setTagSource(Ljava/lang/String;)V
    .locals 0

    .line 280
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/SearchResponse;->tagSource:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/SearchResponse;->title:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 104
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/SearchResponse;->type:I

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

    .line 288
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/SearchResponse;->videoClassifyList:Ljava/util/List;

    return-void
.end method
