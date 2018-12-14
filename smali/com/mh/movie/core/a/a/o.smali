.class public final Lcom/mh/movie/core/a/a/o;
.super Ljava/lang/Object;
.source "DaggerAllComponent.java"

# interfaces
.implements Lcom/mh/movie/core/a/a/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mh/movie/core/a/a/o$b;,
        Lcom/mh/movie/core/a/a/o$e;,
        Lcom/mh/movie/core/a/a/o$g;,
        Lcom/mh/movie/core/a/a/o$c;,
        Lcom/mh/movie/core/a/a/o$d;,
        Lcom/mh/movie/core/a/a/o$f;,
        Lcom/mh/movie/core/a/a/o$a;
    }
.end annotation


# instance fields
.field private a:Lcom/mh/movie/core/a/a/o$f;

.field private b:Lcom/mh/movie/core/a/a/o$d;

.field private c:Lcom/mh/movie/core/a/a/o$c;

.field private d:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/model/AllModel;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/a/c$a;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/a/c$b;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/mh/movie/core/a/a/o$g;

.field private h:Lcom/mh/movie/core/a/a/o$e;

.field private i:Lcom/mh/movie/core/a/a/o$b;

.field private j:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/presenter/AllPresenter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/mh/movie/core/a/a/o$a;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-direct {p0, p1}, Lcom/mh/movie/core/a/a/o;->a(Lcom/mh/movie/core/a/a/o$a;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mh/movie/core/a/a/o$a;Lcom/mh/movie/core/a/a/o$1;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/mh/movie/core/a/a/o;-><init>(Lcom/mh/movie/core/a/a/o$a;)V

    return-void
.end method

.method public static a()Lcom/mh/movie/core/a/a/o$a;
    .locals 2

    .line 55
    new-instance v0, Lcom/mh/movie/core/a/a/o$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/o$a;-><init>(Lcom/mh/movie/core/a/a/o$1;)V

    return-object v0
.end method

.method private a(Lcom/mh/movie/core/a/a/o$a;)V
    .locals 7

    .line 60
    new-instance v0, Lcom/mh/movie/core/a/a/o$f;

    .line 61
    invoke-static {p1}, Lcom/mh/movie/core/a/a/o$a;->a(Lcom/mh/movie/core/a/a/o$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/o$f;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/o;->a:Lcom/mh/movie/core/a/a/o$f;

    .line 62
    new-instance v0, Lcom/mh/movie/core/a/a/o$d;

    invoke-static {p1}, Lcom/mh/movie/core/a/a/o$a;->a(Lcom/mh/movie/core/a/a/o$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/o$d;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/o;->b:Lcom/mh/movie/core/a/a/o$d;

    .line 63
    new-instance v0, Lcom/mh/movie/core/a/a/o$c;

    .line 64
    invoke-static {p1}, Lcom/mh/movie/core/a/a/o$a;->a(Lcom/mh/movie/core/a/a/o$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/o$c;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/o;->c:Lcom/mh/movie/core/a/a/o$c;

    .line 65
    iget-object v0, p0, Lcom/mh/movie/core/a/a/o;->a:Lcom/mh/movie/core/a/a/o$f;

    iget-object v1, p0, Lcom/mh/movie/core/a/a/o;->b:Lcom/mh/movie/core/a/a/o$d;

    iget-object v2, p0, Lcom/mh/movie/core/a/a/o;->c:Lcom/mh/movie/core/a/a/o$c;

    .line 67
    invoke-static {v0, v1, v2}, Lcom/mh/movie/core/mvp/model/e;->a(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/mh/movie/core/mvp/model/e;

    move-result-object v0

    .line 66
    invoke-static {v0}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/a/a/o;->d:Ljavax/inject/Provider;

    .line 70
    invoke-static {p1}, Lcom/mh/movie/core/a/a/o$a;->b(Lcom/mh/movie/core/a/a/o$a;)Lcom/mh/movie/core/a/b/g;

    move-result-object v0

    iget-object v1, p0, Lcom/mh/movie/core/a/a/o;->d:Ljavax/inject/Provider;

    invoke-static {v0, v1}, Lcom/mh/movie/core/a/b/h;->a(Lcom/mh/movie/core/a/b/g;Ljavax/inject/Provider;)Lcom/mh/movie/core/a/b/h;

    move-result-object v0

    .line 69
    invoke-static {v0}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/a/a/o;->e:Ljavax/inject/Provider;

    .line 72
    invoke-static {p1}, Lcom/mh/movie/core/a/a/o$a;->b(Lcom/mh/movie/core/a/a/o$a;)Lcom/mh/movie/core/a/b/g;

    move-result-object v0

    invoke-static {v0}, Lcom/mh/movie/core/a/b/i;->a(Lcom/mh/movie/core/a/b/g;)Lcom/mh/movie/core/a/b/i;

    move-result-object v0

    invoke-static {v0}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/a/a/o;->f:Ljavax/inject/Provider;

    .line 73
    new-instance v0, Lcom/mh/movie/core/a/a/o$g;

    .line 74
    invoke-static {p1}, Lcom/mh/movie/core/a/a/o$a;->a(Lcom/mh/movie/core/a/a/o$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/o$g;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/o;->g:Lcom/mh/movie/core/a/a/o$g;

    .line 75
    new-instance v0, Lcom/mh/movie/core/a/a/o$e;

    .line 76
    invoke-static {p1}, Lcom/mh/movie/core/a/a/o$a;->a(Lcom/mh/movie/core/a/a/o$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/o$e;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/o;->h:Lcom/mh/movie/core/a/a/o$e;

    .line 77
    new-instance v0, Lcom/mh/movie/core/a/a/o$b;

    .line 78
    invoke-static {p1}, Lcom/mh/movie/core/a/a/o$a;->a(Lcom/mh/movie/core/a/a/o$a;)Lcom/jess/arms/b/a/a;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/mh/movie/core/a/a/o$b;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/o;->i:Lcom/mh/movie/core/a/a/o$b;

    .line 79
    iget-object v1, p0, Lcom/mh/movie/core/a/a/o;->e:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/mh/movie/core/a/a/o;->f:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/mh/movie/core/a/a/o;->g:Lcom/mh/movie/core/a/a/o$g;

    iget-object v4, p0, Lcom/mh/movie/core/a/a/o;->c:Lcom/mh/movie/core/a/a/o$c;

    iget-object v5, p0, Lcom/mh/movie/core/a/a/o;->h:Lcom/mh/movie/core/a/a/o$e;

    iget-object v6, p0, Lcom/mh/movie/core/a/a/o;->i:Lcom/mh/movie/core/a/a/o$b;

    .line 81
    invoke-static/range {v1 .. v6}, Lcom/mh/movie/core/mvp/presenter/e;->a(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/mh/movie/core/mvp/presenter/e;

    move-result-object p1

    .line 80
    invoke-static {p1}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/mh/movie/core/a/a/o;->j:Ljavax/inject/Provider;

    return-void
.end method

.method private b(Lcom/mh/movie/core/mvp/ui/activity/AllActivity;)Lcom/mh/movie/core/mvp/ui/activity/AllActivity;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/mh/movie/core/a/a/o;->j:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jess/arms/mvp/b;

    invoke-static {p1, v0}, Lcom/jess/arms/a/c;->a(Lcom/jess/arms/a/b;Lcom/jess/arms/mvp/b;)V

    return-object p1
.end method


# virtual methods
.method public a(Lcom/mh/movie/core/mvp/ui/activity/AllActivity;)V
    .locals 0

    .line 92
    invoke-direct {p0, p1}, Lcom/mh/movie/core/a/a/o;->b(Lcom/mh/movie/core/mvp/ui/activity/AllActivity;)Lcom/mh/movie/core/mvp/ui/activity/AllActivity;

    return-void
.end method
