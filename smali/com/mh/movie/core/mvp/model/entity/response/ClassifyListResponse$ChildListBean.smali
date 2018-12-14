.class public Lcom/mh/movie/core/mvp/model/entity/response/ClassifyListResponse$ChildListBean;
.super Ljava/lang/Object;
.source "ClassifyListResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mh/movie/core/mvp/model/entity/response/ClassifyListResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChildListBean"
.end annotation


# instance fields
.field private classifyName:Ljava/lang/String;

.field private id:I

.field private level:I

.field private pId:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/ClassifyListResponse$ChildListBean;->id:I

    .line 64
    iput-object p2, p0, Lcom/mh/movie/core/mvp/model/entity/response/ClassifyListResponse$ChildListBean;->classifyName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getClassifyName()Ljava/lang/String;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/ClassifyListResponse$ChildListBean;->classifyName:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 80
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/ClassifyListResponse$ChildListBean;->id:I

    return v0
.end method

.method public getLevel()I
    .locals 1

    .line 96
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/ClassifyListResponse$ChildListBean;->level:I

    return v0
.end method

.method public getPId()I
    .locals 1

    .line 104
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/ClassifyListResponse$ChildListBean;->pId:I

    return v0
.end method

.method public setClassifyName(Ljava/lang/String;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/ClassifyListResponse$ChildListBean;->classifyName:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 84
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/ClassifyListResponse$ChildListBean;->id:I

    return-void
.end method

.method public setLevel(I)V
    .locals 0

    .line 100
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/ClassifyListResponse$ChildListBean;->level:I

    return-void
.end method

.method public setPId(I)V
    .locals 0

    .line 108
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/ClassifyListResponse$ChildListBean;->pId:I

    return-void
.end method
