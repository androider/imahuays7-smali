.class Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView$2;
.super Ljava/lang/Object;
.source "CacheView.java"

# interfaces
.implements Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->j()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;)V
    .locals 0

    .line 1116
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView$2;->a:Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1119
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView$2;->a:Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/jess/arms/c/e;->g(Landroid/content/Context;)V

    .line 1120
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView$2;->a:Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->c:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->dismiss()V

    return-void
.end method

.method public b()V
    .locals 1

    .line 1126
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView$2;->a:Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->c:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->dismiss()V

    return-void
.end method
