.class Lcom/mh/movie/core/mvp/ui/widget/cache/g$1;
.super Ljava/lang/Object;
.source "DownloadManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/widget/cache/g;->a(Lcom/mh/movie/core/mvp/model/entity/DownloadData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/mh/movie/core/mvp/model/entity/DownloadTV;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/widget/cache/g;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/widget/cache/g;)V
    .locals 0

    .line 257
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/g$1;->a:Lcom/mh/movie/core/mvp/ui/widget/cache/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/mh/movie/core/mvp/model/entity/DownloadTV;Lcom/mh/movie/core/mvp/model/entity/DownloadTV;)I
    .locals 0

    .line 260
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/DownloadTV;->getSortNum()I

    move-result p1

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/DownloadTV;->getSortNum()I

    move-result p2

    sub-int/2addr p1, p2

    return p1
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 257
    check-cast p1, Lcom/mh/movie/core/mvp/model/entity/DownloadTV;

    check-cast p2, Lcom/mh/movie/core/mvp/model/entity/DownloadTV;

    invoke-virtual {p0, p1, p2}, Lcom/mh/movie/core/mvp/ui/widget/cache/g$1;->a(Lcom/mh/movie/core/mvp/model/entity/DownloadTV;Lcom/mh/movie/core/mvp/model/entity/DownloadTV;)I

    move-result p1

    return p1
.end method
