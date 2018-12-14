.class public Lcom/mh/movie/core/mvp/model/user/TestDaoModel;
.super Lcom/jess/arms/mvp/BaseModel;
.source "TestDaoModel.java"

# interfaces
.implements Lcom/mh/movie/core/mvp/a/c/b$a;


# instance fields
.field b:Lcom/google/gson/e;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field c:Landroid/app/Application;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private d:Lcom/mh/movie/core/mvp/model/b/g;


# direct methods
.method public constructor <init>(Lcom/jess/arms/integration/IRepositoryManager;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 33
    invoke-direct {p0, p1}, Lcom/jess/arms/mvp/BaseModel;-><init>(Lcom/jess/arms/integration/IRepositoryManager;)V

    .line 34
    new-instance p1, Lcom/mh/movie/core/mvp/model/b/g;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/user/TestDaoModel;->a:Lcom/jess/arms/integration/IRepositoryManager;

    invoke-direct {p1, v0}, Lcom/mh/movie/core/mvp/model/b/g;-><init>(Lcom/jess/arms/integration/IRepositoryManager;)V

    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/user/TestDaoModel;->d:Lcom/mh/movie/core/mvp/model/b/g;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 39
    invoke-super {p0}, Lcom/jess/arms/mvp/BaseModel;->a()V

    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Lcom/mh/movie/core/mvp/model/user/TestDaoModel;->b:Lcom/google/gson/e;

    .line 41
    iput-object v0, p0, Lcom/mh/movie/core/mvp/model/user/TestDaoModel;->c:Landroid/app/Application;

    return-void
.end method
