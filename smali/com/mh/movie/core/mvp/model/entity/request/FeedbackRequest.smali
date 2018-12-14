.class public Lcom/mh/movie/core/mvp/model/entity/request/FeedbackRequest;
.super Ljava/lang/Object;
.source "FeedbackRequest.java"


# instance fields
.field private content:Ljava/lang/String;

.field private email:Ljava/lang/String;

.field private model:Ljava/lang/String;

.field private qq:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private typeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
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
.method public getContent()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/request/FeedbackRequest;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/request/FeedbackRequest;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getModel()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/request/FeedbackRequest;->model:Ljava/lang/String;

    return-object v0
.end method

.method public getQq()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/request/FeedbackRequest;->qq:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/request/FeedbackRequest;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTypeList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/request/FeedbackRequest;->typeList:Ljava/util/List;

    return-object v0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/request/FeedbackRequest;->content:Ljava/lang/String;

    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/request/FeedbackRequest;->email:Ljava/lang/String;

    return-void
.end method

.method public setModel(Ljava/lang/String;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/request/FeedbackRequest;->model:Ljava/lang/String;

    return-void
.end method

.method public setQq(Ljava/lang/String;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/request/FeedbackRequest;->qq:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/request/FeedbackRequest;->title:Ljava/lang/String;

    return-void
.end method

.method public setTypeList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 68
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/request/FeedbackRequest;->typeList:Ljava/util/List;

    return-void
.end method
