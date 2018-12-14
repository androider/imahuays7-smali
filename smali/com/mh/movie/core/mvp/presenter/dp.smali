.class public final Lcom/mh/movie/core/mvp/presenter/dp;
.super Ljava/lang/Object;
.source "UserPresenter_Factory.java"

# interfaces
.implements La/a/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "La/a/b<",
        "Lcom/mh/movie/core/mvp/presenter/UserPresenter;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/a/bg$a;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/a/bg$b;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lme/jessyan/rxerrorhandler/core/RxErrorHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/jess/arms/integration/AppManager;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/app/Application;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/User;",
            ">;>;"
        }
    .end annotation
.end field

.field private final g:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/support/v7/widget/RecyclerView$Adapter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/a/bg$a;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/a/bg$b;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lme/jessyan/rxerrorhandler/core/RxErrorHandler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/jess/arms/integration/AppManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/app/Application;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/User;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Landroid/support/v7/widget/RecyclerView$Adapter;",
            ">;)V"
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/mh/movie/core/mvp/presenter/dp;->a:Ljavax/inject/Provider;

    .line 42
    iput-object p2, p0, Lcom/mh/movie/core/mvp/presenter/dp;->b:Ljavax/inject/Provider;

    .line 43
    iput-object p3, p0, Lcom/mh/movie/core/mvp/presenter/dp;->c:Ljavax/inject/Provider;

    .line 44
    iput-object p4, p0, Lcom/mh/movie/core/mvp/presenter/dp;->d:Ljavax/inject/Provider;

    .line 45
    iput-object p5, p0, Lcom/mh/movie/core/mvp/presenter/dp;->e:Ljavax/inject/Provider;

    .line 46
    iput-object p6, p0, Lcom/mh/movie/core/mvp/presenter/dp;->f:Ljavax/inject/Provider;

    .line 47
    iput-object p7, p0, Lcom/mh/movie/core/mvp/presenter/dp;->g:Ljavax/inject/Provider;

    return-void
.end method

.method public static a(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/mh/movie/core/mvp/presenter/dp;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/a/bg$a;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/mh/movie/core/mvp/a/bg$b;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lme/jessyan/rxerrorhandler/core/RxErrorHandler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/jess/arms/integration/AppManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/app/Application;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/User;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Landroid/support/v7/widget/RecyclerView$Adapter;",
            ">;)",
            "Lcom/mh/movie/core/mvp/presenter/dp;"
        }
    .end annotation

    .line 69
    new-instance v8, Lcom/mh/movie/core/mvp/presenter/dp;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/mh/movie/core/mvp/presenter/dp;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v8
.end method


# virtual methods
.method public a()Lcom/mh/movie/core/mvp/presenter/UserPresenter;
    .locals 3

    .line 52
    new-instance v0, Lcom/mh/movie/core/mvp/presenter/UserPresenter;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/dp;->a:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mh/movie/core/mvp/a/bg$a;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/presenter/dp;->b:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mh/movie/core/mvp/a/bg$b;

    invoke-direct {v0, v1, v2}, Lcom/mh/movie/core/mvp/presenter/UserPresenter;-><init>(Lcom/mh/movie/core/mvp/a/bg$a;Lcom/mh/movie/core/mvp/a/bg$b;)V

    .line 53
    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/dp;->c:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lme/jessyan/rxerrorhandler/core/RxErrorHandler;

    invoke-static {v0, v1}, Lcom/mh/movie/core/mvp/presenter/dq;->a(Lcom/mh/movie/core/mvp/presenter/UserPresenter;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;)V

    .line 54
    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/dp;->d:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jess/arms/integration/AppManager;

    invoke-static {v0, v1}, Lcom/mh/movie/core/mvp/presenter/dq;->a(Lcom/mh/movie/core/mvp/presenter/UserPresenter;Lcom/jess/arms/integration/AppManager;)V

    .line 55
    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/dp;->e:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Application;

    invoke-static {v0, v1}, Lcom/mh/movie/core/mvp/presenter/dq;->a(Lcom/mh/movie/core/mvp/presenter/UserPresenter;Landroid/app/Application;)V

    .line 56
    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/dp;->f:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1}, Lcom/mh/movie/core/mvp/presenter/dq;->a(Lcom/mh/movie/core/mvp/presenter/UserPresenter;Ljava/util/List;)V

    .line 57
    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/dp;->g:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-static {v0, v1}, Lcom/mh/movie/core/mvp/presenter/dq;->a(Lcom/mh/movie/core/mvp/presenter/UserPresenter;Landroid/support/v7/widget/RecyclerView$Adapter;)V

    return-object v0
.end method

.method public synthetic get()Ljava/lang/Object;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/presenter/dp;->a()Lcom/mh/movie/core/mvp/presenter/UserPresenter;

    move-result-object v0

    return-object v0
.end method
