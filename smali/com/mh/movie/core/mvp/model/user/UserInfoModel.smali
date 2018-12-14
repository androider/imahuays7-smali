.class public Lcom/mh/movie/core/mvp/model/user/UserInfoModel;
.super Lcom/mh/movie/core/mvp/model/MHBaseModel;
.source "UserInfoModel.java"

# interfaces
.implements Lcom/mh/movie/core/mvp/a/c/c$a;


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

    .line 29
    invoke-direct {p0, p1}, Lcom/mh/movie/core/mvp/model/MHBaseModel;-><init>(Lcom/jess/arms/integration/IRepositoryManager;)V

    .line 30
    new-instance p1, Lcom/mh/movie/core/mvp/model/b/g;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/user/UserInfoModel;->a:Lcom/jess/arms/integration/IRepositoryManager;

    invoke-direct {p1, v0}, Lcom/mh/movie/core/mvp/model/b/g;-><init>(Lcom/jess/arms/integration/IRepositoryManager;)V

    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/user/UserInfoModel;->d:Lcom/mh/movie/core/mvp/model/b/g;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 35
    invoke-super {p0}, Lcom/mh/movie/core/mvp/model/MHBaseModel;->a()V

    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lcom/mh/movie/core/mvp/model/user/UserInfoModel;->b:Lcom/google/gson/e;

    .line 37
    iput-object v0, p0, Lcom/mh/movie/core/mvp/model/user/UserInfoModel;->c:Landroid/app/Application;

    return-void
.end method
