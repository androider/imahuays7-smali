.class public Lcom/mh/movie/core/mvp/ui/activity/player/ScreeningActivity;
.super Lcom/mh/movie/core/mvp/ui/activity/ac;
.source "ScreeningActivity.java"

# interfaces
.implements Lcom/mh/movie/core/mvp/a/b/c$b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mh/movie/core/mvp/ui/activity/ac<",
        "Lcom/mh/movie/core/mvp/presenter/player/ScreeningPresenter;",
        ">;",
        "Lcom/mh/movie/core/mvp/a/b/c$b;"
    }
.end annotation


# instance fields
.field c:Lcom/mh/movie/core/mvp/ui/adapter/player/a;

.field d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroid/view/animation/Animation;

.field private f:Landroid/view/animation/Animation;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Lcom/mh/movie/core/andserver/b;

.field ivScreenLoading:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c0182
    .end annotation
.end field

.field ivScreenRefresh:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c0183
    .end annotation
.end field

.field llAirScreenFeedback:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c01bf
    .end annotation
.end field

.field llScreenDeviceContains:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c0211
    .end annotation
.end field

.field llScreenRefresh:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c0212
    .end annotation
.end field

.field refreshTips:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c02cf
    .end annotation
.end field

.field rvAirScreenDeviceList:Landroid/support/v7/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c0305
    .end annotation
.end field

.field topbar:Lcom/mh/movie/core/mvp/ui/widget/Topbar;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c0380
    .end annotation
.end field

.field tvScreenContent:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c0452
    .end annotation
.end field

.field tvScreenLoading:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c0453
    .end annotation
.end field

.field tvScreenTitle:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c0454
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/ac;-><init>()V

    const/4 v0, 0x0

    .line 83
    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ScreeningActivity;->c:Lcom/mh/movie/core/mvp/ui/adapter/player/a;

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ScreeningActivity;->d:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/mh/movie/core/mvp/ui/activity/player/ScreeningActivity;)Lcom/jess/arms/mvp/b;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ScreeningActivity;->b:Lcom/jess/arms/mvp/b;

    return-object p0
.end method

.method private k()V
    .locals 4

    .line 258
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, p0, v2, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 259
    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ScreeningActivity;->rvAirScreenDeviceList:Landroid/support/v7/widget/RecyclerView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 260
    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ScreeningActivity;->rvAirScreenDeviceList:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 261
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ScreeningActivity;->rvAirScreenDeviceList:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setFocusable(Z)V

    .line 262
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ScreeningActivity;->rvAirScreenDeviceList:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 263
    new-instance v0, Lcom/mh/movie/core/mvp/ui/adapter/player/a;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ScreeningActivity;->d:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/mh/movie/core/mvp/ui/adapter/player/a;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ScreeningActivity;->c:Lcom/mh/movie/core/mvp/ui/adapter/player/a;

    .line 264
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ScreeningActivity;->c:Lcom/mh/movie/core/mvp/ui/adapter/player/a;

    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/player/ScreeningActivity$2;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/ui/activity/player/ScreeningActivity$2;-><init>(Lcom/mh/movie/core/mvp/ui/activity/player/ScreeningActivity;)V

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/adapter/player/a;->a(Lcom/mh/movie/core/mvp/ui/adapter/player/a$a;)V

    .line 270
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ScreeningActivity;->rvAirScreenDeviceList:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ScreeningActivity;->c:Lcom/mh/movie/core/mvp/ui/adapter/player/a;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method private l()V
    .locals 9

    .line 275
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ScreeningActivity;->e:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ScreeningActivity;->ivScreenLoading:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ScreeningActivity;->e:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void

    .line 279
    :cond_0
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v3, 0x0

    const/high16 v4, 0x43b40000    # 360.0f

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ScreeningActivity;->e:Landroid/view/animation/Animation;

    .line 280
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ScreeningActivity;->e:Landroid/view/animation/Animation;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 281
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ScreeningActivity;->e:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 283
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 284
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ScreeningActivity;->e:Landroid/view/animation/Animation;

    invoke-virtual {v1, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 286
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ScreeningActivity;->e:Landroid/view/animation/Animation;

    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/player/ScreeningActivity$3;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/ui/activity/player/ScreeningActivity$3;-><init>(Lcom/mh/movie/core/mvp/ui/activity/player/ScreeningActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 300
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ScreeningActivity;->ivScreenLoading:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ScreeningActivity;->e:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private m()V
    .locals 9

    .line 304
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ScreeningActivity;->f:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ScreeningActivity;->ivScreenRefresh:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ScreeningActivity;->f:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void

    .line 308
    :cond_0
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v3, 0x0

    const/high16 v4, 0x43b40000    # 360.0f

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ScreeningActivity;->f:Landroid/view/animation/Animation;

    .line 309
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ScreeningActivity;->f:Landroid/view/animation/Animation;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 310
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ScreeningActivity;->f:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 312
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 313
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ScreeningActivity;->f:Landroid/view/animation/Animation;

    invoke-virtual {v1, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 315
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ScreeningActivity;->f:Landroid/view/animation/Animation;

    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/player/ScreeningActivity$4;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/ui/activity/player/ScreeningActivity$4;-><init>(Lcom/mh/movie/core/mvp/ui/activity/player/ScreeningActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 329
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ScreeningActivity;->ivScreenRefresh:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ScreeningActivity;->f:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private n()V
    .locals 1

    .line 333
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ScreeningActivity;->e:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ScreeningActivity;->e:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    .line 336
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ScreeningActivity;->f:Landroid/view/animation/Animation;

    if-eqz v0, :cond_1

    .line 337
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ScreeningActivity;->f:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    .line 339
    :cond_1
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ScreeningActivity;->ivScreenLoading:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 340
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ScreeningActivity;->ivScreenRefresh:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)I
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 104
    sget p1, Lcom/mh/movie/core/R$layout;->activity_screening:I

    return p1
.end method

.method final synthetic a(Landroid/view/View;)V
    .locals 1

    .line 136
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/mh/movie/core/mvp/ui/activity/FeedBackActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 137
    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/player/ScreeningActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public a(Lcom/jess/arms/b/a/a;)V
    .locals 1
    .param p1    # Lcom/jess/arms/b/a/a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 95
    invoke-static {}, Lcom/mh/movie/core/a/a/b/b;->a()Lcom/mh/movie/core/a/a/b/b$a;

    move-result-object v0

    .line 96
    invoke-virtual {v0, p1}, Lcom/mh/movie/core/a/a/b/b$a;->a(Lcom/jess/arms/b/a/a;)Lcom/mh/movie/core/a/a/b/b$a;

    move-result-object p1

    new-instance v0, Lcom/mh/movie/core/a/b/b/g;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/a/b/b/g;-><init>(Lcom/mh/movie/core/mvp/a/b/c$b;)V

    .line 97
    invoke-virtual {p1, v0}, Lcom/mh/movie/core/a/a/b/b$a;->a(Lcom/mh/movie/core/a/b/b/g;)Lcom/mh/movie/core/a/a/b/b$a;

    move-result-object p1

    .line 98
    invoke-virtual {p1}, Lcom/mh/movie/core/a/a/b/b$a;->a()Lcom/mh/movie/core/a/a/b/e;

    move-result-object p1

    .line 99
    invoke-interface {p1, p0}, Lcom/mh/movie/core/a/a/b/e;->a(Lcom/mh/movie/core/mvp/ui/activity/player/ScreeningActivity;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .line 222
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "title"

    .line 223
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "deviceName"

    .line 224
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "durtaion"

    .line 225
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 226
    sget p1, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->c:I

    invoke-virtual {p0, p1, v0}, Lcom/mh/movie/core/mvp/ui/activity/player/ScreeningActivity;->setResult(ILandroid/content/Intent;)V

    .line 227
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/ScreeningActivity;->finish()V

    return-void
.end method

.method public a(Ljava/util/List;J)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    const/16 p2, 0x8

    if-gez v2, :cond_1

    .line 145
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ScreeningActivity;->d:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 146
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/ScreeningActivity;->f()V

    .line 148
    :cond_0
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ScreeningActivity;->llScreenRefresh:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 149
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ScreeningActivity;->ivScreenRefresh:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->clearAnimation()V

    .line 150
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ScreeningActivity;->refreshTips:Landroid/widget/TextView;

    const-string p2, "\u641c\u7d22\u5b8c\u6210"

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 153
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 154
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/ScreeningActivity;->e()V

    return-void

    .line 157
    :cond_2
    iget-object p3, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ScreeningActivity;->llScreenRefresh:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const-string p3, "\u8bbe\u5907\u641c\u7d22\u4e2d..."

    .line 158
    invoke-virtual {p0, p3}, Lcom/mh/movie/core/mvp/ui/activity/player/ScreeningActivity;->c(Ljava/lang/String;)V

    .line 159
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/ScreeningActivity;->m()V

    .line 160
    iget-object p3, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ScreeningActivity;->rvAirScreenDeviceList:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p3, v0}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 161
    iget-object p3, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ScreeningActivity;->ivScreenLoading:Landroid/widget/ImageView;

    invoke-virtual {p3, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 162
    iget-object p3, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ScreeningActivity;->ivScreenLoading:Landroid/widget/ImageView;

    invoke-virtual {p3}, Landroid/widget/ImageView;->clearAnimation()V

    .line 163
    iget-object p3, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ScreeningActivity;->tvScreenLoading:Landroid/widget/TextView;

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 164
    iget-object p3, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ScreeningActivity;->tvScreenTitle:Landroid/widget/TextView;

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 165
    iget-object p3, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ScreeningActivity;->tvScreenContent:Landroid/widget/TextView;

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 166
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ScreeningActivity;->d:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 167
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ScreeningActivity;->d:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 168
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ScreeningActivity;->c:Lcom/mh/movie/core/mvp/ui/adapter/player/a;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/ui/adapter/player/a;->notifyDataSetChanged()V

    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 5
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 111
    sget-boolean p1, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->o:Z

    if-eqz p1, :cond_0

    .line 112
    new-instance p1, Lcom/mh/movie/core/andserver/b;

    invoke-direct {p1, p0}, Lcom/mh/movie/core/andserver/b;-><init>(Lcom/mh/movie/core/mvp/ui/activity/player/ScreeningActivity;)V

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ScreeningActivity;->i:Lcom/mh/movie/core/andserver/b;

    .line 113
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ScreeningActivity;->i:Lcom/mh/movie/core/andserver/b;

    invoke-virtual {p1}, Lcom/mh/movie/core/andserver/b;->a()V

    .line 115
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ScreeningActivity;->i:Lcom/mh/movie/core/andserver/b;

    invoke-virtual {p1}, Lcom/mh/movie/core/andserver/b;->b()V

    .line 118
    :cond_0
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ScreeningActivity;->topbar:Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/mh/movie/core/mvp/ui/utils/UIUtils;->initTopbar(Landroid/content/Context;Landroid/view/View;Z)V

    .line 119
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ScreeningActivity;->topbar:Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    new-instance v0, Lcom/mh/movie/core/mvp/ui/activity/player/ScreeningActivity$1;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/mvp/ui/activity/player/ScreeningActivity$1;-><init>(Lcom/mh/movie/core/mvp/ui/activity/player/ScreeningActivity;)V

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/ui/widget/Topbar;->setRightBarClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ScreeningActivity;->d:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 126
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ScreeningActivity;->b:Lcom/jess/arms/mvp/b;

    check-cast p1, Lcom/mh/movie/core/mvp/presenter/player/ScreeningPresenter;

    invoke-virtual {p1, p0}, Lcom/mh/movie/core/mvp/presenter/player/ScreeningPresenter;->a(Landroid/app/Activity;)V

    .line 127
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/ScreeningActivity;->k()V

    .line 129
    sget p1, Lcom/mh/movie/core/R$id;->rv_air_screen_img:I

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/player/ScreeningActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 130
    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 131
    invoke-static {p0}, Lcom/jess/arms/c/a;->b(Landroid/content/Context;)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 132
    iget v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    int-to-double v1, v1

    const-wide v3, 0x4002d916872b020cL    # 2.356

    mul-double v1, v1, v3

    double-to-int v1, v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 133
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 135
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ScreeningActivity;->llAirScreenFeedback:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/mh/movie/core/mvp/ui/activity/player/x;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/mvp/ui/activity/player/x;-><init>(Lcom/mh/movie/core/mvp/ui/activity/player/ScreeningActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/ScreeningActivity;->g()V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    .line 196
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ScreeningActivity;->rvAirScreenDeviceList:Landroid/support/v7/widget/RecyclerView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 197
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ScreeningActivity;->ivScreenLoading:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 198
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ScreeningActivity;->tvScreenLoading:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 199
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ScreeningActivity;->tvScreenTitle:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 200
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ScreeningActivity;->tvScreenContent:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 201
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ScreeningActivity;->tvScreenTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ScreeningActivity;->tvScreenContent:Landroid/widget/TextView;

    const-string v0, "\u8bf7\u5c06\u624b\u673a\u4e0e\u7535\u89c6/\u76d2\u5b50\u8fde\u63a5\u540c\u4e00WIFI\u3002\u4ecd\u6709\u95ee\u9898\u8bf7\u67e5\u770b\u4e0b\u9762\u8bf4\u660e\u3002"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 356
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ScreeningActivity;->h:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ScreeningActivity;->ivScreenRefresh:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 217
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ScreeningActivity;->refreshTips:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .line 360
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ScreeningActivity;->g:Ljava/lang/String;

    .line 361
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/ScreeningActivity;->h()V

    return-void
.end method

.method public e()V
    .locals 3

    .line 173
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ScreeningActivity;->rvAirScreenDeviceList:Landroid/support/v7/widget/RecyclerView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 174
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ScreeningActivity;->ivScreenLoading:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 175
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ScreeningActivity;->tvScreenLoading:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 176
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ScreeningActivity;->tvScreenTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 177
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ScreeningActivity;->tvScreenContent:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 178
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/ScreeningActivity;->l()V

    return-void
.end method

.method public f()V
    .locals 3

    .line 183
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ScreeningActivity;->rvAirScreenDeviceList:Landroid/support/v7/widget/RecyclerView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 184
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ScreeningActivity;->ivScreenLoading:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 185
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ScreeningActivity;->ivScreenLoading:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 186
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ScreeningActivity;->tvScreenLoading:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 187
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ScreeningActivity;->tvScreenTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 188
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ScreeningActivity;->tvScreenContent:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 189
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ScreeningActivity;->llScreenRefresh:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 190
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ScreeningActivity;->ivScreenRefresh:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 191
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ScreeningActivity;->tvScreenContent:Landroid/widget/TextView;

    const-string v1, "\u672a\u627e\u5230\u8bbe\u5907\uff0c\u70b9\u51fb\u53f3\u4e0a\u89d2\u91cd\u8bd5!"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public g()V
    .locals 2

    .line 208
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ScreeningActivity;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 209
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ScreeningActivity;->b:Lcom/jess/arms/mvp/b;

    check-cast v0, Lcom/mh/movie/core/mvp/presenter/player/ScreeningPresenter;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/presenter/player/ScreeningPresenter;->e()V

    .line 210
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ScreeningActivity;->llScreenRefresh:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 211
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ScreeningActivity;->ivScreenRefresh:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    return-void
.end method

.method public h()V
    .locals 2

    .line 344
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ScreeningActivity;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 345
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ScreeningActivity;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":8080/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ScreeningActivity;->h:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 245
    invoke-super {p0}, Lcom/mh/movie/core/mvp/ui/activity/ac;->onDestroy()V

    .line 246
    sget-boolean v0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->o:Z

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ScreeningActivity;->i:Lcom/mh/movie/core/andserver/b;

    invoke-virtual {v0}, Lcom/mh/movie/core/andserver/b;->c()V

    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 238
    invoke-super {p0}, Lcom/mh/movie/core/mvp/ui/activity/ac;->onPause()V

    .line 239
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/ScreeningActivity;->n()V

    return-void
.end method
