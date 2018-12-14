.class public final Lcom/mh/movie/core/a/a/bq;
.super Ljava/lang/Object;
.source "DaggerUserComponent.java"

# interfaces
.implements Lcom/mh/movie/core/a/a/do;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mh/movie/core/a/a/bq$c;,
        Lcom/mh/movie/core/a/a/bq$b;,
        Lcom/mh/movie/core/a/a/bq$e;,
        Lcom/mh/movie/core/a/a/bq$d;,
        Lcom/mh/movie/core/a/a/bq$a;
    }
.end annotation


# instance fields
.field private a:Lcom/mh/movie/core/a/a/bq$d;

.field private b:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/model/UserModel;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/a/bg$a;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/a/bg$b;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/mh/movie/core/a/a/bq$e;

.field private f:Lcom/mh/movie/core/a/a/bq$b;

.field private g:Lcom/mh/movie/core/a/a/bq$c;

.field private h:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/User;",
            ">;>;"
        }
    .end annotation
.end field

.field private i:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/support/v7/widget/RecyclerView$Adapter;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/presenter/UserPresenter;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/tbruyelle/rxpermissions2/RxPermissions;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/support/v7/widget/RecyclerView$LayoutManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/mh/movie/core/a/a/bq$a;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-direct {p0, p1}, Lcom/mh/movie/core/a/a/bq;->a(Lcom/mh/movie/core/a/a/bq$a;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mh/movie/core/a/a/bq$a;Lcom/mh/movie/core/a/a/bq$1;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/mh/movie/core/a/a/bq;-><init>(Lcom/mh/movie/core/a/a/bq$a;)V

    return-void
.end method

.method public static a()Lcom/mh/movie/core/a/a/bq$a;
    .locals 2

    .line 66
    new-instance v0, Lcom/mh/movie/core/a/a/bq$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/bq$a;-><init>(Lcom/mh/movie/core/a/a/bq$1;)V

    return-object v0
.end method

.method private a(Lcom/mh/movie/core/a/a/bq$a;)V
    .locals 8

    .line 71
    new-instance v0, Lcom/mh/movie/core/a/a/bq$d;

    .line 72
    invoke-static {p1}, Lcom/mh/movie/core/a/a/bq$a;->a(Lcom/mh/movie/core/a/a/bq$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/bq$d;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/bq;->a:Lcom/mh/movie/core/a/a/bq$d;

    .line 73
    iget-object v0, p0, Lcom/mh/movie/core/a/a/bq;->a:Lcom/mh/movie/core/a/a/bq$d;

    .line 74
    invoke-static {v0}, Lcom/mh/movie/core/mvp/model/df;->a(Ljavax/inject/Provider;)Lcom/mh/movie/core/mvp/model/df;

    move-result-object v0

    invoke-static {v0}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/a/a/bq;->b:Ljavax/inject/Provider;

    .line 77
    invoke-static {p1}, Lcom/mh/movie/core/a/a/bq$a;->b(Lcom/mh/movie/core/a/a/bq$a;)Lcom/mh/movie/core/a/b/fd;

    move-result-object v0

    iget-object v1, p0, Lcom/mh/movie/core/a/a/bq;->b:Ljavax/inject/Provider;

    invoke-static {v0, v1}, Lcom/mh/movie/core/a/b/fi;->a(Lcom/mh/movie/core/a/b/fd;Ljavax/inject/Provider;)Lcom/mh/movie/core/a/b/fi;

    move-result-object v0

    .line 76
    invoke-static {v0}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/a/a/bq;->c:Ljavax/inject/Provider;

    .line 79
    invoke-static {p1}, Lcom/mh/movie/core/a/a/bq$a;->b(Lcom/mh/movie/core/a/a/bq$a;)Lcom/mh/movie/core/a/b/fd;

    move-result-object v0

    invoke-static {v0}, Lcom/mh/movie/core/a/b/fj;->a(Lcom/mh/movie/core/a/b/fd;)Lcom/mh/movie/core/a/b/fj;

    move-result-object v0

    invoke-static {v0}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/a/a/bq;->d:Ljavax/inject/Provider;

    .line 80
    new-instance v0, Lcom/mh/movie/core/a/a/bq$e;

    .line 81
    invoke-static {p1}, Lcom/mh/movie/core/a/a/bq$a;->a(Lcom/mh/movie/core/a/a/bq$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/bq$e;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/bq;->e:Lcom/mh/movie/core/a/a/bq$e;

    .line 82
    new-instance v0, Lcom/mh/movie/core/a/a/bq$b;

    .line 83
    invoke-static {p1}, Lcom/mh/movie/core/a/a/bq$a;->a(Lcom/mh/movie/core/a/a/bq$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/bq$b;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/bq;->f:Lcom/mh/movie/core/a/a/bq$b;

    .line 84
    new-instance v0, Lcom/mh/movie/core/a/a/bq$c;

    .line 85
    invoke-static {p1}, Lcom/mh/movie/core/a/a/bq$a;->a(Lcom/mh/movie/core/a/a/bq$a;)Lcom/jess/arms/b/a/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/a/a/bq$c;-><init>(Lcom/jess/arms/b/a/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/a/a/bq;->g:Lcom/mh/movie/core/a/a/bq$c;

    .line 87
    invoke-static {p1}, Lcom/mh/movie/core/a/a/bq$a;->b(Lcom/mh/movie/core/a/a/bq$a;)Lcom/mh/movie/core/a/b/fd;

    move-result-object v0

    invoke-static {v0}, Lcom/mh/movie/core/a/b/fh;->a(Lcom/mh/movie/core/a/b/fd;)Lcom/mh/movie/core/a/b/fh;

    move-result-object v0

    invoke-static {v0}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/a/a/bq;->h:Ljavax/inject/Provider;

    .line 91
    invoke-static {p1}, Lcom/mh/movie/core/a/a/bq$a;->b(Lcom/mh/movie/core/a/a/bq$a;)Lcom/mh/movie/core/a/b/fd;

    move-result-object v0

    iget-object v1, p0, Lcom/mh/movie/core/a/a/bq;->h:Ljavax/inject/Provider;

    .line 90
    invoke-static {v0, v1}, Lcom/mh/movie/core/a/b/fg;->a(Lcom/mh/movie/core/a/b/fd;Ljavax/inject/Provider;)Lcom/mh/movie/core/a/b/fg;

    move-result-object v0

    .line 89
    invoke-static {v0}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/a/a/bq;->i:Ljavax/inject/Provider;

    .line 92
    iget-object v1, p0, Lcom/mh/movie/core/a/a/bq;->c:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/mh/movie/core/a/a/bq;->d:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/mh/movie/core/a/a/bq;->e:Lcom/mh/movie/core/a/a/bq$e;

    iget-object v4, p0, Lcom/mh/movie/core/a/a/bq;->f:Lcom/mh/movie/core/a/a/bq$b;

    iget-object v5, p0, Lcom/mh/movie/core/a/a/bq;->g:Lcom/mh/movie/core/a/a/bq$c;

    iget-object v6, p0, Lcom/mh/movie/core/a/a/bq;->h:Ljavax/inject/Provider;

    iget-object v7, p0, Lcom/mh/movie/core/a/a/bq;->i:Ljavax/inject/Provider;

    .line 94
    invoke-static/range {v1 .. v7}, Lcom/mh/movie/core/mvp/presenter/dp;->a(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/mh/movie/core/mvp/presenter/dp;

    move-result-object v0

    .line 93
    invoke-static {v0}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/a/a/bq;->j:Ljavax/inject/Provider;

    .line 103
    invoke-static {p1}, Lcom/mh/movie/core/a/a/bq$a;->b(Lcom/mh/movie/core/a/a/bq$a;)Lcom/mh/movie/core/a/b/fd;

    move-result-object v0

    invoke-static {v0}, Lcom/mh/movie/core/a/b/ff;->a(Lcom/mh/movie/core/a/b/fd;)Lcom/mh/movie/core/a/b/ff;

    move-result-object v0

    invoke-static {v0}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/a/a/bq;->k:Ljavax/inject/Provider;

    .line 105
    invoke-static {p1}, Lcom/mh/movie/core/a/a/bq$a;->b(Lcom/mh/movie/core/a/a/bq$a;)Lcom/mh/movie/core/a/b/fd;

    move-result-object p1

    invoke-static {p1}, Lcom/mh/movie/core/a/b/fe;->a(Lcom/mh/movie/core/a/b/fd;)Lcom/mh/movie/core/a/b/fe;

    move-result-object p1

    invoke-static {p1}, La/a/a;->a(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/mh/movie/core/a/a/bq;->l:Ljavax/inject/Provider;

    return-void
.end method

.method private b(Lcom/mh/movie/core/mvp/ui/activity/UserActivity;)Lcom/mh/movie/core/mvp/ui/activity/UserActivity;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/mh/movie/core/a/a/bq;->j:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jess/arms/mvp/b;

    invoke-static {p1, v0}, Lcom/jess/arms/a/c;->a(Lcom/jess/arms/a/b;Lcom/jess/arms/mvp/b;)V

    .line 115
    iget-object v0, p0, Lcom/mh/movie/core/a/a/bq;->k:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tbruyelle/rxpermissions2/RxPermissions;

    invoke-static {p1, v0}, Lcom/mh/movie/core/mvp/ui/activity/bb;->a(Lcom/mh/movie/core/mvp/ui/activity/UserActivity;Lcom/tbruyelle/rxpermissions2/RxPermissions;)V

    .line 116
    iget-object v0, p0, Lcom/mh/movie/core/a/a/bq;->l:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-static {p1, v0}, Lcom/mh/movie/core/mvp/ui/activity/bb;->a(Lcom/mh/movie/core/mvp/ui/activity/UserActivity;Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 117
    iget-object v0, p0, Lcom/mh/movie/core/a/a/bq;->i:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-static {p1, v0}, Lcom/mh/movie/core/mvp/ui/activity/bb;->a(Lcom/mh/movie/core/mvp/ui/activity/UserActivity;Landroid/support/v7/widget/RecyclerView$Adapter;)V

    return-object p1
.end method


# virtual methods
.method public a(Lcom/mh/movie/core/mvp/ui/activity/UserActivity;)V
    .locals 0

    .line 110
    invoke-direct {p0, p1}, Lcom/mh/movie/core/a/a/bq;->b(Lcom/mh/movie/core/mvp/ui/activity/UserActivity;)Lcom/mh/movie/core/mvp/ui/activity/UserActivity;

    return-void
.end method
