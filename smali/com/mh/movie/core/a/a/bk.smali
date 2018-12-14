.class public final Lcom/mh/movie/core/a/a/bk;
.super Ljava/lang/Object;
.source "DaggerSplashComponent.java"

# interfaces
.implements Lcom/mh/movie/core/a/a/di;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mh/movie/core/a/a/bk$b;,
        Lcom/mh/movie/core/a/a/bk$e;,
        Lcom/mh/movie/core/a/a/bk$g;,
        Lcom/mh/movie/core/a/a/bk$c;,
        Lcom/mh/movie/core/a/a/bk$d;,
        Lcom/mh/movie/core/a/a/bk$f;,
        Lcom/mh/movie/core/a/a/bk$a;
    }
.end annotation


# instance fields
.field private a:Lcom/mh/movie/core/a/a/bk$f;

.field private b:Lcom/mh/movie/core/a/a/bk$d;

.field private c:Lcom/mh/movie/core/a/a/bk$c;

.field private d:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/model/SplashModel;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/a/ba$a;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/a/ba$b;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/mh/movie/core/a/a/bk$g;

.field private h:Lcom/mh/movie/core/a/a/bk$e;

.field private i:Lcom/mh/movie/core/a/a/bk$b;

.field private j:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/presenter/SplashPresenter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/mh/movie/core/a/a/bk$a;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-direct {p0, p1}, Lcom/mh/movie/core/a/a/bk;->a(Lcom/mh/movie/core/a/a/bk$a;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mh/movie/core/a/a/bk$a;Lcom/mh/movie/core/a/a/bk$1;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/mh/movie/core/a/a/bk;-><init>(Lcom/mh/movie/core/a/a/bk$a;)V

    return-void
.end method

.method public static a()Lcom/mh/movie/core/a/a/bk$a;
    .locals 2

    .line 55
    new-instance v0, Lcom/mh/movie/core/a/a/bk$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/bk$a;-><init>(Lcom/mh/movie/core/a/a/bk$1;)V

    return-object v0
.end method

.method private a(Lcom/mh/movie/core/a/a/bk$a;)V
    .locals 7

    .line 60
    new-instance v0, Lcom/mh/movie/core/a/a/bk$f;

    .line 61
    invoke-static {p1}, Lcom/mh/movie/core/a/a/bk$a;->a(Lcom/mh/movie/core/a/a/bk$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/bk$f;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/bk;->a:Lcom/mh/movie/core/a/a/bk$f;

    .line 62
    new-instance v0, Lcom/mh/movie/core/a/a/bk$d;

    invoke-static {p1}, Lcom/mh/movie/core/a/a/bk$a;->a(Lcom/mh/movie/core/a/a/bk$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/bk$d;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/bk;->b:Lcom/mh/movie/core/a/a/bk$d;

    .line 63
    new-instance v0, Lcom/mh/movie/core/a/a/bk$c;

    .line 64
    invoke-static {p1}, Lcom/mh/movie/core/a/a/bk$a;->a(Lcom/mh/movie/core/a/a/bk$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/bk$c;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/bk;->c:Lcom/mh/movie/core/a/a/bk$c;

    .line 65
    iget-object v0, p0, Lcom/mh/movie/core/a/a/bk;->a:Lcom/mh/movie/core/a/a/bk$f;

    iget-object v1, p0, Lcom/mh/movie/core/a/a/bk;->b:Lcom/mh/movie/core/a/a/bk$d;

    iget-object v2, p0, Lcom/mh/movie/core/a/a/bk;->c:Lcom/mh/movie/core/a/a/bk$c;

    .line 67
    invoke-static {v0, v1, v2}, Lcom/mh/movie/core/mvp/model/cs;->a(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/mh/movie/core/mvp/model/cs;

    move-result-object v0

    .line 66
    invoke-static {v0}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/a/a/bk;->d:Ljavax/inject/Provider;

    .line 72
    invoke-static {p1}, Lcom/mh/movie/core/a/a/bk$a;->b(Lcom/mh/movie/core/a/a/bk$a;)Lcom/mh/movie/core/a/b/el;

    move-result-object v0

    iget-object v1, p0, Lcom/mh/movie/core/a/a/bk;->d:Ljavax/inject/Provider;

    .line 71
    invoke-static {v0, v1}, Lcom/mh/movie/core/a/b/em;->a(Lcom/mh/movie/core/a/b/el;Ljavax/inject/Provider;)Lcom/mh/movie/core/a/b/em;

    move-result-object v0

    .line 70
    invoke-static {v0}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/a/a/bk;->e:Ljavax/inject/Provider;

    .line 74
    invoke-static {p1}, Lcom/mh/movie/core/a/a/bk$a;->b(Lcom/mh/movie/core/a/a/bk$a;)Lcom/mh/movie/core/a/b/el;

    move-result-object v0

    invoke-static {v0}, Lcom/mh/movie/core/a/b/en;->a(Lcom/mh/movie/core/a/b/el;)Lcom/mh/movie/core/a/b/en;

    move-result-object v0

    invoke-static {v0}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/a/a/bk;->f:Ljavax/inject/Provider;

    .line 75
    new-instance v0, Lcom/mh/movie/core/a/a/bk$g;

    .line 76
    invoke-static {p1}, Lcom/mh/movie/core/a/a/bk$a;->a(Lcom/mh/movie/core/a/a/bk$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/bk$g;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/bk;->g:Lcom/mh/movie/core/a/a/bk$g;

    .line 77
    new-instance v0, Lcom/mh/movie/core/a/a/bk$e;

    .line 78
    invoke-static {p1}, Lcom/mh/movie/core/a/a/bk$a;->a(Lcom/mh/movie/core/a/a/bk$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/bk$e;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/bk;->h:Lcom/mh/movie/core/a/a/bk$e;

    .line 79
    new-instance v0, Lcom/mh/movie/core/a/a/bk$b;

    .line 80
    invoke-static {p1}, Lcom/mh/movie/core/a/a/bk$a;->a(Lcom/mh/movie/core/a/a/bk$a;)Lcom/jess/arms/b/a/a;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/mh/movie/core/a/a/bk$b;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/bk;->i:Lcom/mh/movie/core/a/a/bk$b;

    .line 81
    iget-object v1, p0, Lcom/mh/movie/core/a/a/bk;->e:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/mh/movie/core/a/a/bk;->f:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/mh/movie/core/a/a/bk;->g:Lcom/mh/movie/core/a/a/bk$g;

    iget-object v4, p0, Lcom/mh/movie/core/a/a/bk;->c:Lcom/mh/movie/core/a/a/bk$c;

    iget-object v5, p0, Lcom/mh/movie/core/a/a/bk;->h:Lcom/mh/movie/core/a/a/bk$e;

    iget-object v6, p0, Lcom/mh/movie/core/a/a/bk;->i:Lcom/mh/movie/core/a/a/bk$b;

    .line 83
    invoke-static/range {v1 .. v6}, Lcom/mh/movie/core/mvp/presenter/db;->a(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/mh/movie/core/mvp/presenter/db;

    move-result-object p1

    .line 82
    invoke-static {p1}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/mh/movie/core/a/a/bk;->j:Ljavax/inject/Provider;

    return-void
.end method

.method private b(Lcom/mh/movie/core/mvp/ui/activity/SplashActivity;)Lcom/mh/movie/core/mvp/ui/activity/SplashActivity;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/mh/movie/core/a/a/bk;->j:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jess/arms/mvp/b;

    invoke-static {p1, v0}, Lcom/jess/arms/a/c;->a(Lcom/jess/arms/a/b;Lcom/jess/arms/mvp/b;)V

    return-object p1
.end method


# virtual methods
.method public a(Lcom/mh/movie/core/mvp/ui/activity/SplashActivity;)V
    .locals 0

    .line 94
    invoke-direct {p0, p1}, Lcom/mh/movie/core/a/a/bk;->b(Lcom/mh/movie/core/mvp/ui/activity/SplashActivity;)Lcom/mh/movie/core/mvp/ui/activity/SplashActivity;

    return-void
.end method
