.class public Lcom/mh/movie/core/mvp/presenter/TvplayDetailPresenter;
.super Lcom/mh/movie/core/mvp/presenter/MHBasePresenter;
.source "TvplayDetailPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mh/movie/core/mvp/presenter/MHBasePresenter<",
        "Lcom/mh/movie/core/mvp/a/bf$a;",
        "Lcom/mh/movie/core/mvp/a/bf$b;",
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
.method public constructor <init>(Lcom/mh/movie/core/mvp/a/bf$a;Lcom/mh/movie/core/mvp/a/bf$b;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/mh/movie/core/mvp/presenter/MHBasePresenter;-><init>(Lcom/jess/arms/mvp/a;Lcom/jess/arms/mvp/c;)V

    return-void
.end method

.method static synthetic a(Lcom/mh/movie/core/mvp/presenter/TvplayDetailPresenter;)Lcom/jess/arms/mvp/c;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/mh/movie/core/mvp/presenter/TvplayDetailPresenter;->d:Lcom/jess/arms/mvp/c;

    return-object p0
.end method

.method static synthetic b(Lcom/mh/movie/core/mvp/presenter/TvplayDetailPresenter;)Lcom/jess/arms/mvp/c;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/mh/movie/core/mvp/presenter/TvplayDetailPresenter;->d:Lcom/jess/arms/mvp/c;

    return-object p0
.end method

.method static synthetic c(Lcom/mh/movie/core/mvp/presenter/TvplayDetailPresenter;)Lcom/jess/arms/mvp/c;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/mh/movie/core/mvp/presenter/TvplayDetailPresenter;->d:Lcom/jess/arms/mvp/c;

    return-object p0
.end method


# virtual methods
.method public a(I)Lcom/mh/movie/core/mvp/model/db/TableCommodity;
    .locals 4

    .line 59
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/q;

    const/4 v1, 0x0

    new-array v2, v1, [Lcom/raizlabs/android/dbflow/sql/language/a/a;

    invoke-direct {v0, v2}, Lcom/raizlabs/android/dbflow/sql/language/q;-><init>([Lcom/raizlabs/android/dbflow/sql/language/a/a;)V

    const-class v2, Lcom/mh/movie/core/mvp/model/db/TableCommodity;

    invoke-virtual {v0, v2}, Lcom/raizlabs/android/dbflow/sql/language/q;->a(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/sql/language/h;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/raizlabs/android/dbflow/sql/language/o;

    sget-object v3, Lcom/mh/movie/core/mvp/model/db/TableCommodity_Table;->authId:Lcom/raizlabs/android/dbflow/sql/language/a/b;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/raizlabs/android/dbflow/sql/language/a/b;->a(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/m;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-virtual {v0, v2}, Lcom/raizlabs/android/dbflow/sql/language/h;->a([Lcom/raizlabs/android/dbflow/sql/language/o;)Lcom/raizlabs/android/dbflow/sql/language/s;

    move-result-object p1

    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/sql/language/s;->e()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mh/movie/core/mvp/model/db/TableCommodity;

    return-object p1
.end method

.method public a(IIJI)V
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/TvplayDetailPresenter;->c:Lcom/jess/arms/mvp/a;

    check-cast v0, Lcom/mh/movie/core/mvp/a/bf$a;

    long-to-int p3, p3

    invoke-interface {v0, p1, p2, p3}, Lcom/mh/movie/core/mvp/a/bf$a;->a(III)Lio/reactivex/Observable;

    move-result-object p1

    iget-object p2, p0, Lcom/mh/movie/core/mvp/presenter/TvplayDetailPresenter;->f:Landroid/app/Application;

    iget-object p3, p0, Lcom/mh/movie/core/mvp/presenter/TvplayDetailPresenter;->d:Lcom/jess/arms/mvp/c;

    const/4 p4, 0x0

    .line 76
    invoke-virtual {p0, p2, p3, p4}, Lcom/mh/movie/core/mvp/presenter/TvplayDetailPresenter;->a(Landroid/content/Context;Lcom/jess/arms/mvp/c;Z)Lio/reactivex/ObservableTransformer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/mh/movie/core/mvp/presenter/TvplayDetailPresenter$4;

    iget-object p3, p0, Lcom/mh/movie/core/mvp/presenter/TvplayDetailPresenter;->e:Lme/jessyan/rxerrorhandler/core/RxErrorHandler;

    new-instance p4, Lcom/mh/movie/core/mvp/presenter/TvplayDetailPresenter$5;

    invoke-direct {p4, p0}, Lcom/mh/movie/core/mvp/presenter/TvplayDetailPresenter$5;-><init>(Lcom/mh/movie/core/mvp/presenter/TvplayDetailPresenter;)V

    .line 78
    invoke-virtual {p4}, Lcom/mh/movie/core/mvp/presenter/TvplayDetailPresenter$5;->getType()Ljava/lang/reflect/Type;

    move-result-object p4

    invoke-direct {p2, p0, p3, p4, p5}, Lcom/mh/movie/core/mvp/presenter/TvplayDetailPresenter$4;-><init>(Lcom/mh/movie/core/mvp/presenter/TvplayDetailPresenter;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;I)V

    .line 77
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public a(Lcom/mh/movie/core/mvp/model/entity/request/VideoInfoDetailRequest;)V
    .locals 3

    .line 63
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/TvplayDetailPresenter;->c:Lcom/jess/arms/mvp/a;

    check-cast v0, Lcom/mh/movie/core/mvp/a/bf$a;

    invoke-interface {v0, p1}, Lcom/mh/movie/core/mvp/a/bf$a;->a(Lcom/mh/movie/core/mvp/model/entity/request/VideoInfoDetailRequest;)Lio/reactivex/Observable;

    move-result-object p1

    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/TvplayDetailPresenter;->f:Landroid/app/Application;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/TvplayDetailPresenter;->d:Lcom/jess/arms/mvp/c;

    const/4 v2, 0x0

    .line 64
    invoke-virtual {p0, v0, v1, v2}, Lcom/mh/movie/core/mvp/presenter/TvplayDetailPresenter;->a(Landroid/content/Context;Lcom/jess/arms/mvp/c;Z)Lio/reactivex/ObservableTransformer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/mh/movie/core/mvp/presenter/TvplayDetailPresenter$1;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/TvplayDetailPresenter;->e:Lme/jessyan/rxerrorhandler/core/RxErrorHandler;

    new-instance v2, Lcom/mh/movie/core/mvp/presenter/TvplayDetailPresenter$3;

    invoke-direct {v2, p0}, Lcom/mh/movie/core/mvp/presenter/TvplayDetailPresenter$3;-><init>(Lcom/mh/movie/core/mvp/presenter/TvplayDetailPresenter;)V

    .line 66
    invoke-virtual {v2}, Lcom/mh/movie/core/mvp/presenter/TvplayDetailPresenter$3;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/mh/movie/core/mvp/presenter/TvplayDetailPresenter$1;-><init>(Lcom/mh/movie/core/mvp/presenter/TvplayDetailPresenter;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V

    .line 65
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/request/DownUrlRequest;",
            ">;)V"
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/TvplayDetailPresenter;->c:Lcom/jess/arms/mvp/a;

    check-cast v0, Lcom/mh/movie/core/mvp/a/bf$a;

    invoke-interface {v0, p1}, Lcom/mh/movie/core/mvp/a/bf$a;->a(Ljava/util/List;)Lio/reactivex/Observable;

    move-result-object p1

    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/TvplayDetailPresenter;->f:Landroid/app/Application;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/TvplayDetailPresenter;->d:Lcom/jess/arms/mvp/c;

    const/4 v2, 0x1

    .line 100
    invoke-virtual {p0, v0, v1, v2}, Lcom/mh/movie/core/mvp/presenter/TvplayDetailPresenter;->a(Landroid/content/Context;Lcom/jess/arms/mvp/c;Z)Lio/reactivex/ObservableTransformer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/mh/movie/core/mvp/presenter/TvplayDetailPresenter$6;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/TvplayDetailPresenter;->e:Lme/jessyan/rxerrorhandler/core/RxErrorHandler;

    new-instance v2, Lcom/mh/movie/core/mvp/presenter/TvplayDetailPresenter$7;

    invoke-direct {v2, p0}, Lcom/mh/movie/core/mvp/presenter/TvplayDetailPresenter$7;-><init>(Lcom/mh/movie/core/mvp/presenter/TvplayDetailPresenter;)V

    .line 102
    invoke-virtual {v2}, Lcom/mh/movie/core/mvp/presenter/TvplayDetailPresenter$7;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/mh/movie/core/mvp/presenter/TvplayDetailPresenter$6;-><init>(Lcom/mh/movie/core/mvp/presenter/TvplayDetailPresenter;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V

    .line 101
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public b()V
    .locals 1

    .line 50
    invoke-super {p0}, Lcom/mh/movie/core/mvp/presenter/MHBasePresenter;->b()V

    const/4 v0, 0x0

    .line 51
    iput-object v0, p0, Lcom/mh/movie/core/mvp/presenter/TvplayDetailPresenter;->e:Lme/jessyan/rxerrorhandler/core/RxErrorHandler;

    .line 52
    iput-object v0, p0, Lcom/mh/movie/core/mvp/presenter/TvplayDetailPresenter;->h:Lcom/jess/arms/integration/AppManager;

    .line 53
    iput-object v0, p0, Lcom/mh/movie/core/mvp/presenter/TvplayDetailPresenter;->g:Lcom/jess/arms/http/imageloader/c;

    .line 54
    iput-object v0, p0, Lcom/mh/movie/core/mvp/presenter/TvplayDetailPresenter;->f:Landroid/app/Application;

    return-void
.end method

.method public b(I)V
    .locals 4

    .line 113
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/TvplayDetailPresenter;->c:Lcom/jess/arms/mvp/a;

    check-cast v0, Lcom/mh/movie/core/mvp/a/bf$a;

    invoke-interface {v0, p1}, Lcom/mh/movie/core/mvp/a/bf$a;->a(I)Lio/reactivex/Observable;

    move-result-object v0

    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/TvplayDetailPresenter;->f:Landroid/app/Application;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/presenter/TvplayDetailPresenter;->d:Lcom/jess/arms/mvp/c;

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/mh/movie/core/mvp/presenter/TvplayDetailPresenter;->a(Landroid/content/Context;Lcom/jess/arms/mvp/c;Z)Lio/reactivex/ObservableTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/mh/movie/core/mvp/presenter/TvplayDetailPresenter$8;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/presenter/TvplayDetailPresenter;->e:Lme/jessyan/rxerrorhandler/core/RxErrorHandler;

    new-instance v3, Lcom/mh/movie/core/mvp/presenter/TvplayDetailPresenter$2;

    invoke-direct {v3, p0}, Lcom/mh/movie/core/mvp/presenter/TvplayDetailPresenter$2;-><init>(Lcom/mh/movie/core/mvp/presenter/TvplayDetailPresenter;)V

    .line 115
    invoke-virtual {v3}, Lcom/mh/movie/core/mvp/presenter/TvplayDetailPresenter$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3, p1}, Lcom/mh/movie/core/mvp/presenter/TvplayDetailPresenter$8;-><init>(Lcom/mh/movie/core/mvp/presenter/TvplayDetailPresenter;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;I)V

    .line 113
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method
