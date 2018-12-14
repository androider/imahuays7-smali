.class public final Lcom/mh/movie/core/a/a/ay;
.super Ljava/lang/Object;
.source "DaggerQRCodeComponent.java"

# interfaces
.implements Lcom/mh/movie/core/a/a/cw;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mh/movie/core/a/a/ay$b;,
        Lcom/mh/movie/core/a/a/ay$e;,
        Lcom/mh/movie/core/a/a/ay$g;,
        Lcom/mh/movie/core/a/a/ay$c;,
        Lcom/mh/movie/core/a/a/ay$d;,
        Lcom/mh/movie/core/a/a/ay$f;,
        Lcom/mh/movie/core/a/a/ay$a;
    }
.end annotation


# instance fields
.field private a:Lcom/mh/movie/core/a/a/ay$f;

.field private b:Lcom/mh/movie/core/a/a/ay$d;

.field private c:Lcom/mh/movie/core/a/a/ay$c;

.field private d:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/model/QRCodeModel;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/a/an$a;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/a/an$b;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/mh/movie/core/a/a/ay$g;

.field private h:Lcom/mh/movie/core/a/a/ay$e;

.field private i:Lcom/mh/movie/core/a/a/ay$b;

.field private j:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/presenter/QRCodePresenter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/mh/movie/core/a/a/ay$a;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-direct {p0, p1}, Lcom/mh/movie/core/a/a/ay;->a(Lcom/mh/movie/core/a/a/ay$a;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mh/movie/core/a/a/ay$a;Lcom/mh/movie/core/a/a/ay$1;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/mh/movie/core/a/a/ay;-><init>(Lcom/mh/movie/core/a/a/ay$a;)V

    return-void
.end method

.method public static a()Lcom/mh/movie/core/a/a/ay$a;
    .locals 2

    .line 57
    new-instance v0, Lcom/mh/movie/core/a/a/ay$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/ay$a;-><init>(Lcom/mh/movie/core/a/a/ay$1;)V

    return-object v0
.end method

.method private a(Lcom/mh/movie/core/a/a/ay$a;)V
    .locals 7

    .line 62
    new-instance v0, Lcom/mh/movie/core/a/a/ay$f;

    .line 63
    invoke-static {p1}, Lcom/mh/movie/core/a/a/ay$a;->a(Lcom/mh/movie/core/a/a/ay$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/ay$f;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/ay;->a:Lcom/mh/movie/core/a/a/ay$f;

    .line 64
    new-instance v0, Lcom/mh/movie/core/a/a/ay$d;

    invoke-static {p1}, Lcom/mh/movie/core/a/a/ay$a;->a(Lcom/mh/movie/core/a/a/ay$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/ay$d;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/ay;->b:Lcom/mh/movie/core/a/a/ay$d;

    .line 65
    new-instance v0, Lcom/mh/movie/core/a/a/ay$c;

    .line 66
    invoke-static {p1}, Lcom/mh/movie/core/a/a/ay$a;->a(Lcom/mh/movie/core/a/a/ay$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/ay$c;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/ay;->c:Lcom/mh/movie/core/a/a/ay$c;

    .line 67
    iget-object v0, p0, Lcom/mh/movie/core/a/a/ay;->a:Lcom/mh/movie/core/a/a/ay$f;

    iget-object v1, p0, Lcom/mh/movie/core/a/a/ay;->b:Lcom/mh/movie/core/a/a/ay$d;

    iget-object v2, p0, Lcom/mh/movie/core/a/a/ay;->c:Lcom/mh/movie/core/a/a/ay$c;

    .line 69
    invoke-static {v0, v1, v2}, Lcom/mh/movie/core/mvp/model/bu;->a(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/mh/movie/core/mvp/model/bu;

    move-result-object v0

    .line 68
    invoke-static {v0}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/a/a/ay;->d:Ljavax/inject/Provider;

    .line 74
    invoke-static {p1}, Lcom/mh/movie/core/a/a/ay$a;->b(Lcom/mh/movie/core/a/a/ay$a;)Lcom/mh/movie/core/a/b/db;

    move-result-object v0

    iget-object v1, p0, Lcom/mh/movie/core/a/a/ay;->d:Ljavax/inject/Provider;

    .line 73
    invoke-static {v0, v1}, Lcom/mh/movie/core/a/b/dc;->a(Lcom/mh/movie/core/a/b/db;Ljavax/inject/Provider;)Lcom/mh/movie/core/a/b/dc;

    move-result-object v0

    .line 72
    invoke-static {v0}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/a/a/ay;->e:Ljavax/inject/Provider;

    .line 76
    invoke-static {p1}, Lcom/mh/movie/core/a/a/ay$a;->b(Lcom/mh/movie/core/a/a/ay$a;)Lcom/mh/movie/core/a/b/db;

    move-result-object v0

    invoke-static {v0}, Lcom/mh/movie/core/a/b/dd;->a(Lcom/mh/movie/core/a/b/db;)Lcom/mh/movie/core/a/b/dd;

    move-result-object v0

    invoke-static {v0}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/a/a/ay;->f:Ljavax/inject/Provider;

    .line 77
    new-instance v0, Lcom/mh/movie/core/a/a/ay$g;

    .line 78
    invoke-static {p1}, Lcom/mh/movie/core/a/a/ay$a;->a(Lcom/mh/movie/core/a/a/ay$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/ay$g;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/ay;->g:Lcom/mh/movie/core/a/a/ay$g;

    .line 79
    new-instance v0, Lcom/mh/movie/core/a/a/ay$e;

    .line 80
    invoke-static {p1}, Lcom/mh/movie/core/a/a/ay$a;->a(Lcom/mh/movie/core/a/a/ay$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/ay$e;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/ay;->h:Lcom/mh/movie/core/a/a/ay$e;

    .line 81
    new-instance v0, Lcom/mh/movie/core/a/a/ay$b;

    .line 82
    invoke-static {p1}, Lcom/mh/movie/core/a/a/ay$a;->a(Lcom/mh/movie/core/a/a/ay$a;)Lcom/jess/arms/b/a/a;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/mh/movie/core/a/a/ay$b;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/ay;->i:Lcom/mh/movie/core/a/a/ay$b;

    .line 83
    iget-object v1, p0, Lcom/mh/movie/core/a/a/ay;->e:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/mh/movie/core/a/a/ay;->f:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/mh/movie/core/a/a/ay;->g:Lcom/mh/movie/core/a/a/ay$g;

    iget-object v4, p0, Lcom/mh/movie/core/a/a/ay;->c:Lcom/mh/movie/core/a/a/ay$c;

    iget-object v5, p0, Lcom/mh/movie/core/a/a/ay;->h:Lcom/mh/movie/core/a/a/ay$e;

    iget-object v6, p0, Lcom/mh/movie/core/a/a/ay;->i:Lcom/mh/movie/core/a/a/ay$b;

    .line 85
    invoke-static/range {v1 .. v6}, Lcom/mh/movie/core/mvp/presenter/cb;->a(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/mh/movie/core/mvp/presenter/cb;

    move-result-object p1

    .line 84
    invoke-static {p1}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/mh/movie/core/a/a/ay;->j:Ljavax/inject/Provider;

    return-void
.end method

.method private b(Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1;)Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/mh/movie/core/a/a/ay;->j:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jess/arms/mvp/b;

    invoke-static {p1, v0}, Lcom/jess/arms/a/c;->a(Lcom/jess/arms/a/b;Lcom/jess/arms/mvp/b;)V

    return-object p1
.end method

.method private b(Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment;)Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/mh/movie/core/a/a/ay;->j:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jess/arms/mvp/b;

    invoke-static {p1, v0}, Lcom/jess/arms/a/f;->a(Lcom/jess/arms/a/e;Lcom/jess/arms/mvp/b;)V

    return-object p1
.end method


# virtual methods
.method public a(Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1;)V
    .locals 0

    .line 96
    invoke-direct {p0, p1}, Lcom/mh/movie/core/a/a/ay;->b(Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1;)Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1;

    return-void
.end method

.method public a(Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment;)V
    .locals 0

    .line 101
    invoke-direct {p0, p1}, Lcom/mh/movie/core/a/a/ay;->b(Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment;)Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment;

    return-void
.end method
