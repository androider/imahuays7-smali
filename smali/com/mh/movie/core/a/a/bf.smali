.class public final Lcom/mh/movie/core/a/a/bf;
.super Ljava/lang/Object;
.source "DaggerSearchComponent.java"

# interfaces
.implements Lcom/mh/movie/core/a/a/dd;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mh/movie/core/a/a/bf$b;,
        Lcom/mh/movie/core/a/a/bf$e;,
        Lcom/mh/movie/core/a/a/bf$g;,
        Lcom/mh/movie/core/a/a/bf$c;,
        Lcom/mh/movie/core/a/a/bf$d;,
        Lcom/mh/movie/core/a/a/bf$f;,
        Lcom/mh/movie/core/a/a/bf$a;
    }
.end annotation


# instance fields
.field private a:Lcom/mh/movie/core/a/a/bf$f;

.field private b:Lcom/mh/movie/core/a/a/bf$d;

.field private c:Lcom/mh/movie/core/a/a/bf$c;

.field private d:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/model/SearchModel;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/a/au$a;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/a/au$b;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/mh/movie/core/a/a/bf$g;

.field private h:Lcom/mh/movie/core/a/a/bf$e;

.field private i:Lcom/mh/movie/core/a/a/bf$b;

.field private j:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/presenter/SearchPresenter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/mh/movie/core/a/a/bf$a;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-direct {p0, p1}, Lcom/mh/movie/core/a/a/bf;->a(Lcom/mh/movie/core/a/a/bf$a;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mh/movie/core/a/a/bf$a;Lcom/mh/movie/core/a/a/bf$1;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/mh/movie/core/a/a/bf;-><init>(Lcom/mh/movie/core/a/a/bf$a;)V

    return-void
.end method

.method public static a()Lcom/mh/movie/core/a/a/bf$a;
    .locals 2

    .line 55
    new-instance v0, Lcom/mh/movie/core/a/a/bf$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/bf$a;-><init>(Lcom/mh/movie/core/a/a/bf$1;)V

    return-object v0
.end method

.method private a(Lcom/mh/movie/core/a/a/bf$a;)V
    .locals 7

    .line 60
    new-instance v0, Lcom/mh/movie/core/a/a/bf$f;

    .line 61
    invoke-static {p1}, Lcom/mh/movie/core/a/a/bf$a;->a(Lcom/mh/movie/core/a/a/bf$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/bf$f;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/bf;->a:Lcom/mh/movie/core/a/a/bf$f;

    .line 62
    new-instance v0, Lcom/mh/movie/core/a/a/bf$d;

    invoke-static {p1}, Lcom/mh/movie/core/a/a/bf$a;->a(Lcom/mh/movie/core/a/a/bf$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/bf$d;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/bf;->b:Lcom/mh/movie/core/a/a/bf$d;

    .line 63
    new-instance v0, Lcom/mh/movie/core/a/a/bf$c;

    .line 64
    invoke-static {p1}, Lcom/mh/movie/core/a/a/bf$a;->a(Lcom/mh/movie/core/a/a/bf$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/bf$c;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/bf;->c:Lcom/mh/movie/core/a/a/bf$c;

    .line 65
    iget-object v0, p0, Lcom/mh/movie/core/a/a/bf;->a:Lcom/mh/movie/core/a/a/bf$f;

    iget-object v1, p0, Lcom/mh/movie/core/a/a/bf;->b:Lcom/mh/movie/core/a/a/bf$d;

    iget-object v2, p0, Lcom/mh/movie/core/a/a/bf;->c:Lcom/mh/movie/core/a/a/bf$c;

    .line 67
    invoke-static {v0, v1, v2}, Lcom/mh/movie/core/mvp/model/ci;->a(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/mh/movie/core/mvp/model/ci;

    move-result-object v0

    .line 66
    invoke-static {v0}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/a/a/bf;->d:Ljavax/inject/Provider;

    .line 72
    invoke-static {p1}, Lcom/mh/movie/core/a/a/bf$a;->b(Lcom/mh/movie/core/a/a/bf$a;)Lcom/mh/movie/core/a/b/dw;

    move-result-object v0

    iget-object v1, p0, Lcom/mh/movie/core/a/a/bf;->d:Ljavax/inject/Provider;

    .line 71
    invoke-static {v0, v1}, Lcom/mh/movie/core/a/b/dx;->a(Lcom/mh/movie/core/a/b/dw;Ljavax/inject/Provider;)Lcom/mh/movie/core/a/b/dx;

    move-result-object v0

    .line 70
    invoke-static {v0}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/a/a/bf;->e:Ljavax/inject/Provider;

    .line 74
    invoke-static {p1}, Lcom/mh/movie/core/a/a/bf$a;->b(Lcom/mh/movie/core/a/a/bf$a;)Lcom/mh/movie/core/a/b/dw;

    move-result-object v0

    invoke-static {v0}, Lcom/mh/movie/core/a/b/dy;->a(Lcom/mh/movie/core/a/b/dw;)Lcom/mh/movie/core/a/b/dy;

    move-result-object v0

    invoke-static {v0}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/a/a/bf;->f:Ljavax/inject/Provider;

    .line 75
    new-instance v0, Lcom/mh/movie/core/a/a/bf$g;

    .line 76
    invoke-static {p1}, Lcom/mh/movie/core/a/a/bf$a;->a(Lcom/mh/movie/core/a/a/bf$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/bf$g;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/bf;->g:Lcom/mh/movie/core/a/a/bf$g;

    .line 77
    new-instance v0, Lcom/mh/movie/core/a/a/bf$e;

    .line 78
    invoke-static {p1}, Lcom/mh/movie/core/a/a/bf$a;->a(Lcom/mh/movie/core/a/a/bf$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/bf$e;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/bf;->h:Lcom/mh/movie/core/a/a/bf$e;

    .line 79
    new-instance v0, Lcom/mh/movie/core/a/a/bf$b;

    .line 80
    invoke-static {p1}, Lcom/mh/movie/core/a/a/bf$a;->a(Lcom/mh/movie/core/a/a/bf$a;)Lcom/jess/arms/b/a/a;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/mh/movie/core/a/a/bf$b;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/bf;->i:Lcom/mh/movie/core/a/a/bf$b;

    .line 81
    iget-object v1, p0, Lcom/mh/movie/core/a/a/bf;->e:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/mh/movie/core/a/a/bf;->f:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/mh/movie/core/a/a/bf;->g:Lcom/mh/movie/core/a/a/bf$g;

    iget-object v4, p0, Lcom/mh/movie/core/a/a/bf;->c:Lcom/mh/movie/core/a/a/bf$c;

    iget-object v5, p0, Lcom/mh/movie/core/a/a/bf;->h:Lcom/mh/movie/core/a/a/bf$e;

    iget-object v6, p0, Lcom/mh/movie/core/a/a/bf;->i:Lcom/mh/movie/core/a/a/bf$b;

    .line 83
    invoke-static/range {v1 .. v6}, Lcom/mh/movie/core/mvp/presenter/cp;->a(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/mh/movie/core/mvp/presenter/cp;

    move-result-object p1

    .line 82
    invoke-static {p1}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/mh/movie/core/a/a/bf;->j:Ljavax/inject/Provider;

    return-void
.end method

.method private b(Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;)Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/mh/movie/core/a/a/bf;->j:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jess/arms/mvp/b;

    invoke-static {p1, v0}, Lcom/jess/arms/a/c;->a(Lcom/jess/arms/a/b;Lcom/jess/arms/mvp/b;)V

    return-object p1
.end method


# virtual methods
.method public a(Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;)V
    .locals 0

    .line 94
    invoke-direct {p0, p1}, Lcom/mh/movie/core/a/a/bf;->b(Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;)Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;

    return-void
.end method
