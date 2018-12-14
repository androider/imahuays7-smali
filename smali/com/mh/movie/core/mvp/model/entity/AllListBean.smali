.class public Lcom/mh/movie/core/mvp/model/entity/AllListBean;
.super Ljava/lang/Object;
.source "AllListBean.java"


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

.field private hotPlayNum:I

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

.field private vipFlag:I


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

    .line 234
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/AllListBean;->basePalyNum:I

    return v0
.end method

.method public getClassifyType()Ljava/lang/String;
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/AllListBean;->classifyType:Ljava/lang/String;

    return-object v0
.end method

.method public getCode()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/AllListBean;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getCoverHUrl()Ljava/lang/String;
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/AllListBean;->coverHUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getCoverTime()I
    .locals 1

    .line 162
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/AllListBean;->coverTime:I

    return v0
.end method

.method public getCoverUrl()Ljava/lang/String;
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/AllListBean;->coverUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getDirector()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/AllListBean;->director:Ljava/lang/String;

    return-object v0
.end method

.method public getDoubanScore()D
    .locals 2

    .line 106
    iget-wide v0, p0, Lcom/mh/movie/core/mvp/model/entity/AllListBean;->doubanScore:D

    return-wide v0
.end method

.method public getDownloadScore()I
    .locals 1

    .line 210
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/AllListBean;->downloadScore:I

    return v0
.end method

.method public getEpisodeState()I
    .locals 1

    .line 130
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/AllListBean;->episodeState:I

    return v0
.end method

.method public getEpisodeTotalCount()I
    .locals 1

    .line 138
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/AllListBean;->episodeTotalCount:I

    return v0
.end method

.method public getEpisodeUploadCount()I
    .locals 1

    .line 146
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/AllListBean;->episodeUploadCount:I

    return v0
.end method

.method public getFocus()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/AllListBean;->focus:Ljava/lang/String;

    return-object v0
.end method

.method public getHighCoverHUrl()Ljava/lang/String;
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/AllListBean;->highCoverHUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getHighCoverUrl()Ljava/lang/String;
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/AllListBean;->highCoverUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getHotPlayNum()I
    .locals 1

    .line 242
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/AllListBean;->hotPlayNum:I

    return v0
.end method

.method public getId()I
    .locals 1

    .line 58
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/AllListBean;->id:I

    return v0
.end method

.method public getImdbScore()D
    .locals 2

    .line 114
    iget-wide v0, p0, Lcom/mh/movie/core/mvp/model/entity/AllListBean;->imdbScore:D

    return-wide v0
.end method

.method public getIntro()Ljava/lang/String;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/AllListBean;->intro:Ljava/lang/String;

    return-object v0
.end method

.method public getLastPeriod()Ljava/lang/String;
    .locals 1

    .line 274
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/AllListBean;->lastPeriod:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayCount()I
    .locals 1

    .line 154
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/AllListBean;->playCount:I

    return v0
.end method

.method public getPlayScore()I
    .locals 1

    .line 202
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/AllListBean;->playScore:I

    return v0
.end method

.method public getPlayTimeLength()I
    .locals 1

    .line 218
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/AllListBean;->playTimeLength:I

    return v0
.end method

.method public getStaring()Ljava/lang/String;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/AllListBean;->staring:Ljava/lang/String;

    return-object v0
.end method

.method public getTag()I
    .locals 1

    .line 250
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/AllListBean;->tag:I

    return v0
.end method

.method public getTagDTO()Lcom/mh/movie/core/mvp/model/entity/TagDTOBean;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/AllListBean;->tagDTO:Lcom/mh/movie/core/mvp/model/entity/TagDTOBean;

    return-object v0
.end method

.method public getTagName()Ljava/lang/String;
    .locals 1

    .line 258
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/AllListBean;->tagName:Ljava/lang/String;

    return-object v0
.end method

.method public getTagSource()Ljava/lang/String;
    .locals 1

    .line 266
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/AllListBean;->tagSource:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/AllListBean;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 74
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/AllListBean;->type:I

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

    .line 290
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/AllListBean;->videoClassifyList:Ljava/util/List;

    return-object v0
.end method

.method public getVipFlag()I
    .locals 1

    .line 282
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/AllListBean;->vipFlag:I

    return v0
.end method

.method public setBasePalyNum(I)V
    .locals 0

    .line 238
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/AllListBean;->basePalyNum:I

    return-void
.end method

.method public setClassifyType(Ljava/lang/String;)V
    .locals 0

    .line 230
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/AllListBean;->classifyType:Ljava/lang/String;

    return-void
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/AllListBean;->code:Ljava/lang/String;

    return-void
.end method

.method public setCoverHUrl(Ljava/lang/String;)V
    .locals 0

    .line 182
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/AllListBean;->coverHUrl:Ljava/lang/String;

    return-void
.end method

.method public setCoverTime(I)V
    .locals 0

    .line 166
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/AllListBean;->coverTime:I

    return-void
.end method

.method public setCoverUrl(Ljava/lang/String;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/AllListBean;->coverUrl:Ljava/lang/String;

    return-void
.end method

.method public setDirector(Ljava/lang/String;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/AllListBean;->director:Ljava/lang/String;

    return-void
.end method

.method public setDoubanScore(D)V
    .locals 0

    .line 110
    iput-wide p1, p0, Lcom/mh/movie/core/mvp/model/entity/AllListBean;->doubanScore:D

    return-void
.end method

.method public setDownloadScore(I)V
    .locals 0

    .line 214
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/AllListBean;->downloadScore:I

    return-void
.end method

.method public setEpisodeState(I)V
    .locals 0

    .line 134
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/AllListBean;->episodeState:I

    return-void
.end method

.method public setEpisodeTotalCount(I)V
    .locals 0

    .line 142
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/AllListBean;->episodeTotalCount:I

    return-void
.end method

.method public setEpisodeUploadCount(I)V
    .locals 0

    .line 150
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/AllListBean;->episodeUploadCount:I

    return-void
.end method

.method public setFocus(Ljava/lang/String;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/AllListBean;->focus:Ljava/lang/String;

    return-void
.end method

.method public setHighCoverHUrl(Ljava/lang/String;)V
    .locals 0

    .line 198
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/AllListBean;->highCoverHUrl:Ljava/lang/String;

    return-void
.end method

.method public setHighCoverUrl(Ljava/lang/String;)V
    .locals 0

    .line 190
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/AllListBean;->highCoverUrl:Ljava/lang/String;

    return-void
.end method

.method public setHotPlayNum(I)V
    .locals 0

    .line 246
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/AllListBean;->hotPlayNum:I

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 62
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/AllListBean;->id:I

    return-void
.end method

.method public setImdbScore(D)V
    .locals 0

    .line 118
    iput-wide p1, p0, Lcom/mh/movie/core/mvp/model/entity/AllListBean;->imdbScore:D

    return-void
.end method

.method public setIntro(Ljava/lang/String;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/AllListBean;->intro:Ljava/lang/String;

    return-void
.end method

.method public setLastPeriod(Ljava/lang/String;)V
    .locals 0

    .line 278
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/AllListBean;->lastPeriod:Ljava/lang/String;

    return-void
.end method

.method public setPlayCount(I)V
    .locals 0

    .line 158
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/AllListBean;->playCount:I

    return-void
.end method

.method public setPlayScore(I)V
    .locals 0

    .line 206
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/AllListBean;->playScore:I

    return-void
.end method

.method public setPlayTimeLength(I)V
    .locals 0

    .line 222
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/AllListBean;->playTimeLength:I

    return-void
.end method

.method public setStaring(Ljava/lang/String;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/AllListBean;->staring:Ljava/lang/String;

    return-void
.end method

.method public setTag(I)V
    .locals 0

    .line 254
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/AllListBean;->tag:I

    return-void
.end method

.method public setTagDTO(Lcom/mh/movie/core/mvp/model/entity/TagDTOBean;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/AllListBean;->tagDTO:Lcom/mh/movie/core/mvp/model/entity/TagDTOBean;

    return-void
.end method

.method public setTagName(Ljava/lang/String;)V
    .locals 0

    .line 262
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/AllListBean;->tagName:Ljava/lang/String;

    return-void
.end method

.method public setTagSource(Ljava/lang/String;)V
    .locals 0

    .line 270
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/AllListBean;->tagSource:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/AllListBean;->title:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 78
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/AllListBean;->type:I

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

    .line 294
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/AllListBean;->videoClassifyList:Ljava/util/List;

    return-void
.end method

.method public setVipFlag(I)V
    .locals 0

    .line 286
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/AllListBean;->vipFlag:I

    return-void
.end method
