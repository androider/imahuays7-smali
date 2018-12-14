.class public Lcom/mh/movie/core/mvp/presenter/CommentDetailPresenter;
.super Lcom/mh/movie/core/mvp/presenter/MHBasePresenter;
.source "CommentDetailPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mh/movie/core/mvp/presenter/MHBasePresenter<",
        "Lcom/mh/movie/core/mvp/a/j$a;",
        "Lcom/mh/movie/core/mvp/a/j$b;",
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

.field i:I


# direct methods
.method public constructor <init>(Lcom/mh/movie/core/mvp/a/j$a;Lcom/mh/movie/core/mvp/a/j$b;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/mh/movie/core/mvp/presenter/MHBasePresenter;-><init>(Lcom/jess/arms/mvp/a;Lcom/jess/arms/mvp/c;)V

    const/4 p1, 0x1

    .line 38
    iput p1, p0, Lcom/mh/movie/core/mvp/presenter/CommentDetailPresenter;->i:I

    return-void
.end method

.method static synthetic a(Lcom/mh/movie/core/mvp/presenter/CommentDetailPresenter;)Lcom/jess/arms/mvp/c;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/mh/movie/core/mvp/presenter/CommentDetailPresenter;->d:Lcom/jess/arms/mvp/c;

    return-object p0
.end method

.method static synthetic b(Lcom/mh/movie/core/mvp/presenter/CommentDetailPresenter;)Lcom/jess/arms/mvp/c;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/mh/movie/core/mvp/presenter/CommentDetailPresenter;->d:Lcom/jess/arms/mvp/c;

    return-object p0
.end method

.method static synthetic c(Lcom/mh/movie/core/mvp/presenter/CommentDetailPresenter;)Lcom/jess/arms/mvp/c;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/mh/movie/core/mvp/presenter/CommentDetailPresenter;->d:Lcom/jess/arms/mvp/c;

    return-object p0
.end method

.method static synthetic d(Lcom/mh/movie/core/mvp/presenter/CommentDetailPresenter;)Lcom/jess/arms/mvp/c;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/mh/movie/core/mvp/presenter/CommentDetailPresenter;->d:Lcom/jess/arms/mvp/c;

    return-object p0
.end method

.method static synthetic e(Lcom/mh/movie/core/mvp/presenter/CommentDetailPresenter;)Lcom/jess/arms/mvp/c;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/mh/movie/core/mvp/presenter/CommentDetailPresenter;->d:Lcom/jess/arms/mvp/c;

    return-object p0
.end method

.method static synthetic f(Lcom/mh/movie/core/mvp/presenter/CommentDetailPresenter;)Lcom/jess/arms/mvp/c;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/mh/movie/core/mvp/presenter/CommentDetailPresenter;->d:Lcom/jess/arms/mvp/c;

    return-object p0
.end method


# virtual methods
.method public a(III)V
    .locals 9

    .line 82
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/CommentDetailPresenter;->c:Lcom/jess/arms/mvp/a;

    move-object v1, v0

    check-cast v1, Lcom/mh/movie/core/mvp/a/j$a;

    iget v4, p0, Lcom/mh/movie/core/mvp/presenter/CommentDetailPresenter;->i:I

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/16 v5, 0xa

    const/4 v8, 0x1

    move v2, p1

    move v3, p2

    move v7, p3

    invoke-interface/range {v1 .. v8}, Lcom/mh/movie/core/mvp/a/j$a;->a(IIIILjava/util/ArrayList;II)Lio/reactivex/Observable;

    move-result-object p1

    iget-object p2, p0, Lcom/mh/movie/core/mvp/presenter/CommentDetailPresenter;->f:Landroid/app/Application;

    iget-object p3, p0, Lcom/mh/movie/core/mvp/presenter/CommentDetailPresenter;->d:Lcom/jess/arms/mvp/c;

    const/4 v0, 0x0

    .line 83
    invoke-virtual {p0, p2, p3, v0}, Lcom/mh/movie/core/mvp/presenter/CommentDetailPresenter;->a(Landroid/content/Context;Lcom/jess/arms/mvp/c;Z)Lio/reactivex/ObservableTransformer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/mh/movie/core/mvp/presenter/CommentDetailPresenter$3;

    iget-object p3, p0, Lcom/mh/movie/core/mvp/presenter/CommentDetailPresenter;->e:Lme/jessyan/rxerrorhandler/core/RxErrorHandler;

    new-instance v0, Lcom/mh/movie/core/mvp/presenter/CommentDetailPresenter$4;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/mvp/presenter/CommentDetailPresenter$4;-><init>(Lcom/mh/movie/core/mvp/presenter/CommentDetailPresenter;)V

    .line 85
    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/presenter/CommentDetailPresenter$4;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-direct {p2, p0, p3, v0}, Lcom/mh/movie/core/mvp/presenter/CommentDetailPresenter$3;-><init>(Lcom/mh/movie/core/mvp/presenter/CommentDetailPresenter;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V

    .line 84
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public a(IIILcom/mh/movie/core/mvp/model/entity/response/CommentResponse;)V
    .locals 9

    .line 46
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/CommentDetailPresenter;->c:Lcom/jess/arms/mvp/a;

    move-object v1, v0

    check-cast v1, Lcom/mh/movie/core/mvp/a/j$a;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x1

    const/16 v5, 0xa

    const/4 v8, 0x1

    move v2, p1

    move v3, p2

    move v7, p3

    invoke-interface/range {v1 .. v8}, Lcom/mh/movie/core/mvp/a/j$a;->a(IIIILjava/util/ArrayList;II)Lio/reactivex/Observable;

    move-result-object p1

    iget-object p2, p0, Lcom/mh/movie/core/mvp/presenter/CommentDetailPresenter;->f:Landroid/app/Application;

    iget-object p3, p0, Lcom/mh/movie/core/mvp/presenter/CommentDetailPresenter;->d:Lcom/jess/arms/mvp/c;

    const/4 v0, 0x0

    .line 47
    invoke-virtual {p0, p2, p3, v0}, Lcom/mh/movie/core/mvp/presenter/CommentDetailPresenter;->a(Landroid/content/Context;Lcom/jess/arms/mvp/c;Z)Lio/reactivex/ObservableTransformer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/mh/movie/core/mvp/presenter/CommentDetailPresenter$1;

    iget-object p3, p0, Lcom/mh/movie/core/mvp/presenter/CommentDetailPresenter;->e:Lme/jessyan/rxerrorhandler/core/RxErrorHandler;

    new-instance v0, Lcom/mh/movie/core/mvp/presenter/CommentDetailPresenter$2;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/mvp/presenter/CommentDetailPresenter$2;-><init>(Lcom/mh/movie/core/mvp/presenter/CommentDetailPresenter;)V

    .line 49
    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/presenter/CommentDetailPresenter$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-direct {p2, p0, p3, v0, p4}, Lcom/mh/movie/core/mvp/presenter/CommentDetailPresenter$1;-><init>(Lcom/mh/movie/core/mvp/presenter/CommentDetailPresenter;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;Lcom/mh/movie/core/mvp/model/entity/response/CommentResponse;)V

    .line 48
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public a(ILjava/lang/String;IIII)V
    .locals 1

    .line 112
    new-instance v0, Lcom/mh/movie/core/mvp/model/entity/request/CommentRequest;

    invoke-direct {v0}, Lcom/mh/movie/core/mvp/model/entity/request/CommentRequest;-><init>()V

    .line 113
    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/model/entity/request/CommentRequest;->setChildId(I)V

    .line 114
    invoke-virtual {v0, p2}, Lcom/mh/movie/core/mvp/model/entity/request/CommentRequest;->setContent(Ljava/lang/String;)V

    .line 115
    invoke-virtual {v0, p3}, Lcom/mh/movie/core/mvp/model/entity/request/CommentRequest;->setFlag(I)V

    .line 116
    invoke-virtual {v0, p4}, Lcom/mh/movie/core/mvp/model/entity/request/CommentRequest;->setParentId(I)V

    .line 117
    invoke-virtual {v0, p5}, Lcom/mh/movie/core/mvp/model/entity/request/CommentRequest;->setVideoId(I)V

    .line 118
    invoke-virtual {v0, p6}, Lcom/mh/movie/core/mvp/model/entity/request/CommentRequest;->setVideoInfoId(I)V

    .line 119
    iget-object p1, p0, Lcom/mh/movie/core/mvp/presenter/CommentDetailPresenter;->c:Lcom/jess/arms/mvp/a;

    check-cast p1, Lcom/mh/movie/core/mvp/a/j$a;

    invoke-interface {p1, v0}, Lcom/mh/movie/core/mvp/a/j$a;->a(Lcom/mh/movie/core/mvp/model/entity/request/CommentRequest;)Lio/reactivex/Observable;

    move-result-object p1

    iget-object p2, p0, Lcom/mh/movie/core/mvp/presenter/CommentDetailPresenter;->f:Landroid/app/Application;

    iget-object p4, p0, Lcom/mh/movie/core/mvp/presenter/CommentDetailPresenter;->d:Lcom/jess/arms/mvp/c;

    const/4 p5, 0x0

    invoke-virtual {p0, p2, p4, p5}, Lcom/mh/movie/core/mvp/presenter/CommentDetailPresenter;->a(Landroid/content/Context;Lcom/jess/arms/mvp/c;Z)Lio/reactivex/ObservableTransformer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/mh/movie/core/mvp/presenter/CommentDetailPresenter$7;

    iget-object p4, p0, Lcom/mh/movie/core/mvp/presenter/CommentDetailPresenter;->e:Lme/jessyan/rxerrorhandler/core/RxErrorHandler;

    new-instance p5, Lcom/mh/movie/core/mvp/presenter/CommentDetailPresenter$8;

    invoke-direct {p5, p0}, Lcom/mh/movie/core/mvp/presenter/CommentDetailPresenter$8;-><init>(Lcom/mh/movie/core/mvp/presenter/CommentDetailPresenter;)V

    .line 120
    invoke-virtual {p5}, Lcom/mh/movie/core/mvp/presenter/CommentDetailPresenter$8;->getType()Ljava/lang/reflect/Type;

    move-result-object p5

    invoke-direct {p2, p0, p4, p5, p3}, Lcom/mh/movie/core/mvp/presenter/CommentDetailPresenter$7;-><init>(Lcom/mh/movie/core/mvp/presenter/CommentDetailPresenter;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;I)V

    .line 119
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public b()V
    .locals 1

    .line 74
    invoke-super {p0}, Lcom/mh/movie/core/mvp/presenter/MHBasePresenter;->b()V

    const/4 v0, 0x0

    .line 75
    iput-object v0, p0, Lcom/mh/movie/core/mvp/presenter/CommentDetailPresenter;->e:Lme/jessyan/rxerrorhandler/core/RxErrorHandler;

    .line 76
    iput-object v0, p0, Lcom/mh/movie/core/mvp/presenter/CommentDetailPresenter;->h:Lcom/jess/arms/integration/AppManager;

    .line 77
    iput-object v0, p0, Lcom/mh/movie/core/mvp/presenter/CommentDetailPresenter;->g:Lcom/jess/arms/http/imageloader/c;

    .line 78
    iput-object v0, p0, Lcom/mh/movie/core/mvp/presenter/CommentDetailPresenter;->f:Landroid/app/Application;

    return-void
.end method

.method public b(III)V
    .locals 7

    .line 98
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/CommentDetailPresenter;->c:Lcom/jess/arms/mvp/a;

    check-cast v0, Lcom/mh/movie/core/mvp/a/j$a;

    invoke-interface {v0, p3}, Lcom/mh/movie/core/mvp/a/j$a;->a(I)Lio/reactivex/Observable;

    move-result-object p3

    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/CommentDetailPresenter;->f:Landroid/app/Application;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/CommentDetailPresenter;->d:Lcom/jess/arms/mvp/c;

    const/4 v2, 0x0

    .line 99
    invoke-virtual {p0, v0, v1, v2}, Lcom/mh/movie/core/mvp/presenter/CommentDetailPresenter;->a(Landroid/content/Context;Lcom/jess/arms/mvp/c;Z)Lio/reactivex/ObservableTransformer;

    move-result-object v0

    invoke-virtual {p3, v0}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p3

    new-instance v6, Lcom/mh/movie/core/mvp/presenter/CommentDetailPresenter$5;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/presenter/CommentDetailPresenter;->e:Lme/jessyan/rxerrorhandler/core/RxErrorHandler;

    new-instance v0, Lcom/mh/movie/core/mvp/presenter/CommentDetailPresenter$6;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/mvp/presenter/CommentDetailPresenter$6;-><init>(Lcom/mh/movie/core/mvp/presenter/CommentDetailPresenter;)V

    .line 101
    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/presenter/CommentDetailPresenter$6;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    move-object v0, v6

    move-object v1, p0

    move v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/mh/movie/core/mvp/presenter/CommentDetailPresenter$5;-><init>(Lcom/mh/movie/core/mvp/presenter/CommentDetailPresenter;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;II)V

    .line 100
    invoke-virtual {p3, v6}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method
