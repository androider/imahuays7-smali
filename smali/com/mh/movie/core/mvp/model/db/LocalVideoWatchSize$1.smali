.class final Lcom/mh/movie/core/mvp/model/db/LocalVideoWatchSize$1;
.super Ljava/lang/Object;
.source "LocalVideoWatchSize.java"

# interfaces
.implements Lcom/raizlabs/android/dbflow/structure/b/a/g$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/model/db/LocalVideoWatchSize;->loadData(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/raizlabs/android/dbflow/structure/b/a/g;Ljava/lang/Throwable;)V
    .locals 0
    .param p1    # Lcom/raizlabs/android/dbflow/structure/b/a/g;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Throwable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 39
    invoke-static {}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->a()Lcom/mh/movie/core/mvp/ui/widget/cache/g;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->a(Ljava/lang/Throwable;)V

    return-void
.end method
