.class public Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;
.super Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;
.source "SampleVideo.java"


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/ui/activity/player/z;",
            ">;"
        }
    .end annotation
.end field

.field private f:I

.field private g:I

.field private h:I

.field private i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;-><init>(Landroid/content/Context;)V

    .line 42
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;->e:Ljava/util/List;

    const/4 p1, 0x0

    .line 45
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;->f:I

    .line 47
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;->g:I

    .line 50
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;->h:I

    const-string p1, "\u6807\u51c6"

    .line 52
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;->i:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1, p2}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;->e:Ljava/util/List;

    const/4 p1, 0x0

    .line 45
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;->f:I

    .line 47
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;->g:I

    .line 50
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;->h:I

    const-string p1, "\u6807\u51c6"

    .line 52
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;->i:Ljava/lang/String;

    return-void
.end method

.method static synthetic A(Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;)V
    .locals 0

    .line 32
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;->hideAllWidget()V

    return-void
.end method

.method static synthetic B(Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;)Landroid/widget/TextView;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;->b:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic a(Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;I)I
    .locals 0

    .line 32
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;->f:I

    return p1
.end method

.method static synthetic a(Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;->i:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;)Z
    .locals 0

    .line 32
    iget-boolean p0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;->mHadPlay:Z

    return p0
.end method

.method static synthetic b(Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;)I
    .locals 0

    .line 32
    iget p0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;->f:I

    return p0
.end method

.method static synthetic b(Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;I)I
    .locals 0

    .line 32
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;->g:I

    return p1
.end method

.method private b()V
    .locals 2

    .line 76
    sget v0, Lcom/mh/movie/core/R$id;->moreScale:I

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;->a:Landroid/widget/TextView;

    .line 77
    sget v0, Lcom/mh/movie/core/R$id;->switchSize:I

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;->b:Landroid/widget/TextView;

    .line 78
    sget v0, Lcom/mh/movie/core/R$id;->change_rotate:I

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;->c:Landroid/widget/TextView;

    .line 79
    sget v0, Lcom/mh/movie/core/R$id;->change_transform:I

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;->d:Landroid/widget/TextView;

    .line 82
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;->a:Landroid/widget/TextView;

    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo$1;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo$1;-><init>(Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;->b:Landroid/widget/TextView;

    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo$2;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo$2;-><init>(Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;->c:Landroid/widget/TextView;

    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo$3;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo$3;-><init>(Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;->d:Landroid/widget/TextView;

    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo$4;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo$4;-><init>(Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic c(Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;I)I
    .locals 0

    .line 32
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;->h:I

    return p1
.end method

.method private c()V
    .locals 2

    .line 282
    iget-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;->mHadPlay:Z

    if-nez v0, :cond_0

    return-void

    .line 285
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;->mTextureView:Lcom/shuyu/gsyvideoplayer/render/a;

    iget v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;->mRotate:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/shuyu/gsyvideoplayer/render/a;->a(F)V

    .line 286
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;->mTextureView:Lcom/shuyu/gsyvideoplayer/render/a;

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/render/a;->a()V

    return-void
.end method

.method static synthetic c(Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;->d()V

    return-void
.end method

.method private d()V
    .locals 3

    .line 294
    iget-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;->mHadPlay:Z

    if-nez v0, :cond_0

    return-void

    .line 297
    :cond_0
    iget v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;->f:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 298
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;->a:Landroid/widget/TextView;

    const-string v2, "16:9"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 299
    invoke-static {v1}, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoType;->setShowType(I)V

    goto :goto_0

    .line 300
    :cond_1
    iget v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;->f:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 301
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;->a:Landroid/widget/TextView;

    const-string v2, "4:3"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 302
    invoke-static {v1}, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoType;->setShowType(I)V

    goto :goto_0

    .line 303
    :cond_2
    iget v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;->f:I

    const/4 v1, 0x3

    const/4 v2, 0x4

    if-ne v0, v1, :cond_3

    .line 304
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;->a:Landroid/widget/TextView;

    const-string v1, "\u5168\u5c4f"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 305
    invoke-static {v2}, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoType;->setShowType(I)V

    goto :goto_0

    .line 306
    :cond_3
    iget v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;->f:I

    if-ne v0, v2, :cond_4

    .line 307
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;->a:Landroid/widget/TextView;

    const-string v1, "\u62c9\u4f38\u5168\u5c4f"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, -0x4

    .line 308
    invoke-static {v0}, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoType;->setShowType(I)V

    goto :goto_0

    .line 309
    :cond_4
    iget v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;->f:I

    if-nez v0, :cond_5

    .line 310
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;->a:Landroid/widget/TextView;

    const-string v1, "\u9ed8\u8ba4\u6bd4\u4f8b"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    .line 311
    invoke-static {v0}, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoType;->setShowType(I)V

    .line 313
    :cond_5
    :goto_0
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;->changeTextureViewShowType()V

    .line 314
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;->mTextureView:Lcom/shuyu/gsyvideoplayer/render/a;

    if-eqz v0, :cond_6

    .line 315
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;->mTextureView:Lcom/shuyu/gsyvideoplayer/render/a;

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/render/a;->a()V

    .line 316
    :cond_6
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic d(Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;->e()V

    return-void
.end method

.method private e()V
    .locals 3

    .line 323
    iget-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;->mHadPlay:Z

    if-nez v0, :cond_0

    return-void

    .line 326
    :cond_0
    new-instance v0, Lcom/mh/movie/core/mvp/ui/activity/player/SwitchVideoTypeDialog;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mh/movie/core/mvp/ui/activity/player/SwitchVideoTypeDialog;-><init>(Landroid/content/Context;)V

    .line 327
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;->e:Ljava/util/List;

    new-instance v2, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo$5;

    invoke-direct {v2, p0}, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo$5;-><init>(Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;)V

    invoke-virtual {v0, v1, v2}, Lcom/mh/movie/core/mvp/ui/activity/player/SwitchVideoTypeDialog;->a(Ljava/util/List;Lcom/mh/movie/core/mvp/ui/activity/player/SwitchVideoTypeDialog$b;)V

    .line 359
    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/activity/player/SwitchVideoTypeDialog;->show()V

    return-void
.end method

.method static synthetic e(Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;)Z
    .locals 0

    .line 32
    iget-boolean p0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;->mHadPlay:Z

    return p0
.end method

.method static synthetic f(Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;)Lcom/shuyu/gsyvideoplayer/render/a;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;->mTextureView:Lcom/shuyu/gsyvideoplayer/render/a;

    return-object p0
.end method

.method static synthetic g(Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;)I
    .locals 0

    .line 32
    iget p0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;->mRotate:I

    return p0
.end method

.method static synthetic h(Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;)I
    .locals 0

    .line 32
    iget p0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;->mRotate:I

    return p0
.end method

.method static synthetic i(Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;)Lcom/shuyu/gsyvideoplayer/render/a;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;->mTextureView:Lcom/shuyu/gsyvideoplayer/render/a;

    return-object p0
.end method

.method static synthetic j(Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;)Lcom/shuyu/gsyvideoplayer/render/a;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;->mTextureView:Lcom/shuyu/gsyvideoplayer/render/a;

    return-object p0
.end method

.method static synthetic k(Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;)Lcom/shuyu/gsyvideoplayer/render/a;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;->mTextureView:Lcom/shuyu/gsyvideoplayer/render/a;

    return-object p0
.end method

.method static synthetic l(Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;)Lcom/shuyu/gsyvideoplayer/render/a;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;->mTextureView:Lcom/shuyu/gsyvideoplayer/render/a;

    return-object p0
.end method

.method static synthetic m(Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;)Lcom/shuyu/gsyvideoplayer/render/a;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;->mTextureView:Lcom/shuyu/gsyvideoplayer/render/a;

    return-object p0
.end method

.method static synthetic n(Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;)Z
    .locals 0

    .line 32
    iget-boolean p0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;->mHadPlay:Z

    return p0
.end method

.method static synthetic o(Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;)I
    .locals 0

    .line 32
    iget p0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;->g:I

    return p0
.end method

.method static synthetic p(Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;)Ljava/util/List;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;->e:Ljava/util/List;

    return-object p0
.end method

.method static synthetic q(Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;)I
    .locals 0

    .line 32
    iget p0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;->h:I

    return p0
.end method

.method static synthetic r(Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;)I
    .locals 0

    .line 32
    iget p0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;->mCurrentState:I

    return p0
.end method

.method static synthetic s(Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;)I
    .locals 0

    .line 32
    iget p0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;->mCurrentState:I

    return p0
.end method

.method static synthetic t(Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;)J
    .locals 2

    .line 32
    iget-wide v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;->mCurrentPosition:J

    return-wide v0
.end method

.method static synthetic u(Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;)V
    .locals 0

    .line 32
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;->initProgressTimer()V

    return-void
.end method

.method static synthetic v(Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;)V
    .locals 0

    .line 32
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;->hideAllWidget()V

    return-void
.end method

.method static synthetic w(Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;)Z
    .locals 0

    .line 32
    iget-boolean p0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;->mCache:Z

    return p0
.end method

.method static synthetic x(Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;)Ljava/io/File;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;->mCachePath:Ljava/io/File;

    return-object p0
.end method

.method static synthetic y(Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;)Ljava/lang/String;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;->mTitle:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic z(Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;)V
    .locals 0

    .line 32
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;->initProgressTimer()V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 5

    .line 169
    iget v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;->g:I

    const/high16 v1, -0x40800000    # -1.0f

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 179
    :pswitch_0
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 180
    iget-object v4, p0, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;->mTextureView:Lcom/shuyu/gsyvideoplayer/render/a;

    invoke-virtual {v4}, Lcom/shuyu/gsyvideoplayer/render/a;->e()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v0, v3, v1, v2, v4}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 181
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;->mTextureView:Lcom/shuyu/gsyvideoplayer/render/a;

    invoke-virtual {v1, v0}, Lcom/shuyu/gsyvideoplayer/render/a;->a(Landroid/graphics/Matrix;)V

    .line 182
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;->d:Landroid/widget/TextView;

    const-string v1, "\u4e0a\u4e0b\u955c\u50cf"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;->mTextureView:Lcom/shuyu/gsyvideoplayer/render/a;

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/render/a;->c()V

    goto :goto_0

    .line 171
    :pswitch_1
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 172
    iget-object v4, p0, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;->mTextureView:Lcom/shuyu/gsyvideoplayer/render/a;

    invoke-virtual {v4}, Lcom/shuyu/gsyvideoplayer/render/a;->d()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v0, v1, v3, v4, v2}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 173
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;->mTextureView:Lcom/shuyu/gsyvideoplayer/render/a;

    invoke-virtual {v1, v0}, Lcom/shuyu/gsyvideoplayer/render/a;->a(Landroid/graphics/Matrix;)V

    .line 174
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;->d:Landroid/widget/TextView;

    const-string v1, "\u5de6\u53f3\u955c\u50cf"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;->mTextureView:Lcom/shuyu/gsyvideoplayer/render/a;

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/render/a;->c()V

    goto :goto_0

    .line 187
    :pswitch_2
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 188
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;->mTextureView:Lcom/shuyu/gsyvideoplayer/render/a;

    invoke-virtual {v1}, Lcom/shuyu/gsyvideoplayer/render/a;->d()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 189
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;->mTextureView:Lcom/shuyu/gsyvideoplayer/render/a;

    invoke-virtual {v1, v0}, Lcom/shuyu/gsyvideoplayer/render/a;->a(Landroid/graphics/Matrix;)V

    .line 190
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;->d:Landroid/widget/TextView;

    const-string v1, "\u65cb\u8f6c\u955c\u50cf"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;->mTextureView:Lcom/shuyu/gsyvideoplayer/render/a;

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/render/a;->c()V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Ljava/util/List;ZLjava/io/File;Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/ui/activity/player/z;",
            ">;Z",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 221
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;->e:Ljava/util/List;

    .line 222
    iget v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;->h:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mh/movie/core/mvp/ui/activity/player/z;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/ui/activity/player/z;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;->setUp(Ljava/lang/String;ZLjava/io/File;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public getLayoutId()I
    .locals 1

    .line 227
    sget v0, Lcom/mh/movie/core/R$layout;->sample_video:I

    return v0
.end method

.method protected init(Landroid/content/Context;)V
    .locals 0

    .line 71
    invoke-super {p0, p1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->init(Landroid/content/Context;)V

    .line 72
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;->b()V

    return-void
.end method

.method public onSurfaceAvailable(Landroid/view/Surface;)V
    .locals 0

    .line 159
    invoke-super {p0, p1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->onSurfaceAvailable(Landroid/view/Surface;)V

    .line 160
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;->c()V

    .line 161
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;->a()V

    return-void
.end method

.method public onSurfaceSizeChanged(Landroid/view/Surface;II)V
    .locals 0

    .line 153
    invoke-super {p0, p1, p2, p3}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->onSurfaceSizeChanged(Landroid/view/Surface;II)V

    .line 154
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;->a()V

    return-void
.end method

.method protected resolveNormalVideoShow(Landroid/view/View;Landroid/view/ViewGroup;Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoPlayer;)V
    .locals 1

    .line 266
    invoke-super {p0, p1, p2, p3}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->resolveNormalVideoShow(Landroid/view/View;Landroid/view/ViewGroup;Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoPlayer;)V

    if-eqz p3, :cond_0

    .line 268
    check-cast p3, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;

    .line 269
    iget p1, p3, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;->h:I

    iput p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;->h:I

    .line 270
    iget p1, p3, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;->f:I

    iput p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;->f:I

    .line 271
    iget p1, p3, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;->g:I

    iput p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;->g:I

    .line 272
    iget-object p1, p3, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;->i:Ljava/lang/String;

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;->i:Ljava/lang/String;

    .line 273
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;->e:Ljava/util/List;

    iget-boolean p2, p0, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;->mCache:Z

    iget-object p3, p0, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;->mCachePath:Ljava/io/File;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;->mTitle:Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;->a(Ljava/util/List;ZLjava/io/File;Ljava/lang/String;)Z

    .line 274
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;->d()V

    :cond_0
    return-void
.end method

.method public startWindowFullscreen(Landroid/content/Context;ZZ)Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;
    .locals 0

    .line 241
    invoke-super {p0, p1, p2, p3}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->startWindowFullscreen(Landroid/content/Context;ZZ)Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    move-result-object p1

    check-cast p1, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;

    .line 242
    iget p2, p0, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;->h:I

    iput p2, p1, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;->h:I

    .line 243
    iget p2, p0, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;->f:I

    iput p2, p1, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;->f:I

    .line 244
    iget p2, p0, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;->g:I

    iput p2, p1, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;->g:I

    .line 245
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;->e:Ljava/util/List;

    iput-object p2, p1, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;->e:Ljava/util/List;

    .line 246
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;->i:Ljava/lang/String;

    iput-object p2, p1, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;->i:Ljava/lang/String;

    .line 248
    invoke-direct {p1}, Lcom/mh/movie/core/mvp/ui/activity/player/SampleVideo;->d()V

    return-object p1
.end method
