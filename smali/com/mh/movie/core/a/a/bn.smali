.class public final Lcom/mh/movie/core/a/a/bn;
.super Ljava/lang/Object;
.source "DaggerTaskComponent.java"

# interfaces
.implements Lcom/mh/movie/core/a/a/dl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mh/movie/core/a/a/bn$b;,
        Lcom/mh/movie/core/a/a/bn$e;,
        Lcom/mh/movie/core/a/a/bn$g;,
        Lcom/mh/movie/core/a/a/bn$c;,
        Lcom/mh/movie/core/a/a/bn$d;,
        Lcom/mh/movie/core/a/a/bn$f;,
        Lcom/mh/movie/core/a/a/bn$a;
    }
.end annotation


# instance fields
.field private a:Lcom/mh/movie/core/a/a/bn$f;

.field private b:Lcom/mh/movie/core/a/a/bn$d;

.field private c:Lcom/mh/movie/core/a/a/bn$c;

.field private d:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/model/TaskModel;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/a/bd$a;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/a/bd$b;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/mh/movie/core/a/a/bn$g;

.field private h:Lcom/mh/movie/core/a/a/bn$e;

.field private i:Lcom/mh/movie/core/a/a/bn$b;

.field private j:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/presenter/TaskPresenter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/mh/movie/core/a/a/bn$a;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-direct {p0, p1}, Lcom/mh/movie/core/a/a/bn;->a(Lcom/mh/movie/core/a/a/bn$a;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mh/movie/core/a/a/bn$a;Lcom/mh/movie/core/a/a/bn$1;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/mh/movie/core/a/a/bn;-><init>(Lcom/mh/movie/core/a/a/bn$a;)V

    return-void
.end method

.method public static a()Lcom/mh/movie/core/a/a/bn$a;
    .locals 2

    .line 55
    new-instance v0, Lcom/mh/movie/core/a/a/bn$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/bn$a;-><init>(Lcom/mh/movie/core/a/a/bn$1;)V

    return-object v0
.end method

.method private a(Lcom/mh/movie/core/a/a/bn$a;)V
    .locals 7

    .line 60
    new-instance v0, Lcom/mh/movie/core/a/a/bn$f;

    .line 61
    invoke-static {p1}, Lcom/mh/movie/core/a/a/bn$a;->a(Lcom/mh/movie/core/a/a/bn$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/bn$f;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/bn;->a:Lcom/mh/movie/core/a/a/bn$f;

    .line 62
    new-instance v0, Lcom/mh/movie/core/a/a/bn$d;

    invoke-static {p1}, Lcom/mh/movie/core/a/a/bn$a;->a(Lcom/mh/movie/core/a/a/bn$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/bn$d;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/bn;->b:Lcom/mh/movie/core/a/a/bn$d;

    .line 63
    new-instance v0, Lcom/mh/movie/core/a/a/bn$c;

    .line 64
    invoke-static {p1}, Lcom/mh/movie/core/a/a/bn$a;->a(Lcom/mh/movie/core/a/a/bn$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/bn$c;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/bn;->c:Lcom/mh/movie/core/a/a/bn$c;

    .line 65
    iget-object v0, p0, Lcom/mh/movie/core/a/a/bn;->a:Lcom/mh/movie/core/a/a/bn$f;

    iget-object v1, p0, Lcom/mh/movie/core/a/a/bn;->b:Lcom/mh/movie/core/a/a/bn$d;

    iget-object v2, p0, Lcom/mh/movie/core/a/a/bn;->c:Lcom/mh/movie/core/a/a/bn$c;

    .line 67
    invoke-static {v0, v1, v2}, Lcom/mh/movie/core/mvp/model/cy;->a(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/mh/movie/core/mvp/model/cy;

    move-result-object v0

    .line 66
    invoke-static {v0}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/a/a/bn;->d:Ljavax/inject/Provider;

    .line 70
    invoke-static {p1}, Lcom/mh/movie/core/a/a/bn$a;->b(Lcom/mh/movie/core/a/a/bn$a;)Lcom/mh/movie/core/a/b/eu;

    move-result-object v0

    iget-object v1, p0, Lcom/mh/movie/core/a/a/bn;->d:Ljavax/inject/Provider;

    invoke-static {v0, v1}, Lcom/mh/movie/core/a/b/ev;->a(Lcom/mh/movie/core/a/b/eu;Ljavax/inject/Provider;)Lcom/mh/movie/core/a/b/ev;

    move-result-object v0

    .line 69
    invoke-static {v0}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/a/a/bn;->e:Ljavax/inject/Provider;

    .line 72
    invoke-static {p1}, Lcom/mh/movie/core/a/a/bn$a;->b(Lcom/mh/movie/core/a/a/bn$a;)Lcom/mh/movie/core/a/b/eu;

    move-result-object v0

    invoke-static {v0}, Lcom/mh/movie/core/a/b/ew;->a(Lcom/mh/movie/core/a/b/eu;)Lcom/mh/movie/core/a/b/ew;

    move-result-object v0

    invoke-static {v0}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/a/a/bn;->f:Ljavax/inject/Provider;

    .line 73
    new-instance v0, Lcom/mh/movie/core/a/a/bn$g;

    .line 74
    invoke-static {p1}, Lcom/mh/movie/core/a/a/bn$a;->a(Lcom/mh/movie/core/a/a/bn$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/bn$g;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/bn;->g:Lcom/mh/movie/core/a/a/bn$g;

    .line 75
    new-instance v0, Lcom/mh/movie/core/a/a/bn$e;

    .line 76
    invoke-static {p1}, Lcom/mh/movie/core/a/a/bn$a;->a(Lcom/mh/movie/core/a/a/bn$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/bn$e;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/bn;->h:Lcom/mh/movie/core/a/a/bn$e;

    .line 77
    new-instance v0, Lcom/mh/movie/core/a/a/bn$b;

    .line 78
    invoke-static {p1}, Lcom/mh/movie/core/a/a/bn$a;->a(Lcom/mh/movie/core/a/a/bn$a;)Lcom/jess/arms/b/a/a;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/mh/movie/core/a/a/bn$b;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/bn;->i:Lcom/mh/movie/core/a/a/bn$b;

    .line 79
    iget-object v1, p0, Lcom/mh/movie/core/a/a/bn;->e:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/mh/movie/core/a/a/bn;->f:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/mh/movie/core/a/a/bn;->g:Lcom/mh/movie/core/a/a/bn$g;

    iget-object v4, p0, Lcom/mh/movie/core/a/a/bn;->c:Lcom/mh/movie/core/a/a/bn$c;

    iget-object v5, p0, Lcom/mh/movie/core/a/a/bn;->h:Lcom/mh/movie/core/a/a/bn$e;

    iget-object v6, p0, Lcom/mh/movie/core/a/a/bn;->i:Lcom/mh/movie/core/a/a/bn$b;

    .line 81
    invoke-static/range {v1 .. v6}, Lcom/mh/movie/core/mvp/presenter/dh;->a(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/mh/movie/core/mvp/presenter/dh;

    move-result-object p1

    .line 80
    invoke-static {p1}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/mh/movie/core/a/a/bn;->j:Ljavax/inject/Provider;

    return-void
.end method

.method private b(Lcom/mh/movie/core/mvp/ui/fragment/TaskFragment;)Lcom/mh/movie/core/mvp/ui/fragment/TaskFragment;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/mh/movie/core/a/a/bn;->j:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jess/arms/mvp/b;

    invoke-static {p1, v0}, Lcom/jess/arms/a/f;->a(Lcom/jess/arms/a/e;Lcom/jess/arms/mvp/b;)V

    return-object p1
.end method


# virtual methods
.method public a(Lcom/mh/movie/core/mvp/ui/fragment/TaskFragment;)V
    .locals 0

    .line 92
    invoke-direct {p0, p1}, Lcom/mh/movie/core/a/a/bn;->b(Lcom/mh/movie/core/mvp/ui/fragment/TaskFragment;)Lcom/mh/movie/core/mvp/ui/fragment/TaskFragment;

    return-void
.end method
