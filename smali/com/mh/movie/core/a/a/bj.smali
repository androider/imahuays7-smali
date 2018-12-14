.class public final Lcom/mh/movie/core/a/a/bj;
.super Ljava/lang/Object;
.source "DaggerSettingComponent.java"

# interfaces
.implements Lcom/mh/movie/core/a/a/dh;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mh/movie/core/a/a/bj$b;,
        Lcom/mh/movie/core/a/a/bj$e;,
        Lcom/mh/movie/core/a/a/bj$g;,
        Lcom/mh/movie/core/a/a/bj$c;,
        Lcom/mh/movie/core/a/a/bj$d;,
        Lcom/mh/movie/core/a/a/bj$f;,
        Lcom/mh/movie/core/a/a/bj$a;
    }
.end annotation


# instance fields
.field private a:Lcom/mh/movie/core/a/a/bj$f;

.field private b:Lcom/mh/movie/core/a/a/bj$d;

.field private c:Lcom/mh/movie/core/a/a/bj$c;

.field private d:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/model/SettingModel;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/a/az$a;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/a/az$b;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/mh/movie/core/a/a/bj$g;

.field private h:Lcom/mh/movie/core/a/a/bj$e;

.field private i:Lcom/mh/movie/core/a/a/bj$b;

.field private j:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/presenter/SettingPresenter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/mh/movie/core/a/a/bj$a;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-direct {p0, p1}, Lcom/mh/movie/core/a/a/bj;->a(Lcom/mh/movie/core/a/a/bj$a;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mh/movie/core/a/a/bj$a;Lcom/mh/movie/core/a/a/bj$1;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/mh/movie/core/a/a/bj;-><init>(Lcom/mh/movie/core/a/a/bj$a;)V

    return-void
.end method

.method public static a()Lcom/mh/movie/core/a/a/bj$a;
    .locals 2

    .line 55
    new-instance v0, Lcom/mh/movie/core/a/a/bj$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/bj$a;-><init>(Lcom/mh/movie/core/a/a/bj$1;)V

    return-object v0
.end method

.method private a(Lcom/mh/movie/core/a/a/bj$a;)V
    .locals 7

    .line 60
    new-instance v0, Lcom/mh/movie/core/a/a/bj$f;

    .line 61
    invoke-static {p1}, Lcom/mh/movie/core/a/a/bj$a;->a(Lcom/mh/movie/core/a/a/bj$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/bj$f;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/bj;->a:Lcom/mh/movie/core/a/a/bj$f;

    .line 62
    new-instance v0, Lcom/mh/movie/core/a/a/bj$d;

    invoke-static {p1}, Lcom/mh/movie/core/a/a/bj$a;->a(Lcom/mh/movie/core/a/a/bj$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/bj$d;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/bj;->b:Lcom/mh/movie/core/a/a/bj$d;

    .line 63
    new-instance v0, Lcom/mh/movie/core/a/a/bj$c;

    .line 64
    invoke-static {p1}, Lcom/mh/movie/core/a/a/bj$a;->a(Lcom/mh/movie/core/a/a/bj$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/bj$c;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/bj;->c:Lcom/mh/movie/core/a/a/bj$c;

    .line 65
    iget-object v0, p0, Lcom/mh/movie/core/a/a/bj;->a:Lcom/mh/movie/core/a/a/bj$f;

    iget-object v1, p0, Lcom/mh/movie/core/a/a/bj;->b:Lcom/mh/movie/core/a/a/bj$d;

    iget-object v2, p0, Lcom/mh/movie/core/a/a/bj;->c:Lcom/mh/movie/core/a/a/bj$c;

    .line 67
    invoke-static {v0, v1, v2}, Lcom/mh/movie/core/mvp/model/cq;->a(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/mh/movie/core/mvp/model/cq;

    move-result-object v0

    .line 66
    invoke-static {v0}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/a/a/bj;->d:Ljavax/inject/Provider;

    .line 72
    invoke-static {p1}, Lcom/mh/movie/core/a/a/bj$a;->b(Lcom/mh/movie/core/a/a/bj$a;)Lcom/mh/movie/core/a/b/ei;

    move-result-object v0

    iget-object v1, p0, Lcom/mh/movie/core/a/a/bj;->d:Ljavax/inject/Provider;

    .line 71
    invoke-static {v0, v1}, Lcom/mh/movie/core/a/b/ej;->a(Lcom/mh/movie/core/a/b/ei;Ljavax/inject/Provider;)Lcom/mh/movie/core/a/b/ej;

    move-result-object v0

    .line 70
    invoke-static {v0}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/a/a/bj;->e:Ljavax/inject/Provider;

    .line 74
    invoke-static {p1}, Lcom/mh/movie/core/a/a/bj$a;->b(Lcom/mh/movie/core/a/a/bj$a;)Lcom/mh/movie/core/a/b/ei;

    move-result-object v0

    invoke-static {v0}, Lcom/mh/movie/core/a/b/ek;->a(Lcom/mh/movie/core/a/b/ei;)Lcom/mh/movie/core/a/b/ek;

    move-result-object v0

    invoke-static {v0}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/a/a/bj;->f:Ljavax/inject/Provider;

    .line 75
    new-instance v0, Lcom/mh/movie/core/a/a/bj$g;

    .line 76
    invoke-static {p1}, Lcom/mh/movie/core/a/a/bj$a;->a(Lcom/mh/movie/core/a/a/bj$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/bj$g;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/bj;->g:Lcom/mh/movie/core/a/a/bj$g;

    .line 77
    new-instance v0, Lcom/mh/movie/core/a/a/bj$e;

    .line 78
    invoke-static {p1}, Lcom/mh/movie/core/a/a/bj$a;->a(Lcom/mh/movie/core/a/a/bj$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/bj$e;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/bj;->h:Lcom/mh/movie/core/a/a/bj$e;

    .line 79
    new-instance v0, Lcom/mh/movie/core/a/a/bj$b;

    .line 80
    invoke-static {p1}, Lcom/mh/movie/core/a/a/bj$a;->a(Lcom/mh/movie/core/a/a/bj$a;)Lcom/jess/arms/b/a/a;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/mh/movie/core/a/a/bj$b;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/bj;->i:Lcom/mh/movie/core/a/a/bj$b;

    .line 81
    iget-object v1, p0, Lcom/mh/movie/core/a/a/bj;->e:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/mh/movie/core/a/a/bj;->f:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/mh/movie/core/a/a/bj;->g:Lcom/mh/movie/core/a/a/bj$g;

    iget-object v4, p0, Lcom/mh/movie/core/a/a/bj;->c:Lcom/mh/movie/core/a/a/bj$c;

    iget-object v5, p0, Lcom/mh/movie/core/a/a/bj;->h:Lcom/mh/movie/core/a/a/bj$e;

    iget-object v6, p0, Lcom/mh/movie/core/a/a/bj;->i:Lcom/mh/movie/core/a/a/bj$b;

    .line 83
    invoke-static/range {v1 .. v6}, Lcom/mh/movie/core/mvp/presenter/cx;->a(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/mh/movie/core/mvp/presenter/cx;

    move-result-object p1

    .line 82
    invoke-static {p1}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/mh/movie/core/a/a/bj;->j:Ljavax/inject/Provider;

    return-void
.end method

.method private b(Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;)Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/mh/movie/core/a/a/bj;->j:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jess/arms/mvp/b;

    invoke-static {p1, v0}, Lcom/jess/arms/a/c;->a(Lcom/jess/arms/a/b;Lcom/jess/arms/mvp/b;)V

    return-object p1
.end method


# virtual methods
.method public a(Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;)V
    .locals 0

    .line 94
    invoke-direct {p0, p1}, Lcom/mh/movie/core/a/a/bj;->b(Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;)Lcom/mh/movie/core/mvp/ui/activity/SettingActivity;

    return-void
.end method
