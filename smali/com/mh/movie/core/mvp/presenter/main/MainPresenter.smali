.class public Lcom/mh/movie/core/mvp/presenter/main/MainPresenter;
.super Lcom/mh/movie/core/mvp/presenter/MHBasePresenter;
.source "MainPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mh/movie/core/mvp/presenter/MHBasePresenter<",
        "Lcom/mh/movie/core/mvp/a/a/a$a;",
        "Lcom/mh/movie/core/mvp/a/a/a$b;",
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


# direct methods
.method public constructor <init>(Lcom/mh/movie/core/mvp/a/a/a$a;Lcom/mh/movie/core/mvp/a/a/a$b;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/mh/movie/core/mvp/presenter/MHBasePresenter;-><init>(Lcom/jess/arms/mvp/a;Lcom/jess/arms/mvp/c;)V

    return-void
.end method

.method static synthetic a(Lcom/mh/movie/core/mvp/presenter/main/MainPresenter;)Lcom/jess/arms/mvp/c;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/mh/movie/core/mvp/presenter/main/MainPresenter;->d:Lcom/jess/arms/mvp/c;

    return-object p0
.end method

.method static synthetic b(Lcom/mh/movie/core/mvp/presenter/main/MainPresenter;)Lcom/jess/arms/mvp/c;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/mh/movie/core/mvp/presenter/main/MainPresenter;->d:Lcom/jess/arms/mvp/c;

    return-object p0
.end method


# virtual methods
.method public a(Lcom/mh/movie/core/mvp/model/entity/response/ExchangeCenterResponse;)V
    .locals 3

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 92
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

    .line 93
    new-instance v2, Lcom/mh/movie/core/mvp/model/db/TableCommodity;

    invoke-direct {v2}, Lcom/mh/movie/core/mvp/model/db/TableCommodity;-><init>()V

    .line 94
    invoke-virtual {v2, v1}, Lcom/mh/movie/core/mvp/model/db/TableCommodity;->setData(Lcom/mh/movie/core/mvp/model/entity/response/ExchangeCenterResponse$CommodityInfoListBean;)V

    .line 95
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 98
    :cond_0
    const-class p1, Lcom/mh/movie/core/mvp/model/db/DbDatabase;

    invoke-static {p1}, Lcom/raizlabs/android/dbflow/config/FlowManager;->c(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/config/b;

    move-result-object p1

    new-instance v1, Lcom/raizlabs/android/dbflow/structure/b/a/e$a;

    sget-object v2, Lcom/mh/movie/core/mvp/presenter/main/a;->a:Lcom/raizlabs/android/dbflow/structure/b/a/e$c;

    invoke-direct {v1, v2}, Lcom/raizlabs/android/dbflow/structure/b/a/e$a;-><init>(Lcom/raizlabs/android/dbflow/structure/b/a/e$c;)V

    .line 101
    invoke-virtual {v1, v0}, Lcom/raizlabs/android/dbflow/structure/b/a/e$a;->a(Ljava/util/Collection;)Lcom/raizlabs/android/dbflow/structure/b/a/e$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/raizlabs/android/dbflow/structure/b/a/e$a;->a()Lcom/raizlabs/android/dbflow/structure/b/a/e;

    move-result-object v1

    .line 99
    invoke-virtual {p1, v1}, Lcom/raizlabs/android/dbflow/config/b;->a(Lcom/raizlabs/android/dbflow/structure/b/a/c;)Lcom/raizlabs/android/dbflow/structure/b/a/g$a;

    move-result-object p1

    new-instance v1, Lcom/mh/movie/core/mvp/presenter/main/MainPresenter$7;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/presenter/main/MainPresenter$7;-><init>(Lcom/mh/movie/core/mvp/presenter/main/MainPresenter;)V

    .line 102
    invoke-virtual {p1, v1}, Lcom/raizlabs/android/dbflow/structure/b/a/g$a;->a(Lcom/raizlabs/android/dbflow/structure/b/a/g$b;)Lcom/raizlabs/android/dbflow/structure/b/a/g$a;

    move-result-object p1

    new-instance v1, Lcom/mh/movie/core/mvp/presenter/main/MainPresenter$6;

    invoke-direct {v1, p0, v0}, Lcom/mh/movie/core/mvp/presenter/main/MainPresenter$6;-><init>(Lcom/mh/movie/core/mvp/presenter/main/MainPresenter;Ljava/util/List;)V

    .line 109
    invoke-virtual {p1, v1}, Lcom/raizlabs/android/dbflow/structure/b/a/g$a;->a(Lcom/raizlabs/android/dbflow/structure/b/a/g$c;)Lcom/raizlabs/android/dbflow/structure/b/a/g$a;

    move-result-object p1

    .line 116
    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/structure/b/a/g$a;->a()Lcom/raizlabs/android/dbflow/structure/b/a/g;

    move-result-object p1

    .line 117
    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/structure/b/a/g;->b()V

    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 4

    .line 121
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 122
    invoke-static {p1}, Lcom/raizlabs/android/dbflow/a;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "lastTime"

    .line 123
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v1, "queryFlag"

    .line 125
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/main/MainPresenter;->c:Lcom/jess/arms/mvp/a;

    check-cast v0, Lcom/mh/movie/core/mvp/a/a/a$a;

    invoke-interface {v0, p2, p1}, Lcom/mh/movie/core/mvp/a/a/a$a;->a(ILjava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    iget-object p2, p0, Lcom/mh/movie/core/mvp/presenter/main/MainPresenter;->f:Landroid/app/Application;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/main/MainPresenter;->d:Lcom/jess/arms/mvp/c;

    const/4 v1, 0x0

    .line 127
    invoke-virtual {p0, p2, v0, v1}, Lcom/mh/movie/core/mvp/presenter/main/MainPresenter;->a(Landroid/content/Context;Lcom/jess/arms/mvp/c;Z)Lio/reactivex/ObservableTransformer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/mh/movie/core/mvp/presenter/main/MainPresenter$8;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/main/MainPresenter;->e:Lme/jessyan/rxerrorhandler/core/RxErrorHandler;

    new-instance v1, Lcom/mh/movie/core/mvp/presenter/main/MainPresenter$9;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/presenter/main/MainPresenter$9;-><init>(Lcom/mh/movie/core/mvp/presenter/main/MainPresenter;)V

    .line 129
    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/presenter/main/MainPresenter$9;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-direct {p2, p0, v0, v1}, Lcom/mh/movie/core/mvp/presenter/main/MainPresenter$8;-><init>(Lcom/mh/movie/core/mvp/presenter/main/MainPresenter;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V

    .line 128
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 150
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/main/MainPresenter;->c:Lcom/jess/arms/mvp/a;

    check-cast v0, Lcom/mh/movie/core/mvp/a/a/a$a;

    invoke-interface {v0, p1}, Lcom/mh/movie/core/mvp/a/a/a$a;->a(Ljava/util/List;)Lio/reactivex/Observable;

    move-result-object p1

    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/main/MainPresenter;->f:Landroid/app/Application;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/main/MainPresenter;->d:Lcom/jess/arms/mvp/c;

    const/4 v2, 0x0

    .line 151
    invoke-virtual {p0, v0, v1, v2}, Lcom/mh/movie/core/mvp/presenter/main/MainPresenter;->a(Landroid/content/Context;Lcom/jess/arms/mvp/c;Z)Lio/reactivex/ObservableTransformer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/mh/movie/core/mvp/presenter/main/MainPresenter$2;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/main/MainPresenter;->e:Lme/jessyan/rxerrorhandler/core/RxErrorHandler;

    new-instance v2, Lcom/mh/movie/core/mvp/presenter/main/MainPresenter$3;

    invoke-direct {v2, p0}, Lcom/mh/movie/core/mvp/presenter/main/MainPresenter$3;-><init>(Lcom/mh/movie/core/mvp/presenter/main/MainPresenter;)V

    .line 153
    invoke-virtual {v2}, Lcom/mh/movie/core/mvp/presenter/main/MainPresenter$3;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/mh/movie/core/mvp/presenter/main/MainPresenter$2;-><init>(Lcom/mh/movie/core/mvp/presenter/main/MainPresenter;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V

    .line 152
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public b()V
    .locals 1

    .line 56
    invoke-super {p0}, Lcom/mh/movie/core/mvp/presenter/MHBasePresenter;->b()V

    const/4 v0, 0x0

    .line 57
    iput-object v0, p0, Lcom/mh/movie/core/mvp/presenter/main/MainPresenter;->e:Lme/jessyan/rxerrorhandler/core/RxErrorHandler;

    .line 58
    iput-object v0, p0, Lcom/mh/movie/core/mvp/presenter/main/MainPresenter;->h:Lcom/jess/arms/integration/AppManager;

    .line 59
    iput-object v0, p0, Lcom/mh/movie/core/mvp/presenter/main/MainPresenter;->g:Lcom/jess/arms/http/imageloader/c;

    .line 60
    iput-object v0, p0, Lcom/mh/movie/core/mvp/presenter/main/MainPresenter;->f:Landroid/app/Application;

    return-void
.end method

.method public e()V
    .locals 4

    .line 76
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/main/MainPresenter;->c:Lcom/jess/arms/mvp/a;

    check-cast v0, Lcom/mh/movie/core/mvp/a/a/a$a;

    invoke-interface {v0}, Lcom/mh/movie/core/mvp/a/a/a$a;->c()Lio/reactivex/Observable;

    move-result-object v0

    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/main/MainPresenter;->f:Landroid/app/Application;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/presenter/main/MainPresenter;->d:Lcom/jess/arms/mvp/c;

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/mh/movie/core/mvp/presenter/main/MainPresenter;->a(Landroid/content/Context;Lcom/jess/arms/mvp/c;Z)Lio/reactivex/ObservableTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/mh/movie/core/mvp/presenter/main/MainPresenter$4;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/presenter/main/MainPresenter;->e:Lme/jessyan/rxerrorhandler/core/RxErrorHandler;

    new-instance v3, Lcom/mh/movie/core/mvp/presenter/main/MainPresenter$5;

    invoke-direct {v3, p0}, Lcom/mh/movie/core/mvp/presenter/main/MainPresenter$5;-><init>(Lcom/mh/movie/core/mvp/presenter/main/MainPresenter;)V

    .line 79
    invoke-virtual {v3}, Lcom/mh/movie/core/mvp/presenter/main/MainPresenter$5;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lcom/mh/movie/core/mvp/presenter/main/MainPresenter$4;-><init>(Lcom/mh/movie/core/mvp/presenter/main/MainPresenter;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V

    .line 77
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public f()V
    .locals 4

    .line 138
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/main/MainPresenter;->c:Lcom/jess/arms/mvp/a;

    check-cast v0, Lcom/mh/movie/core/mvp/a/a/a$a;

    invoke-interface {v0}, Lcom/mh/movie/core/mvp/a/a/a$a;->b()Lio/reactivex/Observable;

    move-result-object v0

    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/main/MainPresenter;->f:Landroid/app/Application;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/presenter/main/MainPresenter;->d:Lcom/jess/arms/mvp/c;

    const/4 v3, 0x0

    .line 139
    invoke-virtual {p0, v1, v2, v3}, Lcom/mh/movie/core/mvp/presenter/main/MainPresenter;->a(Landroid/content/Context;Lcom/jess/arms/mvp/c;Z)Lio/reactivex/ObservableTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/mh/movie/core/mvp/presenter/main/MainPresenter$10;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/presenter/main/MainPresenter;->e:Lme/jessyan/rxerrorhandler/core/RxErrorHandler;

    new-instance v3, Lcom/mh/movie/core/mvp/presenter/main/MainPresenter$1;

    invoke-direct {v3, p0}, Lcom/mh/movie/core/mvp/presenter/main/MainPresenter$1;-><init>(Lcom/mh/movie/core/mvp/presenter/main/MainPresenter;)V

    .line 141
    invoke-virtual {v3}, Lcom/mh/movie/core/mvp/presenter/main/MainPresenter$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lcom/mh/movie/core/mvp/presenter/main/MainPresenter$10;-><init>(Lcom/mh/movie/core/mvp/presenter/main/MainPresenter;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V

    .line 140
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method
