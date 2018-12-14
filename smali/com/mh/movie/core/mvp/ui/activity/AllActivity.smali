.class public Lcom/mh/movie/core/mvp/ui/activity/AllActivity;
.super Lcom/mh/movie/core/mvp/ui/activity/ac;
.source "AllActivity.java"

# interfaces
.implements Lcom/mh/movie/core/mvp/a/c$b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mh/movie/core/mvp/ui/activity/ac<",
        "Lcom/mh/movie/core/mvp/presenter/AllPresenter;",
        ">;",
        "Lcom/mh/movie/core/mvp/a/c$b;"
    }
.end annotation


# static fields
.field static c:I = 0x9


# instance fields
.field d:Landroid/widget/CheckBox;

.field e:Landroid/widget/CheckBox;

.field f:Landroid/widget/CheckBox;

.field g:Landroid/widget/CheckBox;

.field h:I

.field i:Z

.field j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/CheckBox;",
            ">;"
        }
    .end annotation
.end field

.field k:Lcom/mh/movie/core/mvp/ui/widget/recylerview/RecyclerFooterView;

.field l:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field m:Lcom/mh/movie/core/mvp/model/entity/FilterEntity;

.field n:Lcom/mh/movie/core/mvp/ui/adapter/c;

.field o:Landroid/widget/LinearLayout;

.field p:Landroid/view/View;

.field q:Lcom/mh/movie/core/mvp/ui/widget/recylerview/RecyclerOnScrollListener;

.field recyclerContent:Landroid/support/v7/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c02c0
    .end annotation
.end field

.field rlContent:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c02dd
    .end annotation
.end field

.field svState:Lcom/mh/movie/core/mvp/ui/widget/StateView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c035b
    .end annotation
.end field

.field private t:I

.field topbar:Lcom/mh/movie/core/mvp/ui/widget/Topbar;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c0380
    .end annotation
.end field

.field tvSelectFilter:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c045a
    .end annotation
.end field

.field private u:I

.field private v:I

.field private w:I

.field private x:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 79
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/ac;-><init>()V

    const/4 v0, 0x0

    .line 95
    iput v0, p0, Lcom/mh/movie/core/mvp/ui/activity/AllActivity;->h:I

    const/4 v1, 0x1

    .line 97
    iput-boolean v1, p0, Lcom/mh/movie/core/mvp/ui/activity/AllActivity;->i:Z

    .line 111
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/mh/movie/core/mvp/ui/activity/AllActivity;->j:Ljava/util/List;

    .line 114
    iput v1, p0, Lcom/mh/movie/core/mvp/ui/activity/AllActivity;->v:I

    .line 115
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/mh/movie/core/mvp/ui/activity/AllActivity;->l:Ljava/util/HashMap;

    .line 116
    iput v1, p0, Lcom/mh/movie/core/mvp/ui/activity/AllActivity;->w:I

    .line 117
    iput-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/activity/AllActivity;->x:Z

    .line 517
    new-instance v0, Lcom/mh/movie/core/mvp/ui/activity/AllActivity$6;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/mvp/ui/activity/AllActivity$6;-><init>(Lcom/mh/movie/core/mvp/ui/activity/AllActivity;)V

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/AllActivity;->q:Lcom/mh/movie/core/mvp/ui/widget/recylerview/RecyclerOnScrollListener;

    return-void
.end method

.method static synthetic a(Lcom/mh/movie/core/mvp/ui/activity/AllActivity;)I
    .locals 0

    .line 79
    iget p0, p0, Lcom/mh/movie/core/mvp/ui/activity/AllActivity;->t:I

    return p0
.end method

.method private a(II)V
    .locals 3

    .line 466
    iget v0, p0, Lcom/mh/movie/core/mvp/ui/activity/AllActivity;->v:I

    const/4 v1, 0x1

    if-ne v0, p2, :cond_0

    .line 467
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/activity/AllActivity;->j:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    invoke-virtual {p1, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void

    .line 470
    :cond_0
    iput p2, p0, Lcom/mh/movie/core/mvp/ui/activity/AllActivity;->v:I

    .line 471
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/activity/AllActivity;->j:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    const/4 v2, 0x0

    .line 472
    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 474
    :cond_1
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/activity/AllActivity;->j:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    invoke-virtual {p1, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 475
    invoke-direct {p0, v1}, Lcom/mh/movie/core/mvp/ui/activity/AllActivity;->a(Z)V

    return-void
.end method

.method static synthetic a(Lcom/mh/movie/core/mvp/ui/activity/AllActivity;Lcom/mh/movie/core/mvp/ui/holder/a;Lcom/mh/movie/core/mvp/model/entity/AllListBean;)V
    .locals 0

    .line 79
    invoke-direct {p0, p1, p2}, Lcom/mh/movie/core/mvp/ui/activity/AllActivity;->a(Lcom/mh/movie/core/mvp/ui/holder/a;Lcom/mh/movie/core/mvp/model/entity/AllListBean;)V

    return-void
.end method

.method static synthetic a(Lcom/mh/movie/core/mvp/ui/activity/AllActivity;Z)V
    .locals 0

    .line 79
    invoke-direct {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/AllActivity;->a(Z)V

    return-void
.end method

.method private a(Lcom/mh/movie/core/mvp/ui/holder/a;Lcom/mh/movie/core/mvp/model/entity/AllListBean;)V
    .locals 7

    .line 214
    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/AllListBean;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 219
    :cond_0
    iget v0, p0, Lcom/mh/movie/core/mvp/ui/activity/AllActivity;->u:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 220
    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/AllListBean;->getCoverHUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/AllListBean;->getCoverHUrl()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/AllListBean;->getCoverHUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/AllListBean;->getCoverUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 222
    :cond_3
    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/AllListBean;->getCoverUrl()Ljava/lang/String;

    move-result-object v0

    .line 225
    :goto_1
    iget-object v2, p1, Lcom/mh/movie/core/mvp/ui/holder/a;->a:Lpl/droidsonroids/gif/GifImageView;

    invoke-static {v2}, Lcom/bumptech/glide/Glide;->with(Landroid/view/View;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v2, p1, Lcom/mh/movie/core/mvp/ui/holder/a;->a:Lpl/droidsonroids/gif/GifImageView;

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 226
    iget-object v0, p1, Lcom/mh/movie/core/mvp/ui/holder/a;->b:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/AllListBean;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    iget-object v0, p1, Lcom/mh/movie/core/mvp/ui/holder/a;->e:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 229
    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/AllListBean;->getType()I

    move-result v0

    const/4 v3, 0x4

    if-ne v0, v3, :cond_4

    .line 230
    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/AllListBean;->getLastPeriod()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 231
    iget-object v0, p1, Lcom/mh/movie/core/mvp/ui/holder/a;->e:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/AllListBean;->getLastPeriod()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\u671f"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 233
    :cond_4
    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/AllListBean;->getType()I

    move-result v0

    if-eq v0, v1, :cond_6

    .line 234
    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/AllListBean;->getEpisodeState()I

    move-result v0

    if-ne v0, v1, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/AllListBean;->getEpisodeUploadCount()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "\u96c6\u5168"

    :goto_2
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u66f4\u65b0\u81f3"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/AllListBean;->getEpisodeUploadCount()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "\u96c6"

    goto :goto_2

    .line 235
    :goto_3
    iget-object v4, p1, Lcom/mh/movie/core/mvp/ui/holder/a;->e:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_6
    const-string v0, "%02d:%02d:%02d"

    const/4 v4, 0x3

    .line 237
    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/AllListBean;->getPlayTimeLength()I

    move-result v5

    div-int/lit16 v5, v5, 0xe10

    int-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/AllListBean;->getPlayTimeLength()I

    move-result v5

    div-int/lit8 v5, v5, 0x3c

    int-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v5, v5

    rem-int/lit8 v5, v5, 0x3c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v5, 0x2

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/AllListBean;->getPlayTimeLength()I

    move-result v6

    rem-int/lit8 v6, v6, 0x3c

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 238
    iget-object v4, p1, Lcom/mh/movie/core/mvp/ui/holder/a;->e:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 242
    :cond_7
    :goto_4
    new-instance v0, Landroid/text/SpannableString;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/AllListBean;->getDoubanScore()D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 243
    new-instance v4, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v5, 0x12

    invoke-direct {v4, v5, v1}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    invoke-virtual {v0, v4, v2, v1, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 244
    iget-object v4, p1, Lcom/mh/movie/core/mvp/ui/holder/a;->g:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 245
    iget-object v0, p1, Lcom/mh/movie/core/mvp/ui/holder/a;->g:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/AllListBean;->getType()I

    move-result v4

    if-ne v4, v1, :cond_8

    const/4 v1, 0x0

    goto :goto_5

    :cond_8
    const/16 v1, 0x8

    :goto_5
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 247
    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/AllListBean;->getFocus()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 248
    iget-object v0, p1, Lcom/mh/movie/core/mvp/ui/holder/a;->c:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/AllListBean;->getFocus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    :cond_9
    const-string v0, "\u5176\u4ed6\u00b7"

    .line 251
    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/AllListBean;->getVideoClassifyList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/AllListBean;->getVideoClassifyList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_a

    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/AllListBean;->getVideoClassifyList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u00b7"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 254
    :cond_a
    iget-object v1, p1, Lcom/mh/movie/core/mvp/ui/holder/a;->c:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u64ad\u653e\u91cf\uff1a"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/AllListBean;->getPlayCount()I

    move-result v0

    int-to-float v0, v0

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/utils/T;->formatShow(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 257
    :goto_6
    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/AllListBean;->getTagDTO()Lcom/mh/movie/core/mvp/model/entity/TagDTOBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/TagDTOBean;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 258
    iget-object v0, p1, Lcom/mh/movie/core/mvp/ui/holder/a;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 260
    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/AllListBean;->getTagDTO()Lcom/mh/movie/core/mvp/model/entity/TagDTOBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/TagDTOBean;->getBackgroundColor()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    .line 261
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/AllActivity;->r:Landroid/content/Context;

    sget v2, Lcom/mh/movie/core/R$drawable;->tag_corner_bg:I

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 262
    invoke-static {v1, v0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    .line 263
    iget-object v0, p1, Lcom/mh/movie/core/mvp/ui/holder/a;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 265
    iget-object v0, p1, Lcom/mh/movie/core/mvp/ui/holder/a;->d:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/AllListBean;->getTagDTO()Lcom/mh/movie/core/mvp/model/entity/TagDTOBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/TagDTOBean;->getFrontColor()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 266
    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/holder/a;->d:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/AllListBean;->getTagDTO()Lcom/mh/movie/core/mvp/model/entity/TagDTOBean;

    move-result-object p2

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/TagDTOBean;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 268
    :cond_b
    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/holder/a;->d:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_7
    return-void
.end method

.method private a(Ljava/util/List;Ljava/lang/String;II)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/response/ClassifyListResponse$ChildListBean;",
            ">;",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    .line 375
    new-instance v0, Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/AllActivity;->r:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    .line 376
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/AllActivity;->r:Landroid/content/Context;

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-static {v1, v2}, Lcom/jess/arms/c/e;->a(Landroid/content/Context;F)F

    move-result v1

    float-to-int v1, v1

    const/4 v2, 0x0

    .line 377
    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/support/v7/widget/RecyclerView;->setPadding(IIII)V

    .line 378
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/AllActivity;->e()Landroid/support/v7/widget/LinearLayoutManager;

    move-result-object v2

    .line 379
    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 380
    invoke-virtual {p0, p2, p3}, Lcom/mh/movie/core/mvp/ui/activity/AllActivity;->a(Ljava/lang/String;I)Lcom/mh/movie/core/mvp/ui/adapter/l;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 381
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object p2

    check-cast p2, Lcom/mh/movie/core/mvp/ui/adapter/l;

    invoke-virtual {p2, p1}, Lcom/mh/movie/core/mvp/ui/adapter/l;->a(Ljava/util/List;)V

    .line 382
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object p1

    check-cast p1, Lcom/mh/movie/core/mvp/ui/adapter/l;

    invoke-virtual {p1, p4}, Lcom/mh/movie/core/mvp/ui/adapter/l;->a(I)V

    .line 383
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/AllActivity;->o:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/4 p1, 0x2

    if-lt p4, p1, :cond_0

    .line 385
    invoke-virtual {v0, p4}, Landroid/support/v7/widget/RecyclerView;->scrollToPosition(I)V

    .line 386
    :cond_0
    new-instance p1, Lcom/mh/movie/core/mvp/ui/activity/AllActivity$5;

    invoke-direct {p1, p0, p4, v0, v1}, Lcom/mh/movie/core/mvp/ui/activity/AllActivity$5;-><init>(Lcom/mh/movie/core/mvp/ui/activity/AllActivity;ILandroid/support/v7/widget/RecyclerView;I)V

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method private a(Z)V
    .locals 7

    .line 409
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/AllActivity;->l:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 410
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const-string v1, ""

    .line 412
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 413
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 414
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz v3, :cond_0

    .line 415
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 416
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    .line 420
    iput-boolean p1, p0, Lcom/mh/movie/core/mvp/ui/activity/AllActivity;->x:Z

    .line 421
    iput v0, p0, Lcom/mh/movie/core/mvp/ui/activity/AllActivity;->w:I

    goto :goto_1

    .line 423
    :cond_2
    iget p1, p0, Lcom/mh/movie/core/mvp/ui/activity/AllActivity;->w:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/mh/movie/core/mvp/ui/activity/AllActivity;->w:I

    .line 425
    :goto_1
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/AllActivity;->b:Lcom/jess/arms/mvp/b;

    move-object v1, p1

    check-cast v1, Lcom/mh/movie/core/mvp/presenter/AllPresenter;

    iget v2, p0, Lcom/mh/movie/core/mvp/ui/activity/AllActivity;->v:I

    iget v3, p0, Lcom/mh/movie/core/mvp/ui/activity/AllActivity;->u:I

    iget v5, p0, Lcom/mh/movie/core/mvp/ui/activity/AllActivity;->w:I

    sget v6, Lcom/mh/movie/core/mvp/ui/activity/AllActivity;->c:I

    invoke-virtual/range {v1 .. v6}, Lcom/mh/movie/core/mvp/presenter/AllPresenter;->a(IILjava/util/ArrayList;II)V

    return-void
.end method

.method static synthetic b(Lcom/mh/movie/core/mvp/ui/activity/AllActivity;)I
    .locals 0

    .line 79
    iget p0, p0, Lcom/mh/movie/core/mvp/ui/activity/AllActivity;->u:I

    return p0
.end method

.method static synthetic c(Lcom/mh/movie/core/mvp/ui/activity/AllActivity;)Z
    .locals 0

    .line 79
    iget-boolean p0, p0, Lcom/mh/movie/core/mvp/ui/activity/AllActivity;->x:Z

    return p0
.end method

.method private f()V
    .locals 2

    .line 273
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/AllActivity;->j:Ljava/util/List;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/AllActivity;->d:Landroid/widget/CheckBox;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 274
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/AllActivity;->j:Ljava/util/List;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/AllActivity;->e:Landroid/widget/CheckBox;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 275
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/AllActivity;->j:Ljava/util/List;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/AllActivity;->f:Landroid/widget/CheckBox;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 276
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/AllActivity;->j:Ljava/util/List;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/AllActivity;->g:Landroid/widget/CheckBox;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private g()V
    .locals 4

    .line 281
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/AllActivity;->r:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/AllActivity;->o:Landroid/widget/LinearLayout;

    .line 282
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/AllActivity;->o:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 283
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/AllActivity;->o:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/AllActivity;->r:Landroid/content/Context;

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-static {v1, v2}, Lcom/jess/arms/c/e;->a(Landroid/content/Context;F)F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/activity/AllActivity;->r:Landroid/content/Context;

    const/high16 v3, 0x41600000    # 14.0f

    invoke-static {v2, v3}, Lcom/jess/arms/c/e;->a(Landroid/content/Context;F)F

    move-result v2

    float-to-int v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v3, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 285
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/AllActivity;->o:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 286
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/AllActivity;->r:Landroid/content/Context;

    sget v1, Lcom/mh/movie/core/R$layout;->all_header:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/AllActivity;->p:Landroid/view/View;

    .line 288
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/AllActivity;->p:Landroid/view/View;

    sget v1, Lcom/mh/movie/core/R$id;->cb_more_play:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/AllActivity;->d:Landroid/widget/CheckBox;

    .line 289
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/AllActivity;->p:Landroid/view/View;

    sget v1, Lcom/mh/movie/core/R$id;->cb_more_update:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/AllActivity;->e:Landroid/widget/CheckBox;

    .line 290
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/AllActivity;->p:Landroid/view/View;

    sget v1, Lcom/mh/movie/core/R$id;->cb_more_like:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/AllActivity;->f:Landroid/widget/CheckBox;

    .line 291
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/AllActivity;->p:Landroid/view/View;

    sget v1, Lcom/mh/movie/core/R$id;->cb_more_score:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/AllActivity;->g:Landroid/widget/CheckBox;

    .line 294
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/AllActivity;->d:Landroid/widget/CheckBox;

    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/d;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/ui/activity/d;-><init>(Lcom/mh/movie/core/mvp/ui/activity/AllActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 295
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/AllActivity;->e:Landroid/widget/CheckBox;

    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/e;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/ui/activity/e;-><init>(Lcom/mh/movie/core/mvp/ui/activity/AllActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 296
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/AllActivity;->f:Landroid/widget/CheckBox;

    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/f;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/ui/activity/f;-><init>(Lcom/mh/movie/core/mvp/ui/activity/AllActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 297
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/AllActivity;->g:Landroid/widget/CheckBox;

    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/g;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/ui/activity/g;-><init>(Lcom/mh/movie/core/mvp/ui/activity/AllActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 298
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/AllActivity;->n:Lcom/mh/movie/core/mvp/ui/adapter/c;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/AllActivity;->o:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/adapter/c;->a(Landroid/view/View;)V

    .line 299
    new-instance v0, Lcom/mh/movie/core/mvp/ui/widget/recylerview/RecyclerFooterView;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/AllActivity;->r:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/recylerview/RecyclerFooterView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/AllActivity;->k:Lcom/mh/movie/core/mvp/ui/widget/recylerview/RecyclerFooterView;

    .line 300
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/AllActivity;->n:Lcom/mh/movie/core/mvp/ui/adapter/c;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/AllActivity;->k:Lcom/mh/movie/core/mvp/ui/widget/recylerview/RecyclerFooterView;

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/adapter/c;->b(Landroid/view/View;)V

    .line 302
    new-instance v0, Lcom/mh/movie/core/mvp/model/entity/FilterEntity;

    invoke-direct {v0}, Lcom/mh/movie/core/mvp/model/entity/FilterEntity;-><init>()V

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/AllActivity;->m:Lcom/mh/movie/core/mvp/model/entity/FilterEntity;

    .line 303
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/AllActivity;->m:Lcom/mh/movie/core/mvp/model/entity/FilterEntity;

    const-string v1, "\u6700\u591a\u64ad\u653e"

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/model/entity/FilterEntity;->setLabel(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)I
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 136
    sget p1, Lcom/mh/movie/core/R$layout;->activity_all:I

    return p1
.end method

.method public a(Ljava/lang/String;I)Lcom/mh/movie/core/mvp/ui/adapter/l;
    .locals 1

    .line 363
    new-instance v0, Lcom/mh/movie/core/mvp/ui/adapter/l;

    invoke-direct {v0}, Lcom/mh/movie/core/mvp/ui/adapter/l;-><init>()V

    .line 364
    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/ui/adapter/l;->a(Ljava/lang/String;)V

    .line 365
    new-instance p1, Lcom/mh/movie/core/mvp/ui/activity/h;

    invoke-direct {p1, p0, p2}, Lcom/mh/movie/core/mvp/ui/activity/h;-><init>(Lcom/mh/movie/core/mvp/ui/activity/AllActivity;I)V

    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/ui/adapter/l;->a(Lcom/mh/movie/core/mvp/ui/adapter/l$a;)V

    return-object v0
.end method

.method final synthetic a(ILcom/mh/movie/core/mvp/model/entity/response/ClassifyListResponse$ChildListBean;Ljava/lang/String;)V
    .locals 2

    .line 366
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/AllActivity;->m:Lcom/mh/movie/core/mvp/model/entity/FilterEntity;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/FilterEntity;->getList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/ClassifyListResponse$ChildListBean;->getClassifyName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/ClassifyListResponse$ChildListBean;->getClassifyName()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 367
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/AllActivity;->l:Ljava/util/HashMap;

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/ClassifyListResponse$ChildListBean;->getId()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    .line 368
    invoke-direct {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/AllActivity;->a(Z)V

    return-void
.end method

.method final synthetic a(Landroid/view/View;)V
    .locals 2

    .line 162
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/AllActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/mh/movie/core/mvp/ui/activity/SearchActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "videoType"

    .line 163
    iget v1, p0, Lcom/mh/movie/core/mvp/ui/activity/AllActivity;->u:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 164
    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/AllActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public a(Lcom/jess/arms/b/a/a;)V
    .locals 1
    .param p1    # Lcom/jess/arms/b/a/a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 127
    invoke-static {}, Lcom/mh/movie/core/a/a/o;->a()Lcom/mh/movie/core/a/a/o$a;

    move-result-object v0

    .line 128
    invoke-virtual {v0, p1}, Lcom/mh/movie/core/a/a/o$a;->a(Lcom/jess/arms/b/a/a;)Lcom/mh/movie/core/a/a/o$a;

    move-result-object p1

    new-instance v0, Lcom/mh/movie/core/a/b/g;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/a/b/g;-><init>(Lcom/mh/movie/core/mvp/a/c$b;)V

    .line 129
    invoke-virtual {p1, v0}, Lcom/mh/movie/core/a/a/o$a;->a(Lcom/mh/movie/core/a/b/g;)Lcom/mh/movie/core/a/a/o$a;

    move-result-object p1

    .line 130
    invoke-virtual {p1}, Lcom/mh/movie/core/a/a/o$a;->a()Lcom/mh/movie/core/a/a/c;

    move-result-object p1

    .line 131
    invoke-interface {p1, p0}, Lcom/mh/movie/core/a/a/c;->a(Lcom/mh/movie/core/mvp/ui/activity/AllActivity;)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/response/ClassifyListResponse;",
            ">;)V"
        }
    .end annotation

    .line 480
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/AllActivity;->m:Lcom/mh/movie/core/mvp/model/entity/FilterEntity;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/model/entity/FilterEntity;->initLabels(I)V

    .line 481
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/AllActivity;->o:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 482
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/AllActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "key_word"

    const v2, -0x3b9ac9ff

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 483
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 484
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mh/movie/core/mvp/model/entity/response/ClassifyListResponse;

    .line 485
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 486
    new-instance v5, Lcom/mh/movie/core/mvp/model/entity/response/ClassifyListResponse$ChildListBean;

    invoke-virtual {v3}, Lcom/mh/movie/core/mvp/model/entity/response/ClassifyListResponse;->getClassifyName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v1, v6}, Lcom/mh/movie/core/mvp/model/entity/response/ClassifyListResponse$ChildListBean;-><init>(ILjava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 488
    :goto_1
    invoke-virtual {v3}, Lcom/mh/movie/core/mvp/model/entity/response/ClassifyListResponse;->getChildList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v5, v7, :cond_1

    .line 489
    invoke-virtual {v3}, Lcom/mh/movie/core/mvp/model/entity/response/ClassifyListResponse;->getChildList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 490
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/mh/movie/core/mvp/model/entity/response/ClassifyListResponse$ChildListBean;

    invoke-virtual {v7}, Lcom/mh/movie/core/mvp/model/entity/response/ClassifyListResponse$ChildListBean;->getId()I

    move-result v7

    if-ne v7, v0, :cond_0

    .line 491
    iget-object v6, p0, Lcom/mh/movie/core/mvp/ui/activity/AllActivity;->l:Ljava/util/HashMap;

    invoke-virtual {v3}, Lcom/mh/movie/core/mvp/model/entity/response/ClassifyListResponse;->getClassifyName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/mh/movie/core/mvp/model/entity/response/ClassifyListResponse$ChildListBean;

    invoke-virtual {v8}, Lcom/mh/movie/core/mvp/model/entity/response/ClassifyListResponse$ChildListBean;->getId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v6, v5

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 495
    :cond_1
    invoke-virtual {v3}, Lcom/mh/movie/core/mvp/model/entity/response/ClassifyListResponse;->getClassifyName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v4, v3, v2, v6}, Lcom/mh/movie/core/mvp/ui/activity/AllActivity;->a(Ljava/util/List;Ljava/lang/String;II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 498
    :cond_2
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/AllActivity;->o:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/AllActivity;->p:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/4 p1, 0x1

    .line 500
    invoke-direct {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/AllActivity;->a(Z)V

    return-void
.end method

.method public a(ZLjava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 328
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/AllActivity;->svState:Lcom/mh/movie/core/mvp/ui/widget/StateView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/mh/movie/core/mvp/ui/widget/StateView;->setState(I)V

    :cond_0
    return-void
.end method

.method public a(ZLjava/lang/Throwable;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 335
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/AllActivity;->svState:Lcom/mh/movie/core/mvp/ui/widget/StateView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/mh/movie/core/mvp/ui/widget/StateView;->setState(I)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 141
    new-instance p1, Lcom/mh/movie/core/mvp/model/db/BaseAnalysisEvent;

    invoke-direct {p1}, Lcom/mh/movie/core/mvp/model/db/BaseAnalysisEvent;-><init>()V

    const-string v0, "filter"

    .line 142
    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/model/db/BaseAnalysisEvent;->setType(Ljava/lang/String;)V

    const-string v0, "enterFilter"

    .line 143
    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/model/db/BaseAnalysisEvent;->setSecondaryType(Ljava/lang/String;)V

    .line 144
    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/utils/b/a;->b(Lcom/mh/movie/core/mvp/model/db/BaseAnalysisEvent;)V

    .line 145
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/AllActivity;->r:Landroid/content/Context;

    invoke-static {p1}, Lcom/jess/arms/c/e;->b(Landroid/content/Context;)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/mh/movie/core/mvp/ui/activity/AllActivity;->h:I

    .line 146
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/AllActivity;->d()V

    .line 147
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/AllActivity;->g()V

    .line 148
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/AllActivity;->f()V

    .line 149
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/AllActivity;->svState:Lcom/mh/movie/core/mvp/ui/widget/StateView;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/AllActivity;->rlContent:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/ui/widget/StateView;->setBindView(Landroid/view/View;)V

    .line 150
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/AllActivity;->b:Lcom/jess/arms/mvp/b;

    check-cast p1, Lcom/mh/movie/core/mvp/presenter/AllPresenter;

    iget v0, p0, Lcom/mh/movie/core/mvp/ui/activity/AllActivity;->u:I

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/presenter/AllPresenter;->a(I)V

    .line 151
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/AllActivity;->r:Landroid/content/Context;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/utils/NetStateUtils;->getNetWorkStates(Landroid/content/Context;)I

    move-result p1

    if-gez p1, :cond_0

    .line 152
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/AllActivity;->svState:Lcom/mh/movie/core/mvp/ui/widget/StateView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/ui/widget/StateView;->setState(I)V

    :cond_0
    return-void
.end method

.method public b(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/AllListBean;",
            ">;)V"
        }
    .end annotation

    .line 506
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    sget v1, Lcom/mh/movie/core/mvp/ui/activity/AllActivity;->c:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/activity/AllActivity;->x:Z

    .line 507
    iget v0, p0, Lcom/mh/movie/core/mvp/ui/activity/AllActivity;->w:I

    if-le v0, v3, :cond_1

    .line 508
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/AllActivity;->n:Lcom/mh/movie/core/mvp/ui/adapter/c;

    invoke-virtual {v0, p1, v3}, Lcom/mh/movie/core/mvp/ui/adapter/c;->a(Ljava/util/List;Z)V

    goto :goto_1

    .line 510
    :cond_1
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/AllActivity;->n:Lcom/mh/movie/core/mvp/ui/adapter/c;

    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/ui/adapter/c;->a(Ljava/util/List;)V

    .line 512
    :goto_1
    iget-boolean p1, p0, Lcom/mh/movie/core/mvp/ui/activity/AllActivity;->x:Z

    if-eqz p1, :cond_2

    .line 513
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/AllActivity;->k:Lcom/mh/movie/core/mvp/ui/widget/recylerview/RecyclerFooterView;

    invoke-virtual {p1, v2}, Lcom/mh/movie/core/mvp/ui/widget/recylerview/RecyclerFooterView;->setShowLoadView(Z)V

    :cond_2
    return-void
.end method

.method public c_(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 449
    invoke-static {p1}, Lcom/jess/arms/c/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    invoke-static {p1}, Lcom/jess/arms/c/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public d()V
    .locals 5

    .line 158
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/AllActivity;->topbar:Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/mh/movie/core/mvp/ui/utils/UIUtils;->initTopbar(Landroid/content/Context;Landroid/view/View;Z)V

    .line 159
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/AllActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "videoType"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/mh/movie/core/mvp/ui/activity/AllActivity;->u:I

    .line 160
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/AllActivity;->topbar:Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/AllActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "page_name"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/Topbar;->setTitle(Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/AllActivity;->topbar:Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/c;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/ui/activity/c;-><init>(Lcom/mh/movie/core/mvp/ui/activity/AllActivity;)V

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/Topbar;->setRightBarClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x3

    .line 166
    iput v0, p0, Lcom/mh/movie/core/mvp/ui/activity/AllActivity;->t:I

    .line 167
    iget v0, p0, Lcom/mh/movie/core/mvp/ui/activity/AllActivity;->t:I

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/AllActivity;->r:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/mh/movie/core/mvp/ui/utils/ViewBuildUtils;->convertParams(ILandroid/content/Context;)[I

    move-result-object v0

    .line 168
    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/AllActivity$1;

    invoke-direct {v1, p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/AllActivity$1;-><init>(Lcom/mh/movie/core/mvp/ui/activity/AllActivity;[I)V

    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/AllActivity;->n:Lcom/mh/movie/core/mvp/ui/adapter/c;

    .line 190
    new-instance v0, Lcom/mh/movie/core/mvp/ui/activity/AllActivity$2;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/AllActivity;->r:Landroid/content/Context;

    iget v2, p0, Lcom/mh/movie/core/mvp/ui/activity/AllActivity;->t:I

    invoke-direct {v0, p0, v1, v2}, Lcom/mh/movie/core/mvp/ui/activity/AllActivity$2;-><init>(Lcom/mh/movie/core/mvp/ui/activity/AllActivity;Landroid/content/Context;I)V

    .line 196
    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/AllActivity$3;

    invoke-direct {v1, p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/AllActivity$3;-><init>(Lcom/mh/movie/core/mvp/ui/activity/AllActivity;Landroid/support/v7/widget/GridLayoutManager;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/GridLayoutManager;->setSpanSizeLookup(Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 206
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/AllActivity;->recyclerContent:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 207
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/AllActivity;->recyclerContent:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/AllActivity;->n:Lcom/mh/movie/core/mvp/ui/adapter/c;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 208
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/AllActivity;->recyclerContent:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/AllActivity;->q:Lcom/mh/movie/core/mvp/ui/widget/recylerview/RecyclerOnScrollListener;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 210
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/AllActivity;->recyclerContent:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/mh/movie/core/mvp/ui/widget/h;

    iget v2, p0, Lcom/mh/movie/core/mvp/ui/activity/AllActivity;->t:I

    iget-object v3, p0, Lcom/mh/movie/core/mvp/ui/activity/AllActivity;->r:Landroid/content/Context;

    const/high16 v4, 0x40800000    # 4.0f

    invoke-static {v3, v4}, Lcom/jess/arms/c/e;->a(Landroid/content/Context;F)F

    move-result v3

    float-to-int v3, v3

    invoke-direct {v1, v2, v3}, Lcom/mh/movie/core/mvp/ui/widget/h;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    return-void
.end method

.method public e()Landroid/support/v7/widget/LinearLayoutManager;
    .locals 3

    .line 354
    new-instance v0, Lcom/mh/movie/core/mvp/ui/activity/AllActivity$4;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/AllActivity;->r:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2, v2}, Lcom/mh/movie/core/mvp/ui/activity/AllActivity$4;-><init>(Lcom/mh/movie/core/mvp/ui/activity/AllActivity;Landroid/content/Context;IZ)V

    return-object v0
.end method

.method public e_()V
    .locals 0

    return-void
.end method

.method public mobileNectWork(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lorg/simple/eventbus/Subscriber;
        tag = "CONNECTED_MOBILE"
    .end annotation

    .line 315
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/AllActivity;->svState:Lcom/mh/movie/core/mvp/ui/widget/StateView;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/ui/widget/StateView;->setState(I)V

    .line 316
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/AllActivity;->b:Lcom/jess/arms/mvp/b;

    check-cast p1, Lcom/mh/movie/core/mvp/presenter/AllPresenter;

    iget v0, p0, Lcom/mh/movie/core/mvp/ui/activity/AllActivity;->u:I

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/presenter/AllPresenter;->a(I)V

    return-void
.end method

.method public noNectWork(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lorg/simple/eventbus/Subscriber;
        tag = "CONNECTED_WHITHOUT_NET"
    .end annotation

    .line 310
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/AllActivity;->svState:Lcom/mh/movie/core/mvp/ui/widget/StateView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/ui/widget/StateView;->setState(I)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 546
    invoke-super {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/ac;->onCreate(Landroid/os/Bundle;)V

    .line 547
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    return-void
.end method

.method public onViewClicked(Landroid/view/View;)V
    .locals 4

    .line 340
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 341
    sget v1, Lcom/mh/movie/core/R$id;->cb_more_play:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 342
    invoke-direct {p0, v0, v2}, Lcom/mh/movie/core/mvp/ui/activity/AllActivity;->a(II)V

    goto :goto_0

    .line 343
    :cond_0
    sget v1, Lcom/mh/movie/core/R$id;->cb_more_update:I

    const/4 v3, 0x2

    if-ne v0, v1, :cond_1

    .line 344
    invoke-direct {p0, v2, v3}, Lcom/mh/movie/core/mvp/ui/activity/AllActivity;->a(II)V

    goto :goto_0

    .line 345
    :cond_1
    sget v1, Lcom/mh/movie/core/R$id;->cb_more_like:I

    const/4 v2, 0x3

    if-ne v0, v1, :cond_2

    .line 346
    invoke-direct {p0, v3, v2}, Lcom/mh/movie/core/mvp/ui/activity/AllActivity;->a(II)V

    goto :goto_0

    .line 347
    :cond_2
    sget v1, Lcom/mh/movie/core/R$id;->cb_more_score:I

    if-ne v0, v1, :cond_3

    const/4 v0, 0x5

    .line 348
    invoke-direct {p0, v2, v0}, Lcom/mh/movie/core/mvp/ui/activity/AllActivity;->a(II)V

    .line 350
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/AllActivity;->m:Lcom/mh/movie/core/mvp/model/entity/FilterEntity;

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/model/entity/FilterEntity;->setLabel(Ljava/lang/String;)V

    return-void
.end method

.method public wifiNectWork(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lorg/simple/eventbus/Subscriber;
        tag = "CONNECT_WIFI"
    .end annotation

    .line 321
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/AllActivity;->svState:Lcom/mh/movie/core/mvp/ui/widget/StateView;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/ui/widget/StateView;->setState(I)V

    .line 322
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/AllActivity;->b:Lcom/jess/arms/mvp/b;

    check-cast p1, Lcom/mh/movie/core/mvp/presenter/AllPresenter;

    iget v0, p0, Lcom/mh/movie/core/mvp/ui/activity/AllActivity;->u:I

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/presenter/AllPresenter;->a(I)V

    return-void
.end method
