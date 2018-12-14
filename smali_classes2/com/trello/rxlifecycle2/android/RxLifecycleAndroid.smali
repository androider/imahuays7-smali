.class public Lcom/trello/rxlifecycle2/android/RxLifecycleAndroid;
.super Ljava/lang/Object;
.source "RxLifecycleAndroid.java"


# static fields
.field private static final ACTIVITY_LIFECYCLE:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "Lcom/trello/rxlifecycle2/android/ActivityEvent;",
            "Lcom/trello/rxlifecycle2/android/ActivityEvent;",
            ">;"
        }
    .end annotation
.end field

.field private static final FRAGMENT_LIFECYCLE:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "Lcom/trello/rxlifecycle2/android/FragmentEvent;",
            "Lcom/trello/rxlifecycle2/android/FragmentEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 96
    new-instance v0, Lcom/trello/rxlifecycle2/android/RxLifecycleAndroid$1;

    invoke-direct {v0}, Lcom/trello/rxlifecycle2/android/RxLifecycleAndroid$1;-><init>()V

    sput-object v0, Lcom/trello/rxlifecycle2/android/RxLifecycleAndroid;->ACTIVITY_LIFECYCLE:Lio/reactivex/functions/Function;

    .line 120
    new-instance v0, Lcom/trello/rxlifecycle2/android/RxLifecycleAndroid$2;

    invoke-direct {v0}, Lcom/trello/rxlifecycle2/android/RxLifecycleAndroid$2;-><init>()V

    sput-object v0, Lcom/trello/rxlifecycle2/android/RxLifecycleAndroid;->FRAGMENT_LIFECYCLE:Lio/reactivex/functions/Function;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "No instances"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public static bindActivity(Lio/reactivex/Observable;)Lcom/trello/rxlifecycle2/LifecycleTransformer;
    .locals 1
    .param p0    # Lio/reactivex/Observable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/Observable<",
            "Lcom/trello/rxlifecycle2/android/ActivityEvent;",
            ">;)",
            "Lcom/trello/rxlifecycle2/LifecycleTransformer<",
            "TT;>;"
        }
    .end annotation

    .line 52
    sget-object v0, Lcom/trello/rxlifecycle2/android/RxLifecycleAndroid;->ACTIVITY_LIFECYCLE:Lio/reactivex/functions/Function;

    invoke-static {p0, v0}, Lcom/trello/rxlifecycle2/RxLifecycle;->bind(Lio/reactivex/Observable;Lio/reactivex/functions/Function;)Lcom/trello/rxlifecycle2/LifecycleTransformer;

    move-result-object p0

    return-object p0
.end method

.method public static bindFragment(Lio/reactivex/Observable;)Lcom/trello/rxlifecycle2/LifecycleTransformer;
    .locals 1
    .param p0    # Lio/reactivex/Observable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/Observable<",
            "Lcom/trello/rxlifecycle2/android/FragmentEvent;",
            ">;)",
            "Lcom/trello/rxlifecycle2/LifecycleTransformer<",
            "TT;>;"
        }
    .end annotation

    .line 73
    sget-object v0, Lcom/trello/rxlifecycle2/android/RxLifecycleAndroid;->FRAGMENT_LIFECYCLE:Lio/reactivex/functions/Function;

    invoke-static {p0, v0}, Lcom/trello/rxlifecycle2/RxLifecycle;->bind(Lio/reactivex/Observable;Lio/reactivex/functions/Function;)Lcom/trello/rxlifecycle2/LifecycleTransformer;

    move-result-object p0

    return-object p0
.end method

.method public static bindView(Landroid/view/View;)Lcom/trello/rxlifecycle2/LifecycleTransformer;
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/view/View;",
            ")",
            "Lcom/trello/rxlifecycle2/LifecycleTransformer<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "view == null"

    .line 90
    invoke-static {p0, v0}, Lcom/trello/rxlifecycle2/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 92
    new-instance v0, Lcom/trello/rxlifecycle2/android/ViewDetachesOnSubscribe;

    invoke-direct {v0, p0}, Lcom/trello/rxlifecycle2/android/ViewDetachesOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object p0

    invoke-static {p0}, Lcom/trello/rxlifecycle2/RxLifecycle;->bind(Lio/reactivex/Observable;)Lcom/trello/rxlifecycle2/LifecycleTransformer;

    move-result-object p0

    return-object p0
.end method
