.class public Lcom/mh/movie/core/mvp/model/entity/response/HomePageResponse;
.super Ljava/lang/Object;
.source "HomePageResponse.java"


# instance fields
.field private bootadsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/BootadsListBean;",
            ">;"
        }
    .end annotation
.end field

.field private currentPage:I

.field private detailTitle:Ljava/lang/String;

.field private headPushSwitch:I

.field private id:I

.field private isLandscape:I

.field private pageSize:I

.field private queryList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/response/QueryListBean;",
            ">;"
        }
    .end annotation
.end field

.field private supportSwitch:I

.field private title:Ljava/lang/String;

.field private type:I

.field private videoType:I

.field private videoTypeStr:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBootadsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/BootadsListBean;",
            ">;"
        }
    .end annotation

    .line 127
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/HomePageResponse;->bootadsList:Ljava/util/List;

    return-object v0
.end method

.method public getCurrentPage()I
    .locals 1

    .line 39
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/HomePageResponse;->currentPage:I

    return v0
.end method

.method public getDetailTitle()Ljava/lang/String;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/HomePageResponse;->detailTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getHeadPushSwitch()I
    .locals 1

    .line 87
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/HomePageResponse;->headPushSwitch:I

    return v0
.end method

.method public getId()I
    .locals 1

    .line 55
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/HomePageResponse;->id:I

    return v0
.end method

.method public getIsLandscape()I
    .locals 1

    .line 71
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/HomePageResponse;->isLandscape:I

    return v0
.end method

.method public getPageSize()I
    .locals 1

    .line 47
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/HomePageResponse;->pageSize:I

    return v0
.end method

.method public getQueryList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/response/QueryListBean;",
            ">;"
        }
    .end annotation

    .line 119
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/HomePageResponse;->queryList:Ljava/util/List;

    return-object v0
.end method

.method public getSupportSwitch()I
    .locals 1

    .line 95
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/HomePageResponse;->supportSwitch:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/HomePageResponse;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 79
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/HomePageResponse;->type:I

    return v0
.end method

.method public getVideoType()I
    .locals 1

    .line 103
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/HomePageResponse;->videoType:I

    return v0
.end method

.method public getVideoTypeStr()Ljava/lang/String;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/HomePageResponse;->videoTypeStr:Ljava/lang/String;

    return-object v0
.end method

.method public setBootadsList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/BootadsListBean;",
            ">;)V"
        }
    .end annotation

    .line 131
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/HomePageResponse;->bootadsList:Ljava/util/List;

    return-void
.end method

.method public setCurrentPage(I)V
    .locals 0

    .line 43
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/HomePageResponse;->currentPage:I

    return-void
.end method

.method public setDetailTitle(Ljava/lang/String;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/HomePageResponse;->detailTitle:Ljava/lang/String;

    return-void
.end method

.method public setHeadPushSwitch(I)V
    .locals 0

    .line 91
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/HomePageResponse;->headPushSwitch:I

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 59
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/HomePageResponse;->id:I

    return-void
.end method

.method public setIsLandscape(I)V
    .locals 0

    .line 75
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/HomePageResponse;->isLandscape:I

    return-void
.end method

.method public setPageSize(I)V
    .locals 0

    .line 51
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/HomePageResponse;->pageSize:I

    return-void
.end method

.method public setQueryList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/response/QueryListBean;",
            ">;)V"
        }
    .end annotation

    .line 123
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/HomePageResponse;->queryList:Ljava/util/List;

    return-void
.end method

.method public setSupportSwitch(I)V
    .locals 0

    .line 99
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/HomePageResponse;->supportSwitch:I

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/HomePageResponse;->title:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 83
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/HomePageResponse;->type:I

    return-void
.end method

.method public setVideoType(I)V
    .locals 0

    .line 107
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/HomePageResponse;->videoType:I

    return-void
.end method

.method public setVideoTypeStr(Ljava/lang/String;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/HomePageResponse;->videoTypeStr:Ljava/lang/String;

    return-void
.end method
