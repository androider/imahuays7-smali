.class public final Lcom/mh/movie/core/a/a/bd;
.super Ljava/lang/Object;
.source "DaggerRegistComponent.java"

# interfaces
.implements Lcom/mh/movie/core/a/a/db;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mh/movie/core/a/a/bd$b;,
        Lcom/mh/movie/core/a/a/bd$e;,
        Lcom/mh/movie/core/a/a/bd$g;,
        Lcom/mh/movie/core/a/a/bd$c;,
        Lcom/mh/movie/core/a/a/bd$d;,
        Lcom/mh/movie/core/a/a/bd$f;,
        Lcom/mh/movie/core/a/a/bd$a;
    }
.end annotation


# instance fields
.field private a:Lcom/mh/movie/core/a/a/bd$f;

.field private b:Lcom/mh/movie/core/a/a/bd$d;

.field private c:Lcom/mh/movie/core/a/a/bd$c;

.field private d:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/model/RegistModel;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/a/as$a;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/a/as$b;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/mh/movie/core/a/a/bd$g;

.field private h:Lcom/mh/movie/core/a/a/bd$e;

.field private i:Lcom/mh/movie/core/a/a/bd$b;

.field private j:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/presenter/RegistPresenter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/mh/movie/core/a/a/bd$a;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-direct {p0, p1}, Lcom/mh/movie/core/a/a/bd;->a(Lcom/mh/movie/core/a/a/bd$a;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mh/movie/core/a/a/bd$a;Lcom/mh/movie/core/a/a/bd$1;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/mh/movie/core/a/a/bd;-><init>(Lcom/mh/movie/core/a/a/bd$a;)V

    return-void
.end method

.method public static a()Lcom/mh/movie/core/a/a/bd$a;
    .locals 2

    .line 55
    new-instance v0, Lcom/mh/movie/core/a/a/bd$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/bd$a;-><init>(Lcom/mh/movie/core/a/a/bd$1;)V

    return-object v0
.end method

.method private a(Lcom/mh/movie/core/a/a/bd$a;)V
    .locals 7

    .line 60
    new-instance v0, Lcom/mh/movie/core/a/a/bd$f;

    .line 61
    invoke-static {p1}, Lcom/mh/movie/core/a/a/bd$a;->a(Lcom/mh/movie/core/a/a/bd$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/bd$f;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/bd;->a:Lcom/mh/movie/core/a/a/bd$f;

    .line 62
    new-instance v0, Lcom/mh/movie/core/a/a/bd$d;

    invoke-static {p1}, Lcom/mh/movie/core/a/a/bd$a;->a(Lcom/mh/movie/core/a/a/bd$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/bd$d;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/bd;->b:Lcom/mh/movie/core/a/a/bd$d;

    .line 63
    new-instance v0, Lcom/mh/movie/core/a/a/bd$c;

    .line 64
    invoke-static {p1}, Lcom/mh/movie/core/a/a/bd$a;->a(Lcom/mh/movie/core/a/a/bd$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/bd$c;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/bd;->c:Lcom/mh/movie/core/a/a/bd$c;

    .line 65
    iget-object v0, p0, Lcom/mh/movie/core/a/a/bd;->a:Lcom/mh/movie/core/a/a/bd$f;

    iget-object v1, p0, Lcom/mh/movie/core/a/a/bd;->b:Lcom/mh/movie/core/a/a/bd$d;

    iget-object v2, p0, Lcom/mh/movie/core/a/a/bd;->c:Lcom/mh/movie/core/a/a/bd$c;

    .line 67
    invoke-static {v0, v1, v2}, Lcom/mh/movie/core/mvp/model/ce;->a(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/mh/movie/core/mvp/model/ce;

    move-result-object v0

    .line 66
    invoke-static {v0}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/a/a/bd;->d:Ljavax/inject/Provider;

    .line 72
    invoke-static {p1}, Lcom/mh/movie/core/a/a/bd$a;->b(Lcom/mh/movie/core/a/a/bd$a;)Lcom/mh/movie/core/a/b/dq;

    move-result-object v0

    iget-object v1, p0, Lcom/mh/movie/core/a/a/bd;->d:Ljavax/inject/Provider;

    .line 71
    invoke-static {v0, v1}, Lcom/mh/movie/core/a/b/dr;->a(Lcom/mh/movie/core/a/b/dq;Ljavax/inject/Provider;)Lcom/mh/movie/core/a/b/dr;

    move-result-object v0

    .line 70
    invoke-static {v0}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/a/a/bd;->e:Ljavax/inject/Provider;

    .line 74
    invoke-static {p1}, Lcom/mh/movie/core/a/a/bd$a;->b(Lcom/mh/movie/core/a/a/bd$a;)Lcom/mh/movie/core/a/b/dq;

    move-result-object v0

    invoke-static {v0}, Lcom/mh/movie/core/a/b/ds;->a(Lcom/mh/movie/core/a/b/dq;)Lcom/mh/movie/core/a/b/ds;

    move-result-object v0

    invoke-static {v0}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/a/a/bd;->f:Ljavax/inject/Provider;

    .line 75
    new-instance v0, Lcom/mh/movie/core/a/a/bd$g;

    .line 76
    invoke-static {p1}, Lcom/mh/movie/core/a/a/bd$a;->a(Lcom/mh/movie/core/a/a/bd$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/bd$g;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/bd;->g:Lcom/mh/movie/core/a/a/bd$g;

    .line 77
    new-instance v0, Lcom/mh/movie/core/a/a/bd$e;

    .line 78
    invoke-static {p1}, Lcom/mh/movie/core/a/a/bd$a;->a(Lcom/mh/movie/core/a/a/bd$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/bd$e;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/bd;->h:Lcom/mh/movie/core/a/a/bd$e;

    .line 79
    new-instance v0, Lcom/mh/movie/core/a/a/bd$b;

    .line 80
    invoke-static {p1}, Lcom/mh/movie/core/a/a/bd$a;->a(Lcom/mh/movie/core/a/a/bd$a;)Lcom/jess/arms/b/a/a;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/mh/movie/core/a/a/bd$b;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/bd;->i:Lcom/mh/movie/core/a/a/bd$b;

    .line 81
    iget-object v1, p0, Lcom/mh/movie/core/a/a/bd;->e:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/mh/movie/core/a/a/bd;->f:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/mh/movie/core/a/a/bd;->g:Lcom/mh/movie/core/a/a/bd$g;

    iget-object v4, p0, Lcom/mh/movie/core/a/a/bd;->c:Lcom/mh/movie/core/a/a/bd$c;

    iget-object v5, p0, Lcom/mh/movie/core/a/a/bd;->h:Lcom/mh/movie/core/a/a/bd$e;

    iget-object v6, p0, Lcom/mh/movie/core/a/a/bd;->i:Lcom/mh/movie/core/a/a/bd$b;

    .line 83
    invoke-static/range {v1 .. v6}, Lcom/mh/movie/core/mvp/presenter/cl;->a(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/mh/movie/core/mvp/presenter/cl;

    move-result-object p1

    .line 82
    invoke-static {p1}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/mh/movie/core/a/a/bd;->j:Ljavax/inject/Provider;

    return-void
.end method

.method private b(Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;)Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/mh/movie/core/a/a/bd;->j:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jess/arms/mvp/b;

    invoke-static {p1, v0}, Lcom/jess/arms/a/c;->a(Lcom/jess/arms/a/b;Lcom/jess/arms/mvp/b;)V

    return-object p1
.end method


# virtual methods
.method public a(Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;)V
    .locals 0

    .line 94
    invoke-direct {p0, p1}, Lcom/mh/movie/core/a/a/bd;->b(Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;)Lcom/mh/movie/core/mvp/ui/activity/user/RegistActivity;

    return-void
.end method
