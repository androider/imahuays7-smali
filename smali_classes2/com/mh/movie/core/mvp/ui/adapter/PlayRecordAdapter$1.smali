.class Lcom/mh/movie/core/mvp/ui/adapter/PlayRecordAdapter$1;
.super Ljava/lang/Object;
.source "PlayRecordAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/adapter/PlayRecordAdapter;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/model/entity/response/HistoryAndCollectResponse;

.field final synthetic b:I

.field final synthetic c:Lcom/mh/movie/core/mvp/ui/adapter/PlayRecordAdapter;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/adapter/PlayRecordAdapter;Lcom/mh/movie/core/mvp/model/entity/response/HistoryAndCollectResponse;I)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/PlayRecordAdapter$1;->c:Lcom/mh/movie/core/mvp/ui/adapter/PlayRecordAdapter;

    iput-object p2, p0, Lcom/mh/movie/core/mvp/ui/adapter/PlayRecordAdapter$1;->a:Lcom/mh/movie/core/mvp/model/entity/response/HistoryAndCollectResponse;

    iput p3, p0, Lcom/mh/movie/core/mvp/ui/adapter/PlayRecordAdapter$1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 65
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/PlayRecordAdapter$1;->c:Lcom/mh/movie/core/mvp/ui/adapter/PlayRecordAdapter;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/PlayRecordAdapter$1;->a:Lcom/mh/movie/core/mvp/model/entity/response/HistoryAndCollectResponse;

    iget v1, p0, Lcom/mh/movie/core/mvp/ui/adapter/PlayRecordAdapter$1;->b:I

    invoke-virtual {p1, v0, v1}, Lcom/mh/movie/core/mvp/ui/adapter/PlayRecordAdapter;->a(Lcom/mh/movie/core/mvp/model/entity/response/HistoryAndCollectResponse;I)V

    return-void
.end method
