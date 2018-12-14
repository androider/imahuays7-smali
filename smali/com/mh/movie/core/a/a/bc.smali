.class public final Lcom/mh/movie/core/a/a/bc;
.super Ljava/lang/Object;
.source "DaggerRecommendComponent.java"

# interfaces
.implements Lcom/mh/movie/core/a/a/da;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mh/movie/core/a/a/bc$b;,
        Lcom/mh/movie/core/a/a/bc$e;,
        Lcom/mh/movie/core/a/a/bc$g;,
        Lcom/mh/movie/core/a/a/bc$c;,
        Lcom/mh/movie/core/a/a/bc$d;,
        Lcom/mh/movie/core/a/a/bc$f;,
        Lcom/mh/movie/core/a/a/bc$a;
    }
.end annotation


# instance fields
.field private a:Lcom/mh/movie/core/a/a/bc$f;

.field private b:Lcom/mh/movie/core/a/a/bc$d;

.field private c:Lcom/mh/movie/core/a/a/bc$c;

.field private d:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/model/RecommendModel;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/a/ar$a;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/a/ar$b;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/mh/movie/core/a/a/bc$g;

.field private h:Lcom/mh/movie/core/a/a/bc$e;

.field private i:Lcom/mh/movie/core/a/a/bc$b;

.field private j:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/presenter/RecommendPresenter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/mh/movie/core/a/a/bc$a;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-direct {p0, p1}, Lcom/mh/movie/core/a/a/bc;->a(Lcom/mh/movie/core/a/a/bc$a;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mh/movie/core/a/a/bc$a;Lcom/mh/movie/core/a/a/bc$1;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/mh/movie/core/a/a/bc;-><init>(Lcom/mh/movie/core/a/a/bc$a;)V

    return-void
.end method

.method public static a()Lcom/mh/movie/core/a/a/bc$a;
    .locals 2

    .line 55
    new-instance v0, Lcom/mh/movie/core/a/a/bc$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/bc$a;-><init>(Lcom/mh/movie/core/a/a/bc$1;)V

    return-object v0
.end method

.method private a(Lcom/mh/movie/core/a/a/bc$a;)V
    .locals 7

    .line 60
    new-instance v0, Lcom/mh/movie/core/a/a/bc$f;

    .line 61
    invoke-static {p1}, Lcom/mh/movie/core/a/a/bc$a;->a(Lcom/mh/movie/core/a/a/bc$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/bc$f;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/bc;->a:Lcom/mh/movie/core/a/a/bc$f;

    .line 62
    new-instance v0, Lcom/mh/movie/core/a/a/bc$d;

    invoke-static {p1}, Lcom/mh/movie/core/a/a/bc$a;->a(Lcom/mh/movie/core/a/a/bc$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/bc$d;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/bc;->b:Lcom/mh/movie/core/a/a/bc$d;

    .line 63
    new-instance v0, Lcom/mh/movie/core/a/a/bc$c;

    .line 64
    invoke-static {p1}, Lcom/mh/movie/core/a/a/bc$a;->a(Lcom/mh/movie/core/a/a/bc$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/bc$c;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/bc;->c:Lcom/mh/movie/core/a/a/bc$c;

    .line 65
    iget-object v0, p0, Lcom/mh/movie/core/a/a/bc;->a:Lcom/mh/movie/core/a/a/bc$f;

    iget-object v1, p0, Lcom/mh/movie/core/a/a/bc;->b:Lcom/mh/movie/core/a/a/bc$d;

    iget-object v2, p0, Lcom/mh/movie/core/a/a/bc;->c:Lcom/mh/movie/core/a/a/bc$c;

    .line 67
    invoke-static {v0, v1, v2}, Lcom/mh/movie/core/mvp/model/cc;->a(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/mh/movie/core/mvp/model/cc;

    move-result-object v0

    .line 66
    invoke-static {v0}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/a/a/bc;->d:Ljavax/inject/Provider;

    .line 72
    invoke-static {p1}, Lcom/mh/movie/core/a/a/bc$a;->b(Lcom/mh/movie/core/a/a/bc$a;)Lcom/mh/movie/core/a/b/dn;

    move-result-object v0

    iget-object v1, p0, Lcom/mh/movie/core/a/a/bc;->d:Ljavax/inject/Provider;

    .line 71
    invoke-static {v0, v1}, Lcom/mh/movie/core/a/b/do;->a(Lcom/mh/movie/core/a/b/dn;Ljavax/inject/Provider;)Lcom/mh/movie/core/a/b/do;

    move-result-object v0

    .line 70
    invoke-static {v0}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/a/a/bc;->e:Ljavax/inject/Provider;

    .line 75
    invoke-static {p1}, Lcom/mh/movie/core/a/a/bc$a;->b(Lcom/mh/movie/core/a/a/bc$a;)Lcom/mh/movie/core/a/b/dn;

    move-result-object v0

    invoke-static {v0}, Lcom/mh/movie/core/a/b/dp;->a(Lcom/mh/movie/core/a/b/dn;)Lcom/mh/movie/core/a/b/dp;

    move-result-object v0

    .line 74
    invoke-static {v0}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/a/a/bc;->f:Ljavax/inject/Provider;

    .line 76
    new-instance v0, Lcom/mh/movie/core/a/a/bc$g;

    .line 77
    invoke-static {p1}, Lcom/mh/movie/core/a/a/bc$a;->a(Lcom/mh/movie/core/a/a/bc$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/bc$g;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/bc;->g:Lcom/mh/movie/core/a/a/bc$g;

    .line 78
    new-instance v0, Lcom/mh/movie/core/a/a/bc$e;

    .line 79
    invoke-static {p1}, Lcom/mh/movie/core/a/a/bc$a;->a(Lcom/mh/movie/core/a/a/bc$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/bc$e;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/bc;->h:Lcom/mh/movie/core/a/a/bc$e;

    .line 80
    new-instance v0, Lcom/mh/movie/core/a/a/bc$b;

    .line 81
    invoke-static {p1}, Lcom/mh/movie/core/a/a/bc$a;->a(Lcom/mh/movie/core/a/a/bc$a;)Lcom/jess/arms/b/a/a;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/mh/movie/core/a/a/bc$b;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/bc;->i:Lcom/mh/movie/core/a/a/bc$b;

    .line 82
    iget-object v1, p0, Lcom/mh/movie/core/a/a/bc;->e:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/mh/movie/core/a/a/bc;->f:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/mh/movie/core/a/a/bc;->g:Lcom/mh/movie/core/a/a/bc$g;

    iget-object v4, p0, Lcom/mh/movie/core/a/a/bc;->c:Lcom/mh/movie/core/a/a/bc$c;

    iget-object v5, p0, Lcom/mh/movie/core/a/a/bc;->h:Lcom/mh/movie/core/a/a/bc$e;

    iget-object v6, p0, Lcom/mh/movie/core/a/a/bc;->i:Lcom/mh/movie/core/a/a/bc$b;

    .line 84
    invoke-static/range {v1 .. v6}, Lcom/mh/movie/core/mvp/presenter/cj;->a(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/mh/movie/core/mvp/presenter/cj;

    move-result-object p1

    .line 83
    invoke-static {p1}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/mh/movie/core/a/a/bc;->j:Ljavax/inject/Provider;

    return-void
.end method

.method private b(Lcom/mh/movie/core/mvp/ui/fragment/RecommendFragment;)Lcom/mh/movie/core/mvp/ui/fragment/RecommendFragment;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/mh/movie/core/a/a/bc;->j:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jess/arms/mvp/b;

    invoke-static {p1, v0}, Lcom/jess/arms/a/f;->a(Lcom/jess/arms/a/e;Lcom/jess/arms/mvp/b;)V

    return-object p1
.end method


# virtual methods
.method public a(Lcom/mh/movie/core/mvp/ui/fragment/RecommendFragment;)V
    .locals 0

    .line 95
    invoke-direct {p0, p1}, Lcom/mh/movie/core/a/a/bc;->b(Lcom/mh/movie/core/mvp/ui/fragment/RecommendFragment;)Lcom/mh/movie/core/mvp/ui/fragment/RecommendFragment;

    return-void
.end method
