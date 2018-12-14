.class public Lcom/mh/movie/core/mvp/presenter/SplashPresenter;
.super Lcom/mh/movie/core/mvp/presenter/MHBasePresenter;
.source "SplashPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mh/movie/core/mvp/presenter/MHBasePresenter<",
        "Lcom/mh/movie/core/mvp/a/ba$a;",
        "Lcom/mh/movie/core/mvp/a/ba$b;",
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
.method public constructor <init>(Lcom/mh/movie/core/mvp/a/ba$a;Lcom/mh/movie/core/mvp/a/ba$b;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 80
    invoke-direct {p0, p1, p2}, Lcom/mh/movie/core/mvp/presenter/MHBasePresenter;-><init>(Lcom/jess/arms/mvp/a;Lcom/jess/arms/mvp/c;)V

    return-void
.end method

.method static synthetic a(Lcom/mh/movie/core/mvp/presenter/SplashPresenter;)Lcom/jess/arms/mvp/c;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/mh/movie/core/mvp/presenter/SplashPresenter;->d:Lcom/jess/arms/mvp/c;

    return-object p0
.end method

.method private a(Ljava/lang/String;)Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;
    .locals 2

    .line 163
    new-instance v0, Lcom/google/gson/e;

    invoke-direct {v0}, Lcom/google/gson/e;-><init>()V

    .line 164
    new-instance v1, Lcom/mh/movie/core/mvp/presenter/SplashPresenter$15;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/presenter/SplashPresenter$15;-><init>(Lcom/mh/movie/core/mvp/presenter/SplashPresenter;)V

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/presenter/SplashPresenter$15;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 165
    invoke-virtual {v0, p1, v1}, Lcom/google/gson/e;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;

    return-object p1
.end method

.method private a(Lcom/mh/movie/core/mvp/model/entity/response/UserTaskResponse;)V
    .locals 4

    .line 188
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 189
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/UserTaskResponse;->getList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mh/movie/core/mvp/model/entity/response/UserTaskResponse$ListBean;

    .line 190
    new-instance v2, Lcom/mh/movie/core/mvp/model/db/TableTask;

    invoke-direct {v2}, Lcom/mh/movie/core/mvp/model/db/TableTask;-><init>()V

    .line 191
    invoke-virtual {v2, v1}, Lcom/mh/movie/core/mvp/model/db/TableTask;->setData(Lcom/mh/movie/core/mvp/model/entity/response/UserTaskResponse$ListBean;)V

    .line 192
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/response/UserTaskResponse$ListBean;->getAuthId()I

    move-result v1

    const/4 v3, 0x7

    if-ne v1, v3, :cond_0

    .line 194
    iget v1, v2, Lcom/mh/movie/core/mvp/model/db/TableTask;->money:I

    sput v1, Lcom/mh/movie/core/mvp/ui/b;->H:I

    goto :goto_0

    .line 198
    :cond_1
    const-class p1, Lcom/mh/movie/core/mvp/model/db/DbDatabase;

    invoke-static {p1}, Lcom/raizlabs/android/dbflow/config/FlowManager;->c(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/config/b;

    move-result-object p1

    new-instance v1, Lcom/raizlabs/android/dbflow/structure/b/a/e$a;

    sget-object v2, Lcom/mh/movie/core/mvp/presenter/cz;->a:Lcom/raizlabs/android/dbflow/structure/b/a/e$c;

    invoke-direct {v1, v2}, Lcom/raizlabs/android/dbflow/structure/b/a/e$a;-><init>(Lcom/raizlabs/android/dbflow/structure/b/a/e$c;)V

    .line 201
    invoke-virtual {v1, v0}, Lcom/raizlabs/android/dbflow/structure/b/a/e$a;->a(Ljava/util/Collection;)Lcom/raizlabs/android/dbflow/structure/b/a/e$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/structure/b/a/e$a;->a()Lcom/raizlabs/android/dbflow/structure/b/a/e;

    move-result-object v0

    .line 199
    invoke-virtual {p1, v0}, Lcom/raizlabs/android/dbflow/config/b;->a(Lcom/raizlabs/android/dbflow/structure/b/a/c;)Lcom/raizlabs/android/dbflow/structure/b/a/g$a;

    move-result-object p1

    new-instance v0, Lcom/mh/movie/core/mvp/presenter/SplashPresenter$19;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/mvp/presenter/SplashPresenter$19;-><init>(Lcom/mh/movie/core/mvp/presenter/SplashPresenter;)V

    .line 202
    invoke-virtual {p1, v0}, Lcom/raizlabs/android/dbflow/structure/b/a/g$a;->a(Lcom/raizlabs/android/dbflow/structure/b/a/g$b;)Lcom/raizlabs/android/dbflow/structure/b/a/g$a;

    move-result-object p1

    new-instance v0, Lcom/mh/movie/core/mvp/presenter/SplashPresenter$18;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/mvp/presenter/SplashPresenter$18;-><init>(Lcom/mh/movie/core/mvp/presenter/SplashPresenter;)V

    .line 209
    invoke-virtual {p1, v0}, Lcom/raizlabs/android/dbflow/structure/b/a/g$a;->a(Lcom/raizlabs/android/dbflow/structure/b/a/g$c;)Lcom/raizlabs/android/dbflow/structure/b/a/g$a;

    move-result-object p1

    .line 215
    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/structure/b/a/g$a;->a()Lcom/raizlabs/android/dbflow/structure/b/a/g;

    move-result-object p1

    .line 216
    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/structure/b/a/g;->b()V

    return-void
.end method

.method static synthetic a(Lcom/mh/movie/core/mvp/presenter/SplashPresenter;Lcom/mh/movie/core/mvp/model/entity/response/UserTaskResponse;)V
    .locals 0

    .line 68
    invoke-direct {p0, p1}, Lcom/mh/movie/core/mvp/presenter/SplashPresenter;->a(Lcom/mh/movie/core/mvp/model/entity/response/UserTaskResponse;)V

    return-void
.end method

.method static synthetic a(Lcom/mh/movie/core/mvp/presenter/SplashPresenter;Z)V
    .locals 0

    .line 68
    invoke-direct {p0, p1}, Lcom/mh/movie/core/mvp/presenter/SplashPresenter;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 3

    .line 326
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/SplashPresenter;->c:Lcom/jess/arms/mvp/a;

    check-cast v0, Lcom/mh/movie/core/mvp/a/ba$a;

    invoke-interface {v0, p1}, Lcom/mh/movie/core/mvp/a/ba$a;->a(Z)Lio/reactivex/Observable;

    move-result-object p1

    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/SplashPresenter;->f:Landroid/app/Application;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/SplashPresenter;->d:Lcom/jess/arms/mvp/c;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/mh/movie/core/mvp/presenter/SplashPresenter;->a(Landroid/content/Context;Lcom/jess/arms/mvp/c;Z)Lio/reactivex/ObservableTransformer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/mh/movie/core/mvp/presenter/SplashPresenter$10;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/SplashPresenter;->e:Lme/jessyan/rxerrorhandler/core/RxErrorHandler;

    new-instance v2, Lcom/mh/movie/core/mvp/presenter/SplashPresenter$11;

    invoke-direct {v2, p0}, Lcom/mh/movie/core/mvp/presenter/SplashPresenter$11;-><init>(Lcom/mh/movie/core/mvp/presenter/SplashPresenter;)V

    .line 328
    invoke-virtual {v2}, Lcom/mh/movie/core/mvp/presenter/SplashPresenter$11;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/mh/movie/core/mvp/presenter/SplashPresenter$10;-><init>(Lcom/mh/movie/core/mvp/presenter/SplashPresenter;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V

    .line 327
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method static synthetic b(Lcom/mh/movie/core/mvp/presenter/SplashPresenter;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/presenter/SplashPresenter;->j()V

    return-void
.end method

.method static synthetic c(Lcom/mh/movie/core/mvp/presenter/SplashPresenter;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/presenter/SplashPresenter;->i()V

    return-void
.end method

.method static synthetic d(Lcom/mh/movie/core/mvp/presenter/SplashPresenter;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/presenter/SplashPresenter;->k()V

    return-void
.end method

.method static synthetic e(Lcom/mh/movie/core/mvp/presenter/SplashPresenter;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/presenter/SplashPresenter;->h()V

    return-void
.end method

.method static synthetic f(Lcom/mh/movie/core/mvp/presenter/SplashPresenter;)Lcom/jess/arms/mvp/c;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/mh/movie/core/mvp/presenter/SplashPresenter;->d:Lcom/jess/arms/mvp/c;

    return-object p0
.end method

.method static synthetic g(Lcom/mh/movie/core/mvp/presenter/SplashPresenter;)Lcom/jess/arms/mvp/c;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/mh/movie/core/mvp/presenter/SplashPresenter;->d:Lcom/jess/arms/mvp/c;

    return-object p0
.end method

.method static synthetic h(Lcom/mh/movie/core/mvp/presenter/SplashPresenter;)Lcom/jess/arms/mvp/c;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/mh/movie/core/mvp/presenter/SplashPresenter;->d:Lcom/jess/arms/mvp/c;

    return-object p0
.end method

.method private h()V
    .locals 3

    .line 152
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/SplashPresenter;->f:Landroid/app/Application;

    sget-object v1, Lcom/mh/movie/core/mvp/ui/b;->i:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/jess/arms/c/d;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/SplashPresenter;->f:Landroid/app/Application;

    sget-object v1, Lcom/mh/movie/core/mvp/ui/b;->f:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/jess/arms/c/d;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mh/movie/core/mvp/presenter/SplashPresenter;->a(Ljava/lang/String;)Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;

    move-result-object v0

    .line 155
    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/b;->a(Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;)V

    .line 156
    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/SplashPresenter;->f:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mh/movie/core/mvp/ui/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/SplashPresenter;->f:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/SplashPresenter;->f:Landroid/app/Application;

    sget-object v2, Lcom/mh/movie/core/mvp/ui/b;->h:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/jess/arms/c/d;->d(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/mh/movie/core/mvp/ui/b;->a(Landroid/content/Context;J)V

    :cond_0
    return-void
.end method

.method static synthetic i(Lcom/mh/movie/core/mvp/presenter/SplashPresenter;)Lcom/jess/arms/mvp/c;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/mh/movie/core/mvp/presenter/SplashPresenter;->d:Lcom/jess/arms/mvp/c;

    return-object p0
.end method

.method private i()V
    .locals 4

    .line 170
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/SplashPresenter;->c:Lcom/jess/arms/mvp/a;

    check-cast v0, Lcom/mh/movie/core/mvp/a/ba$a;

    invoke-interface {v0}, Lcom/mh/movie/core/mvp/a/ba$a;->e()Lio/reactivex/Observable;

    move-result-object v0

    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/SplashPresenter;->f:Landroid/app/Application;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/presenter/SplashPresenter;->d:Lcom/jess/arms/mvp/c;

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/mh/movie/core/mvp/presenter/SplashPresenter;->a(Landroid/content/Context;Lcom/jess/arms/mvp/c;Z)Lio/reactivex/ObservableTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/mh/movie/core/mvp/presenter/SplashPresenter$16;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/presenter/SplashPresenter;->e:Lme/jessyan/rxerrorhandler/core/RxErrorHandler;

    new-instance v3, Lcom/mh/movie/core/mvp/presenter/SplashPresenter$17;

    invoke-direct {v3, p0}, Lcom/mh/movie/core/mvp/presenter/SplashPresenter$17;-><init>(Lcom/mh/movie/core/mvp/presenter/SplashPresenter;)V

    .line 172
    invoke-virtual {v3}, Lcom/mh/movie/core/mvp/presenter/SplashPresenter$17;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lcom/mh/movie/core/mvp/presenter/SplashPresenter$16;-><init>(Lcom/mh/movie/core/mvp/presenter/SplashPresenter;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V

    .line 171
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method private j()V
    .locals 4

    .line 221
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/SplashPresenter;->c:Lcom/jess/arms/mvp/a;

    check-cast v0, Lcom/mh/movie/core/mvp/a/ba$a;

    invoke-interface {v0}, Lcom/mh/movie/core/mvp/a/ba$a;->d()Lio/reactivex/Observable;

    move-result-object v0

    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/SplashPresenter;->f:Landroid/app/Application;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/presenter/SplashPresenter;->d:Lcom/jess/arms/mvp/c;

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/mh/movie/core/mvp/presenter/SplashPresenter;->a(Landroid/content/Context;Lcom/jess/arms/mvp/c;Z)Lio/reactivex/ObservableTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/mh/movie/core/mvp/presenter/SplashPresenter$20;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/presenter/SplashPresenter;->e:Lme/jessyan/rxerrorhandler/core/RxErrorHandler;

    new-instance v3, Lcom/mh/movie/core/mvp/presenter/SplashPresenter$21;

    invoke-direct {v3, p0}, Lcom/mh/movie/core/mvp/presenter/SplashPresenter$21;-><init>(Lcom/mh/movie/core/mvp/presenter/SplashPresenter;)V

    .line 224
    invoke-virtual {v3}, Lcom/mh/movie/core/mvp/presenter/SplashPresenter$21;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lcom/mh/movie/core/mvp/presenter/SplashPresenter$20;-><init>(Lcom/mh/movie/core/mvp/presenter/SplashPresenter;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V

    .line 222
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method private k()V
    .locals 4

    .line 346
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/SplashPresenter;->c:Lcom/jess/arms/mvp/a;

    check-cast v0, Lcom/mh/movie/core/mvp/a/ba$a;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/mh/movie/core/mvp/a/ba$a;->b(Z)Lio/reactivex/Observable;

    move-result-object v0

    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/SplashPresenter;->f:Landroid/app/Application;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/presenter/SplashPresenter;->d:Lcom/jess/arms/mvp/c;

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/mh/movie/core/mvp/presenter/SplashPresenter;->a(Landroid/content/Context;Lcom/jess/arms/mvp/c;Z)Lio/reactivex/ObservableTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/mh/movie/core/mvp/presenter/SplashPresenter$13;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/presenter/SplashPresenter;->e:Lme/jessyan/rxerrorhandler/core/RxErrorHandler;

    new-instance v3, Lcom/mh/movie/core/mvp/presenter/SplashPresenter$14;

    invoke-direct {v3, p0}, Lcom/mh/movie/core/mvp/presenter/SplashPresenter$14;-><init>(Lcom/mh/movie/core/mvp/presenter/SplashPresenter;)V

    .line 348
    invoke-virtual {v3}, Lcom/mh/movie/core/mvp/presenter/SplashPresenter$14;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lcom/mh/movie/core/mvp/presenter/SplashPresenter$13;-><init>(Lcom/mh/movie/core/mvp/presenter/SplashPresenter;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V

    .line 347
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/mh/movie/core/mvp/model/entity/request/LoginRequest;Z)V
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/SplashPresenter;->c:Lcom/jess/arms/mvp/a;

    check-cast v0, Lcom/mh/movie/core/mvp/a/ba$a;

    invoke-interface {v0, p1}, Lcom/mh/movie/core/mvp/a/ba$a;->a(Lcom/mh/movie/core/mvp/model/entity/request/LoginRequest;)Lio/reactivex/Observable;

    move-result-object p1

    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/SplashPresenter;->f:Landroid/app/Application;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/SplashPresenter;->d:Lcom/jess/arms/mvp/c;

    .line 101
    invoke-virtual {p0, v0, v1, p2}, Lcom/mh/movie/core/mvp/presenter/SplashPresenter;->a(Landroid/content/Context;Lcom/jess/arms/mvp/c;Z)Lio/reactivex/ObservableTransformer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/mh/movie/core/mvp/presenter/SplashPresenter$1;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/SplashPresenter;->e:Lme/jessyan/rxerrorhandler/core/RxErrorHandler;

    new-instance v1, Lcom/mh/movie/core/mvp/presenter/SplashPresenter$12;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/presenter/SplashPresenter$12;-><init>(Lcom/mh/movie/core/mvp/presenter/SplashPresenter;)V

    .line 103
    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/presenter/SplashPresenter$12;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-direct {p2, p0, v0, v1}, Lcom/mh/movie/core/mvp/presenter/SplashPresenter$1;-><init>(Lcom/mh/movie/core/mvp/presenter/SplashPresenter;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V

    .line 102
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public a(Lcom/mh/movie/core/mvp/model/entity/response/ExchangeCenterResponse;)V
    .locals 3

    .line 236
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 237
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

    .line 238
    new-instance v2, Lcom/mh/movie/core/mvp/model/db/TableCommodity;

    invoke-direct {v2}, Lcom/mh/movie/core/mvp/model/db/TableCommodity;-><init>()V

    .line 239
    invoke-virtual {v2, v1}, Lcom/mh/movie/core/mvp/model/db/TableCommodity;->setData(Lcom/mh/movie/core/mvp/model/entity/response/ExchangeCenterResponse$CommodityInfoListBean;)V

    .line 240
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 243
    :cond_0
    const-class p1, Lcom/mh/movie/core/mvp/model/db/DbDatabase;

    invoke-static {p1}, Lcom/raizlabs/android/dbflow/config/FlowManager;->c(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/config/b;

    move-result-object p1

    new-instance v1, Lcom/raizlabs/android/dbflow/structure/b/a/e$a;

    sget-object v2, Lcom/mh/movie/core/mvp/presenter/da;->a:Lcom/raizlabs/android/dbflow/structure/b/a/e$c;

    invoke-direct {v1, v2}, Lcom/raizlabs/android/dbflow/structure/b/a/e$a;-><init>(Lcom/raizlabs/android/dbflow/structure/b/a/e$c;)V

    .line 246
    invoke-virtual {v1, v0}, Lcom/raizlabs/android/dbflow/structure/b/a/e$a;->a(Ljava/util/Collection;)Lcom/raizlabs/android/dbflow/structure/b/a/e$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/raizlabs/android/dbflow/structure/b/a/e$a;->a()Lcom/raizlabs/android/dbflow/structure/b/a/e;

    move-result-object v1

    .line 244
    invoke-virtual {p1, v1}, Lcom/raizlabs/android/dbflow/config/b;->a(Lcom/raizlabs/android/dbflow/structure/b/a/c;)Lcom/raizlabs/android/dbflow/structure/b/a/g$a;

    move-result-object p1

    new-instance v1, Lcom/mh/movie/core/mvp/presenter/SplashPresenter$3;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/presenter/SplashPresenter$3;-><init>(Lcom/mh/movie/core/mvp/presenter/SplashPresenter;)V

    .line 247
    invoke-virtual {p1, v1}, Lcom/raizlabs/android/dbflow/structure/b/a/g$a;->a(Lcom/raizlabs/android/dbflow/structure/b/a/g$b;)Lcom/raizlabs/android/dbflow/structure/b/a/g$a;

    move-result-object p1

    new-instance v1, Lcom/mh/movie/core/mvp/presenter/SplashPresenter$2;

    invoke-direct {v1, p0, v0}, Lcom/mh/movie/core/mvp/presenter/SplashPresenter$2;-><init>(Lcom/mh/movie/core/mvp/presenter/SplashPresenter;Ljava/util/List;)V

    .line 254
    invoke-virtual {p1, v1}, Lcom/raizlabs/android/dbflow/structure/b/a/g$a;->a(Lcom/raizlabs/android/dbflow/structure/b/a/g$c;)Lcom/raizlabs/android/dbflow/structure/b/a/g$a;

    move-result-object p1

    .line 261
    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/structure/b/a/g$a;->a()Lcom/raizlabs/android/dbflow/structure/b/a/g;

    move-result-object p1

    .line 262
    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/structure/b/a/g;->b()V

    return-void
.end method

.method public b()V
    .locals 1

    .line 88
    invoke-super {p0}, Lcom/mh/movie/core/mvp/presenter/MHBasePresenter;->b()V

    const/4 v0, 0x0

    .line 89
    iput-object v0, p0, Lcom/mh/movie/core/mvp/presenter/SplashPresenter;->e:Lme/jessyan/rxerrorhandler/core/RxErrorHandler;

    .line 90
    iput-object v0, p0, Lcom/mh/movie/core/mvp/presenter/SplashPresenter;->h:Lcom/jess/arms/integration/AppManager;

    .line 91
    iput-object v0, p0, Lcom/mh/movie/core/mvp/presenter/SplashPresenter;->g:Lcom/jess/arms/http/imageloader/c;

    .line 92
    iput-object v0, p0, Lcom/mh/movie/core/mvp/presenter/SplashPresenter;->f:Landroid/app/Application;

    return-void
.end method

.method public e()V
    .locals 4

    .line 266
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/SplashPresenter;->c:Lcom/jess/arms/mvp/a;

    check-cast v0, Lcom/mh/movie/core/mvp/a/ba$a;

    invoke-interface {v0}, Lcom/mh/movie/core/mvp/a/ba$a;->b()Lio/reactivex/Observable;

    move-result-object v0

    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/SplashPresenter;->f:Landroid/app/Application;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/presenter/SplashPresenter;->d:Lcom/jess/arms/mvp/c;

    const/4 v3, 0x0

    .line 267
    invoke-virtual {p0, v1, v2, v3}, Lcom/mh/movie/core/mvp/presenter/SplashPresenter;->a(Landroid/content/Context;Lcom/jess/arms/mvp/c;Z)Lio/reactivex/ObservableTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/mh/movie/core/mvp/presenter/SplashPresenter$4;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/presenter/SplashPresenter;->e:Lme/jessyan/rxerrorhandler/core/RxErrorHandler;

    new-instance v3, Lcom/mh/movie/core/mvp/presenter/SplashPresenter$5;

    invoke-direct {v3, p0}, Lcom/mh/movie/core/mvp/presenter/SplashPresenter$5;-><init>(Lcom/mh/movie/core/mvp/presenter/SplashPresenter;)V

    .line 269
    invoke-virtual {v3}, Lcom/mh/movie/core/mvp/presenter/SplashPresenter$5;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lcom/mh/movie/core/mvp/presenter/SplashPresenter$4;-><init>(Lcom/mh/movie/core/mvp/presenter/SplashPresenter;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V

    .line 268
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public f()V
    .locals 4

    .line 284
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/SplashPresenter;->f:Landroid/app/Application;

    invoke-static {v0}, Lcom/jess/arms/c/a;->d(Landroid/content/Context;)Lcom/jess/arms/b/a/a;

    move-result-object v0

    .line 285
    new-instance v1, Lcom/mh/movie/core/mvp/model/b/g;

    invoke-interface {v0}, Lcom/jess/arms/b/a/a;->c()Lcom/jess/arms/integration/IRepositoryManager;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/mh/movie/core/mvp/model/b/g;-><init>(Lcom/jess/arms/integration/IRepositoryManager;)V

    .line 286
    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/b/g;->g()Lio/reactivex/Observable;

    move-result-object v0

    .line 287
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/mh/movie/core/mvp/presenter/SplashPresenter$6;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/presenter/SplashPresenter;->e:Lme/jessyan/rxerrorhandler/core/RxErrorHandler;

    new-instance v3, Lcom/mh/movie/core/mvp/presenter/SplashPresenter$7;

    invoke-direct {v3, p0}, Lcom/mh/movie/core/mvp/presenter/SplashPresenter$7;-><init>(Lcom/mh/movie/core/mvp/presenter/SplashPresenter;)V

    .line 289
    invoke-virtual {v3}, Lcom/mh/movie/core/mvp/presenter/SplashPresenter$7;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lcom/mh/movie/core/mvp/presenter/SplashPresenter$6;-><init>(Lcom/mh/movie/core/mvp/presenter/SplashPresenter;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V

    .line 288
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public g()V
    .locals 4

    .line 299
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/SplashPresenter;->c:Lcom/jess/arms/mvp/a;

    check-cast v0, Lcom/mh/movie/core/mvp/a/ba$a;

    invoke-interface {v0}, Lcom/mh/movie/core/mvp/a/ba$a;->c()Lio/reactivex/Observable;

    move-result-object v0

    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/SplashPresenter;->f:Landroid/app/Application;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/presenter/SplashPresenter;->d:Lcom/jess/arms/mvp/c;

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/mh/movie/core/mvp/presenter/SplashPresenter;->a(Landroid/content/Context;Lcom/jess/arms/mvp/c;Z)Lio/reactivex/ObservableTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/mh/movie/core/mvp/presenter/SplashPresenter$8;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/presenter/SplashPresenter;->e:Lme/jessyan/rxerrorhandler/core/RxErrorHandler;

    new-instance v3, Lcom/mh/movie/core/mvp/presenter/SplashPresenter$9;

    invoke-direct {v3, p0}, Lcom/mh/movie/core/mvp/presenter/SplashPresenter$9;-><init>(Lcom/mh/movie/core/mvp/presenter/SplashPresenter;)V

    .line 301
    invoke-virtual {v3}, Lcom/mh/movie/core/mvp/presenter/SplashPresenter$9;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lcom/mh/movie/core/mvp/presenter/SplashPresenter$8;-><init>(Lcom/mh/movie/core/mvp/presenter/SplashPresenter;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V

    .line 300
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method
