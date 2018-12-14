.class public Lcom/mh/movie/core/mvp/model/entity/response/WalletResponse;
.super Ljava/lang/Object;
.source "WalletResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mh/movie/core/mvp/model/entity/response/WalletResponse$AccountLogListBean;
    }
.end annotation


# instance fields
.field private accountLogList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/response/WalletResponse$AccountLogListBean;",
            ">;"
        }
    .end annotation
.end field

.field private currentPage:I

.field private money:I

.field private pageSize:I

.field private totalCount:I

.field private totalPage:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccountLogList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/response/WalletResponse$AccountLogListBean;",
            ">;"
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/WalletResponse;->accountLogList:Ljava/util/List;

    return-object v0
.end method

.method public getCurrentPage()I
    .locals 1

    .line 24
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/WalletResponse;->currentPage:I

    return v0
.end method

.method public getMoney()I
    .locals 1

    .line 32
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/WalletResponse;->money:I

    return v0
.end method

.method public getPageSize()I
    .locals 1

    .line 40
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/WalletResponse;->pageSize:I

    return v0
.end method

.method public getTotalCount()I
    .locals 1

    .line 48
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/WalletResponse;->totalCount:I

    return v0
.end method

.method public getTotalPage()I
    .locals 1

    .line 56
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/WalletResponse;->totalPage:I

    return v0
.end method

.method public setAccountLogList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/response/WalletResponse$AccountLogListBean;",
            ">;)V"
        }
    .end annotation

    .line 68
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/WalletResponse;->accountLogList:Ljava/util/List;

    return-void
.end method

.method public setCurrentPage(I)V
    .locals 0

    .line 28
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/WalletResponse;->currentPage:I

    return-void
.end method

.method public setMoney(I)V
    .locals 0

    .line 36
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/WalletResponse;->money:I

    return-void
.end method

.method public setPageSize(I)V
    .locals 0

    .line 44
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/WalletResponse;->pageSize:I

    return-void
.end method

.method public setTotalCount(I)V
    .locals 0

    .line 52
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/WalletResponse;->totalCount:I

    return-void
.end method

.method public setTotalPage(I)V
    .locals 0

    .line 60
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/WalletResponse;->totalPage:I

    return-void
.end method
