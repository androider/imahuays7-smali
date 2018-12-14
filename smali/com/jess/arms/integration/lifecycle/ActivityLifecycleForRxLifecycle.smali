.class public Lcom/jess/arms/integration/lifecycle/ActivityLifecycleForRxLifecycle;
.super Ljava/lang/Object;
.source "ActivityLifecycleForRxLifecycle.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field mFragmentLifecycle:La/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/a<",
            "Lcom/jess/arms/integration/lifecycle/FragmentLifecycleForRxLifecycle;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private obtainSubject(Landroid/app/Activity;)Lio/reactivex/subjects/Subject;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            ")",
            "Lio/reactivex/subjects/Subject<",
            "Lcom/trello/rxlifecycle2/android/ActivityEvent;",
            ">;"
        }
    .end annotation

    .line 110
    check-cast p1, Lcom/jess/arms/integration/lifecycle/ActivityLifecycleable;

    invoke-interface {p1}, Lcom/jess/arms/integration/lifecycle/ActivityLifecycleable;->provideLifecycleSubject()Lio/reactivex/subjects/Subject;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    .line 56
    instance-of p2, p1, Lcom/jess/arms/integration/lifecycle/ActivityLifecycleable;

    if-eqz p2, :cond_0

    .line 57
    invoke-direct {p0, p1}, Lcom/jess/arms/integration/lifecycle/ActivityLifecycleForRxLifecycle;->obtainSubject(Landroid/app/Activity;)Lio/reactivex/subjects/Subject;

    move-result-object p2

    sget-object v0, Lcom/trello/rxlifecycle2/android/ActivityEvent;->CREATE:Lcom/trello/rxlifecycle2/android/ActivityEvent;

    invoke-virtual {p2, v0}, Lio/reactivex/subjects/Subject;->onNext(Ljava/lang/Object;)V

    .line 58
    instance-of p2, p1, Landroid/support/v4/app/FragmentActivity;

    if-eqz p2, :cond_0

    .line 59
    check-cast p1, Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    iget-object p2, p0, Lcom/jess/arms/integration/lifecycle/ActivityLifecycleForRxLifecycle;->mFragmentLifecycle:La/a;

    invoke-interface {p2}, La/a;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/support/v4/app/FragmentManager;->registerFragmentLifecycleCallbacks(Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;Z)V

    :cond_0
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 1

    .line 99
    instance-of v0, p1, Lcom/jess/arms/integration/lifecycle/ActivityLifecycleable;

    if-eqz v0, :cond_0

    .line 100
    invoke-direct {p0, p1}, Lcom/jess/arms/integration/lifecycle/ActivityLifecycleForRxLifecycle;->obtainSubject(Landroid/app/Activity;)Lio/reactivex/subjects/Subject;

    move-result-object p1

    sget-object v0, Lcom/trello/rxlifecycle2/android/ActivityEvent;->DESTROY:Lcom/trello/rxlifecycle2/android/ActivityEvent;

    invoke-virtual {p1, v0}, Lio/reactivex/subjects/Subject;->onNext(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 1

    .line 80
    instance-of v0, p1, Lcom/jess/arms/integration/lifecycle/ActivityLifecycleable;

    if-eqz v0, :cond_0

    .line 81
    invoke-direct {p0, p1}, Lcom/jess/arms/integration/lifecycle/ActivityLifecycleForRxLifecycle;->obtainSubject(Landroid/app/Activity;)Lio/reactivex/subjects/Subject;

    move-result-object p1

    sget-object v0, Lcom/trello/rxlifecycle2/android/ActivityEvent;->PAUSE:Lcom/trello/rxlifecycle2/android/ActivityEvent;

    invoke-virtual {p1, v0}, Lio/reactivex/subjects/Subject;->onNext(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 1

    .line 73
    instance-of v0, p1, Lcom/jess/arms/integration/lifecycle/ActivityLifecycleable;

    if-eqz v0, :cond_0

    .line 74
    invoke-direct {p0, p1}, Lcom/jess/arms/integration/lifecycle/ActivityLifecycleForRxLifecycle;->obtainSubject(Landroid/app/Activity;)Lio/reactivex/subjects/Subject;

    move-result-object p1

    sget-object v0, Lcom/trello/rxlifecycle2/android/ActivityEvent;->RESUME:Lcom/trello/rxlifecycle2/android/ActivityEvent;

    invoke-virtual {p1, v0}, Lio/reactivex/subjects/Subject;->onNext(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 1

    .line 66
    instance-of v0, p1, Lcom/jess/arms/integration/lifecycle/ActivityLifecycleable;

    if-eqz v0, :cond_0

    .line 67
    invoke-direct {p0, p1}, Lcom/jess/arms/integration/lifecycle/ActivityLifecycleForRxLifecycle;->obtainSubject(Landroid/app/Activity;)Lio/reactivex/subjects/Subject;

    move-result-object p1

    sget-object v0, Lcom/trello/rxlifecycle2/android/ActivityEvent;->START:Lcom/trello/rxlifecycle2/android/ActivityEvent;

    invoke-virtual {p1, v0}, Lio/reactivex/subjects/Subject;->onNext(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 1

    .line 87
    instance-of v0, p1, Lcom/jess/arms/integration/lifecycle/ActivityLifecycleable;

    if-eqz v0, :cond_0

    .line 88
    invoke-direct {p0, p1}, Lcom/jess/arms/integration/lifecycle/ActivityLifecycleForRxLifecycle;->obtainSubject(Landroid/app/Activity;)Lio/reactivex/subjects/Subject;

    move-result-object p1

    sget-object v0, Lcom/trello/rxlifecycle2/android/ActivityEvent;->STOP:Lcom/trello/rxlifecycle2/android/ActivityEvent;

    invoke-virtual {p1, v0}, Lio/reactivex/subjects/Subject;->onNext(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
