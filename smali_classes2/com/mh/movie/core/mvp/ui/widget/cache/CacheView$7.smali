.class Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView$7;
.super Ljava/lang/Object;
.source "CacheView.java"

# interfaces
.implements Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->b(Ljava/lang/Void;)V
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

    .line 380
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView$7;->a:Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    if-eqz p1, :cond_1

    .line 384
    invoke-static {}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->a()Lcom/mh/movie/core/mvp/ui/widget/cache/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 385
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView$7;->a:Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->b()V

    goto :goto_0

    .line 387
    :cond_0
    invoke-static {}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->a()Lcom/mh/movie/core/mvp/ui/widget/cache/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->e()V

    goto :goto_0

    .line 390
    :cond_1
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView$7;->a:Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->g(Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;)V

    :goto_0
    return-void
.end method
