.class public Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;
.super Lcom/mh/movie/core/mvp/ui/activity/ac;
.source "WatchedShareActivity.java"

# interfaces
.implements Lcom/mh/movie/core/c/a;
.implements Lcom/mh/movie/core/mvp/a/bl$b;
.implements Lcom/sina/weibo/sdk/share/WbShareCallback;
.implements Lcom/tencent/tauth/IUiListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity$a;,
        Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mh/movie/core/mvp/ui/activity/ac<",
        "Lcom/mh/movie/core/mvp/presenter/WatchedSharePresenter;",
        ">;",
        "Lcom/mh/movie/core/c/a;",
        "Lcom/mh/movie/core/mvp/a/bl$b;",
        "Lcom/sina/weibo/sdk/share/WbShareCallback;",
        "Lcom/tencent/tauth/IUiListener;"
    }
.end annotation


# instance fields
.field public c:Ljava/lang/String;

.field private d:Lcom/mh/movie/core/mvp/ui/adapter/ShareAdapter;

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:Ljava/lang/String;

.field ivBackground:Lcom/facebook/drawee/view/SimpleDraweeView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c0132
    .end annotation
.end field

.field ivBackground2:Lcom/facebook/drawee/view/SimpleDraweeView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c0133
    .end annotation
.end field

.field ivHeadPic:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c014a
    .end annotation
.end field

.field ivImage:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c0151
    .end annotation
.end field

.field ivQrcode:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c017e
    .end annotation
.end field

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Landroid/graphics/Bitmap;

.field llCaptureArea:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c01c4
    .end annotation
.end field

.field llCaptureView:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c01c5
    .end annotation
.end field

.field llLayoutHeight:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c01e0
    .end annotation
.end field

.field private m:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

.field private n:Lcom/mh/movie/core/mvp/model/entity/ShareRequest;

.field rvShare:Landroid/support/v7/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c0311
    .end annotation
.end field

.field topbar:Lcom/mh/movie/core/mvp/ui/widget/Topbar;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c0380
    .end annotation
.end field

.field tvMovieName:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c040b
    .end annotation
.end field

.field tvUserName:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c0484
    .end annotation
.end field

.field tvWatchedNum:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c04a8
    .end annotation
.end field

.field tvWatchedTime:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c04a9
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/ac;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 162
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "watched_count"

    .line 163
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "videoType"

    .line 164
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "video_info_id"

    .line 165
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "video_id"

    .line 166
    invoke-virtual {v0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "cover_url"

    .line 167
    invoke-virtual {v0, p1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "video_title"

    .line 168
    invoke-virtual {v0, p1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "share_url"

    .line 169
    invoke-virtual {v0, p1, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 170
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic a(Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;->m()V

    return-void
.end method

.method static synthetic b(Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;)Lcom/mh/movie/core/mvp/model/entity/ShareRequest;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;->n:Lcom/mh/movie/core/mvp/model/entity/ShareRequest;

    return-object p0
.end method

.method static synthetic c(Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;)Landroid/graphics/Bitmap;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;->l:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic d(Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;->n()V

    return-void
.end method

.method static synthetic e(Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;)I
    .locals 0

    .line 65
    iget p0, p0, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;->g:I

    return p0
.end method

.method static synthetic f(Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;)Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;->m:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    return-object p0
.end method

.method private m()V
    .locals 4

    .line 299
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 300
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;->llCaptureArea:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v1

    .line 301
    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;->r:Landroid/content/Context;

    const/high16 v3, 0x42980000    # 76.0f

    invoke-static {v2, v3}, Lcom/jess/arms/c/e;->a(Landroid/content/Context;F)F

    move-result v2

    float-to-int v2, v2

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    .line 302
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;->r:Landroid/content/Context;

    const/high16 v3, 0x42800000    # 64.0f

    invoke-static {v1, v3}, Lcom/jess/arms/c/e;->a(Landroid/content/Context;F)F

    move-result v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    const/4 v1, 0x0

    if-le v0, v2, :cond_0

    .line 305
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;->d:Lcom/mh/movie/core/mvp/ui/adapter/ShareAdapter;

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/adapter/ShareAdapter;->a(Z)V

    .line 306
    new-instance v0, Landroid/support/v7/widget/GridLayoutManager;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;->r:Landroid/content/Context;

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 307
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;->rvShare:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    goto :goto_0

    .line 309
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;->d:Lcom/mh/movie/core/mvp/ui/adapter/ShareAdapter;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/mh/movie/core/mvp/ui/adapter/ShareAdapter;->a(Z)V

    .line 310
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;->r:Landroid/content/Context;

    invoke-direct {v0, v2, v1, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 311
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;->rvShare:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 313
    :goto_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;->rvShare:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;->d:Lcom/mh/movie/core/mvp/ui/adapter/ShareAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method private n()V
    .locals 2

    .line 475
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;->m:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    const-string v1, "\u6e29\u99a8\u63d0\u793a"

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->a(Ljava/lang/String;)V

    .line 476
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;->m:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    const-string v1, "\u5b58\u50a8\u6743\u9650\u7f3a\u5931\uff0c\u65e0\u6cd5\u4fdd\u5b58\u56fe\u7247\u5230\u76f8\u518c"

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->b(Ljava/lang/String;)V

    .line 477
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;->m:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    const-string v1, "\u7acb\u5373\u8bbe\u7f6e"

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->d(Ljava/lang/String;)V

    .line 478
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;->m:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    const-string v1, "\u4ee5\u540e\u518d\u8bf4"

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->e(Ljava/lang/String;)V

    .line 479
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;->m:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity$7;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity$7;-><init>(Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;)V

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->a(Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog$a;)V

    .line 491
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;->m:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->show()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)I
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 158
    sget p1, Lcom/mh/movie/core/R$layout;->activity_watched_share:I

    return p1
.end method

.method public a(I)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 293
    :pswitch_0
    invoke-static {}, Lcom/mh/movie/core/c/b;->a()Lcom/mh/movie/core/c/b;

    move-result-object p1

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;->n:Lcom/mh/movie/core/mvp/model/entity/ShareRequest;

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/c/b;->g(Lcom/mh/movie/core/mvp/model/entity/ShareRequest;)V

    goto :goto_0

    .line 290
    :pswitch_1
    invoke-static {}, Lcom/mh/movie/core/c/b;->a()Lcom/mh/movie/core/c/b;

    move-result-object p1

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;->n:Lcom/mh/movie/core/mvp/model/entity/ShareRequest;

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/c/b;->f(Lcom/mh/movie/core/mvp/model/entity/ShareRequest;)V

    goto :goto_0

    .line 287
    :pswitch_2
    invoke-static {}, Lcom/mh/movie/core/c/b;->a()Lcom/mh/movie/core/c/b;

    move-result-object p1

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;->n:Lcom/mh/movie/core/mvp/model/entity/ShareRequest;

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/c/b;->e(Lcom/mh/movie/core/mvp/model/entity/ShareRequest;)V

    goto :goto_0

    .line 284
    :pswitch_3
    invoke-static {}, Lcom/mh/movie/core/c/b;->a()Lcom/mh/movie/core/c/b;

    move-result-object p1

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;->n:Lcom/mh/movie/core/mvp/model/entity/ShareRequest;

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/c/b;->c(Lcom/mh/movie/core/mvp/model/entity/ShareRequest;)V

    goto :goto_0

    .line 281
    :pswitch_4
    invoke-static {}, Lcom/mh/movie/core/c/b;->a()Lcom/mh/movie/core/c/b;

    move-result-object p1

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;->n:Lcom/mh/movie/core/mvp/model/entity/ShareRequest;

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/c/b;->d(Lcom/mh/movie/core/mvp/model/entity/ShareRequest;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(II)V
    .locals 2

    const-string v0, ""

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    const-string v0, "\u7535\u5f71"

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne p2, v1, :cond_1

    const-string v0, "\u7535\u89c6\u5267"

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    if-ne p2, v1, :cond_2

    const-string v0, "\u52a8\u6f2b"

    goto :goto_0

    :cond_2
    const/4 v1, 0x4

    if-ne p2, v1, :cond_3

    const-string v0, "\u7efc\u827a"

    .line 347
    :cond_3
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u6211\u770b\u7684\u7b2c "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " \u90e8"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 349
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;->tvWatchedNum:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public a(Lcom/jess/arms/b/a/a;)V
    .locals 1
    .param p1    # Lcom/jess/arms/b/a/a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 144
    invoke-static {}, Lcom/mh/movie/core/a/a/bv;->a()Lcom/mh/movie/core/a/a/bv$a;

    move-result-object v0

    .line 145
    invoke-virtual {v0, p1}, Lcom/mh/movie/core/a/a/bv$a;->a(Lcom/jess/arms/b/a/a;)Lcom/mh/movie/core/a/a/bv$a;

    move-result-object p1

    new-instance v0, Lcom/mh/movie/core/a/b/fw;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/a/b/fw;-><init>(Lcom/mh/movie/core/mvp/a/bl$b;)V

    .line 146
    invoke-virtual {p1, v0}, Lcom/mh/movie/core/a/a/bv$a;->a(Lcom/mh/movie/core/a/b/fw;)Lcom/mh/movie/core/a/a/bv$a;

    move-result-object p1

    .line 147
    invoke-virtual {p1}, Lcom/mh/movie/core/a/a/bv$a;->a()Lcom/mh/movie/core/a/a/dt;

    move-result-object p1

    .line 148
    invoke-interface {p1, p0}, Lcom/mh/movie/core/a/a/dt;->a(Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;)V

    return-void
.end method

.method public a(Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity$a;)V
    .locals 4

    .line 445
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;->rvShare:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 446
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/be;

    invoke-direct {v1, p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/be;-><init>(Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity$a;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public a(Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity$b;)V
    .locals 2

    .line 461
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;->r:Landroid/content/Context;

    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity$6;

    invoke-direct {v1, p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity$6;-><init>(Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity$b;)V

    invoke-static {v0, v1}, Lcom/mh/movie/core/mvp/ui/utils/PermissionUtils;->externalStorage(Landroid/content/Context;Lcom/mh/movie/core/mvp/ui/utils/PermissionUtils$RequestPermission;)V

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 175
    sget p1, Lcom/mh/movie/core/R$color;->white:I

    invoke-static {p0, p1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    const/4 v0, 0x1

    invoke-static {p0, v0, p1}, Lcom/mh/movie/core/mvp/ui/utils/UIUtils;->setImmersiveStatusBar(Landroid/app/Activity;ZI)V

    .line 177
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "watched_count"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;->e:I

    .line 178
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "videoType"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;->f:I

    .line 179
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "video_info_id"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;->g:I

    .line 180
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "video_id"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;->h:I

    .line 181
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "cover_url"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;->i:Ljava/lang/String;

    .line 182
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "video_title"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;->j:Ljava/lang/String;

    .line 183
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "share_url"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;->k:Ljava/lang/String;

    .line 185
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;->topbar:Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity$1;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity$1;-><init>(Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;)V

    invoke-virtual {p1, v1}, Lcom/mh/movie/core/mvp/ui/widget/Topbar;->setLeftBarClickListener(Landroid/view/View$OnClickListener;)V

    const-string p1, "yyyy-MM-dd"

    .line 193
    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-static {p1, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 195
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;->tvWatchedTime:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;->tvMovieName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;->j:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;->k:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "?t="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/mh/movie/core/mvp/ui/b;->a()Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;->getInvitationCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&a="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/mh/movie/core/mvp/ui/utils/RHelp;->getPackageId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;->c:Ljava/lang/String;

    .line 200
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;->c:Ljava/lang/String;

    const/16 v1, 0x30

    invoke-static {p1, v1}, Lcom/mh/movie/core/mvp/ui/utils/QRCode;->createQRCode(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 201
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;->ivQrcode:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 203
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;->e()V

    .line 204
    iget p1, p0, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;->e:I

    iget v1, p0, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;->f:I

    invoke-virtual {p0, p1, v1}, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;->a(II)V

    .line 206
    new-instance p1, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    invoke-direct {p1, p0, v0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;->m:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    .line 214
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;->ivBackground2:Lcom/facebook/drawee/view/SimpleDraweeView;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;->i:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-static {p1, v1, v0, v2}, Lcom/mh/movie/core/mvp/ui/utils/ViewBuildUtils;->showUrlBlur(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;II)V

    .line 215
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;->ivBackground:Lcom/facebook/drawee/view/SimpleDraweeView;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;->i:Ljava/lang/String;

    const/16 v1, 0xa

    invoke-static {p1, v0, v2, v1}, Lcom/mh/movie/core/mvp/ui/utils/ViewBuildUtils;->showUrlBlur(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;II)V

    .line 216
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object p1

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;->ivImage:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 218
    new-instance p1, Lcom/mh/movie/core/mvp/ui/adapter/ShareAdapter;

    invoke-direct {p1}, Lcom/mh/movie/core/mvp/ui/adapter/ShareAdapter;-><init>()V

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;->d:Lcom/mh/movie/core/mvp/ui/adapter/ShareAdapter;

    .line 219
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;->llCaptureArea:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance v0, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity$2;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity$2;-><init>(Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 226
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;->d:Lcom/mh/movie/core/mvp/ui/adapter/ShareAdapter;

    new-instance v0, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity$3;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity$3;-><init>(Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;)V

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/ui/adapter/ShareAdapter;->a(Lcom/mh/movie/core/mvp/ui/adapter/ShareAdapter$a;)V

    return-void
.end method

.method final synthetic b(Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity$a;)V
    .locals 5

    .line 447
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;->llCaptureView:Landroid/widget/RelativeLayout;

    const/4 v1, 0x1

    .line 449
    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 450
    invoke-virtual {v0}, Landroid/view/View;->buildDrawingCache()V

    .line 451
    invoke-virtual {v0}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;->llCaptureArea:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;->r:Landroid/content/Context;

    const/high16 v4, 0x42a00000    # 80.0f

    invoke-static {v3, v4}, Lcom/jess/arms/c/e;->a(Landroid/content/Context;F)F

    move-result v3

    float-to-int v3, v3

    add-int/2addr v2, v3

    const/4 v3, 0x0

    invoke-static {v1, v3, v3, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;->l:Landroid/graphics/Bitmap;

    .line 453
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;->rvShare:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    if-eqz p1, :cond_0

    .line 455
    invoke-interface {p1}, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity$a;->a()V

    :cond_0
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    .line 530
    invoke-static {}, Lcom/mh/movie/core/c/b;->a()Lcom/mh/movie/core/c/b;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/c/b;->b(Ljava/lang/String;)V

    .line 531
    invoke-static {p0, p1}, Lcom/mh/movie/core/mvp/ui/utils/T;->showShort(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public c_(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 398
    invoke-static {p1}, Lcom/jess/arms/c/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    invoke-static {p1}, Lcom/jess/arms/c/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public e()V
    .locals 3

    .line 324
    invoke-static {}, Lcom/mh/movie/core/mvp/ui/b;->a()Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;->getAvatarUrl()Ljava/lang/String;

    move-result-object v0

    .line 325
    invoke-static {}, Lcom/bumptech/glide/request/RequestOptions;->circleCropTransform()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v1

    if-eqz v0, :cond_0

    const-string v2, ""

    .line 326
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 327
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;->ivHeadPic:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    goto :goto_0

    .line 329
    :cond_0
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    sget v2, Lcom/mh/movie/core/R$mipmap;->header_img:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;->ivHeadPic:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 332
    :goto_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;->tvUserName:Landroid/widget/TextView;

    invoke-static {}, Lcom/mh/movie/core/mvp/ui/b;->a()Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;->getNickName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public e_()V
    .locals 0

    return-void
.end method

.method public f()V
    .locals 5

    .line 354
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u300a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u300b\u8fd9\u7247\u5b50\u633a\u4e0d\u9519\u7684"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u6211\u521a\u770b\u5b8c,\u611f\u89c9\u5f88\u597d\u770b,\u4e5f\u53d1\u7ed9\u4f60\u770b\u4e0b"

    .line 356
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u300a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;->j:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\u300b\u8fd9\u7247\u5b50\u633a\u4e0d\u9519\u7684\uff0c\u6211\u521a\u770b\u5b8c,\u611f\u89c9\u5f88\u597d\u770b,\u4e5f\u53d1\u7ed9\u4f60\u770b\u4e0b "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 358
    invoke-static {}, Lcom/mh/movie/core/c/b;->a()Lcom/mh/movie/core/c/b;

    move-result-object v3

    invoke-virtual {v3, p0, p0, p0, p0}, Lcom/mh/movie/core/c/b;->a(Landroid/content/Context;Landroid/app/Activity;Lcom/mh/movie/core/c/a;Lcom/tencent/tauth/IUiListener;)V

    .line 360
    new-instance v3, Lcom/mh/movie/core/mvp/model/entity/ShareRequest;

    invoke-direct {v3}, Lcom/mh/movie/core/mvp/model/entity/ShareRequest;-><init>()V

    iput-object v3, p0, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;->n:Lcom/mh/movie/core/mvp/model/entity/ShareRequest;

    .line 362
    iget-object v3, p0, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;->n:Lcom/mh/movie/core/mvp/model/entity/ShareRequest;

    iget v4, p0, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;->h:I

    invoke-virtual {v3, v4}, Lcom/mh/movie/core/mvp/model/entity/ShareRequest;->setVideoId(I)V

    .line 363
    iget-object v3, p0, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;->n:Lcom/mh/movie/core/mvp/model/entity/ShareRequest;

    iget v4, p0, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;->g:I

    invoke-virtual {v3, v4}, Lcom/mh/movie/core/mvp/model/entity/ShareRequest;->setVideoInfoId(I)V

    .line 364
    iget-object v3, p0, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;->n:Lcom/mh/movie/core/mvp/model/entity/ShareRequest;

    iget v4, p0, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;->f:I

    invoke-virtual {v3, v4}, Lcom/mh/movie/core/mvp/model/entity/ShareRequest;->setVideoType(I)V

    .line 366
    iget-object v3, p0, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;->n:Lcom/mh/movie/core/mvp/model/entity/ShareRequest;

    const-string v4, "imageUrl"

    invoke-virtual {v3, v4}, Lcom/mh/movie/core/mvp/model/entity/ShareRequest;->setType(Ljava/lang/String;)V

    .line 367
    iget-object v3, p0, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;->n:Lcom/mh/movie/core/mvp/model/entity/ShareRequest;

    invoke-virtual {v3, v0}, Lcom/mh/movie/core/mvp/model/entity/ShareRequest;->setTitle(Ljava/lang/String;)V

    .line 368
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;->n:Lcom/mh/movie/core/mvp/model/entity/ShareRequest;

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/model/entity/ShareRequest;->setDescription(Ljava/lang/String;)V

    .line 369
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;->n:Lcom/mh/movie/core/mvp/model/entity/ShareRequest;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;->l:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/model/entity/ShareRequest;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 370
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;->n:Lcom/mh/movie/core/mvp/model/entity/ShareRequest;

    invoke-virtual {v0, v2}, Lcom/mh/movie/core/mvp/model/entity/ShareRequest;->setContent(Ljava/lang/String;)V

    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 3

    .line 375
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "t="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/mh/movie/core/mvp/ui/b;->a()Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;->getInvitationCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&a="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/mh/movie/core/mvp/ui/b;->C:Lcom/mh/movie/core/mvp/ui/utils/AppInfo;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/ui/utils/AppInfo;->getPackageId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 376
    invoke-static {v1}, Lcom/mh/movie/core/mvp/ui/utils/AesUtil;->getKey(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mh/movie/core/mvp/ui/utils/AesUtil;->encryptToHex(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 378
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;->r:Landroid/content/Context;

    invoke-static {v1}, Lcom/mh/movie/core/mvp/ui/utils/RHelp;->getHTML_URL(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 379
    invoke-static {v1}, Lcom/raizlabs/android/dbflow/a;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, ""

    return-object v0

    .line 383
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/mh/movie/core/mvp/ui/utils/RHelp;->SHARE_URL:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g_()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public h()V
    .locals 1

    .line 518
    invoke-static {}, Lcom/mh/movie/core/c/b;->a()Lcom/mh/movie/core/c/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mh/movie/core/c/b;->e()V

    const-string v0, "\u5fae\u4fe1\u5206\u4eab\u6210\u529f"

    .line 519
    invoke-static {p0, v0}, Lcom/mh/movie/core/mvp/ui/utils/T;->showShort(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public k()V
    .locals 2

    .line 524
    invoke-static {}, Lcom/mh/movie/core/c/b;->a()Lcom/mh/movie/core/c/b;

    move-result-object v0

    const-string v1, "3"

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/c/b;->b(Ljava/lang/String;)V

    const-string v0, "\u53d6\u6d88\u5fae\u4fe1\u5206\u4eab"

    .line 525
    invoke-static {p0, v0}, Lcom/mh/movie/core/mvp/ui/utils/T;->showShort(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public l()V
    .locals 1

    .line 422
    new-instance v0, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity$5;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity$5;-><init>(Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;)V

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;->a(Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity$b;)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 497
    invoke-super {p0, p1, p2, p3}, Lcom/mh/movie/core/mvp/ui/activity/ac;->onActivityResult(IILandroid/content/Intent;)V

    .line 498
    invoke-static {p1, p2, p3, p0}, Lcom/tencent/tauth/Tencent;->onActivityResultData(IILandroid/content/Intent;Lcom/tencent/tauth/IUiListener;)Z

    const/16 v0, 0x2774

    if-ne p1, v0, :cond_1

    const/16 p1, 0x2777

    if-eq p2, p1, :cond_0

    const/16 p1, 0x2778

    if-eq p2, p1, :cond_0

    const/16 p1, 0x2b5f

    if-ne p2, p1, :cond_1

    .line 503
    :cond_0
    invoke-static {p3, p0}, Lcom/tencent/tauth/Tencent;->handleResultData(Landroid/content/Intent;Lcom/tencent/tauth/IUiListener;)V

    :cond_1
    return-void
.end method

.method public onCancel()V
    .locals 2

    .line 548
    invoke-static {}, Lcom/mh/movie/core/c/b;->a()Lcom/mh/movie/core/c/b;

    move-result-object v0

    const-string v1, "3"

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/c/b;->b(Ljava/lang/String;)V

    const-string v0, "\u53d6\u6d88QQ\u5206\u4eab"

    .line 549
    invoke-static {p0, v0}, Lcom/mh/movie/core/mvp/ui/utils/T;->showShort(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onClick(I)V
    .locals 1

    if-nez p1, :cond_0

    .line 244
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;->l()V

    goto :goto_0

    .line 249
    :cond_0
    new-instance v0, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity$4;

    invoke-direct {v0, p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity$4;-><init>(Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;I)V

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;->a(Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity$b;)V

    :goto_0
    return-void
.end method

.method public onComplete(Ljava/lang/Object;)V
    .locals 0

    .line 536
    invoke-static {}, Lcom/mh/movie/core/c/b;->a()Lcom/mh/movie/core/c/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mh/movie/core/c/b;->e()V

    const-string p1, "QQ\u5206\u4eab\u6210\u529f"

    .line 537
    invoke-static {p0, p1}, Lcom/mh/movie/core/mvp/ui/utils/T;->showShort(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 415
    invoke-super {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/ac;->onCreate(Landroid/os/Bundle;)V

    .line 417
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 318
    invoke-super {p0}, Lcom/mh/movie/core/mvp/ui/activity/ac;->onDestroy()V

    .line 319
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;->l:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/WatchedShareActivity;->l:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    return-void
.end method

.method public onError(Lcom/tencent/tauth/UiError;)V
    .locals 1

    .line 542
    invoke-static {}, Lcom/mh/movie/core/c/b;->a()Lcom/mh/movie/core/c/b;

    move-result-object p1

    const-string v0, "1"

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/c/b;->b(Ljava/lang/String;)V

    const-string p1, "QQ\u5206\u4eab\u5931\u8d25"

    .line 543
    invoke-static {p0, p1}, Lcom/mh/movie/core/mvp/ui/utils/T;->showShort(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1

    .line 510
    invoke-super {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/ac;->onNewIntent(Landroid/content/Intent;)V

    .line 511
    invoke-static {}, Lcom/mh/movie/core/c/b;->a()Lcom/mh/movie/core/c/b;

    move-result-object v0

    iget-object v0, v0, Lcom/mh/movie/core/c/b;->a:Lcom/sina/weibo/sdk/share/WbShareHandler;

    if-eqz v0, :cond_0

    .line 512
    invoke-static {}, Lcom/mh/movie/core/c/b;->a()Lcom/mh/movie/core/c/b;

    move-result-object v0

    iget-object v0, v0, Lcom/mh/movie/core/c/b;->a:Lcom/sina/weibo/sdk/share/WbShareHandler;

    invoke-virtual {v0, p1, p0}, Lcom/sina/weibo/sdk/share/WbShareHandler;->doResultIntent(Landroid/content/Intent;Lcom/sina/weibo/sdk/share/WbShareCallback;)V

    :cond_0
    return-void
.end method

.method public onWbShareCancel()V
    .locals 2

    .line 560
    invoke-static {}, Lcom/mh/movie/core/c/b;->a()Lcom/mh/movie/core/c/b;

    move-result-object v0

    const-string v1, "3"

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/c/b;->b(Ljava/lang/String;)V

    const-string v0, "\u53d6\u6d88\u5fae\u535a\u5206\u4eab"

    .line 561
    invoke-static {p0, v0}, Lcom/mh/movie/core/mvp/ui/utils/T;->showShort(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onWbShareFail()V
    .locals 2

    .line 566
    invoke-static {}, Lcom/mh/movie/core/c/b;->a()Lcom/mh/movie/core/c/b;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/c/b;->b(Ljava/lang/String;)V

    const-string v0, "\u5fae\u535a\u5206\u4eab\u5931\u8d25"

    .line 567
    invoke-static {p0, v0}, Lcom/mh/movie/core/mvp/ui/utils/T;->showShort(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onWbShareSuccess()V
    .locals 1

    .line 554
    invoke-static {}, Lcom/mh/movie/core/c/b;->a()Lcom/mh/movie/core/c/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mh/movie/core/c/b;->e()V

    const-string v0, "\u5fae\u535a\u5206\u4eab\u6210\u529f"

    .line 555
    invoke-static {p0, v0}, Lcom/mh/movie/core/mvp/ui/utils/T;->showShort(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void
.end method
