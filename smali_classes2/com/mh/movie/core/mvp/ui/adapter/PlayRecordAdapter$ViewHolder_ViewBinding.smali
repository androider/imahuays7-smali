.class public Lcom/mh/movie/core/mvp/ui/adapter/PlayRecordAdapter$ViewHolder_ViewBinding;
.super Ljava/lang/Object;
.source "PlayRecordAdapter$ViewHolder_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private a:Lcom/mh/movie/core/mvp/ui/adapter/PlayRecordAdapter$ViewHolder;


# direct methods
.method public constructor <init>(Lcom/mh/movie/core/mvp/ui/adapter/PlayRecordAdapter$ViewHolder;Landroid/view/View;)V
    .locals 3
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/PlayRecordAdapter$ViewHolder_ViewBinding;->a:Lcom/mh/movie/core/mvp/ui/adapter/PlayRecordAdapter$ViewHolder;

    .line 24
    sget v0, Lcom/mh/movie/core/R$id;->rl_record_item:I

    const-string v1, "field \'rlRecordItem\'"

    const-class v2, Landroid/widget/RelativeLayout;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/adapter/PlayRecordAdapter$ViewHolder;->rlRecordItem:Landroid/widget/RelativeLayout;

    .line 25
    sget v0, Lcom/mh/movie/core/R$id;->iv_poster:I

    const-string v1, "field \'ivPoster\'"

    const-class v2, Landroid/widget/ImageView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/adapter/PlayRecordAdapter$ViewHolder;->ivPoster:Landroid/widget/ImageView;

    .line 26
    sget v0, Lcom/mh/movie/core/R$id;->tv_time:I

    const-string v1, "field \'tvTime\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/adapter/PlayRecordAdapter$ViewHolder;->tvTime:Landroid/widget/TextView;

    .line 27
    sget v0, Lcom/mh/movie/core/R$id;->tv_title:I

    const-string v1, "field \'tvTitle\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/adapter/PlayRecordAdapter$ViewHolder;->tvTitle:Landroid/widget/TextView;

    .line 28
    sget v0, Lcom/mh/movie/core/R$id;->tv_watch_size:I

    const-string v1, "field \'tvWatchSize\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/adapter/PlayRecordAdapter$ViewHolder;->tvWatchSize:Landroid/widget/TextView;

    .line 29
    sget v0, Lcom/mh/movie/core/R$id;->tv_sort_num:I

    const-string v1, "field \'tvSortNum\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/mh/movie/core/mvp/ui/adapter/PlayRecordAdapter$ViewHolder;->tvSortNum:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/PlayRecordAdapter$ViewHolder_ViewBinding;->a:Lcom/mh/movie/core/mvp/ui/adapter/PlayRecordAdapter$ViewHolder;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v1, 0x0

    .line 37
    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/adapter/PlayRecordAdapter$ViewHolder_ViewBinding;->a:Lcom/mh/movie/core/mvp/ui/adapter/PlayRecordAdapter$ViewHolder;

    .line 39
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/adapter/PlayRecordAdapter$ViewHolder;->rlRecordItem:Landroid/widget/RelativeLayout;

    .line 40
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/adapter/PlayRecordAdapter$ViewHolder;->ivPoster:Landroid/widget/ImageView;

    .line 41
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/adapter/PlayRecordAdapter$ViewHolder;->tvTime:Landroid/widget/TextView;

    .line 42
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/adapter/PlayRecordAdapter$ViewHolder;->tvTitle:Landroid/widget/TextView;

    .line 43
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/adapter/PlayRecordAdapter$ViewHolder;->tvWatchSize:Landroid/widget/TextView;

    .line 44
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/adapter/PlayRecordAdapter$ViewHolder;->tvSortNum:Landroid/widget/TextView;

    return-void
.end method
