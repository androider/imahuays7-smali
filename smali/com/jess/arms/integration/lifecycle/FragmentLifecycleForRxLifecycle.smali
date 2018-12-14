.class public Lcom/jess/arms/integration/lifecycle/FragmentLifecycleForRxLifecycle;
.super Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;
.source "FragmentLifecycleForRxLifecycle.java"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 45
    invoke-direct {p0}, Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;-><init>()V

    return-void
.end method

.method private obtainSubject(Landroid/support/v4/app/Fragment;)Lio/reactivex/subjects/Subject;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/Fragment;",
            ")",
            "Lio/reactivex/subjects/Subject<",
            "Lcom/trello/rxlifecycle2/android/FragmentEvent;",
            ">;"
        }
    .end annotation

    .line 121
    check-cast p1, Lcom/jess/arms/integration/lifecycle/FragmentLifecycleable;

    invoke-interface {p1}, Lcom/jess/arms/integration/lifecycle/FragmentLifecycleable;->provideLifecycleSubject()Lio/reactivex/subjects/Subject;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public onFragmentAttached(Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/Fragment;Landroid/content/Context;)V
    .locals 0

    .line 50
    instance-of p1, p2, Lcom/jess/arms/integration/lifecycle/FragmentLifecycleable;

    if-eqz p1, :cond_0

    .line 51
    invoke-direct {p0, p2}, Lcom/jess/arms/integration/lifecycle/FragmentLifecycleForRxLifecycle;->obtainSubject(Landroid/support/v4/app/Fragment;)Lio/reactivex/subjects/Subject;

    move-result-object p1

    sget-object p2, Lcom/trello/rxlifecycle2/android/FragmentEvent;->ATTACH:Lcom/trello/rxlifecycle2/android/FragmentEvent;

    invoke-virtual {p1, p2}, Lio/reactivex/subjects/Subject;->onNext(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onFragmentCreated(Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V
    .locals 0

    .line 58
    instance-of p1, p2, Lcom/jess/arms/integration/lifecycle/FragmentLifecycleable;

    if-eqz p1, :cond_0

    .line 59
    invoke-direct {p0, p2}, Lcom/jess/arms/integration/lifecycle/FragmentLifecycleForRxLifecycle;->obtainSubject(Landroid/support/v4/app/Fragment;)Lio/reactivex/subjects/Subject;

    move-result-object p1

    sget-object p2, Lcom/trello/rxlifecycle2/android/FragmentEvent;->CREATE:Lcom/trello/rxlifecycle2/android/FragmentEvent;

    invoke-virtual {p1, p2}, Lio/reactivex/subjects/Subject;->onNext(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onFragmentDestroyed(Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/Fragment;)V
    .locals 0

    .line 108
    instance-of p1, p2, Lcom/jess/arms/integration/lifecycle/FragmentLifecycleable;

    if-eqz p1, :cond_0

    .line 109
    invoke-direct {p0, p2}, Lcom/jess/arms/integration/lifecycle/FragmentLifecycleForRxLifecycle;->obtainSubject(Landroid/support/v4/app/Fragment;)Lio/reactivex/subjects/Subject;

    move-result-object p1

    sget-object p2, Lcom/trello/rxlifecycle2/android/FragmentEvent;->DESTROY:Lcom/trello/rxlifecycle2/android/FragmentEvent;

    invoke-virtual {p1, p2}, Lio/reactivex/subjects/Subject;->onNext(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onFragmentDetached(Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/Fragment;)V
    .locals 0

    .line 115
    instance-of p1, p2, Lcom/jess/arms/integration/lifecycle/FragmentLifecycleable;

    if-eqz p1, :cond_0

    .line 116
    invoke-direct {p0, p2}, Lcom/jess/arms/integration/lifecycle/FragmentLifecycleForRxLifecycle;->obtainSubject(Landroid/support/v4/app/Fragment;)Lio/reactivex/subjects/Subject;

    move-result-object p1

    sget-object p2, Lcom/trello/rxlifecycle2/android/FragmentEvent;->DETACH:Lcom/trello/rxlifecycle2/android/FragmentEvent;

    invoke-virtual {p1, p2}, Lio/reactivex/subjects/Subject;->onNext(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onFragmentPaused(Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/Fragment;)V
    .locals 0

    .line 87
    instance-of p1, p2, Lcom/jess/arms/integration/lifecycle/FragmentLifecycleable;

    if-eqz p1, :cond_0

    .line 88
    invoke-direct {p0, p2}, Lcom/jess/arms/integration/lifecycle/FragmentLifecycleForRxLifecycle;->obtainSubject(Landroid/support/v4/app/Fragment;)Lio/reactivex/subjects/Subject;

    move-result-object p1

    sget-object p2, Lcom/trello/rxlifecycle2/android/FragmentEvent;->PAUSE:Lcom/trello/rxlifecycle2/android/FragmentEvent;

    invoke-virtual {p1, p2}, Lio/reactivex/subjects/Subject;->onNext(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onFragmentResumed(Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/Fragment;)V
    .locals 0

    .line 80
    instance-of p1, p2, Lcom/jess/arms/integration/lifecycle/FragmentLifecycleable;

    if-eqz p1, :cond_0

    .line 81
    invoke-direct {p0, p2}, Lcom/jess/arms/integration/lifecycle/FragmentLifecycleForRxLifecycle;->obtainSubject(Landroid/support/v4/app/Fragment;)Lio/reactivex/subjects/Subject;

    move-result-object p1

    sget-object p2, Lcom/trello/rxlifecycle2/android/FragmentEvent;->RESUME:Lcom/trello/rxlifecycle2/android/FragmentEvent;

    invoke-virtual {p1, p2}, Lio/reactivex/subjects/Subject;->onNext(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onFragmentStarted(Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/Fragment;)V
    .locals 0

    .line 73
    instance-of p1, p2, Lcom/jess/arms/integration/lifecycle/FragmentLifecycleable;

    if-eqz p1, :cond_0

    .line 74
    invoke-direct {p0, p2}, Lcom/jess/arms/integration/lifecycle/FragmentLifecycleForRxLifecycle;->obtainSubject(Landroid/support/v4/app/Fragment;)Lio/reactivex/subjects/Subject;

    move-result-object p1

    sget-object p2, Lcom/trello/rxlifecycle2/android/FragmentEvent;->START:Lcom/trello/rxlifecycle2/android/FragmentEvent;

    invoke-virtual {p1, p2}, Lio/reactivex/subjects/Subject;->onNext(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onFragmentStopped(Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/Fragment;)V
    .locals 0

    .line 94
    instance-of p1, p2, Lcom/jess/arms/integration/lifecycle/FragmentLifecycleable;

    if-eqz p1, :cond_0

    .line 95
    invoke-direct {p0, p2}, Lcom/jess/arms/integration/lifecycle/FragmentLifecycleForRxLifecycle;->obtainSubject(Landroid/support/v4/app/Fragment;)Lio/reactivex/subjects/Subject;

    move-result-object p1

    sget-object p2, Lcom/trello/rxlifecycle2/android/FragmentEvent;->STOP:Lcom/trello/rxlifecycle2/android/FragmentEvent;

    invoke-virtual {p1, p2}, Lio/reactivex/subjects/Subject;->onNext(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onFragmentViewCreated(Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/Fragment;Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 66
    instance-of p1, p2, Lcom/jess/arms/integration/lifecycle/FragmentLifecycleable;

    if-eqz p1, :cond_0

    .line 67
    invoke-direct {p0, p2}, Lcom/jess/arms/integration/lifecycle/FragmentLifecycleForRxLifecycle;->obtainSubject(Landroid/support/v4/app/Fragment;)Lio/reactivex/subjects/Subject;

    move-result-object p1

    sget-object p2, Lcom/trello/rxlifecycle2/android/FragmentEvent;->CREATE_VIEW:Lcom/trello/rxlifecycle2/android/FragmentEvent;

    invoke-virtual {p1, p2}, Lio/reactivex/subjects/Subject;->onNext(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onFragmentViewDestroyed(Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/Fragment;)V
    .locals 0

    .line 101
    instance-of p1, p2, Lcom/jess/arms/integration/lifecycle/FragmentLifecycleable;

    if-eqz p1, :cond_0

    .line 102
    invoke-direct {p0, p2}, Lcom/jess/arms/integration/lifecycle/FragmentLifecycleForRxLifecycle;->obtainSubject(Landroid/support/v4/app/Fragment;)Lio/reactivex/subjects/Subject;

    move-result-object p1

    sget-object p2, Lcom/trello/rxlifecycle2/android/FragmentEvent;->DESTROY_VIEW:Lcom/trello/rxlifecycle2/android/FragmentEvent;

    invoke-virtual {p1, p2}, Lio/reactivex/subjects/Subject;->onNext(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
