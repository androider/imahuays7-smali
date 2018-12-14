.class public final Lcom/mh/movie/core/a/a/bo;
.super Ljava/lang/Object;
.source "DaggerTvComponent.java"

# interfaces
.implements Lcom/mh/movie/core/a/a/dm;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mh/movie/core/a/a/bo$b;,
        Lcom/mh/movie/core/a/a/bo$e;,
        Lcom/mh/movie/core/a/a/bo$g;,
        Lcom/mh/movie/core/a/a/bo$c;,
        Lcom/mh/movie/core/a/a/bo$d;,
        Lcom/mh/movie/core/a/a/bo$f;,
        Lcom/mh/movie/core/a/a/bo$a;
    }
.end annotation


# instance fields
.field private a:Lcom/mh/movie/core/a/a/bo$f;

.field private b:Lcom/mh/movie/core/a/a/bo$d;

.field private c:Lcom/mh/movie/core/a/a/bo$c;

.field private d:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/model/TvModel;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/a/be$a;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/a/be$b;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/mh/movie/core/a/a/bo$g;

.field private h:Lcom/mh/movie/core/a/a/bo$e;

.field private i:Lcom/mh/movie/core/a/a/bo$b;

.field private j:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/presenter/TvPresenter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/mh/movie/core/a/a/bo$a;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-direct {p0, p1}, Lcom/mh/movie/core/a/a/bo;->a(Lcom/mh/movie/core/a/a/bo$a;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mh/movie/core/a/a/bo$a;Lcom/mh/movie/core/a/a/bo$1;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/mh/movie/core/a/a/bo;-><init>(Lcom/mh/movie/core/a/a/bo$a;)V

    return-void
.end method

.method public static a()Lcom/mh/movie/core/a/a/bo$a;
    .locals 2

    .line 55
    new-instance v0, Lcom/mh/movie/core/a/a/bo$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/bo$a;-><init>(Lcom/mh/movie/core/a/a/bo$1;)V

    return-object v0
.end method

.method private a(Lcom/mh/movie/core/a/a/bo$a;)V
    .locals 7

    .line 60
    new-instance v0, Lcom/mh/movie/core/a/a/bo$f;

    .line 61
    invoke-static {p1}, Lcom/mh/movie/core/a/a/bo$a;->a(Lcom/mh/movie/core/a/a/bo$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/bo$f;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/bo;->a:Lcom/mh/movie/core/a/a/bo$f;

    .line 62
    new-instance v0, Lcom/mh/movie/core/a/a/bo$d;

    invoke-static {p1}, Lcom/mh/movie/core/a/a/bo$a;->a(Lcom/mh/movie/core/a/a/bo$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/bo$d;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/bo;->b:Lcom/mh/movie/core/a/a/bo$d;

    .line 63
    new-instance v0, Lcom/mh/movie/core/a/a/bo$c;

    .line 64
    invoke-static {p1}, Lcom/mh/movie/core/a/a/bo$a;->a(Lcom/mh/movie/core/a/a/bo$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/bo$c;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/bo;->c:Lcom/mh/movie/core/a/a/bo$c;

    .line 65
    iget-object v0, p0, Lcom/mh/movie/core/a/a/bo;->a:Lcom/mh/movie/core/a/a/bo$f;

    iget-object v1, p0, Lcom/mh/movie/core/a/a/bo;->b:Lcom/mh/movie/core/a/a/bo$d;

    iget-object v2, p0, Lcom/mh/movie/core/a/a/bo;->c:Lcom/mh/movie/core/a/a/bo$c;

    .line 67
    invoke-static {v0, v1, v2}, Lcom/mh/movie/core/mvp/model/da;->a(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/mh/movie/core/mvp/model/da;

    move-result-object v0

    .line 66
    invoke-static {v0}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/a/a/bo;->d:Ljavax/inject/Provider;

    .line 70
    invoke-static {p1}, Lcom/mh/movie/core/a/a/bo$a;->b(Lcom/mh/movie/core/a/a/bo$a;)Lcom/mh/movie/core/a/b/ex;

    move-result-object v0

    iget-object v1, p0, Lcom/mh/movie/core/a/a/bo;->d:Ljavax/inject/Provider;

    invoke-static {v0, v1}, Lcom/mh/movie/core/a/b/ey;->a(Lcom/mh/movie/core/a/b/ex;Ljavax/inject/Provider;)Lcom/mh/movie/core/a/b/ey;

    move-result-object v0

    .line 69
    invoke-static {v0}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/a/a/bo;->e:Ljavax/inject/Provider;

    .line 72
    invoke-static {p1}, Lcom/mh/movie/core/a/a/bo$a;->b(Lcom/mh/movie/core/a/a/bo$a;)Lcom/mh/movie/core/a/b/ex;

    move-result-object v0

    invoke-static {v0}, Lcom/mh/movie/core/a/b/ez;->a(Lcom/mh/movie/core/a/b/ex;)Lcom/mh/movie/core/a/b/ez;

    move-result-object v0

    invoke-static {v0}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/a/a/bo;->f:Ljavax/inject/Provider;

    .line 73
    new-instance v0, Lcom/mh/movie/core/a/a/bo$g;

    .line 74
    invoke-static {p1}, Lcom/mh/movie/core/a/a/bo$a;->a(Lcom/mh/movie/core/a/a/bo$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/bo$g;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/bo;->g:Lcom/mh/movie/core/a/a/bo$g;

    .line 75
    new-instance v0, Lcom/mh/movie/core/a/a/bo$e;

    .line 76
    invoke-static {p1}, Lcom/mh/movie/core/a/a/bo$a;->a(Lcom/mh/movie/core/a/a/bo$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/bo$e;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/bo;->h:Lcom/mh/movie/core/a/a/bo$e;

    .line 77
    new-instance v0, Lcom/mh/movie/core/a/a/bo$b;

    .line 78
    invoke-static {p1}, Lcom/mh/movie/core/a/a/bo$a;->a(Lcom/mh/movie/core/a/a/bo$a;)Lcom/jess/arms/b/a/a;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/mh/movie/core/a/a/bo$b;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/bo;->i:Lcom/mh/movie/core/a/a/bo$b;

    .line 79
    iget-object v1, p0, Lcom/mh/movie/core/a/a/bo;->e:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/mh/movie/core/a/a/bo;->f:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/mh/movie/core/a/a/bo;->g:Lcom/mh/movie/core/a/a/bo$g;

    iget-object v4, p0, Lcom/mh/movie/core/a/a/bo;->c:Lcom/mh/movie/core/a/a/bo$c;

    iget-object v5, p0, Lcom/mh/movie/core/a/a/bo;->h:Lcom/mh/movie/core/a/a/bo$e;

    iget-object v6, p0, Lcom/mh/movie/core/a/a/bo;->i:Lcom/mh/movie/core/a/a/bo$b;

    .line 81
    invoke-static/range {v1 .. v6}, Lcom/mh/movie/core/mvp/presenter/dj;->a(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/mh/movie/core/mvp/presenter/dj;

    move-result-object p1

    .line 80
    invoke-static {p1}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/mh/movie/core/a/a/bo;->j:Ljavax/inject/Provider;

    return-void
.end method

.method private b(Lcom/mh/movie/core/mvp/ui/fragment/TvFragment;)Lcom/mh/movie/core/mvp/ui/fragment/TvFragment;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/mh/movie/core/a/a/bo;->j:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jess/arms/mvp/b;

    invoke-static {p1, v0}, Lcom/jess/arms/a/f;->a(Lcom/jess/arms/a/e;Lcom/jess/arms/mvp/b;)V

    return-object p1
.end method


# virtual methods
.method public a(Lcom/mh/movie/core/mvp/ui/fragment/TvFragment;)V
    .locals 0

    .line 92
    invoke-direct {p0, p1}, Lcom/mh/movie/core/a/a/bo;->b(Lcom/mh/movie/core/mvp/ui/fragment/TvFragment;)Lcom/mh/movie/core/mvp/ui/fragment/TvFragment;

    return-void
.end method
