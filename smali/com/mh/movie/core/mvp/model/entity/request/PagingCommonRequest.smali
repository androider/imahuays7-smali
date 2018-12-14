.class public Lcom/mh/movie/core/mvp/model/entity/request/PagingCommonRequest;
.super Ljava/lang/Object;
.source "PagingCommonRequest.java"


# instance fields
.field private currentPage:I

.field private fetchAll:Z

.field private pageSize:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrentPage()I
    .locals 1

    .line 16
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/request/PagingCommonRequest;->currentPage:I

    return v0
.end method

.method public getPageSize()I
    .locals 1

    .line 32
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/request/PagingCommonRequest;->pageSize:I

    return v0
.end method

.method public isFetchAll()Z
    .locals 1

    .line 24
    iget-boolean v0, p0, Lcom/mh/movie/core/mvp/model/entity/request/PagingCommonRequest;->fetchAll:Z

    return v0
.end method

.method public setCurrentPage(I)V
    .locals 0

    .line 20
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/request/PagingCommonRequest;->currentPage:I

    return-void
.end method

.method public setFetchAll(Z)V
    .locals 0

    .line 28
    iput-boolean p1, p0, Lcom/mh/movie/core/mvp/model/entity/request/PagingCommonRequest;->fetchAll:Z

    return-void
.end method

.method public setPageSize(I)V
    .locals 0

    .line 36
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/request/PagingCommonRequest;->pageSize:I

    return-void
.end method
