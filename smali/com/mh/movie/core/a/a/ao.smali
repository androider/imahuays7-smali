.class public final Lcom/mh/movie/core/a/a/ao;
.super Ljava/lang/Object;
.source "DaggerMoreComponent.java"

# interfaces
.implements Lcom/mh/movie/core/a/a/cm;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mh/movie/core/a/a/ao$b;,
        Lcom/mh/movie/core/a/a/ao$e;,
        Lcom/mh/movie/core/a/a/ao$g;,
        Lcom/mh/movie/core/a/a/ao$c;,
        Lcom/mh/movie/core/a/a/ao$d;,
        Lcom/mh/movie/core/a/a/ao$f;,
        Lcom/mh/movie/core/a/a/ao$a;
    }
.end annotation


# instance fields
.field private a:Lcom/mh/movie/core/a/a/ao$f;

.field private b:Lcom/mh/movie/core/a/a/ao$d;

.field private c:Lcom/mh/movie/core/a/a/ao$c;

.field private d:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/model/MoreModel;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/a/ab$a;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/a/ab$b;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/mh/movie/core/a/a/ao$g;

.field private h:Lcom/mh/movie/core/a/a/ao$e;

.field private i:Lcom/mh/movie/core/a/a/ao$b;

.field private j:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/presenter/MorePresenter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/mh/movie/core/a/a/ao$a;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-direct {p0, p1}, Lcom/mh/movie/core/a/a/ao;->a(Lcom/mh/movie/core/a/a/ao$a;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mh/movie/core/a/a/ao$a;Lcom/mh/movie/core/a/a/ao$1;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/mh/movie/core/a/a/ao;-><init>(Lcom/mh/movie/core/a/a/ao$a;)V

    return-void
.end method

.method public static a()Lcom/mh/movie/core/a/a/ao$a;
    .locals 2

    .line 55
    new-instance v0, Lcom/mh/movie/core/a/a/ao$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/ao$a;-><init>(Lcom/mh/movie/core/a/a/ao$1;)V

    return-object v0
.end method

.method private a(Lcom/mh/movie/core/a/a/ao$a;)V
    .locals 7

    .line 60
    new-instance v0, Lcom/mh/movie/core/a/a/ao$f;

    .line 61
    invoke-static {p1}, Lcom/mh/movie/core/a/a/ao$a;->a(Lcom/mh/movie/core/a/a/ao$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/ao$f;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/ao;->a:Lcom/mh/movie/core/a/a/ao$f;

    .line 62
    new-instance v0, Lcom/mh/movie/core/a/a/ao$d;

    invoke-static {p1}, Lcom/mh/movie/core/a/a/ao$a;->a(Lcom/mh/movie/core/a/a/ao$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/ao$d;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/ao;->b:Lcom/mh/movie/core/a/a/ao$d;

    .line 63
    new-instance v0, Lcom/mh/movie/core/a/a/ao$c;

    .line 64
    invoke-static {p1}, Lcom/mh/movie/core/a/a/ao$a;->a(Lcom/mh/movie/core/a/a/ao$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/ao$c;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/ao;->c:Lcom/mh/movie/core/a/a/ao$c;

    .line 65
    iget-object v0, p0, Lcom/mh/movie/core/a/a/ao;->a:Lcom/mh/movie/core/a/a/ao$f;

    iget-object v1, p0, Lcom/mh/movie/core/a/a/ao;->b:Lcom/mh/movie/core/a/a/ao$d;

    iget-object v2, p0, Lcom/mh/movie/core/a/a/ao;->c:Lcom/mh/movie/core/a/a/ao$c;

    .line 67
    invoke-static {v0, v1, v2}, Lcom/mh/movie/core/mvp/model/ba;->a(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/mh/movie/core/mvp/model/ba;

    move-result-object v0

    .line 66
    invoke-static {v0}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/a/a/ao;->d:Ljavax/inject/Provider;

    .line 70
    invoke-static {p1}, Lcom/mh/movie/core/a/a/ao$a;->b(Lcom/mh/movie/core/a/a/ao$a;)Lcom/mh/movie/core/a/b/bx;

    move-result-object v0

    iget-object v1, p0, Lcom/mh/movie/core/a/a/ao;->d:Ljavax/inject/Provider;

    invoke-static {v0, v1}, Lcom/mh/movie/core/a/b/by;->a(Lcom/mh/movie/core/a/b/bx;Ljavax/inject/Provider;)Lcom/mh/movie/core/a/b/by;

    move-result-object v0

    .line 69
    invoke-static {v0}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/a/a/ao;->e:Ljavax/inject/Provider;

    .line 72
    invoke-static {p1}, Lcom/mh/movie/core/a/a/ao$a;->b(Lcom/mh/movie/core/a/a/ao$a;)Lcom/mh/movie/core/a/b/bx;

    move-result-object v0

    invoke-static {v0}, Lcom/mh/movie/core/a/b/bz;->a(Lcom/mh/movie/core/a/b/bx;)Lcom/mh/movie/core/a/b/bz;

    move-result-object v0

    invoke-static {v0}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/a/a/ao;->f:Ljavax/inject/Provider;

    .line 73
    new-instance v0, Lcom/mh/movie/core/a/a/ao$g;

    .line 74
    invoke-static {p1}, Lcom/mh/movie/core/a/a/ao$a;->a(Lcom/mh/movie/core/a/a/ao$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/ao$g;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/ao;->g:Lcom/mh/movie/core/a/a/ao$g;

    .line 75
    new-instance v0, Lcom/mh/movie/core/a/a/ao$e;

    .line 76
    invoke-static {p1}, Lcom/mh/movie/core/a/a/ao$a;->a(Lcom/mh/movie/core/a/a/ao$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/ao$e;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/ao;->h:Lcom/mh/movie/core/a/a/ao$e;

    .line 77
    new-instance v0, Lcom/mh/movie/core/a/a/ao$b;

    .line 78
    invoke-static {p1}, Lcom/mh/movie/core/a/a/ao$a;->a(Lcom/mh/movie/core/a/a/ao$a;)Lcom/jess/arms/b/a/a;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/mh/movie/core/a/a/ao$b;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/ao;->i:Lcom/mh/movie/core/a/a/ao$b;

    .line 79
    iget-object v1, p0, Lcom/mh/movie/core/a/a/ao;->e:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/mh/movie/core/a/a/ao;->f:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/mh/movie/core/a/a/ao;->g:Lcom/mh/movie/core/a/a/ao$g;

    iget-object v4, p0, Lcom/mh/movie/core/a/a/ao;->c:Lcom/mh/movie/core/a/a/ao$c;

    iget-object v5, p0, Lcom/mh/movie/core/a/a/ao;->h:Lcom/mh/movie/core/a/a/ao$e;

    iget-object v6, p0, Lcom/mh/movie/core/a/a/ao;->i:Lcom/mh/movie/core/a/a/ao$b;

    .line 81
    invoke-static/range {v1 .. v6}, Lcom/mh/movie/core/mvp/presenter/bh;->a(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/mh/movie/core/mvp/presenter/bh;

    move-result-object p1

    .line 80
    invoke-static {p1}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/mh/movie/core/a/a/ao;->j:Ljavax/inject/Provider;

    return-void
.end method

.method private b(Lcom/mh/movie/core/mvp/ui/activity/MoreActivity;)Lcom/mh/movie/core/mvp/ui/activity/MoreActivity;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/mh/movie/core/a/a/ao;->j:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jess/arms/mvp/b;

    invoke-static {p1, v0}, Lcom/jess/arms/a/c;->a(Lcom/jess/arms/a/b;Lcom/jess/arms/mvp/b;)V

    return-object p1
.end method


# virtual methods
.method public a(Lcom/mh/movie/core/mvp/ui/activity/MoreActivity;)V
    .locals 0

    .line 92
    invoke-direct {p0, p1}, Lcom/mh/movie/core/a/a/ao;->b(Lcom/mh/movie/core/mvp/ui/activity/MoreActivity;)Lcom/mh/movie/core/mvp/ui/activity/MoreActivity;

    return-void
.end method
