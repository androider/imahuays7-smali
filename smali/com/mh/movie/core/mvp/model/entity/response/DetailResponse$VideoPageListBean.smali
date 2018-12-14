.class public Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoPageListBean;
.super Ljava/lang/Object;
.source "DetailResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VideoPageListBean"
.end annotation


# instance fields
.field private currentPage:I

.field private isShow:I

.field private pageSize:I

.field private tabName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 745
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrentPage()I
    .locals 1

    .line 768
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoPageListBean;->currentPage:I

    return v0
.end method

.method public getIsShow()I
    .locals 1

    .line 784
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoPageListBean;->isShow:I

    return v0
.end method

.method public getPageSize()I
    .locals 1

    .line 776
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoPageListBean;->pageSize:I

    return v0
.end method

.method public getTabName()Ljava/lang/String;
    .locals 1

    .line 760
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoPageListBean;->tabName:Ljava/lang/String;

    return-object v0
.end method

.method public setCurrentPage(I)V
    .locals 0

    .line 772
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoPageListBean;->currentPage:I

    return-void
.end method

.method public setIsShow(I)V
    .locals 0

    .line 788
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoPageListBean;->isShow:I

    return-void
.end method

.method public setPageSize(I)V
    .locals 0

    .line 780
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoPageListBean;->pageSize:I

    return-void
.end method

.method public setTabName(Ljava/lang/String;)V
    .locals 0

    .line 764
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoPageListBean;->tabName:Ljava/lang/String;

    return-void
.end method
