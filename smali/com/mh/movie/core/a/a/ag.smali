.class public final Lcom/mh/movie/core/a/a/ag;
.super Ljava/lang/Object;
.source "DaggerHeaderImgComponent.java"

# interfaces
.implements Lcom/mh/movie/core/a/a/ce;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mh/movie/core/a/a/ag$b;,
        Lcom/mh/movie/core/a/a/ag$e;,
        Lcom/mh/movie/core/a/a/ag$g;,
        Lcom/mh/movie/core/a/a/ag$c;,
        Lcom/mh/movie/core/a/a/ag$d;,
        Lcom/mh/movie/core/a/a/ag$f;,
        Lcom/mh/movie/core/a/a/ag$a;
    }
.end annotation


# instance fields
.field private a:Lcom/mh/movie/core/a/a/ag$f;

.field private b:Lcom/mh/movie/core/a/a/ag$d;

.field private c:Lcom/mh/movie/core/a/a/ag$c;

.field private d:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/model/HeaderImgModel;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/a/u$a;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/a/u$b;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/mh/movie/core/a/a/ag$g;

.field private h:Lcom/mh/movie/core/a/a/ag$e;

.field private i:Lcom/mh/movie/core/a/a/ag$b;

.field private j:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/presenter/HeaderImgPresenter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/mh/movie/core/a/a/ag$a;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-direct {p0, p1}, Lcom/mh/movie/core/a/a/ag;->a(Lcom/mh/movie/core/a/a/ag$a;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mh/movie/core/a/a/ag$a;Lcom/mh/movie/core/a/a/ag$1;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/mh/movie/core/a/a/ag;-><init>(Lcom/mh/movie/core/a/a/ag$a;)V

    return-void
.end method

.method public static a()Lcom/mh/movie/core/a/a/ag$a;
    .locals 2

    .line 55
    new-instance v0, Lcom/mh/movie/core/a/a/ag$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/ag$a;-><init>(Lcom/mh/movie/core/a/a/ag$1;)V

    return-object v0
.end method

.method private a(Lcom/mh/movie/core/a/a/ag$a;)V
    .locals 7

    .line 60
    new-instance v0, Lcom/mh/movie/core/a/a/ag$f;

    .line 61
    invoke-static {p1}, Lcom/mh/movie/core/a/a/ag$a;->a(Lcom/mh/movie/core/a/a/ag$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/ag$f;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/ag;->a:Lcom/mh/movie/core/a/a/ag$f;

    .line 62
    new-instance v0, Lcom/mh/movie/core/a/a/ag$d;

    invoke-static {p1}, Lcom/mh/movie/core/a/a/ag$a;->a(Lcom/mh/movie/core/a/a/ag$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/ag$d;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/ag;->b:Lcom/mh/movie/core/a/a/ag$d;

    .line 63
    new-instance v0, Lcom/mh/movie/core/a/a/ag$c;

    .line 64
    invoke-static {p1}, Lcom/mh/movie/core/a/a/ag$a;->a(Lcom/mh/movie/core/a/a/ag$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/ag$c;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/ag;->c:Lcom/mh/movie/core/a/a/ag$c;

    .line 65
    iget-object v0, p0, Lcom/mh/movie/core/a/a/ag;->a:Lcom/mh/movie/core/a/a/ag$f;

    iget-object v1, p0, Lcom/mh/movie/core/a/a/ag;->b:Lcom/mh/movie/core/a/a/ag$d;

    iget-object v2, p0, Lcom/mh/movie/core/a/a/ag;->c:Lcom/mh/movie/core/a/a/ag$c;

    .line 67
    invoke-static {v0, v1, v2}, Lcom/mh/movie/core/mvp/model/ao;->a(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/mh/movie/core/mvp/model/ao;

    move-result-object v0

    .line 66
    invoke-static {v0}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/a/a/ag;->d:Ljavax/inject/Provider;

    .line 72
    invoke-static {p1}, Lcom/mh/movie/core/a/a/ag$a;->b(Lcom/mh/movie/core/a/a/ag$a;)Lcom/mh/movie/core/a/b/bc;

    move-result-object v0

    iget-object v1, p0, Lcom/mh/movie/core/a/a/ag;->d:Ljavax/inject/Provider;

    .line 71
    invoke-static {v0, v1}, Lcom/mh/movie/core/a/b/bd;->a(Lcom/mh/movie/core/a/b/bc;Ljavax/inject/Provider;)Lcom/mh/movie/core/a/b/bd;

    move-result-object v0

    .line 70
    invoke-static {v0}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/a/a/ag;->e:Ljavax/inject/Provider;

    .line 75
    invoke-static {p1}, Lcom/mh/movie/core/a/a/ag$a;->b(Lcom/mh/movie/core/a/a/ag$a;)Lcom/mh/movie/core/a/b/bc;

    move-result-object v0

    invoke-static {v0}, Lcom/mh/movie/core/a/b/be;->a(Lcom/mh/movie/core/a/b/bc;)Lcom/mh/movie/core/a/b/be;

    move-result-object v0

    .line 74
    invoke-static {v0}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/a/a/ag;->f:Ljavax/inject/Provider;

    .line 76
    new-instance v0, Lcom/mh/movie/core/a/a/ag$g;

    .line 77
    invoke-static {p1}, Lcom/mh/movie/core/a/a/ag$a;->a(Lcom/mh/movie/core/a/a/ag$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/ag$g;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/ag;->g:Lcom/mh/movie/core/a/a/ag$g;

    .line 78
    new-instance v0, Lcom/mh/movie/core/a/a/ag$e;

    .line 79
    invoke-static {p1}, Lcom/mh/movie/core/a/a/ag$a;->a(Lcom/mh/movie/core/a/a/ag$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/ag$e;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/ag;->h:Lcom/mh/movie/core/a/a/ag$e;

    .line 80
    new-instance v0, Lcom/mh/movie/core/a/a/ag$b;

    .line 81
    invoke-static {p1}, Lcom/mh/movie/core/a/a/ag$a;->a(Lcom/mh/movie/core/a/a/ag$a;)Lcom/jess/arms/b/a/a;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/mh/movie/core/a/a/ag$b;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/ag;->i:Lcom/mh/movie/core/a/a/ag$b;

    .line 82
    iget-object v1, p0, Lcom/mh/movie/core/a/a/ag;->e:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/mh/movie/core/a/a/ag;->f:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/mh/movie/core/a/a/ag;->g:Lcom/mh/movie/core/a/a/ag$g;

    iget-object v4, p0, Lcom/mh/movie/core/a/a/ag;->c:Lcom/mh/movie/core/a/a/ag$c;

    iget-object v5, p0, Lcom/mh/movie/core/a/a/ag;->h:Lcom/mh/movie/core/a/a/ag$e;

    iget-object v6, p0, Lcom/mh/movie/core/a/a/ag;->i:Lcom/mh/movie/core/a/a/ag$b;

    .line 84
    invoke-static/range {v1 .. v6}, Lcom/mh/movie/core/mvp/presenter/ar;->a(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/mh/movie/core/mvp/presenter/ar;

    move-result-object p1

    .line 83
    invoke-static {p1}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/mh/movie/core/a/a/ag;->j:Ljavax/inject/Provider;

    return-void
.end method

.method private b(Lcom/mh/movie/core/mvp/ui/activity/HeaderImgActivity;)Lcom/mh/movie/core/mvp/ui/activity/HeaderImgActivity;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/mh/movie/core/a/a/ag;->j:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jess/arms/mvp/b;

    invoke-static {p1, v0}, Lcom/jess/arms/a/c;->a(Lcom/jess/arms/a/b;Lcom/jess/arms/mvp/b;)V

    return-object p1
.end method


# virtual methods
.method public a(Lcom/mh/movie/core/mvp/ui/activity/HeaderImgActivity;)V
    .locals 0

    .line 95
    invoke-direct {p0, p1}, Lcom/mh/movie/core/a/a/ag;->b(Lcom/mh/movie/core/mvp/ui/activity/HeaderImgActivity;)Lcom/mh/movie/core/mvp/ui/activity/HeaderImgActivity;

    return-void
.end method
