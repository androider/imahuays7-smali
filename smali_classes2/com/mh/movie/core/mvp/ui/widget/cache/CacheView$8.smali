.class Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView$8;
.super Ljava/lang/Object;
.source "CacheView.java"

# interfaces
.implements Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->a(Ljava/lang/Void;)V
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

    .line 401
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView$8;->a:Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 405
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView$8;->a:Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/mh/movie/core/mvp/ui/activity/MyCacheActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x4000000

    .line 406
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 407
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView$8;->a:Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 409
    :cond_0
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView$8;->a:Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->g(Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;)V

    :goto_0
    return-void
.end method
