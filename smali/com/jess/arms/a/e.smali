.class public abstract Lcom/jess/arms/a/e;
.super Landroid/support/v4/app/Fragment;
.source "BaseFragment.java"

# interfaces
.implements Lcom/jess/arms/a/a/i;
.implements Lcom/jess/arms/integration/lifecycle/FragmentLifecycleable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P::",
        "Lcom/jess/arms/mvp/b;",
        ">",
        "Landroid/support/v4/app/Fragment;",
        "Lcom/jess/arms/a/a/i;",
        "Lcom/jess/arms/integration/lifecycle/FragmentLifecycleable;"
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
            "Lcom/trello/rxlifecycle2/android/FragmentEvent;",
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


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 53
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 54
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jess/arms/a/e;->a:Ljava/lang/String;

    .line 55
    invoke-static {}, Lio/reactivex/subjects/BehaviorSubject;->create()Lio/reactivex/subjects/BehaviorSubject;

    move-result-object v0

    iput-object v0, p0, Lcom/jess/arms/a/e;->c:Lio/reactivex/subjects/BehaviorSubject;

    return-void
.end method


# virtual methods
.method public declared-synchronized a()Lcom/jess/arms/integration/cache/Cache;
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

    .line 64
    :try_start_0
    iget-object v0, p0, Lcom/jess/arms/a/e;->d:Lcom/jess/arms/integration/cache/Cache;

    if-nez v0, :cond_0

    .line 65
    invoke-virtual {p0}, Lcom/jess/arms/a/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/jess/arms/c/a;->d(Landroid/content/Context;)Lcom/jess/arms/b/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/jess/arms/b/a/a;->j()Lcom/jess/arms/integration/cache/Cache$Factory;

    move-result-object v0

    sget-object v1, Lcom/jess/arms/integration/cache/CacheType;->FRAGMENT_CACHE:Lcom/jess/arms/integration/cache/CacheType;

    invoke-interface {v0, v1}, Lcom/jess/arms/integration/cache/Cache$Factory;->build(Lcom/jess/arms/integration/cache/CacheType;)Lcom/jess/arms/integration/cache/Cache;

    move-result-object v0

    iput-object v0, p0, Lcom/jess/arms/a/e;->d:Lcom/jess/arms/integration/cache/Cache;

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/jess/arms/a/e;->d:Lcom/jess/arms/integration/cache/Cache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 63
    monitor-exit p0

    throw v0
.end method

.method public k_()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 81
    invoke-virtual {p0, p1, p2, p3}, Lcom/jess/arms/a/e;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 87
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 88
    iget-object v0, p0, Lcom/jess/arms/a/e;->b:Lcom/jess/arms/mvp/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jess/arms/a/e;->b:Lcom/jess/arms/mvp/b;

    invoke-interface {v0}, Lcom/jess/arms/mvp/b;->b()V

    :cond_0
    const/4 v0, 0x0

    .line 89
    iput-object v0, p0, Lcom/jess/arms/a/e;->b:Lcom/jess/arms/mvp/b;

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
            "Lcom/trello/rxlifecycle2/android/FragmentEvent;",
            ">;"
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/jess/arms/a/e;->c:Lio/reactivex/subjects/BehaviorSubject;

    return-object v0
.end method
