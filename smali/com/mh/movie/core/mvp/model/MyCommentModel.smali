.class public Lcom/mh/movie/core/mvp/model/MyCommentModel;
.super Lcom/jess/arms/mvp/BaseModel;
.source "MyCommentModel.java"

# interfaces
.implements Lcom/mh/movie/core/mvp/a/af$a;


# instance fields
.field b:Lcom/google/gson/e;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field c:Landroid/app/Application;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/jess/arms/integration/IRepositoryManager;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 25
    invoke-direct {p0, p1}, Lcom/jess/arms/mvp/BaseModel;-><init>(Lcom/jess/arms/integration/IRepositoryManager;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 30
    invoke-super {p0}, Lcom/jess/arms/mvp/BaseModel;->a()V

    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lcom/mh/movie/core/mvp/model/MyCommentModel;->b:Lcom/google/gson/e;

    .line 32
    iput-object v0, p0, Lcom/mh/movie/core/mvp/model/MyCommentModel;->c:Landroid/app/Application;

    return-void
.end method
