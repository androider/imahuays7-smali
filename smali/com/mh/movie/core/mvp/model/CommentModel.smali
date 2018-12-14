.class public Lcom/mh/movie/core/mvp/model/CommentModel;
.super Lcom/jess/arms/mvp/BaseModel;
.source "CommentModel.java"

# interfaces
.implements Lcom/mh/movie/core/mvp/a/i$a;


# instance fields
.field b:Lcom/google/gson/e;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field c:Landroid/app/Application;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field d:Lcom/mh/movie/core/mvp/model/b/d;


# direct methods
.method public constructor <init>(Lcom/jess/arms/integration/IRepositoryManager;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 32
    invoke-direct {p0, p1}, Lcom/jess/arms/mvp/BaseModel;-><init>(Lcom/jess/arms/integration/IRepositoryManager;)V

    .line 33
    new-instance v0, Lcom/mh/movie/core/mvp/model/b/d;

    invoke-direct {v0, p1}, Lcom/mh/movie/core/mvp/model/b/d;-><init>(Lcom/jess/arms/integration/IRepositoryManager;)V

    iput-object v0, p0, Lcom/mh/movie/core/mvp/model/CommentModel;->d:Lcom/mh/movie/core/mvp/model/b/d;

    return-void
.end method


# virtual methods
.method public a(I)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/reactivex/Observable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/CommentModel;->d:Lcom/mh/movie/core/mvp/model/b/d;

    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/model/b/d;->a(I)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public a(IIIILjava/util/ArrayList;II)Lio/reactivex/Observable;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;II)",
            "Lio/reactivex/Observable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/CommentModel;->d:Lcom/mh/movie/core/mvp/model/b/d;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/mh/movie/core/mvp/model/b/d;->a(IIIILjava/util/ArrayList;II)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/mh/movie/core/mvp/model/entity/request/CommentRequest;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mh/movie/core/mvp/model/entity/request/CommentRequest;",
            ")",
            "Lio/reactivex/Observable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/CommentModel;->d:Lcom/mh/movie/core/mvp/model/b/d;

    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/model/b/d;->a(Lcom/mh/movie/core/mvp/model/entity/request/CommentRequest;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public a()V
    .locals 1

    .line 38
    invoke-super {p0}, Lcom/jess/arms/mvp/BaseModel;->a()V

    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lcom/mh/movie/core/mvp/model/CommentModel;->b:Lcom/google/gson/e;

    .line 40
    iput-object v0, p0, Lcom/mh/movie/core/mvp/model/CommentModel;->c:Landroid/app/Application;

    return-void
.end method
