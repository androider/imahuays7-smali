.class public final Lcom/mh/movie/core/a/a/ae;
.super Ljava/lang/Object;
.source "DaggerForgetPswComponent.java"

# interfaces
.implements Lcom/mh/movie/core/a/a/cc;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mh/movie/core/a/a/ae$b;,
        Lcom/mh/movie/core/a/a/ae$e;,
        Lcom/mh/movie/core/a/a/ae$g;,
        Lcom/mh/movie/core/a/a/ae$c;,
        Lcom/mh/movie/core/a/a/ae$d;,
        Lcom/mh/movie/core/a/a/ae$f;,
        Lcom/mh/movie/core/a/a/ae$a;
    }
.end annotation


# instance fields
.field private a:Lcom/mh/movie/core/a/a/ae$f;

.field private b:Lcom/mh/movie/core/a/a/ae$d;

.field private c:Lcom/mh/movie/core/a/a/ae$c;

.field private d:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/model/ForgetPswModel;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/a/s$a;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/a/s$b;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/mh/movie/core/a/a/ae$g;

.field private h:Lcom/mh/movie/core/a/a/ae$e;

.field private i:Lcom/mh/movie/core/a/a/ae$b;

.field private j:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/presenter/ForgetPswPresenter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/mh/movie/core/a/a/ae$a;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-direct {p0, p1}, Lcom/mh/movie/core/a/a/ae;->a(Lcom/mh/movie/core/a/a/ae$a;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mh/movie/core/a/a/ae$a;Lcom/mh/movie/core/a/a/ae$1;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/mh/movie/core/a/a/ae;-><init>(Lcom/mh/movie/core/a/a/ae$a;)V

    return-void
.end method

.method public static a()Lcom/mh/movie/core/a/a/ae$a;
    .locals 2

    .line 55
    new-instance v0, Lcom/mh/movie/core/a/a/ae$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/ae$a;-><init>(Lcom/mh/movie/core/a/a/ae$1;)V

    return-object v0
.end method

.method private a(Lcom/mh/movie/core/a/a/ae$a;)V
    .locals 7

    .line 60
    new-instance v0, Lcom/mh/movie/core/a/a/ae$f;

    .line 61
    invoke-static {p1}, Lcom/mh/movie/core/a/a/ae$a;->a(Lcom/mh/movie/core/a/a/ae$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/ae$f;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/ae;->a:Lcom/mh/movie/core/a/a/ae$f;

    .line 62
    new-instance v0, Lcom/mh/movie/core/a/a/ae$d;

    invoke-static {p1}, Lcom/mh/movie/core/a/a/ae$a;->a(Lcom/mh/movie/core/a/a/ae$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/ae$d;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/ae;->b:Lcom/mh/movie/core/a/a/ae$d;

    .line 63
    new-instance v0, Lcom/mh/movie/core/a/a/ae$c;

    .line 64
    invoke-static {p1}, Lcom/mh/movie/core/a/a/ae$a;->a(Lcom/mh/movie/core/a/a/ae$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/ae$c;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/ae;->c:Lcom/mh/movie/core/a/a/ae$c;

    .line 65
    iget-object v0, p0, Lcom/mh/movie/core/a/a/ae;->a:Lcom/mh/movie/core/a/a/ae$f;

    iget-object v1, p0, Lcom/mh/movie/core/a/a/ae;->b:Lcom/mh/movie/core/a/a/ae$d;

    iget-object v2, p0, Lcom/mh/movie/core/a/a/ae;->c:Lcom/mh/movie/core/a/a/ae$c;

    .line 67
    invoke-static {v0, v1, v2}, Lcom/mh/movie/core/mvp/model/ak;->a(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/mh/movie/core/mvp/model/ak;

    move-result-object v0

    .line 66
    invoke-static {v0}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/a/a/ae;->d:Ljavax/inject/Provider;

    .line 72
    invoke-static {p1}, Lcom/mh/movie/core/a/a/ae$a;->b(Lcom/mh/movie/core/a/a/ae$a;)Lcom/mh/movie/core/mvp/c/d;

    move-result-object v0

    iget-object v1, p0, Lcom/mh/movie/core/a/a/ae;->d:Ljavax/inject/Provider;

    .line 71
    invoke-static {v0, v1}, Lcom/mh/movie/core/mvp/c/e;->a(Lcom/mh/movie/core/mvp/c/d;Ljavax/inject/Provider;)Lcom/mh/movie/core/mvp/c/e;

    move-result-object v0

    .line 70
    invoke-static {v0}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/a/a/ae;->e:Ljavax/inject/Provider;

    .line 75
    invoke-static {p1}, Lcom/mh/movie/core/a/a/ae$a;->b(Lcom/mh/movie/core/a/a/ae$a;)Lcom/mh/movie/core/mvp/c/d;

    move-result-object v0

    invoke-static {v0}, Lcom/mh/movie/core/mvp/c/f;->a(Lcom/mh/movie/core/mvp/c/d;)Lcom/mh/movie/core/mvp/c/f;

    move-result-object v0

    .line 74
    invoke-static {v0}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/a/a/ae;->f:Ljavax/inject/Provider;

    .line 76
    new-instance v0, Lcom/mh/movie/core/a/a/ae$g;

    .line 77
    invoke-static {p1}, Lcom/mh/movie/core/a/a/ae$a;->a(Lcom/mh/movie/core/a/a/ae$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/ae$g;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/ae;->g:Lcom/mh/movie/core/a/a/ae$g;

    .line 78
    new-instance v0, Lcom/mh/movie/core/a/a/ae$e;

    .line 79
    invoke-static {p1}, Lcom/mh/movie/core/a/a/ae$a;->a(Lcom/mh/movie/core/a/a/ae$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/ae$e;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/ae;->h:Lcom/mh/movie/core/a/a/ae$e;

    .line 80
    new-instance v0, Lcom/mh/movie/core/a/a/ae$b;

    .line 81
    invoke-static {p1}, Lcom/mh/movie/core/a/a/ae$a;->a(Lcom/mh/movie/core/a/a/ae$a;)Lcom/jess/arms/b/a/a;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/mh/movie/core/a/a/ae$b;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/ae;->i:Lcom/mh/movie/core/a/a/ae$b;

    .line 82
    iget-object v1, p0, Lcom/mh/movie/core/a/a/ae;->e:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/mh/movie/core/a/a/ae;->f:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/mh/movie/core/a/a/ae;->g:Lcom/mh/movie/core/a/a/ae$g;

    iget-object v4, p0, Lcom/mh/movie/core/a/a/ae;->c:Lcom/mh/movie/core/a/a/ae$c;

    iget-object v5, p0, Lcom/mh/movie/core/a/a/ae;->h:Lcom/mh/movie/core/a/a/ae$e;

    iget-object v6, p0, Lcom/mh/movie/core/a/a/ae;->i:Lcom/mh/movie/core/a/a/ae$b;

    .line 84
    invoke-static/range {v1 .. v6}, Lcom/mh/movie/core/mvp/presenter/an;->a(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/mh/movie/core/mvp/presenter/an;

    move-result-object p1

    .line 83
    invoke-static {p1}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/mh/movie/core/a/a/ae;->j:Ljavax/inject/Provider;

    return-void
.end method

.method private b(Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity;)Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/mh/movie/core/a/a/ae;->j:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jess/arms/mvp/b;

    invoke-static {p1, v0}, Lcom/jess/arms/a/c;->a(Lcom/jess/arms/a/b;Lcom/jess/arms/mvp/b;)V

    return-object p1
.end method


# virtual methods
.method public a(Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity;)V
    .locals 0

    .line 95
    invoke-direct {p0, p1}, Lcom/mh/movie/core/a/a/ae;->b(Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity;)Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity;

    return-void
.end method
