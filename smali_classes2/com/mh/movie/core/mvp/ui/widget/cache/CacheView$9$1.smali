.class Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView$9$1;
.super Ljava/lang/Object;
.source "CacheView.java"

# interfaces
.implements Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView$9;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView$9;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView$9;I)V
    .locals 0

    .line 424
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView$9$1;->b:Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView$9;

    iput p2, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView$9$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 1

    if-eqz p1, :cond_1

    .line 428
    invoke-static {}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->a()Lcom/mh/movie/core/mvp/ui/widget/cache/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 429
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView$9$1;->b:Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView$9;

    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView$9;->a:Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;

    iget v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView$9$1;->a:I

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->b(I)V

    goto :goto_0

    .line 431
    :cond_0
    invoke-static {}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->a()Lcom/mh/movie/core/mvp/ui/widget/cache/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->e()V

    goto :goto_0

    .line 434
    :cond_1
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView$9$1;->b:Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView$9;

    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView$9;->a:Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->g(Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;)V

    :goto_0
    return-void
.end method
