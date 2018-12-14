.class public final Lcom/mh/movie/core/a/a/bt;
.super Ljava/lang/Object;
.source "DaggerVipTvComponent.java"

# interfaces
.implements Lcom/mh/movie/core/a/a/dr;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mh/movie/core/a/a/bt$b;,
        Lcom/mh/movie/core/a/a/bt$e;,
        Lcom/mh/movie/core/a/a/bt$g;,
        Lcom/mh/movie/core/a/a/bt$c;,
        Lcom/mh/movie/core/a/a/bt$d;,
        Lcom/mh/movie/core/a/a/bt$f;,
        Lcom/mh/movie/core/a/a/bt$a;
    }
.end annotation


# instance fields
.field private a:Lcom/mh/movie/core/a/a/bt$f;

.field private b:Lcom/mh/movie/core/a/a/bt$d;

.field private c:Lcom/mh/movie/core/a/a/bt$c;

.field private d:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/model/VipTvModel;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/a/bj$a;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/a/bj$b;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/mh/movie/core/a/a/bt$g;

.field private h:Lcom/mh/movie/core/a/a/bt$e;

.field private i:Lcom/mh/movie/core/a/a/bt$b;

.field private j:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/presenter/VipTvPresenter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/mh/movie/core/a/a/bt$a;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-direct {p0, p1}, Lcom/mh/movie/core/a/a/bt;->a(Lcom/mh/movie/core/a/a/bt$a;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mh/movie/core/a/a/bt$a;Lcom/mh/movie/core/a/a/bt$1;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/mh/movie/core/a/a/bt;-><init>(Lcom/mh/movie/core/a/a/bt$a;)V

    return-void
.end method

.method public static a()Lcom/mh/movie/core/a/a/bt$a;
    .locals 2

    .line 55
    new-instance v0, Lcom/mh/movie/core/a/a/bt$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/bt$a;-><init>(Lcom/mh/movie/core/a/a/bt$1;)V

    return-object v0
.end method

.method private a(Lcom/mh/movie/core/a/a/bt$a;)V
    .locals 7

    .line 60
    new-instance v0, Lcom/mh/movie/core/a/a/bt$f;

    .line 61
    invoke-static {p1}, Lcom/mh/movie/core/a/a/bt$a;->a(Lcom/mh/movie/core/a/a/bt$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/bt$f;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/bt;->a:Lcom/mh/movie/core/a/a/bt$f;

    .line 62
    new-instance v0, Lcom/mh/movie/core/a/a/bt$d;

    invoke-static {p1}, Lcom/mh/movie/core/a/a/bt$a;->a(Lcom/mh/movie/core/a/a/bt$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/bt$d;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/bt;->b:Lcom/mh/movie/core/a/a/bt$d;

    .line 63
    new-instance v0, Lcom/mh/movie/core/a/a/bt$c;

    .line 64
    invoke-static {p1}, Lcom/mh/movie/core/a/a/bt$a;->a(Lcom/mh/movie/core/a/a/bt$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/bt$c;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/bt;->c:Lcom/mh/movie/core/a/a/bt$c;

    .line 65
    iget-object v0, p0, Lcom/mh/movie/core/a/a/bt;->a:Lcom/mh/movie/core/a/a/bt$f;

    iget-object v1, p0, Lcom/mh/movie/core/a/a/bt;->b:Lcom/mh/movie/core/a/a/bt$d;

    iget-object v2, p0, Lcom/mh/movie/core/a/a/bt;->c:Lcom/mh/movie/core/a/a/bt$c;

    .line 67
    invoke-static {v0, v1, v2}, Lcom/mh/movie/core/mvp/model/dk;->a(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/mh/movie/core/mvp/model/dk;

    move-result-object v0

    .line 66
    invoke-static {v0}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/a/a/bt;->d:Ljavax/inject/Provider;

    .line 71
    invoke-static {p1}, Lcom/mh/movie/core/a/a/bt$a;->b(Lcom/mh/movie/core/a/a/bt$a;)Lcom/mh/movie/core/a/b/fq;

    move-result-object v0

    iget-object v1, p0, Lcom/mh/movie/core/a/a/bt;->d:Ljavax/inject/Provider;

    invoke-static {v0, v1}, Lcom/mh/movie/core/a/b/fr;->a(Lcom/mh/movie/core/a/b/fq;Ljavax/inject/Provider;)Lcom/mh/movie/core/a/b/fr;

    move-result-object v0

    .line 70
    invoke-static {v0}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/a/a/bt;->e:Ljavax/inject/Provider;

    .line 73
    invoke-static {p1}, Lcom/mh/movie/core/a/a/bt$a;->b(Lcom/mh/movie/core/a/a/bt$a;)Lcom/mh/movie/core/a/b/fq;

    move-result-object v0

    invoke-static {v0}, Lcom/mh/movie/core/a/b/fs;->a(Lcom/mh/movie/core/a/b/fq;)Lcom/mh/movie/core/a/b/fs;

    move-result-object v0

    invoke-static {v0}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/a/a/bt;->f:Ljavax/inject/Provider;

    .line 74
    new-instance v0, Lcom/mh/movie/core/a/a/bt$g;

    .line 75
    invoke-static {p1}, Lcom/mh/movie/core/a/a/bt$a;->a(Lcom/mh/movie/core/a/a/bt$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/bt$g;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/bt;->g:Lcom/mh/movie/core/a/a/bt$g;

    .line 76
    new-instance v0, Lcom/mh/movie/core/a/a/bt$e;

    .line 77
    invoke-static {p1}, Lcom/mh/movie/core/a/a/bt$a;->a(Lcom/mh/movie/core/a/a/bt$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/bt$e;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/bt;->h:Lcom/mh/movie/core/a/a/bt$e;

    .line 78
    new-instance v0, Lcom/mh/movie/core/a/a/bt$b;

    .line 79
    invoke-static {p1}, Lcom/mh/movie/core/a/a/bt$a;->a(Lcom/mh/movie/core/a/a/bt$a;)Lcom/jess/arms/b/a/a;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/mh/movie/core/a/a/bt$b;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/bt;->i:Lcom/mh/movie/core/a/a/bt$b;

    .line 80
    iget-object v1, p0, Lcom/mh/movie/core/a/a/bt;->e:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/mh/movie/core/a/a/bt;->f:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/mh/movie/core/a/a/bt;->g:Lcom/mh/movie/core/a/a/bt$g;

    iget-object v4, p0, Lcom/mh/movie/core/a/a/bt;->c:Lcom/mh/movie/core/a/a/bt$c;

    iget-object v5, p0, Lcom/mh/movie/core/a/a/bt;->h:Lcom/mh/movie/core/a/a/bt$e;

    iget-object v6, p0, Lcom/mh/movie/core/a/a/bt;->i:Lcom/mh/movie/core/a/a/bt$b;

    .line 82
    invoke-static/range {v1 .. v6}, Lcom/mh/movie/core/mvp/presenter/dv;->a(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/mh/movie/core/mvp/presenter/dv;

    move-result-object p1

    .line 81
    invoke-static {p1}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/mh/movie/core/a/a/bt;->j:Ljavax/inject/Provider;

    return-void
.end method

.method private b(Lcom/mh/movie/core/mvp/ui/fragment/VipTvFragment;)Lcom/mh/movie/core/mvp/ui/fragment/VipTvFragment;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/mh/movie/core/a/a/bt;->j:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jess/arms/mvp/b;

    invoke-static {p1, v0}, Lcom/jess/arms/a/f;->a(Lcom/jess/arms/a/e;Lcom/jess/arms/mvp/b;)V

    return-object p1
.end method


# virtual methods
.method public a(Lcom/mh/movie/core/mvp/ui/fragment/VipTvFragment;)V
    .locals 0

    .line 93
    invoke-direct {p0, p1}, Lcom/mh/movie/core/a/a/bt;->b(Lcom/mh/movie/core/mvp/ui/fragment/VipTvFragment;)Lcom/mh/movie/core/mvp/ui/fragment/VipTvFragment;

    return-void
.end method
