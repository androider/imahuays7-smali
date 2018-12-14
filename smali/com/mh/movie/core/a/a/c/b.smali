.class public final Lcom/mh/movie/core/a/a/c/b;
.super Ljava/lang/Object;
.source "DaggerTestDaoComponent.java"

# interfaces
.implements Lcom/mh/movie/core/a/a/c/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mh/movie/core/a/a/c/b$b;,
        Lcom/mh/movie/core/a/a/c/b$e;,
        Lcom/mh/movie/core/a/a/c/b$g;,
        Lcom/mh/movie/core/a/a/c/b$c;,
        Lcom/mh/movie/core/a/a/c/b$d;,
        Lcom/mh/movie/core/a/a/c/b$f;,
        Lcom/mh/movie/core/a/a/c/b$a;
    }
.end annotation


# instance fields
.field private a:Lcom/mh/movie/core/a/a/c/b$f;

.field private b:Lcom/mh/movie/core/a/a/c/b$d;

.field private c:Lcom/mh/movie/core/a/a/c/b$c;

.field private d:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/model/user/TestDaoModel;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/a/c/b$a;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/a/c/b$b;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/mh/movie/core/a/a/c/b$g;

.field private h:Lcom/mh/movie/core/a/a/c/b$e;

.field private i:Lcom/mh/movie/core/a/a/c/b$b;

.field private j:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/presenter/user/TestDaoPresenter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/mh/movie/core/a/a/c/b$a;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-direct {p0, p1}, Lcom/mh/movie/core/a/a/c/b;->a(Lcom/mh/movie/core/a/a/c/b$a;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mh/movie/core/a/a/c/b$a;Lcom/mh/movie/core/a/a/c/b$1;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/mh/movie/core/a/a/c/b;-><init>(Lcom/mh/movie/core/a/a/c/b$a;)V

    return-void
.end method

.method public static a()Lcom/mh/movie/core/a/a/c/b$a;
    .locals 2

    .line 55
    new-instance v0, Lcom/mh/movie/core/a/a/c/b$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/c/b$a;-><init>(Lcom/mh/movie/core/a/a/c/b$1;)V

    return-object v0
.end method

.method private a(Lcom/mh/movie/core/a/a/c/b$a;)V
    .locals 7

    .line 60
    new-instance v0, Lcom/mh/movie/core/a/a/c/b$f;

    .line 61
    invoke-static {p1}, Lcom/mh/movie/core/a/a/c/b$a;->a(Lcom/mh/movie/core/a/a/c/b$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/c/b$f;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/c/b;->a:Lcom/mh/movie/core/a/a/c/b$f;

    .line 62
    new-instance v0, Lcom/mh/movie/core/a/a/c/b$d;

    invoke-static {p1}, Lcom/mh/movie/core/a/a/c/b$a;->a(Lcom/mh/movie/core/a/a/c/b$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/c/b$d;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/c/b;->b:Lcom/mh/movie/core/a/a/c/b$d;

    .line 63
    new-instance v0, Lcom/mh/movie/core/a/a/c/b$c;

    .line 64
    invoke-static {p1}, Lcom/mh/movie/core/a/a/c/b$a;->a(Lcom/mh/movie/core/a/a/c/b$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/c/b$c;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/c/b;->c:Lcom/mh/movie/core/a/a/c/b$c;

    .line 65
    iget-object v0, p0, Lcom/mh/movie/core/a/a/c/b;->a:Lcom/mh/movie/core/a/a/c/b$f;

    iget-object v1, p0, Lcom/mh/movie/core/a/a/c/b;->b:Lcom/mh/movie/core/a/a/c/b$d;

    iget-object v2, p0, Lcom/mh/movie/core/a/a/c/b;->c:Lcom/mh/movie/core/a/a/c/b$c;

    .line 67
    invoke-static {v0, v1, v2}, Lcom/mh/movie/core/mvp/model/user/c;->a(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/mh/movie/core/mvp/model/user/c;

    move-result-object v0

    .line 66
    invoke-static {v0}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/a/a/c/b;->d:Ljavax/inject/Provider;

    .line 72
    invoke-static {p1}, Lcom/mh/movie/core/a/a/c/b$a;->b(Lcom/mh/movie/core/a/a/c/b$a;)Lcom/mh/movie/core/a/b/c/d;

    move-result-object v0

    iget-object v1, p0, Lcom/mh/movie/core/a/a/c/b;->d:Ljavax/inject/Provider;

    .line 71
    invoke-static {v0, v1}, Lcom/mh/movie/core/a/b/c/e;->a(Lcom/mh/movie/core/a/b/c/d;Ljavax/inject/Provider;)Lcom/mh/movie/core/a/b/c/e;

    move-result-object v0

    .line 70
    invoke-static {v0}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/a/a/c/b;->e:Ljavax/inject/Provider;

    .line 74
    invoke-static {p1}, Lcom/mh/movie/core/a/a/c/b$a;->b(Lcom/mh/movie/core/a/a/c/b$a;)Lcom/mh/movie/core/a/b/c/d;

    move-result-object v0

    invoke-static {v0}, Lcom/mh/movie/core/a/b/c/f;->a(Lcom/mh/movie/core/a/b/c/d;)Lcom/mh/movie/core/a/b/c/f;

    move-result-object v0

    invoke-static {v0}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/a/a/c/b;->f:Ljavax/inject/Provider;

    .line 75
    new-instance v0, Lcom/mh/movie/core/a/a/c/b$g;

    .line 76
    invoke-static {p1}, Lcom/mh/movie/core/a/a/c/b$a;->a(Lcom/mh/movie/core/a/a/c/b$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/c/b$g;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/c/b;->g:Lcom/mh/movie/core/a/a/c/b$g;

    .line 77
    new-instance v0, Lcom/mh/movie/core/a/a/c/b$e;

    .line 78
    invoke-static {p1}, Lcom/mh/movie/core/a/a/c/b$a;->a(Lcom/mh/movie/core/a/a/c/b$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/c/b$e;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/c/b;->h:Lcom/mh/movie/core/a/a/c/b$e;

    .line 79
    new-instance v0, Lcom/mh/movie/core/a/a/c/b$b;

    .line 80
    invoke-static {p1}, Lcom/mh/movie/core/a/a/c/b$a;->a(Lcom/mh/movie/core/a/a/c/b$a;)Lcom/jess/arms/b/a/a;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/mh/movie/core/a/a/c/b$b;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/c/b;->i:Lcom/mh/movie/core/a/a/c/b$b;

    .line 81
    iget-object v1, p0, Lcom/mh/movie/core/a/a/c/b;->e:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/mh/movie/core/a/a/c/b;->f:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/mh/movie/core/a/a/c/b;->g:Lcom/mh/movie/core/a/a/c/b$g;

    iget-object v4, p0, Lcom/mh/movie/core/a/a/c/b;->c:Lcom/mh/movie/core/a/a/c/b$c;

    iget-object v5, p0, Lcom/mh/movie/core/a/a/c/b;->h:Lcom/mh/movie/core/a/a/c/b$e;

    iget-object v6, p0, Lcom/mh/movie/core/a/a/c/b;->i:Lcom/mh/movie/core/a/a/c/b$b;

    .line 83
    invoke-static/range {v1 .. v6}, Lcom/mh/movie/core/mvp/presenter/user/c;->a(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/mh/movie/core/mvp/presenter/user/c;

    move-result-object p1

    .line 82
    invoke-static {p1}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/mh/movie/core/a/a/c/b;->j:Ljavax/inject/Provider;

    return-void
.end method

.method private b(Lcom/mh/movie/core/mvp/ui/activity/user/TestDaoActivity;)Lcom/mh/movie/core/mvp/ui/activity/user/TestDaoActivity;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/mh/movie/core/a/a/c/b;->j:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jess/arms/mvp/b;

    invoke-static {p1, v0}, Lcom/jess/arms/a/c;->a(Lcom/jess/arms/a/b;Lcom/jess/arms/mvp/b;)V

    return-object p1
.end method


# virtual methods
.method public a(Lcom/mh/movie/core/mvp/ui/activity/user/TestDaoActivity;)V
    .locals 0

    .line 94
    invoke-direct {p0, p1}, Lcom/mh/movie/core/a/a/c/b;->b(Lcom/mh/movie/core/mvp/ui/activity/user/TestDaoActivity;)Lcom/mh/movie/core/mvp/ui/activity/user/TestDaoActivity;

    return-void
.end method
