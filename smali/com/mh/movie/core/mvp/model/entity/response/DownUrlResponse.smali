.class public Lcom/mh/movie/core/mvp/model/entity/response/DownUrlResponse;
.super Ljava/lang/Object;
.source "DownUrlResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mh/movie/core/mvp/model/entity/response/DownUrlResponse$DownUrlBean;
    }
.end annotation


# instance fields
.field private cacheNum:I

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/response/DownUrlResponse$DownUrlBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCacheNum()I
    .locals 1

    .line 17
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/DownUrlResponse;->cacheNum:I

    return v0
.end method

.method public getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/response/DownUrlResponse$DownUrlBean;",
            ">;"
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/DownUrlResponse;->list:Ljava/util/List;

    return-object v0
.end method

.method public setCacheNum(I)V
    .locals 0

    .line 21
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/DownUrlResponse;->cacheNum:I

    return-void
.end method

.method public setList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/response/DownUrlResponse$DownUrlBean;",
            ">;)V"
        }
    .end annotation

    .line 29
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/DownUrlResponse;->list:Ljava/util/List;

    return-void
.end method
