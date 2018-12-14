.class Lcom/mh/movie/core/mvp/ui/widget/cache/g$4;
.super Ljava/lang/Object;
.source "DownloadManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/widget/cache/g;->w()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/mh/movie/core/mvp/model/entity/DownloadData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/widget/cache/g;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/widget/cache/g;)V
    .locals 0

    .line 1124
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/g$4;->a:Lcom/mh/movie/core/mvp/ui/widget/cache/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/mh/movie/core/mvp/model/entity/DownloadData;Lcom/mh/movie/core/mvp/model/entity/DownloadData;)I
    .locals 4

    .line 1127
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getAddTime()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getAddTime()J

    move-result-wide p1

    sub-long v2, v0, p1

    long-to-int p1, v2

    return p1
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1124
    check-cast p1, Lcom/mh/movie/core/mvp/model/entity/DownloadData;

    check-cast p2, Lcom/mh/movie/core/mvp/model/entity/DownloadData;

    invoke-virtual {p0, p1, p2}, Lcom/mh/movie/core/mvp/ui/widget/cache/g$4;->a(Lcom/mh/movie/core/mvp/model/entity/DownloadData;Lcom/mh/movie/core/mvp/model/entity/DownloadData;)I

    move-result p1

    return p1
.end method
