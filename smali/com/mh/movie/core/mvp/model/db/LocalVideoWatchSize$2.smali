.class final Lcom/mh/movie/core/mvp/model/db/LocalVideoWatchSize$2;
.super Ljava/lang/Object;
.source "LocalVideoWatchSize.java"

# interfaces
.implements Lcom/raizlabs/android/dbflow/structure/b/a/f$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/model/db/LocalVideoWatchSize;->loadData(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/raizlabs/android/dbflow/structure/b/a/f$c<",
        "Lcom/mh/movie/core/mvp/model/db/LocalVideoWatchSize;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$sendMsg:Z


# direct methods
.method constructor <init>(Z)V
    .locals 0

    .line 31
    iput-boolean p1, p0, Lcom/mh/movie/core/mvp/model/db/LocalVideoWatchSize$2;->val$sendMsg:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onListQueryResult(Lcom/raizlabs/android/dbflow/structure/b/a/f;Ljava/util/List;)V
    .locals 1
    .param p2    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/structure/b/a/f;",
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/db/LocalVideoWatchSize;",
            ">;)V"
        }
    .end annotation

    .line 34
    invoke-static {}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->a()Lcom/mh/movie/core/mvp/ui/widget/cache/g;

    move-result-object p1

    iget-boolean v0, p0, Lcom/mh/movie/core/mvp/model/db/LocalVideoWatchSize$2;->val$sendMsg:Z

    invoke-virtual {p1, p2, v0}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->a(Ljava/util/List;Z)V

    return-void
.end method
