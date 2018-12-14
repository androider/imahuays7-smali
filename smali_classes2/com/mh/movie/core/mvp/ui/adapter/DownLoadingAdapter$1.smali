.class Lcom/mh/movie/core/mvp/ui/adapter/DownLoadingAdapter$1;
.super Ljava/lang/Object;
.source "DownLoadingAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/adapter/DownLoadingAdapter;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/model/entity/DownloadData;

.field final synthetic b:I

.field final synthetic c:Lcom/mh/movie/core/mvp/ui/adapter/DownLoadingAdapter;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/adapter/DownLoadingAdapter;Lcom/mh/movie/core/mvp/model/entity/DownloadData;I)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/DownLoadingAdapter$1;->c:Lcom/mh/movie/core/mvp/ui/adapter/DownLoadingAdapter;

    iput-object p2, p0, Lcom/mh/movie/core/mvp/ui/adapter/DownLoadingAdapter$1;->a:Lcom/mh/movie/core/mvp/model/entity/DownloadData;

    iput p3, p0, Lcom/mh/movie/core/mvp/ui/adapter/DownLoadingAdapter$1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 86
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/DownLoadingAdapter$1;->c:Lcom/mh/movie/core/mvp/ui/adapter/DownLoadingAdapter;

    iget-boolean p1, p1, Lcom/mh/movie/core/mvp/ui/adapter/DownLoadingAdapter;->b:Z

    if-eqz p1, :cond_0

    .line 87
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/DownLoadingAdapter$1;->c:Lcom/mh/movie/core/mvp/ui/adapter/DownLoadingAdapter;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/DownLoadingAdapter$1;->a:Lcom/mh/movie/core/mvp/model/entity/DownloadData;

    iget v1, p0, Lcom/mh/movie/core/mvp/ui/adapter/DownLoadingAdapter$1;->b:I

    invoke-virtual {p1, v0, v1}, Lcom/mh/movie/core/mvp/ui/adapter/DownLoadingAdapter;->a(Ljava/lang/Object;I)V

    goto :goto_0

    .line 89
    :cond_0
    invoke-static {}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->a()Lcom/mh/movie/core/mvp/ui/widget/cache/g;

    move-result-object p1

    iget v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/DownLoadingAdapter$1;->b:I

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/adapter/DownLoadingAdapter$1;->a:Lcom/mh/movie/core/mvp/model/entity/DownloadData;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/adapter/DownLoadingAdapter$1;->c:Lcom/mh/movie/core/mvp/ui/adapter/DownLoadingAdapter;

    invoke-static {v2}, Lcom/mh/movie/core/mvp/ui/adapter/DownLoadingAdapter;->a(Lcom/mh/movie/core/mvp/ui/adapter/DownLoadingAdapter;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->a(ILcom/mh/movie/core/mvp/model/entity/DownloadData;Landroid/content/Context;)V

    :goto_0
    return-void
.end method
