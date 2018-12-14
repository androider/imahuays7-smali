.class public Lcom/mh/movie/core/mvp/model/entity/response/VideoInfoListBean;
.super Ljava/lang/Object;
.source "VideoInfoListBean.java"


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

.field private columnId:I

.field private isLandscape:I

.field private orderNum:I

.field private queryList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/response/QueryListBean;",
            ">;"
        }
    .end annotation
.end field

.field private title:Ljava/lang/String;

.field private topNum:I


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

    .line 76
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/VideoInfoListBean;->bootadsList:Ljava/util/List;

    return-object v0
.end method

.method public getColumnId()I
    .locals 1

    .line 28
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/VideoInfoListBean;->columnId:I

    return v0
.end method

.method public getIsLandscape()I
    .locals 1

    .line 60
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/VideoInfoListBean;->isLandscape:I

    return v0
.end method

.method public getOrderNum()I
    .locals 1

    .line 44
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/VideoInfoListBean;->orderNum:I

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

    .line 68
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/VideoInfoListBean;->queryList:Ljava/util/List;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/VideoInfoListBean;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTopNum()I
    .locals 1

    .line 52
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/VideoInfoListBean;->topNum:I

    return v0
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

    .line 80
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/VideoInfoListBean;->bootadsList:Ljava/util/List;

    return-void
.end method

.method public setColumnId(I)V
    .locals 0

    .line 32
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/VideoInfoListBean;->columnId:I

    return-void
.end method

.method public setIsLandscape(I)V
    .locals 0

    .line 64
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/VideoInfoListBean;->isLandscape:I

    return-void
.end method

.method public setOrderNum(I)V
    .locals 0

    .line 48
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/VideoInfoListBean;->orderNum:I

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

    .line 72
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/VideoInfoListBean;->queryList:Ljava/util/List;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/VideoInfoListBean;->title:Ljava/lang/String;

    return-void
.end method

.method public setTopNum(I)V
    .locals 0

    .line 56
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/VideoInfoListBean;->topNum:I

    return-void
.end method
