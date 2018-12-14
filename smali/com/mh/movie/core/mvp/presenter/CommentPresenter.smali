.class public Lcom/mh/movie/core/mvp/presenter/CommentPresenter;
.super Lcom/mh/movie/core/mvp/presenter/MHBasePresenter;
.source "CommentPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mh/movie/core/mvp/presenter/MHBasePresenter<",
        "Lcom/mh/movie/core/mvp/a/i$a;",
        "Lcom/mh/movie/core/mvp/a/i$b;",
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
.method public constructor <init>(Lcom/mh/movie/core/mvp/a/i$a;Lcom/mh/movie/core/mvp/a/i$b;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/mh/movie/core/mvp/presenter/MHBasePresenter;-><init>(Lcom/jess/arms/mvp/a;Lcom/jess/arms/mvp/c;)V

    const/4 p1, 0x1

    .line 39
    iput p1, p0, Lcom/mh/movie/core/mvp/presenter/CommentPresenter;->i:I

    return-void
.end method

.method static synthetic a(Lcom/mh/movie/core/mvp/presenter/CommentPresenter;)Lcom/jess/arms/mvp/c;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/mh/movie/core/mvp/presenter/CommentPresenter;->d:Lcom/jess/arms/mvp/c;

    return-object p0
.end method

.method static synthetic b(Lcom/mh/movie/core/mvp/presenter/CommentPresenter;)Lcom/jess/arms/mvp/c;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/mh/movie/core/mvp/presenter/CommentPresenter;->d:Lcom/jess/arms/mvp/c;

    return-object p0
.end method

.method static synthetic c(Lcom/mh/movie/core/mvp/presenter/CommentPresenter;)Lcom/jess/arms/mvp/c;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/mh/movie/core/mvp/presenter/CommentPresenter;->d:Lcom/jess/arms/mvp/c;

    return-object p0
.end method

.method static synthetic d(Lcom/mh/movie/core/mvp/presenter/CommentPresenter;)Lcom/jess/arms/mvp/c;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/mh/movie/core/mvp/presenter/CommentPresenter;->d:Lcom/jess/arms/mvp/c;

    return-object p0
.end method


# virtual methods
.method public a(III)V
    .locals 7

    .line 57
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/CommentPresenter;->c:Lcom/jess/arms/mvp/a;

    check-cast v0, Lcom/mh/movie/core/mvp/a/i$a;

    invoke-interface {v0, p3}, Lcom/mh/movie/core/mvp/a/i$a;->a(I)Lio/reactivex/Observable;

    move-result-object p3

    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/CommentPresenter;->f:Landroid/app/Application;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/presenter/CommentPresenter;->d:Lcom/jess/arms/mvp/c;

    const/4 v2, 0x0

    .line 58
    invoke-virtual {p0, v0, v1, v2}, Lcom/mh/movie/core/mvp/presenter/CommentPresenter;->a(Landroid/content/Context;Lcom/jess/arms/mvp/c;Z)Lio/reactivex/ObservableTransformer;

    move-result-object v0

    invoke-virtual {p3, v0}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p3

    new-instance v6, Lcom/mh/movie/core/mvp/presenter/CommentPresenter$1;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/presenter/CommentPresenter;->e:Lme/jessyan/rxerrorhandler/core/RxErrorHandler;

    new-instance v0, Lcom/mh/movie/core/mvp/presenter/CommentPresenter$2;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/mvp/presenter/CommentPresenter$2;-><init>(Lcom/mh/movie/core/mvp/presenter/CommentPresenter;)V

    .line 60
    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/presenter/CommentPresenter$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    move-object v0, v6

    move-object v1, p0

    move v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/mh/movie/core/mvp/presenter/CommentPresenter$1;-><init>(Lcom/mh/movie/core/mvp/presenter/CommentPresenter;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;II)V

    .line 59
    invoke-virtual {p3, v6}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public a(IIILcom/mh/movie/core/mvp/model/entity/response/CommentResponse;)V
    .locals 9

    .line 69
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/CommentPresenter;->c:Lcom/jess/arms/mvp/a;

    move-object v1, v0

    check-cast v1, Lcom/mh/movie/core/mvp/a/i$a;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x1

    const/16 v5, 0xa

    const/4 v8, 0x1

    move v2, p1

    move v3, p2

    move v7, p3

    invoke-interface/range {v1 .. v8}, Lcom/mh/movie/core/mvp/a/i$a;->a(IIIILjava/util/ArrayList;II)Lio/reactivex/Observable;

    move-result-object p1

    iget-object p2, p0, Lcom/mh/movie/core/mvp/presenter/CommentPresenter;->f:Landroid/app/Application;

    iget-object p3, p0, Lcom/mh/movie/core/mvp/presenter/CommentPresenter;->d:Lcom/jess/arms/mvp/c;

    const/4 v0, 0x0

    .line 70
    invoke-virtual {p0, p2, p3, v0}, Lcom/mh/movie/core/mvp/presenter/CommentPresenter;->a(Landroid/content/Context;Lcom/jess/arms/mvp/c;Z)Lio/reactivex/ObservableTransformer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/mh/movie/core/mvp/presenter/CommentPresenter$3;

    iget-object p3, p0, Lcom/mh/movie/core/mvp/presenter/CommentPresenter;->e:Lme/jessyan/rxerrorhandler/core/RxErrorHandler;

    new-instance v0, Lcom/mh/movie/core/mvp/presenter/CommentPresenter$4;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/mvp/presenter/CommentPresenter$4;-><init>(Lcom/mh/movie/core/mvp/presenter/CommentPresenter;)V

    .line 72
    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/presenter/CommentPresenter$4;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-direct {p2, p0, p3, v0, p4}, Lcom/mh/movie/core/mvp/presenter/CommentPresenter$3;-><init>(Lcom/mh/movie/core/mvp/presenter/CommentPresenter;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;Lcom/mh/movie/core/mvp/model/entity/response/CommentResponse;)V

    .line 71
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public a(ILjava/lang/String;IIII)V
    .locals 1

    .line 103
    new-instance v0, Lcom/mh/movie/core/mvp/model/entity/request/CommentRequest;

    invoke-direct {v0}, Lcom/mh/movie/core/mvp/model/entity/request/CommentRequest;-><init>()V

    .line 104
    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/model/entity/request/CommentRequest;->setChildId(I)V

    .line 105
    invoke-virtual {v0, p2}, Lcom/mh/movie/core/mvp/model/entity/request/CommentRequest;->setContent(Ljava/lang/String;)V

    .line 106
    invoke-virtual {v0, p3}, Lcom/mh/movie/core/mvp/model/entity/request/CommentRequest;->setFlag(I)V

    .line 107
    invoke-virtual {v0, p4}, Lcom/mh/movie/core/mvp/model/entity/request/CommentRequest;->setParentId(I)V

    .line 108
    invoke-virtual {v0, p5}, Lcom/mh/movie/core/mvp/model/entity/request/CommentRequest;->setVideoId(I)V

    .line 109
    invoke-virtual {v0, p6}, Lcom/mh/movie/core/mvp/model/entity/request/CommentRequest;->setVideoInfoId(I)V

    .line 110
    iget-object p1, p0, Lcom/mh/movie/core/mvp/presenter/CommentPresenter;->c:Lcom/jess/arms/mvp/a;

    check-cast p1, Lcom/mh/movie/core/mvp/a/i$a;

    invoke-interface {p1, v0}, Lcom/mh/movie/core/mvp/a/i$a;->a(Lcom/mh/movie/core/mvp/model/entity/request/CommentRequest;)Lio/reactivex/Observable;

    move-result-object p1

    iget-object p2, p0, Lcom/mh/movie/core/mvp/presenter/CommentPresenter;->f:Landroid/app/Application;

    iget-object p4, p0, Lcom/mh/movie/core/mvp/presenter/CommentPresenter;->d:Lcom/jess/arms/mvp/c;

    const/4 p5, 0x0

    invoke-virtual {p0, p2, p4, p5}, Lcom/mh/movie/core/mvp/presenter/CommentPresenter;->a(Landroid/content/Context;Lcom/jess/arms/mvp/c;Z)Lio/reactivex/ObservableTransformer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/mh/movie/core/mvp/presenter/CommentPresenter$7;

    iget-object p4, p0, Lcom/mh/movie/core/mvp/presenter/CommentPresenter;->e:Lme/jessyan/rxerrorhandler/core/RxErrorHandler;

    new-instance p5, Lcom/mh/movie/core/mvp/presenter/CommentPresenter$8;

    invoke-direct {p5, p0}, Lcom/mh/movie/core/mvp/presenter/CommentPresenter$8;-><init>(Lcom/mh/movie/core/mvp/presenter/CommentPresenter;)V

    .line 111
    invoke-virtual {p5}, Lcom/mh/movie/core/mvp/presenter/CommentPresenter$8;->getType()Ljava/lang/reflect/Type;

    move-result-object p5

    invoke-direct {p2, p0, p4, p5, p3}, Lcom/mh/movie/core/mvp/presenter/CommentPresenter$7;-><init>(Lcom/mh/movie/core/mvp/presenter/CommentPresenter;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;I)V

    .line 110
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public b()V
    .locals 1

    .line 48
    invoke-super {p0}, Lcom/mh/movie/core/mvp/presenter/MHBasePresenter;->b()V

    const/4 v0, 0x0

    .line 49
    iput-object v0, p0, Lcom/mh/movie/core/mvp/presenter/CommentPresenter;->e:Lme/jessyan/rxerrorhandler/core/RxErrorHandler;

    .line 50
    iput-object v0, p0, Lcom/mh/movie/core/mvp/presenter/CommentPresenter;->h:Lcom/jess/arms/integration/AppManager;

    .line 51
    iput-object v0, p0, Lcom/mh/movie/core/mvp/presenter/CommentPresenter;->g:Lcom/jess/arms/http/imageloader/c;

    .line 52
    iput-object v0, p0, Lcom/mh/movie/core/mvp/presenter/CommentPresenter;->f:Landroid/app/Application;

    return-void
.end method

.method public b(III)V
    .locals 9

    .line 86
    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/CommentPresenter;->c:Lcom/jess/arms/mvp/a;

    move-object v1, v0

    check-cast v1, Lcom/mh/movie/core/mvp/a/i$a;

    iget v4, p0, Lcom/mh/movie/core/mvp/presenter/CommentPresenter;->i:I

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/16 v5, 0xa

    const/4 v8, 0x1

    move v2, p1

    move v3, p2

    move v7, p3

    invoke-interface/range {v1 .. v8}, Lcom/mh/movie/core/mvp/a/i$a;->a(IIIILjava/util/ArrayList;II)Lio/reactivex/Observable;

    move-result-object p1

    iget-object p2, p0, Lcom/mh/movie/core/mvp/presenter/CommentPresenter;->f:Landroid/app/Application;

    iget-object p3, p0, Lcom/mh/movie/core/mvp/presenter/CommentPresenter;->d:Lcom/jess/arms/mvp/c;

    const/4 v0, 0x0

    .line 87
    invoke-virtual {p0, p2, p3, v0}, Lcom/mh/movie/core/mvp/presenter/CommentPresenter;->a(Landroid/content/Context;Lcom/jess/arms/mvp/c;Z)Lio/reactivex/ObservableTransformer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/mh/movie/core/mvp/presenter/CommentPresenter$5;

    iget-object p3, p0, Lcom/mh/movie/core/mvp/presenter/CommentPresenter;->e:Lme/jessyan/rxerrorhandler/core/RxErrorHandler;

    new-instance v0, Lcom/mh/movie/core/mvp/presenter/CommentPresenter$6;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/mvp/presenter/CommentPresenter$6;-><init>(Lcom/mh/movie/core/mvp/presenter/CommentPresenter;)V

    .line 89
    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/presenter/CommentPresenter$6;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-direct {p2, p0, p3, v0}, Lcom/mh/movie/core/mvp/presenter/CommentPresenter$5;-><init>(Lcom/mh/movie/core/mvp/presenter/CommentPresenter;Lme/jessyan/rxerrorhandler/core/RxErrorHandler;Ljava/lang/reflect/Type;)V

    .line 88
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method
