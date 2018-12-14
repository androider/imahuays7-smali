.class public Lcom/mh/movie/core/a/b/fd;
.super Ljava/lang/Object;
.source "UserModule.java"


# instance fields
.field private a:Lcom/mh/movie/core/mvp/a/bg$b;


# direct methods
.method public constructor <init>(Lcom/mh/movie/core/mvp/a/bg$b;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/mh/movie/core/a/b/fd;->a:Lcom/mh/movie/core/mvp/a/bg$b;

    return-void
.end method


# virtual methods
.method a(Ljava/util/List;)Landroid/support/v7/widget/RecyclerView$Adapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/User;",
            ">;)",
            "Landroid/support/v7/widget/RecyclerView$Adapter;"
        }
    .end annotation

    .line 90
    new-instance v0, Lcom/mh/movie/core/mvp/ui/adapter/x;

    invoke-direct {v0, p1}, Lcom/mh/movie/core/mvp/ui/adapter/x;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method a(Lcom/mh/movie/core/mvp/model/UserModel;)Lcom/mh/movie/core/mvp/a/bg$a;
    .locals 0

    return-object p1
.end method

.method a()Lcom/mh/movie/core/mvp/a/bg$b;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/mh/movie/core/a/b/fd;->a:Lcom/mh/movie/core/mvp/a/bg$b;

    return-object v0
.end method

.method b()Lcom/tbruyelle/rxpermissions2/RxPermissions;
    .locals 2

    .line 72
    new-instance v0, Lcom/tbruyelle/rxpermissions2/RxPermissions;

    iget-object v1, p0, Lcom/mh/movie/core/a/b/fd;->a:Lcom/mh/movie/core/mvp/a/bg$b;

    invoke-interface {v1}, Lcom/mh/movie/core/mvp/a/bg$b;->e()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tbruyelle/rxpermissions2/RxPermissions;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method

.method c()Landroid/support/v7/widget/RecyclerView$LayoutManager;
    .locals 3

    .line 78
    new-instance v0, Landroid/support/v7/widget/GridLayoutManager;

    iget-object v1, p0, Lcom/mh/movie/core/a/b/fd;->a:Lcom/mh/movie/core/mvp/a/bg$b;

    invoke-interface {v1}, Lcom/mh/movie/core/mvp/a/bg$b;->e()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/User;",
            ">;"
        }
    .end annotation

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method
