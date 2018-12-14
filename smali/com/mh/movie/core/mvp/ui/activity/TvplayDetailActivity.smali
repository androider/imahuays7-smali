.class public Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity;
.super Lcom/mh/movie/core/mvp/ui/activity/s;
.source "TvplayDetailActivity.java"

# interfaces
.implements Lcom/mh/movie/core/mvp/a/bf$b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mh/movie/core/mvp/ui/activity/s<",
        "Lcom/mh/movie/core/mvp/presenter/TvplayDetailPresenter;",
        "Lcom/mh/movie/core/mvp/model/entity/DownloadTV;",
        ">;",
        "Lcom/mh/movie/core/mvp/a/bf$b;"
    }
.end annotation


# instance fields
.field i:Lcom/mh/movie/core/mvp/ui/adapter/EpisodeAdapter;

.field ivPoster:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c0177
    .end annotation
.end field

.field j:Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;

.field k:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

.field l:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

.field llSort:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c0220
    .end annotation
.end field

.field m:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;",
            ">;>;"
        }
    .end annotation
.end field

.field private n:J

.field private o:Landroid/support/v7/widget/LinearLayoutManager;

.field private p:Lcom/mh/movie/core/mvp/model/entity/DownloadTVData;

.field private q:Z

.field topbar:Lcom/mh/movie/core/mvp/ui/widget/Topbar;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c0380
    .end annotation
.end field

.field tvAddcache:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c039b
    .end annotation
.end field

.field tvNum:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c0414
    .end annotation
.end field

.field tvSort:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c0468
    .end annotation
.end field

.field tvTitle:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c047e
    .end annotation
.end field

.field wrapper:Landroid/support/v7/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c04d3
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 62
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/s;-><init>()V

    const/4 v0, 0x1

    .line 90
    iput-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity;->q:Z

    .line 95
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity;->m:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic a(Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity;)Lcom/jess/arms/mvp/b;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity;->b:Lcom/jess/arms/mvp/b;

    return-object p0
.end method

.method static synthetic b(Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity;)Lcom/jess/arms/mvp/b;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity;->b:Lcom/jess/arms/mvp/b;

    return-object p0
.end method

.method static synthetic c(Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity;)Lcom/jess/arms/mvp/b;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity;->b:Lcom/jess/arms/mvp/b;

    return-object p0
.end method

.method static synthetic d(Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity;)Lcom/jess/arms/mvp/b;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity;->b:Lcom/jess/arms/mvp/b;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)I
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 120
    sget p1, Lcom/mh/movie/core/R$layout;->activity_tvplay_detail:I

    return p1
.end method

.method public a(Lcom/jess/arms/b/a/a;)V
    .locals 1
    .param p1    # Lcom/jess/arms/b/a/a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 111
    invoke-static {}, Lcom/mh/movie/core/a/a/bp;->a()Lcom/mh/movie/core/a/a/bp$a;

    move-result-object v0

    .line 112
    invoke-virtual {v0, p1}, Lcom/mh/movie/core/a/a/bp$a;->a(Lcom/jess/arms/b/a/a;)Lcom/mh/movie/core/a/a/bp$a;

    move-result-object p1

    new-instance v0, Lcom/mh/movie/core/a/b/fa;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/a/b/fa;-><init>(Lcom/mh/movie/core/mvp/a/bf$b;)V

    .line 113
    invoke-virtual {p1, v0}, Lcom/mh/movie/core/a/a/bp$a;->a(Lcom/mh/movie/core/a/b/fa;)Lcom/mh/movie/core/a/a/bp$a;

    move-result-object p1

    .line 114
    invoke-virtual {p1}, Lcom/mh/movie/core/a/a/bp$a;->a()Lcom/mh/movie/core/a/a/dn;

    move-result-object p1

    .line 115
    invoke-interface {p1, p0}, Lcom/mh/movie/core/a/a/dn;->a(Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity;)V

    return-void
.end method

.method public a(Lcom/mh/movie/core/mvp/model/db/TableCommodity;)V
    .locals 5

    .line 299
    invoke-static {}, Lcom/mh/movie/core/mvp/ui/b;->a()Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;->getMoney()I

    move-result v0

    iget v1, p1, Lcom/mh/movie/core/mvp/model/db/TableCommodity;->money:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    .line 301
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity;->k:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    if-nez v0, :cond_1

    .line 302
    new-instance v0, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity;->r:Landroid/content/Context;

    const/16 v4, 0x9

    invoke-direct {v0, v1, v4}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity;->k:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    .line 303
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity;->k:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    const-string v1, "\u63d0\u793a"

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->a(Ljava/lang/String;)V

    :cond_1
    const-string v0, "\u5f00\u542f%s\u8fd8\u9700 "

    .line 305
    new-array v1, v3, [Ljava/lang/Object;

    iget-object v3, p1, Lcom/mh/movie/core/mvp/model/db/TableCommodity;->title:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 306
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity;->k:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/mh/movie/core/mvp/model/db/TableCommodity;->money:I

    invoke-static {}, Lcom/mh/movie/core/mvp/ui/b;->a()Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;->getMoney()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " \u4e2a\u9ebb\u82b1\u5e01\n\u60a8\u7684\u9ebb\u82b1\u5e01\u4e0d\u8db3\uff0c\u65e0\u6cd5\u5f00\u542f"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->b(Ljava/lang/String;)V

    .line 307
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity;->k:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    const-string v0, "\u505a\u4efb\u52a1\u8d5a\u53d6"

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->d(Ljava/lang/String;)V

    .line 308
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity;->k:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    new-instance v0, Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity$3;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity$3;-><init>(Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity;)V

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->a(Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog$a;)V

    .line 323
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity;->k:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->show()V

    goto :goto_1

    .line 326
    :cond_2
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity;->l:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    if-nez v0, :cond_3

    .line 327
    new-instance v0, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity;->r:Landroid/content/Context;

    const/16 v4, 0x8

    invoke-direct {v0, v1, v4}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity;->l:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    .line 328
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity;->l:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    const-string v1, "\u63d0\u793a"

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->a(Ljava/lang/String;)V

    :cond_3
    const-string v0, " \u9ebb\u82b1\u5e01\u5f00\u542f%s\uff1f"

    .line 330
    new-array v1, v3, [Ljava/lang/Object;

    iget-object v4, p1, Lcom/mh/movie/core/mvp/model/db/TableCommodity;->title:Ljava/lang/String;

    aput-object v4, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u4e2a\u6708\u7684%s\u4f53\u9a8c"

    .line 331
    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p1, Lcom/mh/movie/core/mvp/model/db/TableCommodity;->title:Ljava/lang/String;

    aput-object v4, v3, v2

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 332
    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity;->l:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u662f\u5426\u82b1\u8d39 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Lcom/mh/movie/core/mvp/model/db/TableCommodity;->money:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->b(Ljava/lang/String;)V

    .line 333
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity;->l:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5f00\u542f\u540e\u53ef\u4eab\u53d7"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/mh/movie/core/mvp/model/db/TableCommodity;->validNum:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->c(Ljava/lang/String;)V

    .line 334
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity;->l:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity$4;

    invoke-direct {v1, p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity$4;-><init>(Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity;Lcom/mh/movie/core/mvp/model/db/TableCommodity;)V

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->a(Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog$a;)V

    .line 347
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity;->l:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->show()V

    :goto_1
    return-void
.end method

.method public a(Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 245
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity;->j:Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 246
    sget v0, Lcom/mh/movie/core/R$id;->cv_cache_view:I

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity;->j:Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;

    .line 247
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity;->j:Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->getDownloadBean()Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoDownloadBean;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->a(Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoDownloadBean;I)V

    .line 248
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity;->j:Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;

    new-instance v2, Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity$1;

    invoke-direct {v2, p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity$1;-><init>(Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity;Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;)V

    invoke-virtual {v0, v2}, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->setOnItemClickListener(Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView$b;)V

    .line 271
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity;->j:Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;

    new-instance v2, Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity$2;

    invoke-direct {v2, p0}, Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity$2;-><init>(Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity;)V

    invoke-virtual {v0, v2}, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->setClarityDialogListener(Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView$a;)V

    .line 291
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity;->j:Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->getVideoPageList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->getVideoList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->a(Ljava/util/List;Ljava/util/List;)V

    .line 293
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity;->j:Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;

    invoke-virtual {p1, v1}, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public a(Lcom/mh/movie/core/mvp/model/entity/response/DownUrlResponse;)V
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity;->j:Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity;->j:Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;

    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->a(Lcom/mh/movie/core/mvp/model/entity/response/DownUrlResponse;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;",
            ">;I)V"
        }
    .end annotation

    .line 229
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity;->m:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity;->j:Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;

    if-eqz p2, :cond_0

    .line 231
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity;->j:Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;

    invoke-virtual {p2, p1}, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->setCacheList(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method protected a(Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Integer;",
            "Lcom/mh/movie/core/mvp/model/entity/DownloadTV;",
            ">;>;)V"
        }
    .end annotation

    .line 190
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 191
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 192
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 193
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 194
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 196
    :cond_0
    invoke-static {}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->a()Lcom/mh/movie/core/mvp/ui/widget/cache/g;

    move-result-object p1

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity;->p:Lcom/mh/movie/core/mvp/model/entity/DownloadTVData;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/DownloadTVData;->getVideoInfoId()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2, v0}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->a(JLjava/util/List;)V

    .line 198
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity;->i:Lcom/mh/movie/core/mvp/ui/adapter/EpisodeAdapter;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/ui/adapter/EpisodeAdapter;->b()V

    .line 199
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity;->tvNum:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity;->i:Lcom/mh/movie/core/mvp/ui/adapter/EpisodeAdapter;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/ui/adapter/EpisodeAdapter;->getItemCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x1

    .line 201
    sput-boolean p1, Lcom/mh/movie/core/mvp/ui/fragment/CompletedFragment;->d:Z

    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 125
    new-instance p1, Lcom/mh/movie/core/mvp/ui/adapter/EpisodeAdapter;

    invoke-direct {p1}, Lcom/mh/movie/core/mvp/ui/adapter/EpisodeAdapter;-><init>()V

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity;->i:Lcom/mh/movie/core/mvp/ui/adapter/EpisodeAdapter;

    .line 127
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity;->i:Lcom/mh/movie/core/mvp/ui/adapter/EpisodeAdapter;

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity;->a(Lcom/mh/movie/core/mvp/ui/adapter/d;)V

    .line 129
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "tv"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/mh/movie/core/mvp/model/entity/DownloadTVData;

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity;->p:Lcom/mh/movie/core/mvp/model/entity/DownloadTVData;

    .line 130
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity;->i:Lcom/mh/movie/core/mvp/ui/adapter/EpisodeAdapter;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity;->p:Lcom/mh/movie/core/mvp/model/entity/DownloadTVData;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/DownloadTVData;->getVideoInfoId()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/mh/movie/core/mvp/ui/adapter/EpisodeAdapter;->a(J)V

    .line 131
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity;->i:Lcom/mh/movie/core/mvp/ui/adapter/EpisodeAdapter;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity;->p:Lcom/mh/movie/core/mvp/model/entity/DownloadTVData;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/DownloadTVData;->getType()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/ui/adapter/EpisodeAdapter;->a(I)V

    .line 132
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity;->i:Lcom/mh/movie/core/mvp/ui/adapter/EpisodeAdapter;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity;->p:Lcom/mh/movie/core/mvp/model/entity/DownloadTVData;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/DownloadTVData;->getTvList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/ui/adapter/EpisodeAdapter;->a(Ljava/util/List;)V

    .line 134
    new-instance p1, Landroid/support/v7/widget/LinearLayoutManager;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p1, p0, v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity;->o:Landroid/support/v7/widget/LinearLayoutManager;

    .line 135
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity;->wrapper:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity;->o:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 136
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity;->wrapper:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity;->i:Lcom/mh/movie/core/mvp/ui/adapter/EpisodeAdapter;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 140
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity;->p:Lcom/mh/movie/core/mvp/model/entity/DownloadTVData;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/DownloadTVData;->getVideoPreviewUrl()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, ""

    .line 141
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity;->r:Landroid/content/Context;

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity;->ivPoster:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 145
    :cond_0
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity;->tvNum:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity;->p:Lcom/mh/movie/core/mvp/model/entity/DownloadTVData;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/DownloadTVData;->getTvList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity;->tvTitle:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity;->p:Lcom/mh/movie/core/mvp/model/entity/DownloadTVData;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/DownloadTVData;->getVideoTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public c_(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 172
    invoke-static {p1}, Lcom/jess/arms/c/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    invoke-static {p1}, Lcom/jess/arms/c/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public deleteDownloading(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lorg/simple/eventbus/Subscriber;
        tag = "SFILE_DELETE_DOWNLOADING"
    .end annotation

    .line 369
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity;->j:Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity;->j:Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;

    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0c039b,
            0x7f0c0220
        }
    .end annotation

    .line 207
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 208
    sget v0, Lcom/mh/movie/core/R$id;->tv_addcache:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_0

    .line 209
    new-instance p1, Lcom/mh/movie/core/mvp/model/entity/request/VideoInfoDetailRequest;

    invoke-direct {p1}, Lcom/mh/movie/core/mvp/model/entity/request/VideoInfoDetailRequest;-><init>()V

    .line 210
    invoke-virtual {p1, v2}, Lcom/mh/movie/core/mvp/model/entity/request/VideoInfoDetailRequest;->setFrom(I)V

    .line 211
    invoke-virtual {p1, v1}, Lcom/mh/movie/core/mvp/model/entity/request/VideoInfoDetailRequest;->setColumnId(I)V

    .line 212
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity;->p:Lcom/mh/movie/core/mvp/model/entity/DownloadTVData;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/DownloadTVData;->getVideoInfoId()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/model/entity/request/VideoInfoDetailRequest;->setVideoInfoId(I)V

    const/4 v0, -0x1

    .line 213
    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/model/entity/request/VideoInfoDetailRequest;->setVideoId(I)V

    .line 214
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity;->b:Lcom/jess/arms/mvp/b;

    check-cast v0, Lcom/mh/movie/core/mvp/presenter/TvplayDetailPresenter;

    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/presenter/TvplayDetailPresenter;->a(Lcom/mh/movie/core/mvp/model/entity/request/VideoInfoDetailRequest;)V

    goto :goto_1

    .line 215
    :cond_0
    sget v0, Lcom/mh/movie/core/R$id;->ll_sort:I

    if-ne p1, v0, :cond_2

    .line 216
    iget-boolean p1, p0, Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity;->q:Z

    if-eqz p1, :cond_1

    .line 217
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity;->tvSort:Landroid/widget/TextView;

    sget v0, Lcom/mh/movie/core/R$mipmap;->sort_down:I

    invoke-static {p0, p1, v0}, Lcom/mh/movie/core/mvp/ui/utils/UIUtils;->drawTextLeftImg(Landroid/content/Context;Landroid/widget/TextView;I)V

    .line 218
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity;->o:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p1, v2}, Landroid/support/v7/widget/LinearLayoutManager;->setReverseLayout(Z)V

    goto :goto_0

    .line 220
    :cond_1
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity;->tvSort:Landroid/widget/TextView;

    sget v0, Lcom/mh/movie/core/R$mipmap;->sort_up:I

    invoke-static {p0, p1, v0}, Lcom/mh/movie/core/mvp/ui/utils/UIUtils;->drawTextLeftImg(Landroid/content/Context;Landroid/widget/TextView;I)V

    .line 221
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity;->o:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p1, v1}, Landroid/support/v7/widget/LinearLayoutManager;->setReverseLayout(Z)V

    .line 223
    :goto_0
    iget-boolean p1, p0, Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity;->q:Z

    xor-int/2addr p1, v2

    iput-boolean p1, p0, Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity;->q:Z

    :cond_2
    :goto_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 98
    invoke-super {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/s;->onCreate(Landroid/os/Bundle;)V

    .line 99
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 100
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity;->topbar:Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/mh/movie/core/mvp/ui/utils/UIUtils;->initTopbar(Landroid/content/Context;Landroid/view/View;Z)V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 105
    invoke-super {p0}, Lcom/mh/movie/core/mvp/ui/activity/s;->onDestroy()V

    return-void
.end method

.method public onFinished(Landroid/os/Bundle;)V
    .locals 1
    .annotation runtime Lorg/simple/eventbus/Subscriber;
        tag = "SFILE_ONFINISHED"
    .end annotation

    .line 355
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity;->j:Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity;->j:Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;

    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->a(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onLoadFile(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lorg/simple/eventbus/Subscriber;
        tag = "SFILE_LOAD_FILE"
    .end annotation

    .line 362
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity;->j:Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity;->j:Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;

    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 8

    .line 151
    invoke-super {p0}, Lcom/mh/movie/core/mvp/ui/activity/s;->onResume()V

    .line 153
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity;->p:Lcom/mh/movie/core/mvp/model/entity/DownloadTVData;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/DownloadTVData;->getVideoInfoId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity;->n:J

    .line 154
    invoke-static {}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->a()Lcom/mh/movie/core/mvp/ui/widget/cache/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->x()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 155
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 156
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 157
    instance-of v3, v2, Lcom/mh/movie/core/mvp/model/entity/DownloadTVData;

    if-eqz v3, :cond_0

    .line 158
    check-cast v2, Lcom/mh/movie/core/mvp/model/entity/DownloadTVData;

    .line 160
    iget-wide v3, p0, Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity;->n:J

    invoke-virtual {v2}, Lcom/mh/movie/core/mvp/model/entity/DownloadTVData;->getVideoInfoId()J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-nez v7, :cond_0

    .line 161
    iput-object v2, p0, Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity;->p:Lcom/mh/movie/core/mvp/model/entity/DownloadTVData;

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 167
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity;->i:Lcom/mh/movie/core/mvp/ui/adapter/EpisodeAdapter;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity;->p:Lcom/mh/movie/core/mvp/model/entity/DownloadTVData;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/DownloadTVData;->getTvList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/adapter/EpisodeAdapter;->a(Ljava/util/List;)V

    return-void
.end method

.method public updataDownloaded(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lorg/simple/eventbus/Subscriber;
        tag = "SFILE_DELETE_DOWNLOADED"
    .end annotation

    .line 376
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity;->j:Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;

    if-eqz v0, :cond_0

    .line 377
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity;->j:Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;

    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public updateWatchSize(Landroid/os/Bundle;)V
    .locals 7
    .annotation runtime Lorg/simple/eventbus/Subscriber;
        tag = "SFILE_UPDATE_WATCH_SIZE"
    .end annotation

    .line 383
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity;->i:Lcom/mh/movie/core/mvp/ui/adapter/EpisodeAdapter;

    if-eqz v0, :cond_0

    .line 384
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/TvplayDetailActivity;->i:Lcom/mh/movie/core/mvp/ui/adapter/EpisodeAdapter;

    const-string v0, "videoInfoId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    const-string v0, "videoId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    const-string v0, "playTime"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual/range {v1 .. v6}, Lcom/mh/movie/core/mvp/ui/adapter/EpisodeAdapter;->a(JJI)V

    :cond_0
    return-void
.end method
