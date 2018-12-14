.class public Lcom/mh/movie/core/mvp/model/entity/response/PageResponse;
.super Ljava/lang/Object;
.source "PageResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mh/movie/core/mvp/model/entity/response/PageResponse$TypeEntity;
    }
.end annotation


# instance fields
.field private name:Ljava/lang/String;

.field private plateId:I

.field private supportBanner:I

.field private supportTypeSearch:I

.field private typeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/response/PageResponse$TypeEntity;",
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
.method public getName()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/PageResponse;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPlateId()I
    .locals 1

    .line 31
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/PageResponse;->plateId:I

    return v0
.end method

.method public getSupportBanner()I
    .locals 1

    .line 47
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/PageResponse;->supportBanner:I

    return v0
.end method

.method public getSupportTypeSearch()I
    .locals 1

    .line 39
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/PageResponse;->supportTypeSearch:I

    return v0
.end method

.method public getTypeList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/response/PageResponse$TypeEntity;",
            ">;"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/PageResponse;->typeList:Ljava/util/List;

    return-object v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/PageResponse;->name:Ljava/lang/String;

    return-void
.end method

.method public setPlateId(I)V
    .locals 0

    .line 35
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/PageResponse;->plateId:I

    return-void
.end method

.method public setSupportBanner(I)V
    .locals 0

    .line 51
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/PageResponse;->supportBanner:I

    return-void
.end method

.method public setSupportTypeSearch(I)V
    .locals 0

    .line 43
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/PageResponse;->supportTypeSearch:I

    return-void
.end method

.method public setTypeList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/response/PageResponse$TypeEntity;",
            ">;)V"
        }
    .end annotation

    .line 59
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/PageResponse;->typeList:Ljava/util/List;

    return-void
.end method
