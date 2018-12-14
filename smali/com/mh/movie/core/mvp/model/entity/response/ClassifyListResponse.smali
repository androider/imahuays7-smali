.class public Lcom/mh/movie/core/mvp/model/entity/response/ClassifyListResponse;
.super Ljava/lang/Object;
.source "ClassifyListResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mh/movie/core/mvp/model/entity/response/ClassifyListResponse$ChildListBean;
    }
.end annotation


# instance fields
.field private childList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/response/ClassifyListResponse$ChildListBean;",
            ">;"
        }
    .end annotation
.end field

.field private classifyName:Ljava/lang/String;

.field private id:I

.field private level:I

.field private pId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getChildList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/response/ClassifyListResponse$ChildListBean;",
            ">;"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/ClassifyListResponse;->childList:Ljava/util/List;

    return-object v0
.end method

.method public getClassifyName()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/ClassifyListResponse;->classifyName:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 22
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/ClassifyListResponse;->id:I

    return v0
.end method

.method public getLevel()I
    .locals 1

    .line 38
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/ClassifyListResponse;->level:I

    return v0
.end method

.method public getPId()I
    .locals 1

    .line 46
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/ClassifyListResponse;->pId:I

    return v0
.end method

.method public setChildList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/response/ClassifyListResponse$ChildListBean;",
            ">;)V"
        }
    .end annotation

    .line 58
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/ClassifyListResponse;->childList:Ljava/util/List;

    return-void
.end method

.method public setClassifyName(Ljava/lang/String;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/ClassifyListResponse;->classifyName:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 26
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/ClassifyListResponse;->id:I

    return-void
.end method

.method public setLevel(I)V
    .locals 0

    .line 42
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/ClassifyListResponse;->level:I

    return-void
.end method

.method public setPId(I)V
    .locals 0

    .line 50
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/ClassifyListResponse;->pId:I

    return-void
.end method
