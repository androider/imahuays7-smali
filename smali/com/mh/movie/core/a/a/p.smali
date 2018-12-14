.class public final Lcom/mh/movie/core/a/a/p;
.super Ljava/lang/Object;
.source "DaggerBankBindComponent.java"

# interfaces
.implements Lcom/mh/movie/core/a/a/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mh/movie/core/a/a/p$b;,
        Lcom/mh/movie/core/a/a/p$e;,
        Lcom/mh/movie/core/a/a/p$g;,
        Lcom/mh/movie/core/a/a/p$c;,
        Lcom/mh/movie/core/a/a/p$d;,
        Lcom/mh/movie/core/a/a/p$f;,
        Lcom/mh/movie/core/a/a/p$a;
    }
.end annotation


# instance fields
.field private a:Lcom/mh/movie/core/a/a/p$f;

.field private b:Lcom/mh/movie/core/a/a/p$d;

.field private c:Lcom/mh/movie/core/a/a/p$c;

.field private d:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/model/BankBindModel;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/a/d$a;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/a/d$b;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/mh/movie/core/a/a/p$g;

.field private h:Lcom/mh/movie/core/a/a/p$e;

.field private i:Lcom/mh/movie/core/a/a/p$b;

.field private j:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/presenter/BankBindPresenter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/mh/movie/core/a/a/p$a;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-direct {p0, p1}, Lcom/mh/movie/core/a/a/p;->a(Lcom/mh/movie/core/a/a/p$a;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mh/movie/core/a/a/p$a;Lcom/mh/movie/core/a/a/p$1;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/mh/movie/core/a/a/p;-><init>(Lcom/mh/movie/core/a/a/p$a;)V

    return-void
.end method

.method public static a()Lcom/mh/movie/core/a/a/p$a;
    .locals 2

    .line 55
    new-instance v0, Lcom/mh/movie/core/a/a/p$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/p$a;-><init>(Lcom/mh/movie/core/a/a/p$1;)V

    return-object v0
.end method

.method private a(Lcom/mh/movie/core/a/a/p$a;)V
    .locals 7

    .line 60
    new-instance v0, Lcom/mh/movie/core/a/a/p$f;

    .line 61
    invoke-static {p1}, Lcom/mh/movie/core/a/a/p$a;->a(Lcom/mh/movie/core/a/a/p$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/p$f;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/p;->a:Lcom/mh/movie/core/a/a/p$f;

    .line 62
    new-instance v0, Lcom/mh/movie/core/a/a/p$d;

    invoke-static {p1}, Lcom/mh/movie/core/a/a/p$a;->a(Lcom/mh/movie/core/a/a/p$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/p$d;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/p;->b:Lcom/mh/movie/core/a/a/p$d;

    .line 63
    new-instance v0, Lcom/mh/movie/core/a/a/p$c;

    .line 64
    invoke-static {p1}, Lcom/mh/movie/core/a/a/p$a;->a(Lcom/mh/movie/core/a/a/p$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/p$c;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/p;->c:Lcom/mh/movie/core/a/a/p$c;

    .line 65
    iget-object v0, p0, Lcom/mh/movie/core/a/a/p;->a:Lcom/mh/movie/core/a/a/p$f;

    iget-object v1, p0, Lcom/mh/movie/core/a/a/p;->b:Lcom/mh/movie/core/a/a/p$d;

    iget-object v2, p0, Lcom/mh/movie/core/a/a/p;->c:Lcom/mh/movie/core/a/a/p$c;

    .line 67
    invoke-static {v0, v1, v2}, Lcom/mh/movie/core/mvp/model/g;->a(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/mh/movie/core/mvp/model/g;

    move-result-object v0

    .line 66
    invoke-static {v0}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/a/a/p;->d:Ljavax/inject/Provider;

    .line 72
    invoke-static {p1}, Lcom/mh/movie/core/a/a/p$a;->b(Lcom/mh/movie/core/a/a/p$a;)Lcom/mh/movie/core/a/b/j;

    move-result-object v0

    iget-object v1, p0, Lcom/mh/movie/core/a/a/p;->d:Ljavax/inject/Provider;

    .line 71
    invoke-static {v0, v1}, Lcom/mh/movie/core/a/b/k;->a(Lcom/mh/movie/core/a/b/j;Ljavax/inject/Provider;)Lcom/mh/movie/core/a/b/k;

    move-result-object v0

    .line 70
    invoke-static {v0}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/a/a/p;->e:Ljavax/inject/Provider;

    .line 75
    invoke-static {p1}, Lcom/mh/movie/core/a/a/p$a;->b(Lcom/mh/movie/core/a/a/p$a;)Lcom/mh/movie/core/a/b/j;

    move-result-object v0

    invoke-static {v0}, Lcom/mh/movie/core/a/b/l;->a(Lcom/mh/movie/core/a/b/j;)Lcom/mh/movie/core/a/b/l;

    move-result-object v0

    .line 74
    invoke-static {v0}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/a/a/p;->f:Ljavax/inject/Provider;

    .line 76
    new-instance v0, Lcom/mh/movie/core/a/a/p$g;

    .line 77
    invoke-static {p1}, Lcom/mh/movie/core/a/a/p$a;->a(Lcom/mh/movie/core/a/a/p$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/p$g;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/p;->g:Lcom/mh/movie/core/a/a/p$g;

    .line 78
    new-instance v0, Lcom/mh/movie/core/a/a/p$e;

    .line 79
    invoke-static {p1}, Lcom/mh/movie/core/a/a/p$a;->a(Lcom/mh/movie/core/a/a/p$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/p$e;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/p;->h:Lcom/mh/movie/core/a/a/p$e;

    .line 80
    new-instance v0, Lcom/mh/movie/core/a/a/p$b;

    .line 81
    invoke-static {p1}, Lcom/mh/movie/core/a/a/p$a;->a(Lcom/mh/movie/core/a/a/p$a;)Lcom/jess/arms/b/a/a;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/mh/movie/core/a/a/p$b;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/p;->i:Lcom/mh/movie/core/a/a/p$b;

    .line 82
    iget-object v1, p0, Lcom/mh/movie/core/a/a/p;->e:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/mh/movie/core/a/a/p;->f:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/mh/movie/core/a/a/p;->g:Lcom/mh/movie/core/a/a/p$g;

    iget-object v4, p0, Lcom/mh/movie/core/a/a/p;->c:Lcom/mh/movie/core/a/a/p$c;

    iget-object v5, p0, Lcom/mh/movie/core/a/a/p;->h:Lcom/mh/movie/core/a/a/p$e;

    iget-object v6, p0, Lcom/mh/movie/core/a/a/p;->i:Lcom/mh/movie/core/a/a/p$b;

    .line 84
    invoke-static/range {v1 .. v6}, Lcom/mh/movie/core/mvp/presenter/g;->a(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/mh/movie/core/mvp/presenter/g;

    move-result-object p1

    .line 83
    invoke-static {p1}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/mh/movie/core/a/a/p;->j:Ljavax/inject/Provider;

    return-void
.end method

.method private b(Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment;)Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/mh/movie/core/a/a/p;->j:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jess/arms/mvp/b;

    invoke-static {p1, v0}, Lcom/jess/arms/a/f;->a(Lcom/jess/arms/a/e;Lcom/jess/arms/mvp/b;)V

    return-object p1
.end method


# virtual methods
.method public a(Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment;)V
    .locals 0

    .line 95
    invoke-direct {p0, p1}, Lcom/mh/movie/core/a/a/p;->b(Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment;)Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment;

    return-void
.end method
