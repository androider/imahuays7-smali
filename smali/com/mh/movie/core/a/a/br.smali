.class public final Lcom/mh/movie/core/a/a/br;
.super Ljava/lang/Object;
.source "DaggerVipComponent.java"

# interfaces
.implements Lcom/mh/movie/core/a/a/dp;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mh/movie/core/a/a/br$b;,
        Lcom/mh/movie/core/a/a/br$e;,
        Lcom/mh/movie/core/a/a/br$g;,
        Lcom/mh/movie/core/a/a/br$c;,
        Lcom/mh/movie/core/a/a/br$d;,
        Lcom/mh/movie/core/a/a/br$f;,
        Lcom/mh/movie/core/a/a/br$a;
    }
.end annotation


# instance fields
.field private a:Lcom/mh/movie/core/a/a/br$f;

.field private b:Lcom/mh/movie/core/a/a/br$d;

.field private c:Lcom/mh/movie/core/a/a/br$c;

.field private d:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/model/VipModel;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/a/bh$a;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/a/bh$b;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/mh/movie/core/a/a/br$g;

.field private h:Lcom/mh/movie/core/a/a/br$e;

.field private i:Lcom/mh/movie/core/a/a/br$b;

.field private j:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/presenter/VipPresenter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/mh/movie/core/a/a/br$a;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-direct {p0, p1}, Lcom/mh/movie/core/a/a/br;->a(Lcom/mh/movie/core/a/a/br$a;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mh/movie/core/a/a/br$a;Lcom/mh/movie/core/a/a/br$1;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/mh/movie/core/a/a/br;-><init>(Lcom/mh/movie/core/a/a/br$a;)V

    return-void
.end method

.method public static a()Lcom/mh/movie/core/a/a/br$a;
    .locals 2

    .line 57
    new-instance v0, Lcom/mh/movie/core/a/a/br$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/br$a;-><init>(Lcom/mh/movie/core/a/a/br$1;)V

    return-object v0
.end method

.method private a(Lcom/mh/movie/core/a/a/br$a;)V
    .locals 7

    .line 62
    new-instance v0, Lcom/mh/movie/core/a/a/br$f;

    .line 63
    invoke-static {p1}, Lcom/mh/movie/core/a/a/br$a;->a(Lcom/mh/movie/core/a/a/br$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/br$f;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/br;->a:Lcom/mh/movie/core/a/a/br$f;

    .line 64
    new-instance v0, Lcom/mh/movie/core/a/a/br$d;

    invoke-static {p1}, Lcom/mh/movie/core/a/a/br$a;->a(Lcom/mh/movie/core/a/a/br$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/br$d;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/br;->b:Lcom/mh/movie/core/a/a/br$d;

    .line 65
    new-instance v0, Lcom/mh/movie/core/a/a/br$c;

    .line 66
    invoke-static {p1}, Lcom/mh/movie/core/a/a/br$a;->a(Lcom/mh/movie/core/a/a/br$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/br$c;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/br;->c:Lcom/mh/movie/core/a/a/br$c;

    .line 67
    iget-object v0, p0, Lcom/mh/movie/core/a/a/br;->a:Lcom/mh/movie/core/a/a/br$f;

    iget-object v1, p0, Lcom/mh/movie/core/a/a/br;->b:Lcom/mh/movie/core/a/a/br$d;

    iget-object v2, p0, Lcom/mh/movie/core/a/a/br;->c:Lcom/mh/movie/core/a/a/br$c;

    .line 69
    invoke-static {v0, v1, v2}, Lcom/mh/movie/core/mvp/model/dg;->a(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/mh/movie/core/mvp/model/dg;

    move-result-object v0

    .line 68
    invoke-static {v0}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/a/a/br;->d:Ljavax/inject/Provider;

    .line 72
    invoke-static {p1}, Lcom/mh/movie/core/a/a/br$a;->b(Lcom/mh/movie/core/a/a/br$a;)Lcom/mh/movie/core/a/b/fk;

    move-result-object v0

    iget-object v1, p0, Lcom/mh/movie/core/a/a/br;->d:Ljavax/inject/Provider;

    invoke-static {v0, v1}, Lcom/mh/movie/core/a/b/fl;->a(Lcom/mh/movie/core/a/b/fk;Ljavax/inject/Provider;)Lcom/mh/movie/core/a/b/fl;

    move-result-object v0

    .line 71
    invoke-static {v0}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/a/a/br;->e:Ljavax/inject/Provider;

    .line 74
    invoke-static {p1}, Lcom/mh/movie/core/a/a/br$a;->b(Lcom/mh/movie/core/a/a/br$a;)Lcom/mh/movie/core/a/b/fk;

    move-result-object v0

    invoke-static {v0}, Lcom/mh/movie/core/a/b/fm;->a(Lcom/mh/movie/core/a/b/fk;)Lcom/mh/movie/core/a/b/fm;

    move-result-object v0

    invoke-static {v0}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/a/a/br;->f:Ljavax/inject/Provider;

    .line 75
    new-instance v0, Lcom/mh/movie/core/a/a/br$g;

    .line 76
    invoke-static {p1}, Lcom/mh/movie/core/a/a/br$a;->a(Lcom/mh/movie/core/a/a/br$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/br$g;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/br;->g:Lcom/mh/movie/core/a/a/br$g;

    .line 77
    new-instance v0, Lcom/mh/movie/core/a/a/br$e;

    .line 78
    invoke-static {p1}, Lcom/mh/movie/core/a/a/br$a;->a(Lcom/mh/movie/core/a/a/br$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/br$e;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/br;->h:Lcom/mh/movie/core/a/a/br$e;

    .line 79
    new-instance v0, Lcom/mh/movie/core/a/a/br$b;

    .line 80
    invoke-static {p1}, Lcom/mh/movie/core/a/a/br$a;->a(Lcom/mh/movie/core/a/a/br$a;)Lcom/jess/arms/b/a/a;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/mh/movie/core/a/a/br$b;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/br;->i:Lcom/mh/movie/core/a/a/br$b;

    .line 81
    iget-object v1, p0, Lcom/mh/movie/core/a/a/br;->e:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/mh/movie/core/a/a/br;->f:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/mh/movie/core/a/a/br;->g:Lcom/mh/movie/core/a/a/br$g;

    iget-object v4, p0, Lcom/mh/movie/core/a/a/br;->c:Lcom/mh/movie/core/a/a/br$c;

    iget-object v5, p0, Lcom/mh/movie/core/a/a/br;->h:Lcom/mh/movie/core/a/a/br$e;

    iget-object v6, p0, Lcom/mh/movie/core/a/a/br;->i:Lcom/mh/movie/core/a/a/br$b;

    .line 83
    invoke-static/range {v1 .. v6}, Lcom/mh/movie/core/mvp/presenter/dt;->a(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/mh/movie/core/mvp/presenter/dt;

    move-result-object p1

    .line 82
    invoke-static {p1}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/mh/movie/core/a/a/br;->j:Ljavax/inject/Provider;

    return-void
.end method

.method private b(Lcom/mh/movie/core/mvp/ui/activity/VipActivity;)Lcom/mh/movie/core/mvp/ui/activity/VipActivity;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/mh/movie/core/a/a/br;->j:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jess/arms/mvp/b;

    invoke-static {p1, v0}, Lcom/jess/arms/a/c;->a(Lcom/jess/arms/a/b;Lcom/jess/arms/mvp/b;)V

    return-object p1
.end method

.method private b(Lcom/mh/movie/core/mvp/ui/fragment/VipFragment;)Lcom/mh/movie/core/mvp/ui/fragment/VipFragment;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/mh/movie/core/a/a/br;->j:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jess/arms/mvp/b;

    invoke-static {p1, v0}, Lcom/jess/arms/a/f;->a(Lcom/jess/arms/a/e;Lcom/jess/arms/mvp/b;)V

    return-object p1
.end method


# virtual methods
.method public a(Lcom/mh/movie/core/mvp/ui/activity/VipActivity;)V
    .locals 0

    .line 94
    invoke-direct {p0, p1}, Lcom/mh/movie/core/a/a/br;->b(Lcom/mh/movie/core/mvp/ui/activity/VipActivity;)Lcom/mh/movie/core/mvp/ui/activity/VipActivity;

    return-void
.end method

.method public a(Lcom/mh/movie/core/mvp/ui/fragment/VipFragment;)V
    .locals 0

    .line 99
    invoke-direct {p0, p1}, Lcom/mh/movie/core/a/a/br;->b(Lcom/mh/movie/core/mvp/ui/fragment/VipFragment;)Lcom/mh/movie/core/mvp/ui/fragment/VipFragment;

    return-void
.end method
