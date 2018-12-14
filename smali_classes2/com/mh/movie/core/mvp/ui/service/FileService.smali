.class public Lcom/mh/movie/core/mvp/ui/service/FileService;
.super Lcom/jess/arms/a/h;
.source "FileService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/jess/arms/a/h;-><init>()V

    return-void
.end method


# virtual methods
.method public c()V
    .locals 1

    .line 43
    invoke-static {}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->a()Lcom/mh/movie/core/mvp/ui/widget/cache/g;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->a(Landroid/content/Context;)V

    .line 44
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/service/FileService;->d()V

    return-void
.end method

.method public d()V
    .locals 2

    .line 49
    invoke-static {}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->a()Lcom/mh/movie/core/mvp/ui/widget/cache/g;

    move-result-object v0

    new-instance v1, Lcom/mh/movie/core/mvp/ui/service/FileService$1;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/ui/service/FileService$1;-><init>(Lcom/mh/movie/core/mvp/ui/service/FileService;)V

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->a(Lcom/mh/movie/core/mvp/ui/widget/cache/g$a;)V

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .line 38
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Not yet implemented"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onDestroy()V
    .locals 0

    .line 121
    invoke-super {p0}, Lcom/jess/arms/a/h;->onDestroy()V

    return-void
.end method
