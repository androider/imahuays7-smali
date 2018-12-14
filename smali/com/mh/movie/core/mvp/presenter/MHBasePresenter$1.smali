.class Lcom/mh/movie/core/mvp/presenter/MHBasePresenter$1;
.super Ljava/lang/Object;
.source "MHBasePresenter.java"

# interfaces
.implements Lio/reactivex/ObservableTransformer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/presenter/MHBasePresenter;->a(Landroid/content/Context;Lcom/jess/arms/mvp/c;Ljava/lang/String;Z)Lio/reactivex/ObservableTransformer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/ObservableTransformer<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/jess/arms/mvp/c;

.field final synthetic d:Lcom/mh/movie/core/mvp/presenter/MHBasePresenter;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/presenter/MHBasePresenter;ZLjava/lang/String;Lcom/jess/arms/mvp/c;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/mh/movie/core/mvp/presenter/MHBasePresenter$1;->d:Lcom/mh/movie/core/mvp/presenter/MHBasePresenter;

    iput-boolean p2, p0, Lcom/mh/movie/core/mvp/presenter/MHBasePresenter$1;->a:Z

    iput-object p3, p0, Lcom/mh/movie/core/mvp/presenter/MHBasePresenter$1;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/mh/movie/core/mvp/presenter/MHBasePresenter$1;->c:Lcom/jess/arms/mvp/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static final synthetic a(ZLcom/jess/arms/mvp/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 63
    invoke-interface {p1}, Lcom/jess/arms/mvp/c;->b()V

    :cond_0
    return-void
.end method

.method static final synthetic a(ZLjava/lang/String;Lcom/jess/arms/mvp/c;Lio/reactivex/disposables/Disposable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 51
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 52
    invoke-interface {p2}, Lcom/jess/arms/mvp/c;->e_()V

    goto :goto_0

    .line 54
    :cond_0
    invoke-interface {p2, p1}, Lcom/jess/arms/mvp/c;->c_(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public apply(Lio/reactivex/Observable;)Lio/reactivex/ObservableSource;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observable<",
            "TT;>;)",
            "Lio/reactivex/ObservableSource<",
            "TT;>;"
        }
    .end annotation

    .line 46
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lme/jessyan/rxerrorhandler/handler/RetryWithDelay;

    const/4 v1, 0x3

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lme/jessyan/rxerrorhandler/handler/RetryWithDelay;-><init>(II)V

    .line 47
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->retryWhen(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/mh/movie/core/mvp/presenter/ax;

    iget-boolean v1, p0, Lcom/mh/movie/core/mvp/presenter/MHBasePresenter$1;->a:Z

    iget-object v2, p0, Lcom/mh/movie/core/mvp/presenter/MHBasePresenter$1;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/mh/movie/core/mvp/presenter/MHBasePresenter$1;->c:Lcom/jess/arms/mvp/c;

    invoke-direct {v0, v1, v2, v3}, Lcom/mh/movie/core/mvp/presenter/ax;-><init>(ZLjava/lang/String;Lcom/jess/arms/mvp/c;)V

    .line 48
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->doOnSubscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object p1

    .line 59
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/mh/movie/core/mvp/presenter/ay;

    iget-boolean v1, p0, Lcom/mh/movie/core/mvp/presenter/MHBasePresenter$1;->a:Z

    iget-object v2, p0, Lcom/mh/movie/core/mvp/presenter/MHBasePresenter$1;->c:Lcom/jess/arms/mvp/c;

    invoke-direct {v0, v1, v2}, Lcom/mh/movie/core/mvp/presenter/ay;-><init>(ZLcom/jess/arms/mvp/c;)V

    .line 60
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->doFinally(Lio/reactivex/functions/Action;)Lio/reactivex/Observable;

    move-result-object p1

    iget-object v0, p0, Lcom/mh/movie/core/mvp/presenter/MHBasePresenter$1;->c:Lcom/jess/arms/mvp/c;

    .line 65
    invoke-static {v0}, Lcom/jess/arms/c/h;->a(Lcom/jess/arms/mvp/c;)Lcom/trello/rxlifecycle2/LifecycleTransformer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    .line 73
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
