.class public final Lcom/mh/movie/core/a/a/ak;
.super Ljava/lang/Object;
.source "DaggerMainComponent.java"

# interfaces
.implements Lcom/mh/movie/core/a/a/ci;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mh/movie/core/a/a/ak$b;,
        Lcom/mh/movie/core/a/a/ak$e;,
        Lcom/mh/movie/core/a/a/ak$g;,
        Lcom/mh/movie/core/a/a/ak$c;,
        Lcom/mh/movie/core/a/a/ak$d;,
        Lcom/mh/movie/core/a/a/ak$f;,
        Lcom/mh/movie/core/a/a/ak$a;
    }
.end annotation


# instance fields
.field private a:Lcom/mh/movie/core/a/a/ak$f;

.field private b:Lcom/mh/movie/core/a/a/ak$d;

.field private c:Lcom/mh/movie/core/a/a/ak$c;

.field private d:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/model/MainModel;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/a/x$a;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/a/x$b;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/mh/movie/core/a/a/ak$g;

.field private h:Lcom/mh/movie/core/a/a/ak$e;

.field private i:Lcom/mh/movie/core/a/a/ak$b;

.field private j:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/presenter/MainPresenter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/mh/movie/core/a/a/ak$a;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-direct {p0, p1}, Lcom/mh/movie/core/a/a/ak;->a(Lcom/mh/movie/core/a/a/ak$a;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mh/movie/core/a/a/ak$a;Lcom/mh/movie/core/a/a/ak$1;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/mh/movie/core/a/a/ak;-><init>(Lcom/mh/movie/core/a/a/ak$a;)V

    return-void
.end method

.method public static a()Lcom/mh/movie/core/a/a/ak$a;
    .locals 2

    .line 55
    new-instance v0, Lcom/mh/movie/core/a/a/ak$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/ak$a;-><init>(Lcom/mh/movie/core/a/a/ak$1;)V

    return-object v0
.end method

.method private a(Lcom/mh/movie/core/a/a/ak$a;)V
    .locals 7

    .line 60
    new-instance v0, Lcom/mh/movie/core/a/a/ak$f;

    .line 61
    invoke-static {p1}, Lcom/mh/movie/core/a/a/ak$a;->a(Lcom/mh/movie/core/a/a/ak$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/ak$f;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/ak;->a:Lcom/mh/movie/core/a/a/ak$f;

    .line 62
    new-instance v0, Lcom/mh/movie/core/a/a/ak$d;

    invoke-static {p1}, Lcom/mh/movie/core/a/a/ak$a;->a(Lcom/mh/movie/core/a/a/ak$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/ak$d;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/ak;->b:Lcom/mh/movie/core/a/a/ak$d;

    .line 63
    new-instance v0, Lcom/mh/movie/core/a/a/ak$c;

    .line 64
    invoke-static {p1}, Lcom/mh/movie/core/a/a/ak$a;->a(Lcom/mh/movie/core/a/a/ak$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/ak$c;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/ak;->c:Lcom/mh/movie/core/a/a/ak$c;

    .line 65
    iget-object v0, p0, Lcom/mh/movie/core/a/a/ak;->a:Lcom/mh/movie/core/a/a/ak$f;

    iget-object v1, p0, Lcom/mh/movie/core/a/a/ak;->b:Lcom/mh/movie/core/a/a/ak$d;

    iget-object v2, p0, Lcom/mh/movie/core/a/a/ak;->c:Lcom/mh/movie/core/a/a/ak$c;

    .line 67
    invoke-static {v0, v1, v2}, Lcom/mh/movie/core/mvp/model/as;->a(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/mh/movie/core/mvp/model/as;

    move-result-object v0

    .line 66
    invoke-static {v0}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/a/a/ak;->d:Ljavax/inject/Provider;

    .line 70
    invoke-static {p1}, Lcom/mh/movie/core/a/a/ak$a;->b(Lcom/mh/movie/core/a/a/ak$a;)Lcom/mh/movie/core/a/b/bl;

    move-result-object v0

    iget-object v1, p0, Lcom/mh/movie/core/a/a/ak;->d:Ljavax/inject/Provider;

    invoke-static {v0, v1}, Lcom/mh/movie/core/a/b/bm;->a(Lcom/mh/movie/core/a/b/bl;Ljavax/inject/Provider;)Lcom/mh/movie/core/a/b/bm;

    move-result-object v0

    .line 69
    invoke-static {v0}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/a/a/ak;->e:Ljavax/inject/Provider;

    .line 72
    invoke-static {p1}, Lcom/mh/movie/core/a/a/ak$a;->b(Lcom/mh/movie/core/a/a/ak$a;)Lcom/mh/movie/core/a/b/bl;

    move-result-object v0

    invoke-static {v0}, Lcom/mh/movie/core/a/b/bn;->a(Lcom/mh/movie/core/a/b/bl;)Lcom/mh/movie/core/a/b/bn;

    move-result-object v0

    invoke-static {v0}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/a/a/ak;->f:Ljavax/inject/Provider;

    .line 73
    new-instance v0, Lcom/mh/movie/core/a/a/ak$g;

    .line 74
    invoke-static {p1}, Lcom/mh/movie/core/a/a/ak$a;->a(Lcom/mh/movie/core/a/a/ak$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/ak$g;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/ak;->g:Lcom/mh/movie/core/a/a/ak$g;

    .line 75
    new-instance v0, Lcom/mh/movie/core/a/a/ak$e;

    .line 76
    invoke-static {p1}, Lcom/mh/movie/core/a/a/ak$a;->a(Lcom/mh/movie/core/a/a/ak$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/ak$e;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/ak;->h:Lcom/mh/movie/core/a/a/ak$e;

    .line 77
    new-instance v0, Lcom/mh/movie/core/a/a/ak$b;

    .line 78
    invoke-static {p1}, Lcom/mh/movie/core/a/a/ak$a;->a(Lcom/mh/movie/core/a/a/ak$a;)Lcom/jess/arms/b/a/a;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/mh/movie/core/a/a/ak$b;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/ak;->i:Lcom/mh/movie/core/a/a/ak$b;

    .line 79
    iget-object v1, p0, Lcom/mh/movie/core/a/a/ak;->e:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/mh/movie/core/a/a/ak;->f:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/mh/movie/core/a/a/ak;->g:Lcom/mh/movie/core/a/a/ak$g;

    iget-object v4, p0, Lcom/mh/movie/core/a/a/ak;->c:Lcom/mh/movie/core/a/a/ak$c;

    iget-object v5, p0, Lcom/mh/movie/core/a/a/ak;->h:Lcom/mh/movie/core/a/a/ak$e;

    iget-object v6, p0, Lcom/mh/movie/core/a/a/ak;->i:Lcom/mh/movie/core/a/a/ak$b;

    .line 81
    invoke-static/range {v1 .. v6}, Lcom/mh/movie/core/mvp/presenter/az;->a(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/mh/movie/core/mvp/presenter/az;

    move-result-object p1

    .line 80
    invoke-static {p1}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/mh/movie/core/a/a/ak;->j:Ljavax/inject/Provider;

    return-void
.end method

.method private b(Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;)Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/mh/movie/core/a/a/ak;->j:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jess/arms/mvp/b;

    invoke-static {p1, v0}, Lcom/jess/arms/a/f;->a(Lcom/jess/arms/a/e;Lcom/jess/arms/mvp/b;)V

    return-object p1
.end method


# virtual methods
.method public a(Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;)V
    .locals 0

    .line 92
    invoke-direct {p0, p1}, Lcom/mh/movie/core/a/a/ak;->b(Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;)Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;

    return-void
.end method
