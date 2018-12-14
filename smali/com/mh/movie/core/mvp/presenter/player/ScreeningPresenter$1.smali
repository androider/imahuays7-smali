.class Lcom/mh/movie/core/mvp/presenter/player/ScreeningPresenter$1;
.super Ljava/lang/Object;
.source "ScreeningPresenter.java"

# interfaces
.implements Lcom/mh/movie/core/androidupnp/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/presenter/player/ScreeningPresenter;-><init>(Lcom/mh/movie/core/mvp/a/b/c$a;Lcom/mh/movie/core/mvp/a/b/c$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/presenter/player/ScreeningPresenter;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/presenter/player/ScreeningPresenter;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/mh/movie/core/mvp/presenter/player/ScreeningPresenter$1;->a:Lcom/mh/movie/core/mvp/presenter/player/ScreeningPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method final synthetic a()V
    .locals 4

    .line 94
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/player/ScreeningPresenter$1;->a:Lcom/mh/movie/core/mvp/presenter/player/ScreeningPresenter;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/presenter/player/ScreeningPresenter;->b(Lcom/mh/movie/core/mvp/presenter/player/ScreeningPresenter;)Lcom/jess/arms/mvp/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/player/ScreeningPresenter$1;->a:Lcom/mh/movie/core/mvp/presenter/player/ScreeningPresenter;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/presenter/player/ScreeningPresenter;->c(Lcom/mh/movie/core/mvp/presenter/player/ScreeningPresenter;)Lcom/jess/arms/mvp/c;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/a/b/c$b;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/player/ScreeningPresenter$1;->a:Lcom/mh/movie/core/mvp/presenter/player/ScreeningPresenter;

    iget-object v1, v1, Lcom/mh/movie/core/mvp/presenter/player/ScreeningPresenter;->m:Ljava/lang/String;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/presenter/player/ScreeningPresenter$1;->a:Lcom/mh/movie/core/mvp/presenter/player/ScreeningPresenter;

    iget-object v2, v2, Lcom/mh/movie/core/mvp/presenter/player/ScreeningPresenter;->r:Ljava/util/List;

    iget-object v3, p0, Lcom/mh/movie/core/mvp/presenter/player/ScreeningPresenter$1;->a:Lcom/mh/movie/core/mvp/presenter/player/ScreeningPresenter;

    iget v3, v3, Lcom/mh/movie/core/mvp/presenter/player/ScreeningPresenter;->s:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/mh/movie/core/mvp/presenter/player/ScreeningPresenter$1;->a:Lcom/mh/movie/core/mvp/presenter/player/ScreeningPresenter;

    iget v3, v3, Lcom/mh/movie/core/mvp/presenter/player/ScreeningPresenter;->n:I

    invoke-interface {v0, v1, v2, v3}, Lcom/mh/movie/core/mvp/a/b/c$b;->a(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public a(ZLjava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    .line 80
    iget-object p1, p0, Lcom/mh/movie/core/mvp/presenter/player/ScreeningPresenter$1;->a:Lcom/mh/movie/core/mvp/presenter/player/ScreeningPresenter;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/presenter/player/ScreeningPresenter;->a(Lcom/mh/movie/core/mvp/presenter/player/ScreeningPresenter;)Lcom/jess/arms/mvp/c;

    move-result-object p1

    check-cast p1, Lcom/mh/movie/core/mvp/a/b/c$b;

    const-string p2, "\u51fa\u73b0\u9519\u8bef,\u8bf7\u91cd\u8bd5"

    invoke-interface {p1, p2}, Lcom/mh/movie/core/mvp/a/b/c$b;->c(Ljava/lang/String;)V

    .line 81
    iget-object p1, p0, Lcom/mh/movie/core/mvp/presenter/player/ScreeningPresenter$1;->a:Lcom/mh/movie/core/mvp/presenter/player/ScreeningPresenter;

    const-string p2, "failCastScreenWatch"

    invoke-virtual {p1, p2}, Lcom/mh/movie/core/mvp/presenter/player/ScreeningPresenter;->a(Ljava/lang/String;)V

    .line 82
    iget-object p1, p0, Lcom/mh/movie/core/mvp/presenter/player/ScreeningPresenter$1;->a:Lcom/mh/movie/core/mvp/presenter/player/ScreeningPresenter;

    const/4 p2, 0x0

    iput p2, p1, Lcom/mh/movie/core/mvp/presenter/player/ScreeningPresenter;->p:I

    return-void

    .line 85
    :cond_0
    iget-object p1, p0, Lcom/mh/movie/core/mvp/presenter/player/ScreeningPresenter$1;->a:Lcom/mh/movie/core/mvp/presenter/player/ScreeningPresenter;

    iget p1, p1, Lcom/mh/movie/core/mvp/presenter/player/ScreeningPresenter;->p:I

    const/4 p2, 0x1

    const-wide/16 v0, 0x64

    if-ne p1, p2, :cond_1

    .line 86
    iget-object p1, p0, Lcom/mh/movie/core/mvp/presenter/player/ScreeningPresenter$1;->a:Lcom/mh/movie/core/mvp/presenter/player/ScreeningPresenter;

    iget-object p1, p1, Lcom/mh/movie/core/mvp/presenter/player/ScreeningPresenter;->t:Landroid/os/Handler;

    new-instance p2, Lcom/mh/movie/core/mvp/presenter/player/k;

    invoke-direct {p2, p0}, Lcom/mh/movie/core/mvp/presenter/player/k;-><init>(Lcom/mh/movie/core/mvp/presenter/player/ScreeningPresenter$1;)V

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 88
    :cond_1
    iget-object p1, p0, Lcom/mh/movie/core/mvp/presenter/player/ScreeningPresenter$1;->a:Lcom/mh/movie/core/mvp/presenter/player/ScreeningPresenter;

    iget p1, p1, Lcom/mh/movie/core/mvp/presenter/player/ScreeningPresenter;->p:I

    const/4 p2, 0x2

    if-ne p1, p2, :cond_2

    .line 89
    iget-object p1, p0, Lcom/mh/movie/core/mvp/presenter/player/ScreeningPresenter$1;->a:Lcom/mh/movie/core/mvp/presenter/player/ScreeningPresenter;

    iget-object p1, p1, Lcom/mh/movie/core/mvp/presenter/player/ScreeningPresenter;->t:Landroid/os/Handler;

    new-instance p2, Lcom/mh/movie/core/mvp/presenter/player/l;

    invoke-direct {p2, p0}, Lcom/mh/movie/core/mvp/presenter/player/l;-><init>(Lcom/mh/movie/core/mvp/presenter/player/ScreeningPresenter$1;)V

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 90
    :cond_2
    iget-object p1, p0, Lcom/mh/movie/core/mvp/presenter/player/ScreeningPresenter$1;->a:Lcom/mh/movie/core/mvp/presenter/player/ScreeningPresenter;

    iget p1, p1, Lcom/mh/movie/core/mvp/presenter/player/ScreeningPresenter;->p:I

    const/4 p2, 0x3

    if-ne p1, p2, :cond_3

    .line 91
    iget-object p1, p0, Lcom/mh/movie/core/mvp/presenter/player/ScreeningPresenter$1;->a:Lcom/mh/movie/core/mvp/presenter/player/ScreeningPresenter;

    const-string p2, "castScreenWatch"

    invoke-virtual {p1, p2}, Lcom/mh/movie/core/mvp/presenter/player/ScreeningPresenter;->a(Ljava/lang/String;)V

    .line 93
    iget-object p1, p0, Lcom/mh/movie/core/mvp/presenter/player/ScreeningPresenter$1;->a:Lcom/mh/movie/core/mvp/presenter/player/ScreeningPresenter;

    iget-object p1, p1, Lcom/mh/movie/core/mvp/presenter/player/ScreeningPresenter;->t:Landroid/os/Handler;

    new-instance p2, Lcom/mh/movie/core/mvp/presenter/player/m;

    invoke-direct {p2, p0}, Lcom/mh/movie/core/mvp/presenter/player/m;-><init>(Lcom/mh/movie/core/mvp/presenter/player/ScreeningPresenter$1;)V

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    :goto_0
    return-void
.end method

.method final synthetic b()V
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/player/ScreeningPresenter$1;->a:Lcom/mh/movie/core/mvp/presenter/player/ScreeningPresenter;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/presenter/player/ScreeningPresenter;->h()V

    return-void
.end method

.method final synthetic c()V
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/player/ScreeningPresenter$1;->a:Lcom/mh/movie/core/mvp/presenter/player/ScreeningPresenter;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/presenter/player/ScreeningPresenter;->g()V

    return-void
.end method
