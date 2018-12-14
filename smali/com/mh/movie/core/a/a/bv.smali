.class public final Lcom/mh/movie/core/a/a/bv;
.super Ljava/lang/Object;
.source "DaggerWatchedShareComponent.java"

# interfaces
.implements Lcom/mh/movie/core/a/a/dt;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mh/movie/core/a/a/bv$b;,
        Lcom/mh/movie/core/a/a/bv$e;,
        Lcom/mh/movie/core/a/a/bv$g;,
        Lcom/mh/movie/core/a/a/bv$c;,
        Lcom/mh/movie/core/a/a/bv$d;,
        Lcom/mh/movie/core/a/a/bv$f;,
        Lcom/mh/movie/core/a/a/bv$a;
    }
.end annotation


# instance fields
.field private a:Lcom/mh/movie/core/a/a/bv$f;

.field private b:Lcom/mh/movie/core/a/a/bv$d;

.field private c:Lcom/mh/movie/core/a/a/bv$c;

.field private d:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/model/WatchedShareModel;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/a/bl$a;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/a/bl$b;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/mh/movie/core/a/a/bv$g;

.field private h:Lcom/mh/movie/core/a/a/bv$e;

.field private i:Lcom/mh/movie/core/a/a/bv$b;

.field private j:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/presenter/WatchedSharePresenter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/mh/movie/core/a/a/bv$a;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-direct {p0, p1}, Lcom/mh/movie/core/a/a/bv;->a(Lcom/mh/movie/core/a/a/bv$a;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mh/movie/core/a/a/bv$a;Lcom/mh/movie/core/a/a/bv$1;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/mh/movie/core/a/a/bv;-><init>(Lcom/mh/movie/core/a/a/bv$a;)V

    return-void
.end method

.method public static a()Lcom/mh/movie/core/a/a/bv$a;
    .locals 2

    .line 55
    new-instance v0, Lcom/mh/movie/core/a/a/bv$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/bv$a;-><init>(Lcom/mh/movie/core/a/a/bv$1;)V

    return-object v0
.end method

.method private a(Lcom/mh/movie/core/a/a/bv$a;)V
    .locals 7

    .line 60
    new-instance v0, Lcom/mh/movie/core/a/a/bv$f;

    .line 61
    invoke-static {p1}, Lcom/mh/movie/core/a/a/bv$a;->a(Lcom/mh/movie/core/a/a/bv$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/bv$f;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/bv;->a:Lcom/mh/movie/core/a/a/bv$f;

    .line 62
    new-instance v0, Lcom/mh/movie/core/a/a/bv$d;

    invoke-static {p1}, Lcom/mh/movie/core/a/a/bv$a;->a(Lcom/mh/movie/core/a/a/bv$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/bv$d;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/bv;->b:Lcom/mh/movie/core/a/a/bv$d;

    .line 63
    new-instance v0, Lcom/mh/movie/core/a/a/bv$c;

    .line 64
    invoke-static {p1}, Lcom/mh/movie/core/a/a/bv$a;->a(Lcom/mh/movie/core/a/a/bv$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/bv$c;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/bv;->c:Lcom/mh/movie/core/a/a/bv$c;

    .line 65
    iget-object v0, p0, Lcom/mh/movie/core/a/a/bv;->a:Lcom/mh/movie/core/a/a/bv$f;

    iget-object v1, p0, Lcom/mh/movie/core/a/a/bv;->b:Lcom/mh/movie/core/a/a/bv$d;

    iget-object v2, p0, Lcom/mh/movie/core/a/a/bv;->c:Lcom/mh/movie/core/a/a/bv$c;

    .line 67
    invoke-static {v0, v1, v2}, Lcom/mh/movie/core/mvp/model/do;->a(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/mh/movie/core/mvp/model/do;

    move-result-object v0

    .line 66
    invoke-static {v0}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/a/a/bv;->d:Ljavax/inject/Provider;

    .line 72
    invoke-static {p1}, Lcom/mh/movie/core/a/a/bv$a;->b(Lcom/mh/movie/core/a/a/bv$a;)Lcom/mh/movie/core/a/b/fw;

    move-result-object v0

    iget-object v1, p0, Lcom/mh/movie/core/a/a/bv;->d:Ljavax/inject/Provider;

    .line 71
    invoke-static {v0, v1}, Lcom/mh/movie/core/a/b/fx;->a(Lcom/mh/movie/core/a/b/fw;Ljavax/inject/Provider;)Lcom/mh/movie/core/a/b/fx;

    move-result-object v0

    .line 70
    invoke-static {v0}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/a/a/bv;->e:Ljavax/inject/Provider;

    .line 75
    invoke-static {p1}, Lcom/mh/movie/core/a/a/bv$a;->b(Lcom/mh/movie/core/a/a/bv$a;)Lcom/mh/movie/core/a/b/fw;

    move-result-object v0

    invoke-static {v0}, Lcom/mh/movie/core/a/b/fy;->a(Lcom/mh/movie/core/a/b/fw;)Lcom/mh/movie/core/a/b/fy;

    move-result-object v0

    .line 74
    invoke-static {v0}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/a/a/bv;->f:Ljavax/inject/Provider;

    .line 76
    new-instance v0, Lcom/mh/movie/core/a/a/bv$g;

    .line 77
    invoke-static {p1}, Lcom/mh/movie/core/a/a/bv$a;->a(Lcom/mh/movie/core/a/a/bv$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/bv$g;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/bv;->g:Lcom/mh/movie/core/a/a/bv$g;

    .line 78
    new-instance v0, Lcom/mh/movie/core/a/a/bv$e;

    .line 79
    invoke-static {p1}, Lcom/mh/movie/core/a/a/bv$a;->a(Lcom/mh/movie/core/a/a/bv$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/bv$e;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/bv;->h:Lcom/mh/movie/core/a/a/bv$e;

    .line 80
    new-instance v0, Lcom/mh/movie/core/a/a/bv$b;

    .line 81
    invoke-static {p1}, Lcom/mh/movie/core/a/a/bv$a;->a(Lcom/mh/movie/core/a/a/bv$a;)Lcom/jess/arms/b/a/a;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/mh/movie/core/a/a/bv$b;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/bv;->i:Lcom/mh/movie/core/a/a/bv$b;

    .line 82
    iget-object v1, p0, Lcom/mh/movie/core/a/a/bv;->e:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/mh/movie/core/a/a/bv;->f:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/mh/movie/core/a/a/bv;->g:Lcom/mh/movie/core/a/a/bv$g;

    iget-object v4, p0, Lcom/mh/movie/core/a/a/bv;->c:Lcom/mh/movie/core/a/a/bv$c;

    iget-object v5, p0, Lcom/mh/movie/core/a/a/bv;->h:Lcom/mh/movie/core/a/a/bv$e;

    iget-object v6, p0, Lcom/mh/movie/core/a/a/bv;->i:Lcom/mh/movie/core/a/a/bv$b;

    .line 84
    invoke-static/range {v1 .. v6}, Lcom/mh/movie/core/mvp/presenter/dz;->a(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/mh/movie/core/mvp/presenter/dz;

    move-result-object p1

    .line 83
    invoke-static {p1}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/mh/movie/core/a/a/bv;->j:Ljavax/inject/Provider;

    return-void
.end method

.method private b(Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;)Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/mh/movie/core/a/a/bv;->j:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jess/arms/mvp/b;

    invoke-static {p1, v0}, Lcom/jess/arms/a/c;->a(Lcom/jess/arms/a/b;Lcom/jess/arms/mvp/b;)V

    return-object p1
.end method


# virtual methods
.method public a(Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;)V
    .locals 0

    .line 95
    invoke-direct {p0, p1}, Lcom/mh/movie/core/a/a/bv;->b(Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;)Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;

    return-void
.end method
