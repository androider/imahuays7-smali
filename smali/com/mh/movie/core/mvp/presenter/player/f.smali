.class final synthetic Lcom/mh/movie/core/mvp/presenter/player/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/raizlabs/android/dbflow/structure/b/a/g$b;


# static fields
.field static final a:Lcom/raizlabs/android/dbflow/structure/b/a/g$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/mh/movie/core/mvp/presenter/player/f;

    invoke-direct {v0}, Lcom/mh/movie/core/mvp/presenter/player/f;-><init>()V

    sput-object v0, Lcom/mh/movie/core/mvp/presenter/player/f;->a:Lcom/raizlabs/android/dbflow/structure/b/a/g$b;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/raizlabs/android/dbflow/structure/b/a/g;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p1, p2}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->a(Lcom/raizlabs/android/dbflow/structure/b/a/g;Ljava/lang/Throwable;)V

    return-void
.end method
