.class public final Lcom/mh/movie/core/a/a/bu;
.super Ljava/lang/Object;
.source "DaggerWalletComponent.java"

# interfaces
.implements Lcom/mh/movie/core/a/a/ds;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mh/movie/core/a/a/bu$b;,
        Lcom/mh/movie/core/a/a/bu$e;,
        Lcom/mh/movie/core/a/a/bu$g;,
        Lcom/mh/movie/core/a/a/bu$c;,
        Lcom/mh/movie/core/a/a/bu$d;,
        Lcom/mh/movie/core/a/a/bu$f;,
        Lcom/mh/movie/core/a/a/bu$a;
    }
.end annotation


# instance fields
.field private a:Lcom/mh/movie/core/a/a/bu$f;

.field private b:Lcom/mh/movie/core/a/a/bu$d;

.field private c:Lcom/mh/movie/core/a/a/bu$c;

.field private d:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/model/WalletModel;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/a/bk$a;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/a/bk$b;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/mh/movie/core/a/a/bu$g;

.field private h:Lcom/mh/movie/core/a/a/bu$e;

.field private i:Lcom/mh/movie/core/a/a/bu$b;

.field private j:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/presenter/WalletPresenter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/mh/movie/core/a/a/bu$a;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-direct {p0, p1}, Lcom/mh/movie/core/a/a/bu;->a(Lcom/mh/movie/core/a/a/bu$a;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mh/movie/core/a/a/bu$a;Lcom/mh/movie/core/a/a/bu$1;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/mh/movie/core/a/a/bu;-><init>(Lcom/mh/movie/core/a/a/bu$a;)V

    return-void
.end method

.method public static a()Lcom/mh/movie/core/a/a/bu$a;
    .locals 2

    .line 55
    new-instance v0, Lcom/mh/movie/core/a/a/bu$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/bu$a;-><init>(Lcom/mh/movie/core/a/a/bu$1;)V

    return-object v0
.end method

.method private a(Lcom/mh/movie/core/a/a/bu$a;)V
    .locals 7

    .line 60
    new-instance v0, Lcom/mh/movie/core/a/a/bu$f;

    .line 61
    invoke-static {p1}, Lcom/mh/movie/core/a/a/bu$a;->a(Lcom/mh/movie/core/a/a/bu$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/bu$f;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/bu;->a:Lcom/mh/movie/core/a/a/bu$f;

    .line 62
    new-instance v0, Lcom/mh/movie/core/a/a/bu$d;

    invoke-static {p1}, Lcom/mh/movie/core/a/a/bu$a;->a(Lcom/mh/movie/core/a/a/bu$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/bu$d;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/bu;->b:Lcom/mh/movie/core/a/a/bu$d;

    .line 63
    new-instance v0, Lcom/mh/movie/core/a/a/bu$c;

    .line 64
    invoke-static {p1}, Lcom/mh/movie/core/a/a/bu$a;->a(Lcom/mh/movie/core/a/a/bu$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/bu$c;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/bu;->c:Lcom/mh/movie/core/a/a/bu$c;

    .line 65
    iget-object v0, p0, Lcom/mh/movie/core/a/a/bu;->a:Lcom/mh/movie/core/a/a/bu$f;

    iget-object v1, p0, Lcom/mh/movie/core/a/a/bu;->b:Lcom/mh/movie/core/a/a/bu$d;

    iget-object v2, p0, Lcom/mh/movie/core/a/a/bu;->c:Lcom/mh/movie/core/a/a/bu$c;

    .line 67
    invoke-static {v0, v1, v2}, Lcom/mh/movie/core/mvp/model/dm;->a(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/mh/movie/core/mvp/model/dm;

    move-result-object v0

    .line 66
    invoke-static {v0}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/a/a/bu;->d:Ljavax/inject/Provider;

    .line 72
    invoke-static {p1}, Lcom/mh/movie/core/a/a/bu$a;->b(Lcom/mh/movie/core/a/a/bu$a;)Lcom/mh/movie/core/a/b/ft;

    move-result-object v0

    iget-object v1, p0, Lcom/mh/movie/core/a/a/bu;->d:Ljavax/inject/Provider;

    .line 71
    invoke-static {v0, v1}, Lcom/mh/movie/core/a/b/fu;->a(Lcom/mh/movie/core/a/b/ft;Ljavax/inject/Provider;)Lcom/mh/movie/core/a/b/fu;

    move-result-object v0

    .line 70
    invoke-static {v0}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/a/a/bu;->e:Ljavax/inject/Provider;

    .line 74
    invoke-static {p1}, Lcom/mh/movie/core/a/a/bu$a;->b(Lcom/mh/movie/core/a/a/bu$a;)Lcom/mh/movie/core/a/b/ft;

    move-result-object v0

    invoke-static {v0}, Lcom/mh/movie/core/a/b/fv;->a(Lcom/mh/movie/core/a/b/ft;)Lcom/mh/movie/core/a/b/fv;

    move-result-object v0

    invoke-static {v0}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/a/a/bu;->f:Ljavax/inject/Provider;

    .line 75
    new-instance v0, Lcom/mh/movie/core/a/a/bu$g;

    .line 76
    invoke-static {p1}, Lcom/mh/movie/core/a/a/bu$a;->a(Lcom/mh/movie/core/a/a/bu$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/bu$g;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/bu;->g:Lcom/mh/movie/core/a/a/bu$g;

    .line 77
    new-instance v0, Lcom/mh/movie/core/a/a/bu$e;

    .line 78
    invoke-static {p1}, Lcom/mh/movie/core/a/a/bu$a;->a(Lcom/mh/movie/core/a/a/bu$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/bu$e;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/bu;->h:Lcom/mh/movie/core/a/a/bu$e;

    .line 79
    new-instance v0, Lcom/mh/movie/core/a/a/bu$b;

    .line 80
    invoke-static {p1}, Lcom/mh/movie/core/a/a/bu$a;->a(Lcom/mh/movie/core/a/a/bu$a;)Lcom/jess/arms/b/a/a;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/mh/movie/core/a/a/bu$b;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/bu;->i:Lcom/mh/movie/core/a/a/bu$b;

    .line 81
    iget-object v1, p0, Lcom/mh/movie/core/a/a/bu;->e:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/mh/movie/core/a/a/bu;->f:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/mh/movie/core/a/a/bu;->g:Lcom/mh/movie/core/a/a/bu$g;

    iget-object v4, p0, Lcom/mh/movie/core/a/a/bu;->c:Lcom/mh/movie/core/a/a/bu$c;

    iget-object v5, p0, Lcom/mh/movie/core/a/a/bu;->h:Lcom/mh/movie/core/a/a/bu$e;

    iget-object v6, p0, Lcom/mh/movie/core/a/a/bu;->i:Lcom/mh/movie/core/a/a/bu$b;

    .line 83
    invoke-static/range {v1 .. v6}, Lcom/mh/movie/core/mvp/presenter/dx;->a(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/mh/movie/core/mvp/presenter/dx;

    move-result-object p1

    .line 82
    invoke-static {p1}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/mh/movie/core/a/a/bu;->j:Ljavax/inject/Provider;

    return-void
.end method

.method private b(Lcom/mh/movie/core/mvp/ui/activity/WalletActivity;)Lcom/mh/movie/core/mvp/ui/activity/WalletActivity;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/mh/movie/core/a/a/bu;->j:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jess/arms/mvp/b;

    invoke-static {p1, v0}, Lcom/jess/arms/a/c;->a(Lcom/jess/arms/a/b;Lcom/jess/arms/mvp/b;)V

    return-object p1
.end method


# virtual methods
.method public a(Lcom/mh/movie/core/mvp/ui/activity/WalletActivity;)V
    .locals 0

    .line 94
    invoke-direct {p0, p1}, Lcom/mh/movie/core/a/a/bu;->b(Lcom/mh/movie/core/mvp/ui/activity/WalletActivity;)Lcom/mh/movie/core/mvp/ui/activity/WalletActivity;

    return-void
.end method
