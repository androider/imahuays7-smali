.class public Lcom/mh/movie/core/mvp/model/QuestionModel;
.super Lcom/jess/arms/mvp/BaseModel;
.source "QuestionModel.java"

# interfaces
.implements Lcom/mh/movie/core/mvp/a/ao$a;


# instance fields
.field b:Lcom/google/gson/e;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field c:Landroid/app/Application;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field d:Lcom/mh/movie/core/mvp/model/b/g;


# direct methods
.method public constructor <init>(Lcom/jess/arms/integration/IRepositoryManager;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 31
    invoke-direct {p0, p1}, Lcom/jess/arms/mvp/BaseModel;-><init>(Lcom/jess/arms/integration/IRepositoryManager;)V

    .line 32
    new-instance v0, Lcom/mh/movie/core/mvp/model/b/g;

    invoke-direct {v0, p1}, Lcom/mh/movie/core/mvp/model/b/g;-><init>(Lcom/jess/arms/integration/IRepositoryManager;)V

    iput-object v0, p0, Lcom/mh/movie/core/mvp/model/QuestionModel;->d:Lcom/mh/movie/core/mvp/model/b/g;

    return-void
.end method


# virtual methods
.method public a(Lcom/mh/movie/core/mvp/model/entity/request/QuestionRequest;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mh/movie/core/mvp/model/entity/request/QuestionRequest;",
            ")",
            "Lio/reactivex/Observable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/QuestionModel;->d:Lcom/mh/movie/core/mvp/model/b/g;

    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/model/b/g;->a(Lcom/mh/movie/core/mvp/model/entity/request/QuestionRequest;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public a()V
    .locals 1

    .line 37
    invoke-super {p0}, Lcom/jess/arms/mvp/BaseModel;->a()V

    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lcom/mh/movie/core/mvp/model/QuestionModel;->b:Lcom/google/gson/e;

    .line 39
    iput-object v0, p0, Lcom/mh/movie/core/mvp/model/QuestionModel;->c:Landroid/app/Application;

    return-void
.end method
