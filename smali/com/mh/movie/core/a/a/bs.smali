.class public final Lcom/mh/movie/core/a/a/bs;
.super Ljava/lang/Object;
.source "DaggerVipMovieComponent.java"

# interfaces
.implements Lcom/mh/movie/core/a/a/dq;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mh/movie/core/a/a/bs$b;,
        Lcom/mh/movie/core/a/a/bs$e;,
        Lcom/mh/movie/core/a/a/bs$g;,
        Lcom/mh/movie/core/a/a/bs$c;,
        Lcom/mh/movie/core/a/a/bs$d;,
        Lcom/mh/movie/core/a/a/bs$f;,
        Lcom/mh/movie/core/a/a/bs$a;
    }
.end annotation


# instance fields
.field private a:Lcom/mh/movie/core/a/a/bs$f;

.field private b:Lcom/mh/movie/core/a/a/bs$d;

.field private c:Lcom/mh/movie/core/a/a/bs$c;

.field private d:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/model/VipMovieModel;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/a/bi$a;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/a/bi$b;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/mh/movie/core/a/a/bs$g;

.field private h:Lcom/mh/movie/core/a/a/bs$e;

.field private i:Lcom/mh/movie/core/a/a/bs$b;

.field private j:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/presenter/VipMoviePresenter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/mh/movie/core/a/a/bs$a;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-direct {p0, p1}, Lcom/mh/movie/core/a/a/bs;->a(Lcom/mh/movie/core/a/a/bs$a;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mh/movie/core/a/a/bs$a;Lcom/mh/movie/core/a/a/bs$1;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/mh/movie/core/a/a/bs;-><init>(Lcom/mh/movie/core/a/a/bs$a;)V

    return-void
.end method

.method public static a()Lcom/mh/movie/core/a/a/bs$a;
    .locals 2

    .line 55
    new-instance v0, Lcom/mh/movie/core/a/a/bs$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/bs$a;-><init>(Lcom/mh/movie/core/a/a/bs$1;)V

    return-object v0
.end method

.method private a(Lcom/mh/movie/core/a/a/bs$a;)V
    .locals 7

    .line 60
    new-instance v0, Lcom/mh/movie/core/a/a/bs$f;

    .line 61
    invoke-static {p1}, Lcom/mh/movie/core/a/a/bs$a;->a(Lcom/mh/movie/core/a/a/bs$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/bs$f;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/bs;->a:Lcom/mh/movie/core/a/a/bs$f;

    .line 62
    new-instance v0, Lcom/mh/movie/core/a/a/bs$d;

    invoke-static {p1}, Lcom/mh/movie/core/a/a/bs$a;->a(Lcom/mh/movie/core/a/a/bs$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/bs$d;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/bs;->b:Lcom/mh/movie/core/a/a/bs$d;

    .line 63
    new-instance v0, Lcom/mh/movie/core/a/a/bs$c;

    .line 64
    invoke-static {p1}, Lcom/mh/movie/core/a/a/bs$a;->a(Lcom/mh/movie/core/a/a/bs$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/bs$c;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/bs;->c:Lcom/mh/movie/core/a/a/bs$c;

    .line 65
    iget-object v0, p0, Lcom/mh/movie/core/a/a/bs;->a:Lcom/mh/movie/core/a/a/bs$f;

    iget-object v1, p0, Lcom/mh/movie/core/a/a/bs;->b:Lcom/mh/movie/core/a/a/bs$d;

    iget-object v2, p0, Lcom/mh/movie/core/a/a/bs;->c:Lcom/mh/movie/core/a/a/bs$c;

    .line 67
    invoke-static {v0, v1, v2}, Lcom/mh/movie/core/mvp/model/di;->a(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/mh/movie/core/mvp/model/di;

    move-result-object v0

    .line 66
    invoke-static {v0}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/a/a/bs;->d:Ljavax/inject/Provider;

    .line 72
    invoke-static {p1}, Lcom/mh/movie/core/a/a/bs$a;->b(Lcom/mh/movie/core/a/a/bs$a;)Lcom/mh/movie/core/a/b/fn;

    move-result-object v0

    iget-object v1, p0, Lcom/mh/movie/core/a/a/bs;->d:Ljavax/inject/Provider;

    .line 71
    invoke-static {v0, v1}, Lcom/mh/movie/core/a/b/fo;->a(Lcom/mh/movie/core/a/b/fn;Ljavax/inject/Provider;)Lcom/mh/movie/core/a/b/fo;

    move-result-object v0

    .line 70
    invoke-static {v0}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/a/a/bs;->e:Ljavax/inject/Provider;

    .line 75
    invoke-static {p1}, Lcom/mh/movie/core/a/a/bs$a;->b(Lcom/mh/movie/core/a/a/bs$a;)Lcom/mh/movie/core/a/b/fn;

    move-result-object v0

    invoke-static {v0}, Lcom/mh/movie/core/a/b/fp;->a(Lcom/mh/movie/core/a/b/fn;)Lcom/mh/movie/core/a/b/fp;

    move-result-object v0

    .line 74
    invoke-static {v0}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/a/a/bs;->f:Ljavax/inject/Provider;

    .line 76
    new-instance v0, Lcom/mh/movie/core/a/a/bs$g;

    .line 77
    invoke-static {p1}, Lcom/mh/movie/core/a/a/bs$a;->a(Lcom/mh/movie/core/a/a/bs$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/bs$g;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/bs;->g:Lcom/mh/movie/core/a/a/bs$g;

    .line 78
    new-instance v0, Lcom/mh/movie/core/a/a/bs$e;

    .line 79
    invoke-static {p1}, Lcom/mh/movie/core/a/a/bs$a;->a(Lcom/mh/movie/core/a/a/bs$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/bs$e;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/bs;->h:Lcom/mh/movie/core/a/a/bs$e;

    .line 80
    new-instance v0, Lcom/mh/movie/core/a/a/bs$b;

    .line 81
    invoke-static {p1}, Lcom/mh/movie/core/a/a/bs$a;->a(Lcom/mh/movie/core/a/a/bs$a;)Lcom/jess/arms/b/a/a;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/mh/movie/core/a/a/bs$b;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/bs;->i:Lcom/mh/movie/core/a/a/bs$b;

    .line 82
    iget-object v1, p0, Lcom/mh/movie/core/a/a/bs;->e:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/mh/movie/core/a/a/bs;->f:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/mh/movie/core/a/a/bs;->g:Lcom/mh/movie/core/a/a/bs$g;

    iget-object v4, p0, Lcom/mh/movie/core/a/a/bs;->c:Lcom/mh/movie/core/a/a/bs$c;

    iget-object v5, p0, Lcom/mh/movie/core/a/a/bs;->h:Lcom/mh/movie/core/a/a/bs$e;

    iget-object v6, p0, Lcom/mh/movie/core/a/a/bs;->i:Lcom/mh/movie/core/a/a/bs$b;

    .line 84
    invoke-static/range {v1 .. v6}, Lcom/mh/movie/core/mvp/presenter/dr;->a(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/mh/movie/core/mvp/presenter/dr;

    move-result-object p1

    .line 83
    invoke-static {p1}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/mh/movie/core/a/a/bs;->j:Ljavax/inject/Provider;

    return-void
.end method

.method private b(Lcom/mh/movie/core/mvp/ui/fragment/VipMovieFragment;)Lcom/mh/movie/core/mvp/ui/fragment/VipMovieFragment;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/mh/movie/core/a/a/bs;->j:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jess/arms/mvp/b;

    invoke-static {p1, v0}, Lcom/jess/arms/a/f;->a(Lcom/jess/arms/a/e;Lcom/jess/arms/mvp/b;)V

    return-object p1
.end method


# virtual methods
.method public a(Lcom/mh/movie/core/mvp/ui/fragment/VipMovieFragment;)V
    .locals 0

    .line 95
    invoke-direct {p0, p1}, Lcom/mh/movie/core/a/a/bs;->b(Lcom/mh/movie/core/mvp/ui/fragment/VipMovieFragment;)Lcom/mh/movie/core/mvp/ui/fragment/VipMovieFragment;

    return-void
.end method
