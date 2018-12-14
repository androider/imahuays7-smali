.class public abstract Lcom/jess/arms/a/b;
.super Landroid/support/v4/app/FragmentActivity;
.source "BaseActivity.java"

# interfaces
.implements Lcom/jess/arms/a/a/h;
.implements Lcom/jess/arms/integration/lifecycle/ActivityLifecycleable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P::",
        "Lcom/jess/arms/mvp/b;",
        ">",
        "Landroid/support/v4/app/FragmentActivity;",
        "Lcom/jess/arms/a/a/h;",
        "Lcom/jess/arms/integration/lifecycle/ActivityLifecycleable;"
    }
.end annotation


# instance fields
.field protected final a:Ljava/lang/String;

.field protected b:Lcom/jess/arms/mvp/b;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TP;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private final c:Lio/reactivex/subjects/BehaviorSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/BehaviorSubject<",
            "Lcom/trello/rxlifecycle2/android/ActivityEvent;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/jess/arms/integration/cache/Cache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jess/arms/integration/cache/Cache<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lbutterknife/Unbinder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 60
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 61
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jess/arms/a/b;->a:Ljava/lang/String;

    .line 62
    invoke-static {}, Lio/reactivex/subjects/BehaviorSubject;->create()Lio/reactivex/subjects/BehaviorSubject;

    move-result-object v0

    iput-object v0, p0, Lcom/jess/arms/a/b;->c:Lio/reactivex/subjects/BehaviorSubject;

    return-void
.end method


# virtual methods
.method public f_()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public h_()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public declared-synchronized j_()Lcom/jess/arms/integration/cache/Cache;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/jess/arms/integration/cache/Cache<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 72
    :try_start_0
    iget-object v0, p0, Lcom/jess/arms/a/b;->d:Lcom/jess/arms/integration/cache/Cache;

    if-nez v0, :cond_0

    .line 73
    invoke-static {p0}, Lcom/jess/arms/c/a;->d(Landroid/content/Context;)Lcom/jess/arms/b/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/jess/arms/b/a/a;->j()Lcom/jess/arms/integration/cache/Cache$Factory;

    move-result-object v0

    sget-object v1, Lcom/jess/arms/integration/cache/CacheType;->ACTIVITY_CACHE:Lcom/jess/arms/integration/cache/CacheType;

    invoke-interface {v0, v1}, Lcom/jess/arms/integration/cache/Cache$Factory;->build(Lcom/jess/arms/integration/cache/CacheType;)Lcom/jess/arms/integration/cache/Cache;

    move-result-object v0

    iput-object v0, p0, Lcom/jess/arms/a/b;->d:Lcom/jess/arms/integration/cache/Cache;

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/jess/arms/a/b;->d:Lcom/jess/arms/integration/cache/Cache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 71
    monitor-exit p0

    throw v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 92
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 94
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/jess/arms/a/b;->a(Landroid/os/Bundle;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    invoke-virtual {p0, v0}, Lcom/jess/arms/a/b;->setContentView(I)V

    .line 99
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    move-result-object v0

    iput-object v0, p0, Lcom/jess/arms/a/b;->e:Lbutterknife/Unbinder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 102
    instance-of v1, v0, Landroid/view/InflateException;

    if-eqz v1, :cond_0

    throw v0

    .line 103
    :cond_0
    invoke-static {v0}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    .line 105
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/jess/arms/a/b;->b(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .line 86
    invoke-static {p1, p2, p3}, Lcom/jess/arms/c/i;->a(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 87
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentActivity;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method protected onDestroy()V
    .locals 2

    .line 110
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 111
    iget-object v0, p0, Lcom/jess/arms/a/b;->e:Lbutterknife/Unbinder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jess/arms/a/b;->e:Lbutterknife/Unbinder;

    sget-object v1, Lbutterknife/Unbinder;->EMPTY:Lbutterknife/Unbinder;

    if-eq v0, v1, :cond_0

    .line 112
    iget-object v0, p0, Lcom/jess/arms/a/b;->e:Lbutterknife/Unbinder;

    invoke-interface {v0}, Lbutterknife/Unbinder;->unbind()V

    :cond_0
    const/4 v0, 0x0

    .line 113
    iput-object v0, p0, Lcom/jess/arms/a/b;->e:Lbutterknife/Unbinder;

    .line 114
    iget-object v1, p0, Lcom/jess/arms/a/b;->b:Lcom/jess/arms/mvp/b;

    if-eqz v1, :cond_1

    .line 115
    iget-object v1, p0, Lcom/jess/arms/a/b;->b:Lcom/jess/arms/mvp/b;

    invoke-interface {v1}, Lcom/jess/arms/mvp/b;->b()V

    .line 116
    :cond_1
    iput-object v0, p0, Lcom/jess/arms/a/b;->b:Lcom/jess/arms/mvp/b;

    return-void
.end method

.method public final provideLifecycleSubject()Lio/reactivex/subjects/Subject;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/subjects/Subject<",
            "Lcom/trello/rxlifecycle2/android/ActivityEvent;",
            ">;"
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lcom/jess/arms/a/b;->c:Lio/reactivex/subjects/BehaviorSubject;

    return-object v0
.end method
