.class public Lcom/mh/movie/core/mvp/presenter/ExChangePresenter;
.super Lcom/mh/movie/core/mvp/presenter/MHBasePresenter;
.source "ExChangePresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mh/movie/core/mvp/presenter/MHBasePresenter<",
        "Lcom/mh/movie/core/mvp/a/n$a;",
        "Lcom/mh/movie/core/mvp/a/n$b;",
        ">;"
    }
.end annotation


# instance fields
.field e:Lme/jessyan/rxerrorhandler/core/RxErrorHandler;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field f:Landroid/app/Application;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field g:Lcom/jess/arms/http/imageloader/c;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field h:Lcom/jess/arms/integration/AppManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private i:I


# direct methods
.method public constructor <init>(Lcom/mh/movie/core/mvp/a/n$a;Lcom/mh/movie/core/mvp/a/n$b;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 55
    invoke-direct {p0, p1, p2}, Lcom/mh/movie/core/mvp/presenter/MHBasePresenter;-><init>(Lcom/jess/arms/mvp/a;Lcom/jess/arms/mvp/c;)V

    return-void
.end method

.method static synthetic a(Lcom/mh/movie/core/mvp/presenter/ExChangePresenter;I)I
    .locals 0

    .line 41
    iput p1, p0, Lcom/mh/movie/core/mvp/presenter/ExChangePresenter;->i:I

    return p1
.end method

.method static synthetic a(Lcom/mh/movie/core/mvp/presenter/ExChangePresenter;)Lcom/jess/arms/mvp/c;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/mh/movie/core/mvp/presenter/ExChangePresenter;->d:Lcom/jess/arms/mvp/c;

    return-object p0
.end method

.method static final synthetic a(Lcom/raizlabs/android/dbflow/structure/b/a/g;Ljava/lang/Throwable;)V
    .locals 1

    const-string p0, "FlowManager"

    const-string v0, "save TableCommodity error"

    .line 114
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-static {p1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic b(Lcom/mh/movie/core/mvp/presenter/ExChangePresenter;)Lcom/jess/arms/mvp/c;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/mh/movie/core/mvp/presenter/ExChangePresenter;->d:Lcom/jess/arms/mvp/c;

    return-object p0
.end method

.method static synthetic c(Lcom/mh/movie/core/mvp/presenter/ExChangePresenter;)Lcom/jess/arms/mvp/c;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/mh/movie/core/mvp/presenter/ExChangePresenter;->d:Lcom/jess/arms/mvp/c;

    return-object p0
.end method

.method static synthetic d(Lcom/mh/movie/core/mvp/presenter/ExChangePresenter;)Lcom/jess/arms/mvp/c;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/mh/movie/core/mvp/presenter/ExChangePresenter;->d:Lcom/jess/arms/mvp/c;

    return-object p0
.end method

.method static synthetic e(Lcom/mh/movie/core/mvp/presenter/ExChangePresenter;)Lcom/jess/arms/mvp/c;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/mh/movie/core/mvp/presenter/ExChangePresenter;->d:Lcom/jess/arms/mvp/c;

    return-object p0
.end method

.method static synthetic f(Lcom/mh/movie/core/mvp/presenter/ExChangePresenter;)I
    .locals 0

    .line 41
    iget p0, p0, Lcom/mh/movie/core/mvp/presenter/ExChangePresenter;->i:I

    return p0
.end method

.method static synthetic g(Lcom/mh/movie/core/mvp/presenter/ExChangePresenter;)Lcom/jess/arms/mvp/c;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/mh/movie/core/mvp/presenter/ExChangePresenter;->d:Lcom/jess/arms/mvp/c;

    return-object p0
.end method

.method static synthetic h(Lcom/mh/movie/core/mvp/presenter/ExChangePresenter;)Lcom/jess/arms/mvp/c;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/mh/movie/core/mvp/presenter/ExChangePresenter;->d:Lcom/jess/arms/mvp/c;

    return-object p0
.end method

.method static synthetic i(Lcom/mh/movie/core/mvp/presenter/ExChangePresenter;)Lcom/jess/arms/mvp/c;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/mh/movie/core/mvp/presenter/ExChangePresenter;->d:Lcom/jess/arms/mvp/c;

    return-object p0
.end method


# virtual methods
.method public a(I)V
    .locals 4

    .line 126
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/ExChangePresenter;->c:Lcom/jess/arms/mvp/a;

    check-cast v0, Lcom/mh/movie/core/mvp/a/n$a;

    invoke-interface {v0, p1}, Lcom/mh/movie/core/mvp/a/n$a;->a(I)Lio/reactivex/Observable;

    move-result-object v0

    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/ExChangePresenter;->f:Landroid/app/Application;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/presenter/ExChangePresenter;->d:Lcom/jess/arms/mvp/c;

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/mh/movie/core/mvp/presenter/ExChangePresenter;->a(Landroid/content/Context;Lcom/jess/arms/mvp/c;Z)Lio/reactivex/ObservableTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/mh/movie/core/mvp/presenter/ExChangePresenter$3;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/presenter/ExChangePresenter;->e:Lme/jessyan/rxerrorhandler/core/RxErrorHandler;

    new-instance v3, Lcom/mh/movie/core/mvp/presenter/ExChangePresenter$4;

    invoke-direct {v3, p0}, Lcom/mh/movie/core/mvp/presenter/ExChangePresenter$4;-><init>(Lcom/mh/movie/core/mvp/presenter/ExChangePresenter;)V

    .line 128
    invoke-virtual {v3}, Lcom/mh/movie/core/mvp/presenter/ExChangePresenter$4;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3, p1}, Lcom/mh/movie/core/mvp/presenter/ExChangePresenter$3;-><init>(Lcom/mh/movie/core/mvp/presenter/ExChangePresenter;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;I)V

    .line 126
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public a(Lcom/mh/movie/core/mvp/model/entity/response/ExchangeCenterResponse;)V
    .locals 3

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 103
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/ExchangeCenterResponse;->getCommodityInfoList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mh/movie/core/mvp/model/entity/response/ExchangeCenterResponse$CommodityInfoListBean;

    .line 104
    new-instance v2, Lcom/mh/movie/core/mvp/model/db/TableCommodity;

    invoke-direct {v2}, Lcom/mh/movie/core/mvp/model/db/TableCommodity;-><init>()V

    .line 105
    invoke-virtual {v2, v1}, Lcom/mh/movie/core/mvp/model/db/TableCommodity;->setData(Lcom/mh/movie/core/mvp/model/entity/response/ExchangeCenterResponse$CommodityInfoListBean;)V

    .line 106
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 109
    :cond_0
    const-class p1, Lcom/mh/movie/core/mvp/model/db/DbDatabase;

    invoke-static {p1}, Lcom/raizlabs/android/dbflow/config/FlowManager;->c(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/config/b;

    move-result-object p1

    new-instance v1, Lcom/raizlabs/android/dbflow/structure/b/a/e$a;

    sget-object v2, Lcom/mh/movie/core/mvp/presenter/aa;->a:Lcom/raizlabs/android/dbflow/structure/b/a/e$c;

    invoke-direct {v1, v2}, Lcom/raizlabs/android/dbflow/structure/b/a/e$a;-><init>(Lcom/raizlabs/android/dbflow/structure/b/a/e$c;)V

    .line 112
    invoke-virtual {v1, v0}, Lcom/raizlabs/android/dbflow/structure/b/a/e$a;->a(Ljava/util/Collection;)Lcom/raizlabs/android/dbflow/structure/b/a/e$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/structure/b/a/e$a;->a()Lcom/raizlabs/android/dbflow/structure/b/a/e;

    move-result-object v0

    .line 110
    invoke-virtual {p1, v0}, Lcom/raizlabs/android/dbflow/config/b;->a(Lcom/raizlabs/android/dbflow/structure/b/a/c;)Lcom/raizlabs/android/dbflow/structure/b/a/g$a;

    move-result-object p1

    sget-object v0, Lcom/mh/movie/core/mvp/presenter/ab;->a:Lcom/raizlabs/android/dbflow/structure/b/a/g$b;

    .line 113
    invoke-virtual {p1, v0}, Lcom/raizlabs/android/dbflow/structure/b/a/g$a;->a(Lcom/raizlabs/android/dbflow/structure/b/a/g$b;)Lcom/raizlabs/android/dbflow/structure/b/a/g$a;

    move-result-object p1

    new-instance v0, Lcom/mh/movie/core/mvp/presenter/ac;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/mvp/presenter/ac;-><init>(Lcom/mh/movie/core/mvp/presenter/ExChangePresenter;)V

    .line 117
    invoke-virtual {p1, v0}, Lcom/raizlabs/android/dbflow/structure/b/a/g$a;->a(Lcom/raizlabs/android/dbflow/structure/b/a/g$c;)Lcom/raizlabs/android/dbflow/structure/b/a/g$a;

    move-result-object p1

    .line 120
    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/structure/b/a/g$a;->a()Lcom/raizlabs/android/dbflow/structure/b/a/g;

    move-result-object p1

    .line 121
    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/structure/b/a/g;->b()V

    return-void
.end method

.method final synthetic a(Lcom/raizlabs/android/dbflow/structure/b/a/g;)V
    .locals 2

    .line 118
    invoke-static {}, Lorg/simple/eventbus/EventBus;->getDefault()Lorg/simple/eventbus/EventBus;

    move-result-object p1

    iget v0, p0, Lcom/mh/movie/core/mvp/presenter/ExChangePresenter;->i:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "money"

    invoke-virtual {p1, v0, v1}, Lorg/simple/eventbus/EventBus;->post(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public a(Z)V
    .locals 3

    .line 68
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/ExChangePresenter;->c:Lcom/jess/arms/mvp/a;

    check-cast v0, Lcom/mh/movie/core/mvp/a/n$a;

    invoke-interface {v0}, Lcom/mh/movie/core/mvp/a/n$a;->b()Lio/reactivex/Observable;

    move-result-object v0

    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/ExChangePresenter;->f:Landroid/app/Application;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/presenter/ExChangePresenter;->d:Lcom/jess/arms/mvp/c;

    invoke-virtual {p0, v1, v2, p1}, Lcom/mh/movie/core/mvp/presenter/ExChangePresenter;->a(Landroid/content/Context;Lcom/jess/arms/mvp/c;Z)Lio/reactivex/ObservableTransformer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/mh/movie/core/mvp/presenter/ExChangePresenter$1;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/ExChangePresenter;->e:Lme/jessyan/rxerrorhandler/core/RxErrorHandler;

    new-instance v2, Lcom/mh/movie/core/mvp/presenter/ExChangePresenter$2;

    invoke-direct {v2, p0}, Lcom/mh/movie/core/mvp/presenter/ExChangePresenter$2;-><init>(Lcom/mh/movie/core/mvp/presenter/ExChangePresenter;)V

    .line 71
    invoke-virtual {v2}, Lcom/mh/movie/core/mvp/presenter/ExChangePresenter$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/mh/movie/core/mvp/presenter/ExChangePresenter$1;-><init>(Lcom/mh/movie/core/mvp/presenter/ExChangePresenter;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V

    .line 69
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public b()V
    .locals 1

    .line 60
    invoke-super {p0}, Lcom/mh/movie/core/mvp/presenter/MHBasePresenter;->b()V

    const/4 v0, 0x0

    .line 61
    iput-object v0, p0, Lcom/mh/movie/core/mvp/presenter/ExChangePresenter;->e:Lme/jessyan/rxerrorhandler/core/RxErrorHandler;

    .line 62
    iput-object v0, p0, Lcom/mh/movie/core/mvp/presenter/ExChangePresenter;->h:Lcom/jess/arms/integration/AppManager;

    .line 63
    iput-object v0, p0, Lcom/mh/movie/core/mvp/presenter/ExChangePresenter;->g:Lcom/jess/arms/http/imageloader/c;

    .line 64
    iput-object v0, p0, Lcom/mh/movie/core/mvp/presenter/ExChangePresenter;->f:Landroid/app/Application;

    return-void
.end method

.method public e()V
    .locals 4

    .line 168
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/ExChangePresenter;->c:Lcom/jess/arms/mvp/a;

    check-cast v0, Lcom/mh/movie/core/mvp/a/n$a;

    invoke-interface {v0}, Lcom/mh/movie/core/mvp/a/n$a;->c()Lio/reactivex/Observable;

    move-result-object v0

    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/ExChangePresenter;->f:Landroid/app/Application;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/presenter/ExChangePresenter;->d:Lcom/jess/arms/mvp/c;

    const/4 v3, 0x0

    .line 169
    invoke-virtual {p0, v1, v2, v3}, Lcom/mh/movie/core/mvp/presenter/ExChangePresenter;->a(Landroid/content/Context;Lcom/jess/arms/mvp/c;Z)Lio/reactivex/ObservableTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/mh/movie/core/mvp/presenter/ExChangePresenter$5;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/presenter/ExChangePresenter;->e:Lme/jessyan/rxerrorhandler/core/RxErrorHandler;

    new-instance v3, Lcom/mh/movie/core/mvp/presenter/ExChangePresenter$6;

    invoke-direct {v3, p0}, Lcom/mh/movie/core/mvp/presenter/ExChangePresenter$6;-><init>(Lcom/mh/movie/core/mvp/presenter/ExChangePresenter;)V

    .line 171
    invoke-virtual {v3}, Lcom/mh/movie/core/mvp/presenter/ExChangePresenter$6;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lcom/mh/movie/core/mvp/presenter/ExChangePresenter$5;-><init>(Lcom/mh/movie/core/mvp/presenter/ExChangePresenter;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V

    .line 170
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method
