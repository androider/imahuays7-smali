.class public Lcom/jess/arms/c/h;
.super Ljava/lang/Object;
.source "RxLifecycleUtils.java"


# direct methods
.method public static a(Lcom/jess/arms/integration/lifecycle/Lifecycleable;)Lcom/trello/rxlifecycle2/LifecycleTransformer;
    .locals 1
    .param p0    # Lcom/jess/arms/integration/lifecycle/Lifecycleable;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/jess/arms/integration/lifecycle/Lifecycleable;",
            ")",
            "Lcom/trello/rxlifecycle2/LifecycleTransformer<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "lifecycleable == null"

    .line 106
    invoke-static {p0, v0}, Lcom/jess/arms/c/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    instance-of v0, p0, Lcom/jess/arms/integration/lifecycle/ActivityLifecycleable;

    if-eqz v0, :cond_0

    .line 108
    check-cast p0, Lcom/jess/arms/integration/lifecycle/ActivityLifecycleable;

    invoke-interface {p0}, Lcom/jess/arms/integration/lifecycle/ActivityLifecycleable;->provideLifecycleSubject()Lio/reactivex/subjects/Subject;

    move-result-object p0

    invoke-static {p0}, Lcom/trello/rxlifecycle2/android/RxLifecycleAndroid;->bindActivity(Lio/reactivex/Observable;)Lcom/trello/rxlifecycle2/LifecycleTransformer;

    move-result-object p0

    return-object p0

    .line 109
    :cond_0
    instance-of v0, p0, Lcom/jess/arms/integration/lifecycle/FragmentLifecycleable;

    if-eqz v0, :cond_1

    .line 110
    check-cast p0, Lcom/jess/arms/integration/lifecycle/FragmentLifecycleable;

    invoke-interface {p0}, Lcom/jess/arms/integration/lifecycle/FragmentLifecycleable;->provideLifecycleSubject()Lio/reactivex/subjects/Subject;

    move-result-object p0

    invoke-static {p0}, Lcom/trello/rxlifecycle2/android/RxLifecycleAndroid;->bindFragment(Lio/reactivex/Observable;)Lcom/trello/rxlifecycle2/LifecycleTransformer;

    move-result-object p0

    return-object p0

    .line 112
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Lifecycleable not match"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Lcom/jess/arms/mvp/c;)Lcom/trello/rxlifecycle2/LifecycleTransformer;
    .locals 1
    .param p0    # Lcom/jess/arms/mvp/c;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/jess/arms/mvp/c;",
            ")",
            "Lcom/trello/rxlifecycle2/LifecycleTransformer<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "view == null"

    .line 97
    invoke-static {p0, v0}, Lcom/jess/arms/c/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    instance-of v0, p0, Lcom/jess/arms/integration/lifecycle/Lifecycleable;

    if-eqz v0, :cond_0

    .line 99
    check-cast p0, Lcom/jess/arms/integration/lifecycle/Lifecycleable;

    invoke-static {p0}, Lcom/jess/arms/c/h;->a(Lcom/jess/arms/integration/lifecycle/Lifecycleable;)Lcom/trello/rxlifecycle2/LifecycleTransformer;

    move-result-object p0

    return-object p0

    .line 101
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "view isn\'t Lifecycleable"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
