.class public final Lcom/mh/movie/core/a/a/ar;
.super Ljava/lang/Object;
.source "DaggerMyComponent.java"

# interfaces
.implements Lcom/mh/movie/core/a/a/cp;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mh/movie/core/a/a/ar$b;,
        Lcom/mh/movie/core/a/a/ar$e;,
        Lcom/mh/movie/core/a/a/ar$g;,
        Lcom/mh/movie/core/a/a/ar$c;,
        Lcom/mh/movie/core/a/a/ar$d;,
        Lcom/mh/movie/core/a/a/ar$f;,
        Lcom/mh/movie/core/a/a/ar$a;
    }
.end annotation


# instance fields
.field private a:Lcom/mh/movie/core/a/a/ar$f;

.field private b:Lcom/mh/movie/core/a/a/ar$d;

.field private c:Lcom/mh/movie/core/a/a/ar$c;

.field private d:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/model/MyModel;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/a/ag$a;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/a/ag$b;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/mh/movie/core/a/a/ar$g;

.field private h:Lcom/mh/movie/core/a/a/ar$e;

.field private i:Lcom/mh/movie/core/a/a/ar$b;

.field private j:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/presenter/MyPresenter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/mh/movie/core/a/a/ar$a;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-direct {p0, p1}, Lcom/mh/movie/core/a/a/ar;->a(Lcom/mh/movie/core/a/a/ar$a;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mh/movie/core/a/a/ar$a;Lcom/mh/movie/core/a/a/ar$1;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/mh/movie/core/a/a/ar;-><init>(Lcom/mh/movie/core/a/a/ar$a;)V

    return-void
.end method

.method public static a()Lcom/mh/movie/core/a/a/ar$a;
    .locals 2

    .line 55
    new-instance v0, Lcom/mh/movie/core/a/a/ar$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/ar$a;-><init>(Lcom/mh/movie/core/a/a/ar$1;)V

    return-object v0
.end method

.method private a(Lcom/mh/movie/core/a/a/ar$a;)V
    .locals 7

    .line 60
    new-instance v0, Lcom/mh/movie/core/a/a/ar$f;

    .line 61
    invoke-static {p1}, Lcom/mh/movie/core/a/a/ar$a;->a(Lcom/mh/movie/core/a/a/ar$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/ar$f;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/ar;->a:Lcom/mh/movie/core/a/a/ar$f;

    .line 62
    new-instance v0, Lcom/mh/movie/core/a/a/ar$d;

    invoke-static {p1}, Lcom/mh/movie/core/a/a/ar$a;->a(Lcom/mh/movie/core/a/a/ar$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/ar$d;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/ar;->b:Lcom/mh/movie/core/a/a/ar$d;

    .line 63
    new-instance v0, Lcom/mh/movie/core/a/a/ar$c;

    .line 64
    invoke-static {p1}, Lcom/mh/movie/core/a/a/ar$a;->a(Lcom/mh/movie/core/a/a/ar$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/ar$c;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/ar;->c:Lcom/mh/movie/core/a/a/ar$c;

    .line 65
    iget-object v0, p0, Lcom/mh/movie/core/a/a/ar;->a:Lcom/mh/movie/core/a/a/ar$f;

    iget-object v1, p0, Lcom/mh/movie/core/a/a/ar;->b:Lcom/mh/movie/core/a/a/ar$d;

    iget-object v2, p0, Lcom/mh/movie/core/a/a/ar;->c:Lcom/mh/movie/core/a/a/ar$c;

    .line 67
    invoke-static {v0, v1, v2}, Lcom/mh/movie/core/mvp/model/bk;->a(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/mh/movie/core/mvp/model/bk;

    move-result-object v0

    .line 66
    invoke-static {v0}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/a/a/ar;->d:Ljavax/inject/Provider;

    .line 70
    invoke-static {p1}, Lcom/mh/movie/core/a/a/ar$a;->b(Lcom/mh/movie/core/a/a/ar$a;)Lcom/mh/movie/core/a/b/cm;

    move-result-object v0

    iget-object v1, p0, Lcom/mh/movie/core/a/a/ar;->d:Ljavax/inject/Provider;

    invoke-static {v0, v1}, Lcom/mh/movie/core/a/b/cn;->a(Lcom/mh/movie/core/a/b/cm;Ljavax/inject/Provider;)Lcom/mh/movie/core/a/b/cn;

    move-result-object v0

    .line 69
    invoke-static {v0}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/a/a/ar;->e:Ljavax/inject/Provider;

    .line 72
    invoke-static {p1}, Lcom/mh/movie/core/a/a/ar$a;->b(Lcom/mh/movie/core/a/a/ar$a;)Lcom/mh/movie/core/a/b/cm;

    move-result-object v0

    invoke-static {v0}, Lcom/mh/movie/core/a/b/co;->a(Lcom/mh/movie/core/a/b/cm;)Lcom/mh/movie/core/a/b/co;

    move-result-object v0

    invoke-static {v0}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/a/a/ar;->f:Ljavax/inject/Provider;

    .line 73
    new-instance v0, Lcom/mh/movie/core/a/a/ar$g;

    .line 74
    invoke-static {p1}, Lcom/mh/movie/core/a/a/ar$a;->a(Lcom/mh/movie/core/a/a/ar$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/ar$g;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/ar;->g:Lcom/mh/movie/core/a/a/ar$g;

    .line 75
    new-instance v0, Lcom/mh/movie/core/a/a/ar$e;

    .line 76
    invoke-static {p1}, Lcom/mh/movie/core/a/a/ar$a;->a(Lcom/mh/movie/core/a/a/ar$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/ar$e;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/ar;->h:Lcom/mh/movie/core/a/a/ar$e;

    .line 77
    new-instance v0, Lcom/mh/movie/core/a/a/ar$b;

    .line 78
    invoke-static {p1}, Lcom/mh/movie/core/a/a/ar$a;->a(Lcom/mh/movie/core/a/a/ar$a;)Lcom/jess/arms/b/a/a;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/mh/movie/core/a/a/ar$b;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/ar;->i:Lcom/mh/movie/core/a/a/ar$b;

    .line 79
    iget-object v1, p0, Lcom/mh/movie/core/a/a/ar;->e:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/mh/movie/core/a/a/ar;->f:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/mh/movie/core/a/a/ar;->g:Lcom/mh/movie/core/a/a/ar$g;

    iget-object v4, p0, Lcom/mh/movie/core/a/a/ar;->c:Lcom/mh/movie/core/a/a/ar$c;

    iget-object v5, p0, Lcom/mh/movie/core/a/a/ar;->h:Lcom/mh/movie/core/a/a/ar$e;

    iget-object v6, p0, Lcom/mh/movie/core/a/a/ar;->i:Lcom/mh/movie/core/a/a/ar$b;

    .line 81
    invoke-static/range {v1 .. v6}, Lcom/mh/movie/core/mvp/presenter/br;->a(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/mh/movie/core/mvp/presenter/br;

    move-result-object p1

    .line 80
    invoke-static {p1}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/mh/movie/core/a/a/ar;->j:Ljavax/inject/Provider;

    return-void
.end method

.method private b(Lcom/mh/movie/core/mvp/ui/fragment/MyFragment;)Lcom/mh/movie/core/mvp/ui/fragment/MyFragment;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/mh/movie/core/a/a/ar;->j:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jess/arms/mvp/b;

    invoke-static {p1, v0}, Lcom/jess/arms/a/f;->a(Lcom/jess/arms/a/e;Lcom/jess/arms/mvp/b;)V

    return-object p1
.end method


# virtual methods
.method public a(Lcom/mh/movie/core/mvp/ui/fragment/MyFragment;)V
    .locals 0

    .line 92
    invoke-direct {p0, p1}, Lcom/mh/movie/core/a/a/ar;->b(Lcom/mh/movie/core/mvp/ui/fragment/MyFragment;)Lcom/mh/movie/core/mvp/ui/fragment/MyFragment;

    return-void
.end method
