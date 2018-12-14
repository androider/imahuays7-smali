.class public final Lcom/mh/movie/core/a/a/ap;
.super Ljava/lang/Object;
.source "DaggerMovieComponent.java"

# interfaces
.implements Lcom/mh/movie/core/a/a/cn;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mh/movie/core/a/a/ap$b;,
        Lcom/mh/movie/core/a/a/ap$e;,
        Lcom/mh/movie/core/a/a/ap$g;,
        Lcom/mh/movie/core/a/a/ap$c;,
        Lcom/mh/movie/core/a/a/ap$d;,
        Lcom/mh/movie/core/a/a/ap$f;,
        Lcom/mh/movie/core/a/a/ap$a;
    }
.end annotation


# instance fields
.field private a:Lcom/mh/movie/core/a/a/ap$f;

.field private b:Lcom/mh/movie/core/a/a/ap$d;

.field private c:Lcom/mh/movie/core/a/a/ap$c;

.field private d:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/model/MovieModel;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/a/ac$a;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/a/ac$b;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/mh/movie/core/a/a/ap$g;

.field private h:Lcom/mh/movie/core/a/a/ap$e;

.field private i:Lcom/mh/movie/core/a/a/ap$b;

.field private j:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/presenter/MoviePresenter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/mh/movie/core/a/a/ap$a;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-direct {p0, p1}, Lcom/mh/movie/core/a/a/ap;->a(Lcom/mh/movie/core/a/a/ap$a;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mh/movie/core/a/a/ap$a;Lcom/mh/movie/core/a/a/ap$1;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/mh/movie/core/a/a/ap;-><init>(Lcom/mh/movie/core/a/a/ap$a;)V

    return-void
.end method

.method public static a()Lcom/mh/movie/core/a/a/ap$a;
    .locals 2

    .line 55
    new-instance v0, Lcom/mh/movie/core/a/a/ap$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/ap$a;-><init>(Lcom/mh/movie/core/a/a/ap$1;)V

    return-object v0
.end method

.method private a(Lcom/mh/movie/core/a/a/ap$a;)V
    .locals 7

    .line 60
    new-instance v0, Lcom/mh/movie/core/a/a/ap$f;

    .line 61
    invoke-static {p1}, Lcom/mh/movie/core/a/a/ap$a;->a(Lcom/mh/movie/core/a/a/ap$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/ap$f;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/ap;->a:Lcom/mh/movie/core/a/a/ap$f;

    .line 62
    new-instance v0, Lcom/mh/movie/core/a/a/ap$d;

    invoke-static {p1}, Lcom/mh/movie/core/a/a/ap$a;->a(Lcom/mh/movie/core/a/a/ap$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/ap$d;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/ap;->b:Lcom/mh/movie/core/a/a/ap$d;

    .line 63
    new-instance v0, Lcom/mh/movie/core/a/a/ap$c;

    .line 64
    invoke-static {p1}, Lcom/mh/movie/core/a/a/ap$a;->a(Lcom/mh/movie/core/a/a/ap$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/ap$c;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/ap;->c:Lcom/mh/movie/core/a/a/ap$c;

    .line 65
    iget-object v0, p0, Lcom/mh/movie/core/a/a/ap;->a:Lcom/mh/movie/core/a/a/ap$f;

    iget-object v1, p0, Lcom/mh/movie/core/a/a/ap;->b:Lcom/mh/movie/core/a/a/ap$d;

    iget-object v2, p0, Lcom/mh/movie/core/a/a/ap;->c:Lcom/mh/movie/core/a/a/ap$c;

    .line 67
    invoke-static {v0, v1, v2}, Lcom/mh/movie/core/mvp/model/bc;->a(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/mh/movie/core/mvp/model/bc;

    move-result-object v0

    .line 66
    invoke-static {v0}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/a/a/ap;->d:Ljavax/inject/Provider;

    .line 71
    invoke-static {p1}, Lcom/mh/movie/core/a/a/ap$a;->b(Lcom/mh/movie/core/a/a/ap$a;)Lcom/mh/movie/core/a/b/ca;

    move-result-object v0

    iget-object v1, p0, Lcom/mh/movie/core/a/a/ap;->d:Ljavax/inject/Provider;

    invoke-static {v0, v1}, Lcom/mh/movie/core/a/b/cb;->a(Lcom/mh/movie/core/a/b/ca;Ljavax/inject/Provider;)Lcom/mh/movie/core/a/b/cb;

    move-result-object v0

    .line 70
    invoke-static {v0}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/a/a/ap;->e:Ljavax/inject/Provider;

    .line 73
    invoke-static {p1}, Lcom/mh/movie/core/a/a/ap$a;->b(Lcom/mh/movie/core/a/a/ap$a;)Lcom/mh/movie/core/a/b/ca;

    move-result-object v0

    invoke-static {v0}, Lcom/mh/movie/core/a/b/cc;->a(Lcom/mh/movie/core/a/b/ca;)Lcom/mh/movie/core/a/b/cc;

    move-result-object v0

    invoke-static {v0}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/a/a/ap;->f:Ljavax/inject/Provider;

    .line 74
    new-instance v0, Lcom/mh/movie/core/a/a/ap$g;

    .line 75
    invoke-static {p1}, Lcom/mh/movie/core/a/a/ap$a;->a(Lcom/mh/movie/core/a/a/ap$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/ap$g;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/ap;->g:Lcom/mh/movie/core/a/a/ap$g;

    .line 76
    new-instance v0, Lcom/mh/movie/core/a/a/ap$e;

    .line 77
    invoke-static {p1}, Lcom/mh/movie/core/a/a/ap$a;->a(Lcom/mh/movie/core/a/a/ap$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/ap$e;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/ap;->h:Lcom/mh/movie/core/a/a/ap$e;

    .line 78
    new-instance v0, Lcom/mh/movie/core/a/a/ap$b;

    .line 79
    invoke-static {p1}, Lcom/mh/movie/core/a/a/ap$a;->a(Lcom/mh/movie/core/a/a/ap$a;)Lcom/jess/arms/b/a/a;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/mh/movie/core/a/a/ap$b;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/ap;->i:Lcom/mh/movie/core/a/a/ap$b;

    .line 80
    iget-object v1, p0, Lcom/mh/movie/core/a/a/ap;->e:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/mh/movie/core/a/a/ap;->f:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/mh/movie/core/a/a/ap;->g:Lcom/mh/movie/core/a/a/ap$g;

    iget-object v4, p0, Lcom/mh/movie/core/a/a/ap;->c:Lcom/mh/movie/core/a/a/ap$c;

    iget-object v5, p0, Lcom/mh/movie/core/a/a/ap;->h:Lcom/mh/movie/core/a/a/ap$e;

    iget-object v6, p0, Lcom/mh/movie/core/a/a/ap;->i:Lcom/mh/movie/core/a/a/ap$b;

    .line 82
    invoke-static/range {v1 .. v6}, Lcom/mh/movie/core/mvp/presenter/bj;->a(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/mh/movie/core/mvp/presenter/bj;

    move-result-object p1

    .line 81
    invoke-static {p1}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/mh/movie/core/a/a/ap;->j:Ljavax/inject/Provider;

    return-void
.end method

.method private b(Lcom/mh/movie/core/mvp/ui/fragment/MovieFragment;)Lcom/mh/movie/core/mvp/ui/fragment/MovieFragment;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/mh/movie/core/a/a/ap;->j:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jess/arms/mvp/b;

    invoke-static {p1, v0}, Lcom/jess/arms/a/f;->a(Lcom/jess/arms/a/e;Lcom/jess/arms/mvp/b;)V

    return-object p1
.end method


# virtual methods
.method public a(Lcom/mh/movie/core/mvp/ui/fragment/MovieFragment;)V
    .locals 0

    .line 93
    invoke-direct {p0, p1}, Lcom/mh/movie/core/a/a/ap;->b(Lcom/mh/movie/core/mvp/ui/fragment/MovieFragment;)Lcom/mh/movie/core/mvp/ui/fragment/MovieFragment;

    return-void
.end method
