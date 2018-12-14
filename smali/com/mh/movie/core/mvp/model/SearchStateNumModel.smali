.class public Lcom/mh/movie/core/mvp/model/SearchStateNumModel;
.super Lcom/jess/arms/mvp/BaseModel;
.source "SearchStateNumModel.java"

# interfaces
.implements Lcom/mh/movie/core/mvp/a/av;


# instance fields
.field b:Lcom/google/gson/e;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field c:Landroid/app/Application;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# virtual methods
.method public a()V
    .locals 1

    .line 30
    invoke-super {p0}, Lcom/jess/arms/mvp/BaseModel;->a()V

    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lcom/mh/movie/core/mvp/model/SearchStateNumModel;->b:Lcom/google/gson/e;

    .line 32
    iput-object v0, p0, Lcom/mh/movie/core/mvp/model/SearchStateNumModel;->c:Landroid/app/Application;

    return-void
.end method
