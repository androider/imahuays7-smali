.class public final Lcom/mh/movie/core/a/a/an;
.super Ljava/lang/Object;
.source "DaggerModifyPasswordComponent.java"

# interfaces
.implements Lcom/mh/movie/core/a/a/cl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mh/movie/core/a/a/an$b;,
        Lcom/mh/movie/core/a/a/an$e;,
        Lcom/mh/movie/core/a/a/an$g;,
        Lcom/mh/movie/core/a/a/an$c;,
        Lcom/mh/movie/core/a/a/an$d;,
        Lcom/mh/movie/core/a/a/an$f;,
        Lcom/mh/movie/core/a/a/an$a;
    }
.end annotation


# instance fields
.field private a:Lcom/mh/movie/core/a/a/an$f;

.field private b:Lcom/mh/movie/core/a/a/an$d;

.field private c:Lcom/mh/movie/core/a/a/an$c;

.field private d:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/model/ModifyPasswordModel;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/a/aa$a;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/a/aa$b;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/mh/movie/core/a/a/an$g;

.field private h:Lcom/mh/movie/core/a/a/an$e;

.field private i:Lcom/mh/movie/core/a/a/an$b;

.field private j:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/presenter/ModifyPasswordPresenter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/mh/movie/core/a/a/an$a;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-direct {p0, p1}, Lcom/mh/movie/core/a/a/an;->a(Lcom/mh/movie/core/a/a/an$a;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mh/movie/core/a/a/an$a;Lcom/mh/movie/core/a/a/an$1;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/mh/movie/core/a/a/an;-><init>(Lcom/mh/movie/core/a/a/an$a;)V

    return-void
.end method

.method public static a()Lcom/mh/movie/core/a/a/an$a;
    .locals 2

    .line 55
    new-instance v0, Lcom/mh/movie/core/a/a/an$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/an$a;-><init>(Lcom/mh/movie/core/a/a/an$1;)V

    return-object v0
.end method

.method private a(Lcom/mh/movie/core/a/a/an$a;)V
    .locals 7

    .line 60
    new-instance v0, Lcom/mh/movie/core/a/a/an$f;

    .line 61
    invoke-static {p1}, Lcom/mh/movie/core/a/a/an$a;->a(Lcom/mh/movie/core/a/a/an$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/an$f;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/an;->a:Lcom/mh/movie/core/a/a/an$f;

    .line 62
    new-instance v0, Lcom/mh/movie/core/a/a/an$d;

    invoke-static {p1}, Lcom/mh/movie/core/a/a/an$a;->a(Lcom/mh/movie/core/a/a/an$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/an$d;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/an;->b:Lcom/mh/movie/core/a/a/an$d;

    .line 63
    new-instance v0, Lcom/mh/movie/core/a/a/an$c;

    .line 64
    invoke-static {p1}, Lcom/mh/movie/core/a/a/an$a;->a(Lcom/mh/movie/core/a/a/an$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/an$c;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/an;->c:Lcom/mh/movie/core/a/a/an$c;

    .line 65
    iget-object v0, p0, Lcom/mh/movie/core/a/a/an;->a:Lcom/mh/movie/core/a/a/an$f;

    iget-object v1, p0, Lcom/mh/movie/core/a/a/an;->b:Lcom/mh/movie/core/a/a/an$d;

    iget-object v2, p0, Lcom/mh/movie/core/a/a/an;->c:Lcom/mh/movie/core/a/a/an$c;

    .line 67
    invoke-static {v0, v1, v2}, Lcom/mh/movie/core/mvp/model/ay;->a(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/mh/movie/core/mvp/model/ay;

    move-result-object v0

    .line 66
    invoke-static {v0}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/a/a/an;->d:Ljavax/inject/Provider;

    .line 72
    invoke-static {p1}, Lcom/mh/movie/core/a/a/an$a;->b(Lcom/mh/movie/core/a/a/an$a;)Lcom/mh/movie/core/a/b/bu;

    move-result-object v0

    iget-object v1, p0, Lcom/mh/movie/core/a/a/an;->d:Ljavax/inject/Provider;

    .line 71
    invoke-static {v0, v1}, Lcom/mh/movie/core/a/b/bv;->a(Lcom/mh/movie/core/a/b/bu;Ljavax/inject/Provider;)Lcom/mh/movie/core/a/b/bv;

    move-result-object v0

    .line 70
    invoke-static {v0}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/a/a/an;->e:Ljavax/inject/Provider;

    .line 76
    invoke-static {p1}, Lcom/mh/movie/core/a/a/an$a;->b(Lcom/mh/movie/core/a/a/an$a;)Lcom/mh/movie/core/a/b/bu;

    move-result-object v0

    .line 75
    invoke-static {v0}, Lcom/mh/movie/core/a/b/bw;->a(Lcom/mh/movie/core/a/b/bu;)Lcom/mh/movie/core/a/b/bw;

    move-result-object v0

    .line 74
    invoke-static {v0}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/a/a/an;->f:Ljavax/inject/Provider;

    .line 77
    new-instance v0, Lcom/mh/movie/core/a/a/an$g;

    .line 78
    invoke-static {p1}, Lcom/mh/movie/core/a/a/an$a;->a(Lcom/mh/movie/core/a/a/an$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/an$g;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/an;->g:Lcom/mh/movie/core/a/a/an$g;

    .line 79
    new-instance v0, Lcom/mh/movie/core/a/a/an$e;

    .line 80
    invoke-static {p1}, Lcom/mh/movie/core/a/a/an$a;->a(Lcom/mh/movie/core/a/a/an$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/an$e;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/an;->h:Lcom/mh/movie/core/a/a/an$e;

    .line 81
    new-instance v0, Lcom/mh/movie/core/a/a/an$b;

    .line 82
    invoke-static {p1}, Lcom/mh/movie/core/a/a/an$a;->a(Lcom/mh/movie/core/a/a/an$a;)Lcom/jess/arms/b/a/a;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/mh/movie/core/a/a/an$b;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/an;->i:Lcom/mh/movie/core/a/a/an$b;

    .line 83
    iget-object v1, p0, Lcom/mh/movie/core/a/a/an;->e:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/mh/movie/core/a/a/an;->f:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/mh/movie/core/a/a/an;->g:Lcom/mh/movie/core/a/a/an$g;

    iget-object v4, p0, Lcom/mh/movie/core/a/a/an;->c:Lcom/mh/movie/core/a/a/an$c;

    iget-object v5, p0, Lcom/mh/movie/core/a/a/an;->h:Lcom/mh/movie/core/a/a/an$e;

    iget-object v6, p0, Lcom/mh/movie/core/a/a/an;->i:Lcom/mh/movie/core/a/a/an$b;

    .line 85
    invoke-static/range {v1 .. v6}, Lcom/mh/movie/core/mvp/presenter/bf;->a(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/mh/movie/core/mvp/presenter/bf;

    move-result-object p1

    .line 84
    invoke-static {p1}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/mh/movie/core/a/a/an;->j:Ljavax/inject/Provider;

    return-void
.end method

.method private b(Lcom/mh/movie/core/mvp/ui/activity/ModifyPasswordActivity;)Lcom/mh/movie/core/mvp/ui/activity/ModifyPasswordActivity;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/mh/movie/core/a/a/an;->j:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jess/arms/mvp/b;

    invoke-static {p1, v0}, Lcom/jess/arms/a/c;->a(Lcom/jess/arms/a/b;Lcom/jess/arms/mvp/b;)V

    return-object p1
.end method


# virtual methods
.method public a(Lcom/mh/movie/core/mvp/ui/activity/ModifyPasswordActivity;)V
    .locals 0

    .line 96
    invoke-direct {p0, p1}, Lcom/mh/movie/core/a/a/an;->b(Lcom/mh/movie/core/mvp/ui/activity/ModifyPasswordActivity;)Lcom/mh/movie/core/mvp/ui/activity/ModifyPasswordActivity;

    return-void
.end method
