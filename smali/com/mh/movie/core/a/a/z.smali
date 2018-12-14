.class public final Lcom/mh/movie/core/a/a/z;
.super Ljava/lang/Object;
.source "DaggerExChangeComponent.java"

# interfaces
.implements Lcom/mh/movie/core/a/a/bx;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mh/movie/core/a/a/z$b;,
        Lcom/mh/movie/core/a/a/z$e;,
        Lcom/mh/movie/core/a/a/z$g;,
        Lcom/mh/movie/core/a/a/z$c;,
        Lcom/mh/movie/core/a/a/z$d;,
        Lcom/mh/movie/core/a/a/z$f;,
        Lcom/mh/movie/core/a/a/z$a;
    }
.end annotation


# instance fields
.field private a:Lcom/mh/movie/core/a/a/z$f;

.field private b:Lcom/mh/movie/core/a/a/z$d;

.field private c:Lcom/mh/movie/core/a/a/z$c;

.field private d:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/model/ExChangeModel;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/a/n$a;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/a/n$b;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/mh/movie/core/a/a/z$g;

.field private h:Lcom/mh/movie/core/a/a/z$e;

.field private i:Lcom/mh/movie/core/a/a/z$b;

.field private j:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/presenter/ExChangePresenter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/mh/movie/core/a/a/z$a;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-direct {p0, p1}, Lcom/mh/movie/core/a/a/z;->a(Lcom/mh/movie/core/a/a/z$a;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mh/movie/core/a/a/z$a;Lcom/mh/movie/core/a/a/z$1;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/mh/movie/core/a/a/z;-><init>(Lcom/mh/movie/core/a/a/z$a;)V

    return-void
.end method

.method public static a()Lcom/mh/movie/core/a/a/z$a;
    .locals 2

    .line 55
    new-instance v0, Lcom/mh/movie/core/a/a/z$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/z$a;-><init>(Lcom/mh/movie/core/a/a/z$1;)V

    return-object v0
.end method

.method private a(Lcom/mh/movie/core/a/a/z$a;)V
    .locals 7

    .line 60
    new-instance v0, Lcom/mh/movie/core/a/a/z$f;

    .line 61
    invoke-static {p1}, Lcom/mh/movie/core/a/a/z$a;->a(Lcom/mh/movie/core/a/a/z$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/z$f;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/z;->a:Lcom/mh/movie/core/a/a/z$f;

    .line 62
    new-instance v0, Lcom/mh/movie/core/a/a/z$d;

    invoke-static {p1}, Lcom/mh/movie/core/a/a/z$a;->a(Lcom/mh/movie/core/a/a/z$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/z$d;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/z;->b:Lcom/mh/movie/core/a/a/z$d;

    .line 63
    new-instance v0, Lcom/mh/movie/core/a/a/z$c;

    .line 64
    invoke-static {p1}, Lcom/mh/movie/core/a/a/z$a;->a(Lcom/mh/movie/core/a/a/z$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/z$c;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/z;->c:Lcom/mh/movie/core/a/a/z$c;

    .line 65
    iget-object v0, p0, Lcom/mh/movie/core/a/a/z;->a:Lcom/mh/movie/core/a/a/z$f;

    iget-object v1, p0, Lcom/mh/movie/core/a/a/z;->b:Lcom/mh/movie/core/a/a/z$d;

    iget-object v2, p0, Lcom/mh/movie/core/a/a/z;->c:Lcom/mh/movie/core/a/a/z$c;

    .line 67
    invoke-static {v0, v1, v2}, Lcom/mh/movie/core/mvp/model/aa;->a(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/mh/movie/core/mvp/model/aa;

    move-result-object v0

    .line 66
    invoke-static {v0}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/a/a/z;->d:Ljavax/inject/Provider;

    .line 72
    invoke-static {p1}, Lcom/mh/movie/core/a/a/z$a;->b(Lcom/mh/movie/core/a/a/z$a;)Lcom/mh/movie/core/a/b/ak;

    move-result-object v0

    iget-object v1, p0, Lcom/mh/movie/core/a/a/z;->d:Ljavax/inject/Provider;

    .line 71
    invoke-static {v0, v1}, Lcom/mh/movie/core/a/b/al;->a(Lcom/mh/movie/core/a/b/ak;Ljavax/inject/Provider;)Lcom/mh/movie/core/a/b/al;

    move-result-object v0

    .line 70
    invoke-static {v0}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/a/a/z;->e:Ljavax/inject/Provider;

    .line 75
    invoke-static {p1}, Lcom/mh/movie/core/a/a/z$a;->b(Lcom/mh/movie/core/a/a/z$a;)Lcom/mh/movie/core/a/b/ak;

    move-result-object v0

    invoke-static {v0}, Lcom/mh/movie/core/a/b/am;->a(Lcom/mh/movie/core/a/b/ak;)Lcom/mh/movie/core/a/b/am;

    move-result-object v0

    .line 74
    invoke-static {v0}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/a/a/z;->f:Ljavax/inject/Provider;

    .line 76
    new-instance v0, Lcom/mh/movie/core/a/a/z$g;

    .line 77
    invoke-static {p1}, Lcom/mh/movie/core/a/a/z$a;->a(Lcom/mh/movie/core/a/a/z$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/z$g;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/z;->g:Lcom/mh/movie/core/a/a/z$g;

    .line 78
    new-instance v0, Lcom/mh/movie/core/a/a/z$e;

    .line 79
    invoke-static {p1}, Lcom/mh/movie/core/a/a/z$a;->a(Lcom/mh/movie/core/a/a/z$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/z$e;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/z;->h:Lcom/mh/movie/core/a/a/z$e;

    .line 80
    new-instance v0, Lcom/mh/movie/core/a/a/z$b;

    .line 81
    invoke-static {p1}, Lcom/mh/movie/core/a/a/z$a;->a(Lcom/mh/movie/core/a/a/z$a;)Lcom/jess/arms/b/a/a;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/mh/movie/core/a/a/z$b;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/z;->i:Lcom/mh/movie/core/a/a/z$b;

    .line 82
    iget-object v1, p0, Lcom/mh/movie/core/a/a/z;->e:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/mh/movie/core/a/a/z;->f:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/mh/movie/core/a/a/z;->g:Lcom/mh/movie/core/a/a/z$g;

    iget-object v4, p0, Lcom/mh/movie/core/a/a/z;->c:Lcom/mh/movie/core/a/a/z$c;

    iget-object v5, p0, Lcom/mh/movie/core/a/a/z;->h:Lcom/mh/movie/core/a/a/z$e;

    iget-object v6, p0, Lcom/mh/movie/core/a/a/z;->i:Lcom/mh/movie/core/a/a/z$b;

    .line 84
    invoke-static/range {v1 .. v6}, Lcom/mh/movie/core/mvp/presenter/ad;->a(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/mh/movie/core/mvp/presenter/ad;

    move-result-object p1

    .line 83
    invoke-static {p1}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/mh/movie/core/a/a/z;->j:Ljavax/inject/Provider;

    return-void
.end method

.method private b(Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity;)Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/mh/movie/core/a/a/z;->j:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jess/arms/mvp/b;

    invoke-static {p1, v0}, Lcom/jess/arms/a/c;->a(Lcom/jess/arms/a/b;Lcom/jess/arms/mvp/b;)V

    return-object p1
.end method


# virtual methods
.method public a(Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity;)V
    .locals 0

    .line 95
    invoke-direct {p0, p1}, Lcom/mh/movie/core/a/a/z;->b(Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity;)Lcom/mh/movie/core/mvp/ui/activity/ExChangeActivity;

    return-void
.end method
