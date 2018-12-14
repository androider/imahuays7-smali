.class public Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;
.super Lcom/mh/movie/core/mvp/ui/activity/ac;
.source "PlayerActivity.java"

# interfaces
.implements Lcom/mh/movie/core/c/a;
.implements Lcom/mh/movie/core/mvp/a/b/b$b;
.implements Lcom/mh/movie/core/mvp/ui/activity/player/y;
.implements Lcom/mh/movie/core/mvp/ui/widget/InputDialog$b;
.implements Lcom/sina/weibo/sdk/share/WbShareCallback;
.implements Lcom/tencent/tauth/IUiListener;
.implements Lme/jessyan/autosize/internal/CancelAdapt;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mh/movie/core/mvp/ui/activity/ac<",
        "Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;",
        ">;",
        "Lcom/mh/movie/core/c/a;",
        "Lcom/mh/movie/core/mvp/a/b/b$b;",
        "Lcom/mh/movie/core/mvp/ui/activity/player/y;",
        "Lcom/mh/movie/core/mvp/ui/widget/InputDialog$b;",
        "Lcom/sina/weibo/sdk/share/WbShareCallback;",
        "Lcom/tencent/tauth/IUiListener;",
        "Lme/jessyan/autosize/internal/CancelAdapt;"
    }
.end annotation


# static fields
.field public static c:I = 0x64

.field public static d:I = 0x65

.field public static e:I = 0x66

.field public static f:I = 0x1

.field public static g:I = 0x2

.field public static h:I = 0x3

.field public static i:I = 0x4

.field public static j:I = 0x5

.field public static k:I = 0x6

.field public static o:Z


# instance fields
.field A:Lcom/mh/movie/core/mvp/ui/adapter/player/PlayerTVPartAdapter;

.field B:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

.field C:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

.field D:Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;

.field public E:Lcom/mh/movie/core/mvp/ui/activity/player/AppBarStateChangeListener$State;

.field F:Landroid/view/View$OnClickListener;

.field G:Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer$a;

.field H:Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer$b;

.field I:Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$b;

.field J:Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer$a;

.field K:Lcom/mh/movie/core/mvp/ui/activity/player/AppBarStateChangeListener;

.field L:Lcom/mh/movie/core/mvp/ui/widget/a/a;

.field M:Lcom/mh/movie/core/mvp/ui/widget/a/b;

.field N:Landroid/os/Handler;

.field O:Ljava/lang/Runnable;

.field P:Lcom/mh/movie/core/mvp/ui/widget/player/TvPartView$a;

.field private Q:Z

.field private R:Lcom/mh/movie/core/mvp/ui/fragment/CommentFragment;

.field private S:Landroid/support/v4/app/FragmentManager;

.field private T:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private U:Lcom/mh/movie/core/mvp/ui/adapter/a/a;

.field private V:Z

.field private W:Z

.field private X:I

.field private Y:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/DownloadTV;",
            ">;"
        }
    .end annotation
.end field

.field private Z:I

.field private aA:Landroid/widget/TextView;

.field private aB:Z

.field private aa:I

.field private ab:I

.field private ac:Ljava/lang/String;

.field private ad:Ljava/lang/String;

.field private ae:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

.field private af:Lcom/mh/movie/core/mvp/ui/widget/InputDialog;

.field private ag:Lcom/mh/movie/core/mvp/ui/widget/dialog/ShareToFriendDialog;

.field private ah:Lcom/mh/movie/core/mvp/ui/widget/dialog/GetInviteFromFriendDialog;

.field private ai:I

.field private aj:I

.field private ak:I

.field private al:Ljava/lang/String;

.field private am:I

.field private an:I

.field private ao:Z

.field private ap:Z

.field private aq:Z

.field private ar:J

.field private as:J

.field private at:J

.field private au:J

.field private av:J

.field private aw:J

.field private ax:Ljava/util/Timer;

.field private ay:Ljava/util/TimerTask;

.field private az:Landroid/widget/TextView;

.field bannerAdList:Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c0041
    .end annotation
.end field

.field flPlayerVideo:Landroid/widget/FrameLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c00fe
    .end annotation
.end field

.field inputCommetn:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c0126
    .end annotation
.end field

.field ivPlayerDetailCommentIcon:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c0168
    .end annotation
.end field

.field ivPlayerDetailDownIcon:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c0169
    .end annotation
.end field

.field ivPlayerDetailGuessLikeGo:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c016a
    .end annotation
.end field

.field ivPlayerDetailMovieGo:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c016b
    .end annotation
.end field

.field ivPlayerDetailShareIcon:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c016c
    .end annotation
.end field

.field ivPlayerDetailTvGo:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c016d
    .end annotation
.end field

.field ivPlayerDetailUpIcon:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c016e
    .end annotation
.end field

.field ivPlayerIconGo:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c016f
    .end annotation
.end field

.field ivPlayerVideoRotation:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c0172
    .end annotation
.end field

.field l:Landroid/widget/PopupWindow;

.field labels:Lcom/mh/movie/core/mvp/ui/widget/LabelsView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c019e
    .end annotation
.end field

.field linearOption:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c01ae
    .end annotation
.end field

.field llCacheDownload:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c0202
    .end annotation
.end field

.field llCollect:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c0089
    .end annotation
.end field

.field llDetailLabel:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c01d2
    .end annotation
.end field

.field llHotComment:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c01da
    .end annotation
.end field

.field llPlayerDetailCommendAll:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c01fe
    .end annotation
.end field

.field llPlayerDetailCommendNew:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c01ff
    .end annotation
.end field

.field llPlayerDetailComment:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c0200
    .end annotation
.end field

.field llPlayerDetailDown:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c0201
    .end annotation
.end field

.field llPlayerDetailFeedback:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c0203
    .end annotation
.end field

.field llPlayerDetailIntro:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c0204
    .end annotation
.end field

.field llPlayerDetailShare:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c0205
    .end annotation
.end field

.field llPlayerDetailTv:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c0206
    .end annotation
.end field

.field llPlayerDetailUp:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c0207
    .end annotation
.end field

.field m:Z

.field mhVideoPlayer:Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c025b
    .end annotation
.end field

.field movieCardView:Lcom/mh/movie/core/mvp/ui/widget/MovieCardView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c0256
    .end annotation
.end field

.field n:I

.field p:Lcom/mh/movie/core/mvp/ui/widget/player/IntroduceView;

.field playerDialogFrameLayout:Lcom/mh/movie/core/mvp/ui/activity/player/view/PlayerDialogFrameLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c00ec
    .end annotation
.end field

.field postDetailNestedScroll:Landroid/support/v4/widget/NestedScrollView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c0299
    .end annotation
.end field

.field pvProjectionControl:Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c02a6
    .end annotation
.end field

.field q:Lcom/mh/movie/core/mvp/ui/widget/player/TvPartView;

.field relativeEditText:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c02d3
    .end annotation
.end field

.field rlPlayerIntroduce:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c02e9
    .end annotation
.end field

.field rlPlayerLike:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c02ea
    .end annotation
.end field

.field rlPlayerVideoAsking:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c02f0
    .end annotation
.end field

.field rlPlayerVideoScreenLock:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c02f1
    .end annotation
.end field

.field rvPlayerDetailGuessLike:Landroid/support/v7/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c030d
    .end annotation
.end field

.field rvPlayerDetailTv:Landroid/support/v7/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c030e
    .end annotation
.end field

.field sortInfo:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c0347
    .end annotation
.end field

.field t:Landroid/widget/LinearLayout;

.field toolbarPlayer:Lcom/mh/movie/core/mvp/ui/widget/PlayerToolbar;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c037c
    .end annotation
.end field

.field tvIntroduce:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c042d
    .end annotation
.end field

.field tvMsgSend:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c03b8
    .end annotation
.end field

.field tvPlayerDetailCommendAll:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c0423
    .end annotation
.end field

.field tvPlayerDetailCommendNew:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c0424
    .end annotation
.end field

.field tvPlayerDetailCommentInfo:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c0425
    .end annotation
.end field

.field tvPlayerDetailDescription:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c0426
    .end annotation
.end field

.field tvPlayerDetailDownInfo:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c0427
    .end annotation
.end field

.field tvPlayerDetailName:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c0428
    .end annotation
.end field

.field tvPlayerDetailScore:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c0429
    .end annotation
.end field

.field tvPlayerDetailTvPart:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c042a
    .end annotation
.end field

.field tvPlayerDetailUpInfo:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c042b
    .end annotation
.end field

.field tvPlayerDetailUpSource:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c042c
    .end annotation
.end field

.field tvPlayerLabel:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c042f
    .end annotation
.end field

.field tvPlayerRotation:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c0434
    .end annotation
.end field

.field u:Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView;

.field v:Lcom/mh/movie/core/mvp/ui/widget/recylerview/RecyclerFooterView;

.field vPlayerDetailCommendAllLine:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c04b5
    .end annotation
.end field

.field vPlayerDetailCommendNewLine:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c04b6
    .end annotation
.end field

.field viewPager:Lcom/mh/movie/core/mvp/ui/widget/ControlScrollViewPager;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c04c3
    .end annotation
.end field

.field w:Lcom/mh/movie/core/mvp/ui/widget/banner/a;

.field public x:I

.field public y:I

.field z:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 150
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/ac;-><init>()V

    const/4 v0, 0x0

    .line 254
    iput-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->m:Z

    const/4 v1, 0x2

    .line 256
    iput v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->n:I

    const-string v1, ""

    .line 293
    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->ac:Ljava/lang/String;

    const-string v1, ""

    .line 294
    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->ad:Ljava/lang/String;

    .line 343
    iput v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->y:I

    const/4 v1, -0x1

    .line 344
    iput v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->ai:I

    .line 345
    iput v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->aj:I

    .line 346
    iput v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->ak:I

    const/4 v1, 0x0

    .line 348
    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->al:Ljava/lang/String;

    .line 349
    iput v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->am:I

    .line 354
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->z:Ljava/util/List;

    .line 362
    sget-object v1, Lcom/mh/movie/core/mvp/ui/activity/player/AppBarStateChangeListener$State;->EXPANDED:Lcom/mh/movie/core/mvp/ui/activity/player/AppBarStateChangeListener$State;

    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->E:Lcom/mh/movie/core/mvp/ui/activity/player/AppBarStateChangeListener$State;

    .line 364
    iput-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->ao:Z

    .line 366
    iput-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->ap:Z

    .line 367
    iput-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->aq:Z

    const-wide/16 v1, 0x0

    .line 368
    iput-wide v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->ar:J

    .line 369
    iput-wide v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->as:J

    .line 370
    iput-wide v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->at:J

    .line 371
    iput-wide v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->au:J

    .line 372
    iput-wide v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->av:J

    .line 373
    iput-wide v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->aw:J

    .line 379
    iput-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->aB:Z

    .line 689
    new-instance v0, Lcom/mh/movie/core/mvp/ui/activity/player/k;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/mvp/ui/activity/player/k;-><init>(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)V

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->F:Landroid/view/View$OnClickListener;

    .line 803
    new-instance v0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$24;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$24;-><init>(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)V

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->G:Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer$a;

    .line 865
    new-instance v0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$25;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$25;-><init>(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)V

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->H:Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer$b;

    .line 872
    new-instance v0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$26;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$26;-><init>(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)V

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->I:Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$b;

    .line 974
    new-instance v0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$27;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$27;-><init>(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)V

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->J:Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer$a;

    .line 1653
    new-instance v0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$9;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$9;-><init>(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)V

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->K:Lcom/mh/movie/core/mvp/ui/activity/player/AppBarStateChangeListener;

    .line 2030
    new-instance v0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$16;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$16;-><init>(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)V

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->L:Lcom/mh/movie/core/mvp/ui/widget/a/a;

    .line 2228
    new-instance v0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$17;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$17;-><init>(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)V

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->M:Lcom/mh/movie/core/mvp/ui/widget/a/b;

    .line 2385
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->N:Landroid/os/Handler;

    .line 2386
    new-instance v0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$18;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$18;-><init>(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)V

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->O:Ljava/lang/Runnable;

    .line 2571
    new-instance v0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$19;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$19;-><init>(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)V

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->P:Lcom/mh/movie/core/mvp/ui/widget/player/TvPartView$a;

    return-void
.end method

.method static synthetic A(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)Lcom/jess/arms/mvp/b;
    .locals 0

    .line 150
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->b:Lcom/jess/arms/mvp/b;

    return-object p0
.end method

.method static synthetic B(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)Lcom/jess/arms/mvp/b;
    .locals 0

    .line 150
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->b:Lcom/jess/arms/mvp/b;

    return-object p0
.end method

.method static synthetic C(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)Landroid/content/Context;
    .locals 0

    .line 150
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->r:Landroid/content/Context;

    return-object p0
.end method

.method private C()V
    .locals 2

    .line 681
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->mhVideoPlayer:Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;->ivPlayerVideoScreen:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->F:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 682
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->mhVideoPlayer:Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;->llVideoPlayerTryWatchOne:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->F:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 683
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->mhVideoPlayer:Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;->llVideoPlayerTryWatch:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->F:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 684
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->mhVideoPlayer:Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;->llVideoPlayerWatchMhb:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->F:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 685
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->mhVideoPlayer:Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->G:Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer$a;

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;->setiPlayStateListener(Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer$a;)V

    .line 686
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->mhVideoPlayer:Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->J:Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer$a;

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;->setOpreteCallBack(Lcom/mh/movie/core/mvp/ui/activity/player/DanmakuVideoPlayer$a;)V

    return-void
.end method

.method static synthetic D(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)I
    .locals 0

    .line 150
    iget p0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->Z:I

    return p0
.end method

.method private D()V
    .locals 2

    .line 1090
    sget v0, Lcom/mh/movie/core/R$id;->cl_player_root:I

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 1091
    invoke-static {}, Lcom/mh/movie/core/mvp/ui/utils/SpecBrandUtils;->notFullForPlayer()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setFitsSystemWindows(Z)V

    .line 1092
    sget v0, Lcom/mh/movie/core/R$id;->rfv_footer_view:I

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/ui/widget/recylerview/RecyclerFooterView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->v:Lcom/mh/movie/core/mvp/ui/widget/recylerview/RecyclerFooterView;

    .line 1093
    sget v0, Lcom/mh/movie/core/R$id;->tv_no_comment:I

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->az:Landroid/widget/TextView;

    .line 1094
    sget v0, Lcom/mh/movie/core/R$id;->cev_comment_view:I

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->u:Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView;

    .line 1095
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->llPlayerDetailTv:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1096
    sget v0, Lcom/mh/movie/core/R$id;->ll_bottom_comment:I

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->t:Landroid/widget/LinearLayout;

    .line 1097
    sget v0, Lcom/mh/movie/core/R$id;->tv_play_commend_message:I

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->aA:Landroid/widget/TextView;

    .line 1100
    new-instance v0, Lcom/mh/movie/core/mvp/ui/widget/InputDialog;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->r:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/mh/movie/core/mvp/ui/widget/InputDialog;-><init>(Landroid/content/Context;Lcom/mh/movie/core/mvp/ui/widget/InputDialog$b;)V

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->af:Lcom/mh/movie/core/mvp/ui/widget/InputDialog;

    .line 1101
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->af:Lcom/mh/movie/core/mvp/ui/widget/InputDialog;

    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$3;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$3;-><init>(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)V

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/InputDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 1108
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->aA:Landroid/widget/TextView;

    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$4;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$4;-><init>(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic E(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)I
    .locals 0

    .line 150
    iget p0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->aa:I

    return p0
.end method

.method private E()V
    .locals 2

    .line 1150
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->pvProjectionControl:Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;

    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$5;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$5;-><init>(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)V

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->setProjectionCallback(Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView$a;)V

    return-void
.end method

.method private F()V
    .locals 3

    .line 1190
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->mhVideoPlayer:Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;->setVisibility(I)V

    .line 1191
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->pvProjectionControl:Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->setVisibility(I)V

    .line 1192
    iput-boolean v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->ao:Z

    return-void
.end method

.method static synthetic F(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)V
    .locals 0

    .line 150
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->G()V

    return-void
.end method

.method static synthetic G(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)Lcom/jess/arms/mvp/b;
    .locals 0

    .line 150
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->b:Lcom/jess/arms/mvp/b;

    return-object p0
.end method

.method private G()V
    .locals 5

    const-string v0, "2"

    .line 1757
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->X:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1759
    iget v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->ab:I

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->Y:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 1760
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->Y:Ljava/util/List;

    iget v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->ab:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->ab:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/model/entity/DownloadTV;

    .line 1761
    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/DownloadTV;->getVideoId()J

    move-result-wide v1

    long-to-int v1, v1

    iput v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->aa:I

    .line 1763
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->mhVideoPlayer:Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;->resetData()V

    .line 1764
    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/DownloadTV;->getLocalUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u64ad\u653e\u672c\u5730\u7f13\u5b58\u89c6\u9891"

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1765
    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/DownloadTV;->getQuality()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->ac:Ljava/lang/String;

    .line 1769
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->mhVideoPlayer:Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->ad:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " \u7b2c"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/DownloadTV;->getSortNum()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\u96c6"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;->setVideoTitle(Ljava/lang/String;)V

    .line 1770
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->mhVideoPlayer:Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;->getHdQuityBtn()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1771
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->mhVideoPlayer:Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;->getHdQuityBtn()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->ac:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const-string v0, "\u5df2\u7ecf\u662f\u6700\u540e\u4e00\u96c6\u4e86"

    .line 1773
    invoke-static {p0, v0}, Lcom/mh/movie/core/mvp/ui/utils/T;->showShort(Landroid/content/Context;Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic H(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)Lcom/jess/arms/mvp/b;
    .locals 0

    .line 150
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->b:Lcom/jess/arms/mvp/b;

    return-object p0
.end method

.method private H()V
    .locals 3

    .line 1787
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->mhVideoPlayer:Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;->getTitleTextView()Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1788
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->mhVideoPlayer:Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->H:Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer$b;

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;->setMhVideoOnClick(Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer$b;)V

    .line 1789
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->mhVideoPlayer:Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->I:Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$b;

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;->setiLandVideoOnClick(Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$b;)V

    .line 1792
    new-instance v0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->mhVideoPlayer:Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;

    invoke-direct {v0, p0, v1}, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;-><init>(Landroid/app/Activity;Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;)V

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->ae:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    .line 1796
    new-instance v0, Lcom/shuyu/gsyvideoplayer/a/a;

    invoke-direct {v0}, Lcom/shuyu/gsyvideoplayer/a/a;-><init>()V

    const/4 v1, 0x1

    .line 1799
    invoke-virtual {v0, v1}, Lcom/shuyu/gsyvideoplayer/a/a;->setIsTouchWiget(Z)Lcom/shuyu/gsyvideoplayer/a/a;

    move-result-object v0

    const/4 v2, 0x0

    .line 1800
    invoke-virtual {v0, v2}, Lcom/shuyu/gsyvideoplayer/a/a;->setRotateViewAuto(Z)Lcom/shuyu/gsyvideoplayer/a/a;

    move-result-object v0

    .line 1801
    invoke-virtual {v0, v2}, Lcom/shuyu/gsyvideoplayer/a/a;->setLockLand(Z)Lcom/shuyu/gsyvideoplayer/a/a;

    move-result-object v0

    .line 1802
    invoke-virtual {v0, v1}, Lcom/shuyu/gsyvideoplayer/a/a;->setAutoFullWithSize(Z)Lcom/shuyu/gsyvideoplayer/a/a;

    move-result-object v0

    .line 1803
    invoke-virtual {v0, v2}, Lcom/shuyu/gsyvideoplayer/a/a;->setShowFullAnimation(Z)Lcom/shuyu/gsyvideoplayer/a/a;

    move-result-object v0

    .line 1804
    invoke-virtual {v0, v1}, Lcom/shuyu/gsyvideoplayer/a/a;->setNeedLockFull(Z)Lcom/shuyu/gsyvideoplayer/a/a;

    move-result-object v0

    .line 1806
    invoke-virtual {v0, v1}, Lcom/shuyu/gsyvideoplayer/a/a;->setCacheWithPlay(Z)Lcom/shuyu/gsyvideoplayer/a/a;

    move-result-object v0

    const-string v1, ""

    .line 1807
    invoke-virtual {v0, v1}, Lcom/shuyu/gsyvideoplayer/a/a;->setVideoTitle(Ljava/lang/String;)Lcom/shuyu/gsyvideoplayer/a/a;

    move-result-object v0

    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$12;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$12;-><init>(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)V

    .line 1808
    invoke-virtual {v0, v1}, Lcom/shuyu/gsyvideoplayer/a/a;->setVideoAllCallBack(Lcom/shuyu/gsyvideoplayer/c/i;)Lcom/shuyu/gsyvideoplayer/a/a;

    move-result-object v0

    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$10;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$10;-><init>(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)V

    .line 1924
    invoke-virtual {v0, v1}, Lcom/shuyu/gsyvideoplayer/a/a;->setLockClickListener(Lcom/shuyu/gsyvideoplayer/c/g;)Lcom/shuyu/gsyvideoplayer/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->mhVideoPlayer:Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;

    .line 1933
    invoke-virtual {v0, v1}, Lcom/shuyu/gsyvideoplayer/a/a;->build(Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;)V

    .line 1936
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->ae:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$13;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$13;-><init>(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)V

    invoke-virtual {v0, v1}, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->setiOrientationListener(Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils$IOrientationListener;)V

    .line 1965
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->mhVideoPlayer:Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;

    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$14;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$14;-><init>(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)V

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;->setiLandLock(Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$a;)V

    return-void
.end method

.method static synthetic I(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)Lcom/jess/arms/mvp/b;
    .locals 0

    .line 150
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->b:Lcom/jess/arms/mvp/b;

    return-object p0
.end method

.method private I()V
    .locals 2

    .line 1980
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->movieCardView:Lcom/mh/movie/core/mvp/ui/widget/MovieCardView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/MovieCardView;->setTitleShow(Z)V

    .line 1981
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->movieCardView:Lcom/mh/movie/core/mvp/ui/widget/MovieCardView;

    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$15;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$15;-><init>(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)V

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/MovieCardView;->setMcvClickListener(Lcom/mh/movie/core/mvp/ui/widget/MovieCardView$a;)V

    return-void
.end method

.method static synthetic J(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)Lcom/mh/movie/core/mvp/ui/widget/InputDialog;
    .locals 0

    .line 150
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->af:Lcom/mh/movie/core/mvp/ui/widget/InputDialog;

    return-object p0
.end method

.method private J()V
    .locals 4

    .line 2010
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 2011
    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->rvPlayerDetailTv:Landroid/support/v7/widget/RecyclerView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 2012
    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->rvPlayerDetailTv:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 2013
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->rvPlayerDetailTv:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setFocusable(Z)V

    .line 2014
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->rvPlayerDetailTv:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 2016
    new-instance v0, Lcom/mh/movie/core/mvp/ui/adapter/player/PlayerTVPartAdapter;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->z:Ljava/util/List;

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lcom/mh/movie/core/mvp/ui/adapter/player/PlayerTVPartAdapter;-><init>(ILjava/util/List;)V

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->A:Lcom/mh/movie/core/mvp/ui/adapter/player/PlayerTVPartAdapter;

    .line 2017
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->rvPlayerDetailTv:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->A:Lcom/mh/movie/core/mvp/ui/adapter/player/PlayerTVPartAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 2018
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->A:Lcom/mh/movie/core/mvp/ui/adapter/player/PlayerTVPartAdapter;

    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/player/l;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/ui/activity/player/l;-><init>(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)V

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/adapter/player/PlayerTVPartAdapter;->setOnItemChoiceListener(Lcom/mh/movie/core/mvp/ui/adapter/player/PlayerTVPartAdapter$a;)V

    .line 2026
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->rvPlayerDetailTv:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->L:Lcom/mh/movie/core/mvp/ui/widget/a/a;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method static synthetic K(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)Landroid/content/Context;
    .locals 0

    .line 150
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->r:Landroid/content/Context;

    return-object p0
.end method

.method private K()V
    .locals 2

    .line 2142
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->labels:Lcom/mh/movie/core/mvp/ui/widget/LabelsView;

    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/player/n;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/ui/activity/player/n;-><init>(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)V

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->setOnLabelClickListener(Lcom/mh/movie/core/mvp/ui/widget/LabelsView$c;)V

    return-void
.end method

.method static synthetic L(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)Lcom/jess/arms/mvp/b;
    .locals 0

    .line 150
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->b:Lcom/jess/arms/mvp/b;

    return-object p0
.end method

.method private L()V
    .locals 3

    .line 2216
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->S:Landroid/support/v4/app/FragmentManager;

    .line 2217
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->M()V

    .line 2219
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->T:Ljava/util/List;

    .line 2220
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->T:Ljava/util/List;

    new-instance v1, Lcom/mh/movie/core/mvp/ui/fragment/CommentFragment;

    invoke-direct {v1}, Lcom/mh/movie/core/mvp/ui/fragment/CommentFragment;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2221
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->T:Ljava/util/List;

    new-instance v1, Lcom/mh/movie/core/mvp/ui/fragment/CommentFragment;

    invoke-direct {v1}, Lcom/mh/movie/core/mvp/ui/fragment/CommentFragment;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2222
    new-instance v0, Lcom/mh/movie/core/mvp/ui/adapter/a/a;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->S:Landroid/support/v4/app/FragmentManager;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->T:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/mh/movie/core/mvp/ui/adapter/a/a;-><init>(Landroid/support/v4/app/FragmentManager;Ljava/util/List;)V

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->U:Lcom/mh/movie/core/mvp/ui/adapter/a/a;

    .line 2223
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->viewPager:Lcom/mh/movie/core/mvp/ui/widget/ControlScrollViewPager;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->U:Lcom/mh/movie/core/mvp/ui/adapter/a/a;

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/ControlScrollViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 2225
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->postDetailNestedScroll:Landroid/support/v4/widget/NestedScrollView;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->M:Lcom/mh/movie/core/mvp/ui/widget/a/b;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/NestedScrollView;->setOnScrollChangeListener(Landroid/support/v4/widget/NestedScrollView$OnScrollChangeListener;)V

    return-void
.end method

.method static synthetic M(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)Landroid/content/Context;
    .locals 0

    .line 150
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->r:Landroid/content/Context;

    return-object p0
.end method

.method private M()V
    .locals 3

    .line 2242
    new-instance v0, Lcom/mh/movie/core/mvp/ui/fragment/CommentFragment;

    invoke-direct {v0}, Lcom/mh/movie/core/mvp/ui/fragment/CommentFragment;-><init>()V

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->R:Lcom/mh/movie/core/mvp/ui/fragment/CommentFragment;

    .line 2243
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->S:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    sget v1, Lcom/mh/movie/core/R$id;->ll_hot_comment_container:I

    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->R:Lcom/mh/movie/core/mvp/ui/fragment/CommentFragment;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    return-void
.end method

.method static synthetic N(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)Lcom/jess/arms/mvp/b;
    .locals 0

    .line 150
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->b:Lcom/jess/arms/mvp/b;

    return-object p0
.end method

.method private N()V
    .locals 4

    .line 2397
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->mhVideoPlayer:Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;->E()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2398
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->mhVideoPlayer:Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;->setShowLockScreen(Z)V

    return-void

    .line 2403
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->ae:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2404
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->ivPlayerVideoRotation:Landroid/widget/ImageView;

    sget v1, Lcom/mh/movie/core/R$mipmap;->detailspage_rotating_open:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2405
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->tvPlayerRotation:Landroid/widget/TextView;

    const-string v1, "\u70b9\u51fb\u9501\u5b9a"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2407
    :cond_1
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->ivPlayerVideoRotation:Landroid/widget/ImageView;

    sget v1, Lcom/mh/movie/core/R$mipmap;->detailspage_rotating_lock:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2408
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->tvPlayerRotation:Landroid/widget/TextView;

    const-string v1, "\u70b9\u51fb\u89e3\u9501"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2410
    :goto_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->rlPlayerVideoScreenLock:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2411
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->N:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->O:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2412
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->N:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->O:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static synthetic O(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)Lcom/jess/arms/mvp/b;
    .locals 0

    .line 150
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->b:Lcom/jess/arms/mvp/b;

    return-object p0
.end method

.method private O()V
    .locals 2

    .line 2417
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->af:Lcom/mh/movie/core/mvp/ui/widget/InputDialog;

    if-eqz v0, :cond_0

    .line 2418
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->af:Lcom/mh/movie/core/mvp/ui/widget/InputDialog;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/widget/InputDialog;->dismiss()V

    .line 2420
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->p:Lcom/mh/movie/core/mvp/ui/widget/player/IntroduceView;

    const/16 v1, 0x8

    if-eqz v0, :cond_1

    .line 2421
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->p:Lcom/mh/movie/core/mvp/ui/widget/player/IntroduceView;

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/player/IntroduceView;->setVisibility(I)V

    .line 2423
    :cond_1
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->D:Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;

    if-eqz v0, :cond_2

    .line 2424
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->D:Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->setVisibility(I)V

    .line 2426
    :cond_2
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->q:Lcom/mh/movie/core/mvp/ui/widget/player/TvPartView;

    if-eqz v0, :cond_3

    .line 2427
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->q:Lcom/mh/movie/core/mvp/ui/widget/player/TvPartView;

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/player/TvPartView;->setVisibility(I)V

    .line 2432
    :cond_3
    invoke-static {}, Lcom/mh/movie/core/c/b;->a()Lcom/mh/movie/core/c/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mh/movie/core/c/b;->b()V

    .line 2433
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->u:Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView;

    if-eqz v0, :cond_4

    .line 2434
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->u:Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView;

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView;->setVisibility(I)V

    :cond_4
    return-void
.end method

.method static synthetic P(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)Lcom/jess/arms/mvp/b;
    .locals 0

    .line 150
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->b:Lcom/jess/arms/mvp/b;

    return-object p0
.end method

.method private P()V
    .locals 4

    .line 2439
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->llCollect:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/jakewharton/rxbinding/view/b;->a(Landroid/view/View;)Lrx/a;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x2

    .line 2440
    invoke-virtual {v0, v2, v3, v1}, Lrx/a;->a(JLjava/util/concurrent/TimeUnit;)Lrx/a;

    move-result-object v0

    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/player/q;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/ui/activity/player/q;-><init>(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)V

    .line 2441
    invoke-virtual {v0, v1}, Lrx/a;->a(Lrx/b/b;)Lrx/f;

    .line 2448
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->llCacheDownload:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/player/r;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/ui/activity/player/r;-><init>(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2449
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->rlPlayerLike:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/player/s;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/ui/activity/player/s;-><init>(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private Q()V
    .locals 5

    .line 2553
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->b:Lcom/jess/arms/mvp/b;

    check-cast v0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->f()Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;

    move-result-object v0

    .line 2554
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->q:Lcom/mh/movie/core/mvp/ui/widget/player/TvPartView;

    if-nez v1, :cond_0

    .line 2555
    sget v1, Lcom/mh/movie/core/R$id;->tpv_tv_part_view:I

    invoke-virtual {p0, v1}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/mh/movie/core/mvp/ui/widget/player/TvPartView;

    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->q:Lcom/mh/movie/core/mvp/ui/widget/player/TvPartView;

    .line 2556
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->q:Lcom/mh/movie/core/mvp/ui/widget/player/TvPartView;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->P:Lcom/mh/movie/core/mvp/ui/widget/player/TvPartView$a;

    invoke-virtual {v1, v2}, Lcom/mh/movie/core/mvp/ui/widget/player/TvPartView;->setOnViewClickListener(Lcom/mh/movie/core/mvp/ui/widget/player/TvPartView$a;)V

    .line 2559
    :cond_0
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->q:Lcom/mh/movie/core/mvp/ui/widget/player/TvPartView;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->tvPlayerDetailTvPart:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/mh/movie/core/mvp/ui/widget/player/TvPartView;->a(Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2561
    :goto_0
    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->getVideoList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 2562
    iget v3, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->y:I

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->getVideoList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;

    invoke-virtual {v4}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;->getId()I

    move-result v4

    if-ne v3, v4, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    .line 2567
    :goto_1
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->q:Lcom/mh/movie/core/mvp/ui/widget/player/TvPartView;

    iget v3, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->y:I

    invoke-virtual {v0, v3, v2}, Lcom/mh/movie/core/mvp/ui/widget/player/TvPartView;->a(II)V

    .line 2568
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->q:Lcom/mh/movie/core/mvp/ui/widget/player/TvPartView;

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/player/TvPartView;->setVisibility(I)V

    return-void
.end method

.method static synthetic Q(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)Z
    .locals 0

    .line 150
    iget-boolean p0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->W:Z

    return p0
.end method

.method static synthetic R(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)Ljava/lang/String;
    .locals 0

    .line 150
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->al:Ljava/lang/String;

    return-object p0
.end method

.method private R()V
    .locals 2

    .line 2587
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->p:Lcom/mh/movie/core/mvp/ui/widget/player/IntroduceView;

    if-nez v0, :cond_0

    .line 2588
    sget v0, Lcom/mh/movie/core/R$id;->idv_introduce_view:I

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/ui/widget/player/IntroduceView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->p:Lcom/mh/movie/core/mvp/ui/widget/player/IntroduceView;

    .line 2590
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->p:Lcom/mh/movie/core/mvp/ui/widget/player/IntroduceView;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->b:Lcom/jess/arms/mvp/b;

    check-cast v1, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->f()Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/player/IntroduceView;->setData(Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;)V

    .line 2591
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->p:Lcom/mh/movie/core/mvp/ui/widget/player/IntroduceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/player/IntroduceView;->setVisibility(I)V

    return-void
.end method

.method static synthetic S(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)Lcom/jess/arms/mvp/b;
    .locals 0

    .line 150
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->b:Lcom/jess/arms/mvp/b;

    return-object p0
.end method

.method private S()V
    .locals 3

    .line 2673
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->ae:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->isEnable()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 2674
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->ae:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    invoke-virtual {v0, v2}, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->setEnable(Z)V

    .line 2675
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->mhVideoPlayer:Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;->setScreenLock(Z)V

    goto :goto_0

    .line 2677
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->ae:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    invoke-virtual {v0, v1}, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->setEnable(Z)V

    .line 2678
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->mhVideoPlayer:Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;

    invoke-virtual {v0, v2}, Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;->setScreenLock(Z)V

    :goto_0
    return-void
.end method

.method static synthetic T(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)Lcom/jess/arms/mvp/b;
    .locals 0

    .line 150
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->b:Lcom/jess/arms/mvp/b;

    return-object p0
.end method

.method private T()V
    .locals 5

    .line 2700
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->az:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 2701
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->postDetailNestedScroll:Landroid/support/v4/widget/NestedScrollView;

    const/16 v1, 0x82

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/NestedScrollView;->fullScroll(I)Z

    goto :goto_0

    .line 2702
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->llHotComment:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    const/high16 v1, 0x43560000    # 214.0f

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-nez v0, :cond_1

    .line 2703
    new-array v0, v4, [I

    .line 2704
    iget-object v4, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->llHotComment:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->getLocationOnScreen([I)V

    .line 2705
    iget-object v4, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->postDetailNestedScroll:Landroid/support/v4/widget/NestedScrollView;

    aget v0, v0, v2

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/jess/arms/c/e;->a(Landroid/content/Context;F)F

    move-result v1

    float-to-int v1, v1

    sub-int/2addr v0, v1

    invoke-virtual {v4, v3, v0}, Landroid/support/v4/widget/NestedScrollView;->scrollTo(II)V

    goto :goto_0

    .line 2707
    :cond_1
    new-array v0, v4, [I

    .line 2708
    iget-object v4, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->t:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->getLocationInWindow([I)V

    .line 2709
    iget-object v4, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->postDetailNestedScroll:Landroid/support/v4/widget/NestedScrollView;

    aget v0, v0, v2

    int-to-float v0, v0

    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->r:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/jess/arms/c/e;->a(Landroid/content/Context;F)F

    move-result v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {v4, v3, v0}, Landroid/support/v4/widget/NestedScrollView;->scrollBy(II)V

    :goto_0
    return-void
.end method

.method static synthetic U(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)I
    .locals 0

    .line 150
    iget p0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->am:I

    return p0
.end method

.method static synthetic V(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)Lcom/jess/arms/mvp/b;
    .locals 0

    .line 150
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->b:Lcom/jess/arms/mvp/b;

    return-object p0
.end method

.method static synthetic W(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)Lcom/jess/arms/mvp/b;
    .locals 0

    .line 150
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->b:Lcom/jess/arms/mvp/b;

    return-object p0
.end method

.method static synthetic X(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)Z
    .locals 0

    .line 150
    iget-boolean p0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->V:Z

    return p0
.end method

.method static synthetic Y(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)Lcom/jess/arms/mvp/b;
    .locals 0

    .line 150
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->b:Lcom/jess/arms/mvp/b;

    return-object p0
.end method

.method static synthetic Z(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)Lcom/jess/arms/mvp/b;
    .locals 0

    .line 150
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->b:Lcom/jess/arms/mvp/b;

    return-object p0
.end method

.method static synthetic a(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;I)I
    .locals 0

    .line 150
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->am:I

    return p1
.end method

.method static synthetic a(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)Lcom/jess/arms/mvp/b;
    .locals 0

    .line 150
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->b:Lcom/jess/arms/mvp/b;

    return-object p0
.end method

.method static final synthetic a(Landroid/widget/TextView;ILjava/lang/String;)Ljava/lang/CharSequence;
    .locals 0

    return-object p2
.end method

.method static synthetic a(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->al:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;Z)Z
    .locals 0

    .line 150
    iput-boolean p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->V:Z

    return p1
.end method

.method static synthetic aa(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)Lcom/jess/arms/mvp/b;
    .locals 0

    .line 150
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->b:Lcom/jess/arms/mvp/b;

    return-object p0
.end method

.method static synthetic ab(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)Lcom/jess/arms/mvp/b;
    .locals 0

    .line 150
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->b:Lcom/jess/arms/mvp/b;

    return-object p0
.end method

.method static synthetic ac(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)Lcom/jess/arms/mvp/b;
    .locals 0

    .line 150
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->b:Lcom/jess/arms/mvp/b;

    return-object p0
.end method

.method static synthetic ad(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)Lcom/jess/arms/mvp/b;
    .locals 0

    .line 150
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->b:Lcom/jess/arms/mvp/b;

    return-object p0
.end method

.method static synthetic ae(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)I
    .locals 0

    .line 150
    iget p0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->X:I

    return p0
.end method

.method static synthetic af(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)Lcom/jess/arms/mvp/b;
    .locals 0

    .line 150
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->b:Lcom/jess/arms/mvp/b;

    return-object p0
.end method

.method static synthetic ag(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)V
    .locals 0

    .line 150
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->N()V

    return-void
.end method

.method static synthetic ah(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)V
    .locals 0

    .line 150
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->S()V

    return-void
.end method

.method static synthetic ai(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)Lcom/jess/arms/mvp/b;
    .locals 0

    .line 150
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->b:Lcom/jess/arms/mvp/b;

    return-object p0
.end method

.method static synthetic aj(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)Lcom/jess/arms/mvp/b;
    .locals 0

    .line 150
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->b:Lcom/jess/arms/mvp/b;

    return-object p0
.end method

.method static synthetic ak(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)I
    .locals 0

    .line 150
    iget p0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->aj:I

    return p0
.end method

.method static synthetic al(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)Lcom/jess/arms/mvp/b;
    .locals 0

    .line 150
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->b:Lcom/jess/arms/mvp/b;

    return-object p0
.end method

.method static synthetic am(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)I
    .locals 0

    .line 150
    iget p0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->ak:I

    return p0
.end method

.method static synthetic an(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)Lcom/jess/arms/mvp/b;
    .locals 0

    .line 150
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->b:Lcom/jess/arms/mvp/b;

    return-object p0
.end method

.method static synthetic ao(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)Lcom/jess/arms/mvp/b;
    .locals 0

    .line 150
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->b:Lcom/jess/arms/mvp/b;

    return-object p0
.end method

.method static synthetic ap(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)Z
    .locals 0

    .line 150
    iget-boolean p0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->ap:Z

    return p0
.end method

.method static synthetic aq(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)Lcom/jess/arms/mvp/b;
    .locals 0

    .line 150
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->b:Lcom/jess/arms/mvp/b;

    return-object p0
.end method

.method static synthetic ar(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)Lcom/jess/arms/mvp/b;
    .locals 0

    .line 150
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->b:Lcom/jess/arms/mvp/b;

    return-object p0
.end method

.method static synthetic as(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)Lcom/jess/arms/mvp/b;
    .locals 0

    .line 150
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->b:Lcom/jess/arms/mvp/b;

    return-object p0
.end method

.method static synthetic at(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)Lcom/jess/arms/mvp/b;
    .locals 0

    .line 150
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->b:Lcom/jess/arms/mvp/b;

    return-object p0
.end method

.method static synthetic au(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)Lcom/jess/arms/mvp/b;
    .locals 0

    .line 150
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->b:Lcom/jess/arms/mvp/b;

    return-object p0
.end method

.method static synthetic av(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)Lcom/jess/arms/mvp/b;
    .locals 0

    .line 150
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->b:Lcom/jess/arms/mvp/b;

    return-object p0
.end method

.method static synthetic b(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;I)I
    .locals 0

    .line 150
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->an:I

    return p1
.end method

.method static synthetic b(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)Lcom/jess/arms/mvp/b;
    .locals 0

    .line 150
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->b:Lcom/jess/arms/mvp/b;

    return-object p0
.end method

.method static final synthetic b(Landroid/widget/TextView;ILjava/lang/String;)Ljava/lang/CharSequence;
    .locals 0

    return-object p2
.end method

.method private b(I)V
    .locals 5

    const/4 v0, 0x1

    .line 2257
    iput-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->ap:Z

    .line 2258
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->b:Lcom/jess/arms/mvp/b;

    check-cast v1, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->b(I)V

    .line 2259
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->b:Lcom/jess/arms/mvp/b;

    check-cast v1, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    invoke-virtual {v1, v0}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->b(I)V

    const/16 v1, 0x8

    const/4 v3, 0x0

    if-ne p1, v0, :cond_0

    .line 2261
    iput v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->n:I

    .line 2262
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->tvPlayerDetailCommendNew:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/mh/movie/core/R$color;->player_commend_normal:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2263
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->vPlayerDetailCommendNewLine:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2264
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->tvPlayerDetailCommendAll:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/mh/movie/core/R$color;->player_commend_selected:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2265
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->vPlayerDetailCommendAllLine:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2266
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->viewPager:Lcom/mh/movie/core/mvp/ui/widget/ControlScrollViewPager;

    invoke-virtual {p1, v0, v3}, Lcom/mh/movie/core/mvp/ui/widget/ControlScrollViewPager;->setCurrentItem(IZ)V

    goto :goto_0

    .line 2268
    :cond_0
    iput v2, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->n:I

    .line 2269
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->tvPlayerDetailCommendNew:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/mh/movie/core/R$color;->player_commend_selected:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2270
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->vPlayerDetailCommendNewLine:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2271
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->tvPlayerDetailCommendAll:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/mh/movie/core/R$color;->player_commend_normal:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2272
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->vPlayerDetailCommendAllLine:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2273
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->viewPager:Lcom/mh/movie/core/mvp/ui/widget/ControlScrollViewPager;

    invoke-virtual {p1, v3, v3}, Lcom/mh/movie/core/mvp/ui/widget/ControlScrollViewPager;->setCurrentItem(IZ)V

    :goto_0
    return-void
.end method

.method static synthetic b(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;Z)V
    .locals 0

    .line 150
    invoke-direct {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->c(Z)V

    return-void
.end method

.method static synthetic c(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;
    .locals 0

    .line 150
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->ae:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    return-object p0
.end method

.method static final synthetic c(Landroid/widget/TextView;ILjava/lang/String;)Ljava/lang/CharSequence;
    .locals 0

    return-object p2
.end method

.method private c(Z)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 2689
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->ae:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    invoke-virtual {p1, v1}, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->setEnable(Z)V

    .line 2690
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->mhVideoPlayer:Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;->setScreenLock(Z)V

    goto :goto_0

    .line 2692
    :cond_0
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->ae:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    invoke-virtual {p1, v0}, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->setEnable(Z)V

    .line 2693
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->mhVideoPlayer:Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;

    invoke-virtual {p1, v1}, Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;->setScreenLock(Z)V

    :goto_0
    return-void
.end method

.method static synthetic c(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;Z)Z
    .locals 0

    .line 150
    iput-boolean p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->aB:Z

    return p1
.end method

.method static synthetic d(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)Lcom/jess/arms/mvp/b;
    .locals 0

    .line 150
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->b:Lcom/jess/arms/mvp/b;

    return-object p0
.end method

.method static synthetic e(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)Landroid/content/Context;
    .locals 0

    .line 150
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->r:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic f(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)Landroid/content/Context;
    .locals 0

    .line 150
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->r:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic g(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)Lcom/jess/arms/mvp/b;
    .locals 0

    .line 150
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->b:Lcom/jess/arms/mvp/b;

    return-object p0
.end method

.method static synthetic h(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)Landroid/content/Context;
    .locals 0

    .line 150
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->r:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic i(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)Lcom/jess/arms/mvp/b;
    .locals 0

    .line 150
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->b:Lcom/jess/arms/mvp/b;

    return-object p0
.end method

.method static synthetic j(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)I
    .locals 0

    .line 150
    iget p0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->an:I

    return p0
.end method

.method static synthetic k(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)Landroid/content/Context;
    .locals 0

    .line 150
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->r:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic l(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)Lcom/jess/arms/mvp/b;
    .locals 0

    .line 150
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->b:Lcom/jess/arms/mvp/b;

    return-object p0
.end method

.method static synthetic m(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)Lcom/jess/arms/mvp/b;
    .locals 0

    .line 150
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->b:Lcom/jess/arms/mvp/b;

    return-object p0
.end method

.method static synthetic n(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)Lcom/jess/arms/mvp/b;
    .locals 0

    .line 150
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->b:Lcom/jess/arms/mvp/b;

    return-object p0
.end method

.method static synthetic o(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)Lcom/jess/arms/mvp/b;
    .locals 0

    .line 150
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->b:Lcom/jess/arms/mvp/b;

    return-object p0
.end method

.method static synthetic p(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)Lcom/jess/arms/mvp/b;
    .locals 0

    .line 150
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->b:Lcom/jess/arms/mvp/b;

    return-object p0
.end method

.method static synthetic q(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)Lcom/jess/arms/mvp/b;
    .locals 0

    .line 150
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->b:Lcom/jess/arms/mvp/b;

    return-object p0
.end method

.method static synthetic r(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)Lcom/jess/arms/mvp/b;
    .locals 0

    .line 150
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->b:Lcom/jess/arms/mvp/b;

    return-object p0
.end method

.method static synthetic s(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)Lcom/jess/arms/mvp/b;
    .locals 0

    .line 150
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->b:Lcom/jess/arms/mvp/b;

    return-object p0
.end method

.method static synthetic t(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)Lcom/jess/arms/mvp/b;
    .locals 0

    .line 150
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->b:Lcom/jess/arms/mvp/b;

    return-object p0
.end method

.method static synthetic u(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)Landroid/content/Context;
    .locals 0

    .line 150
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->r:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic v(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)Lcom/jess/arms/mvp/b;
    .locals 0

    .line 150
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->b:Lcom/jess/arms/mvp/b;

    return-object p0
.end method

.method static synthetic w(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)Lcom/jess/arms/mvp/b;
    .locals 0

    .line 150
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->b:Lcom/jess/arms/mvp/b;

    return-object p0
.end method

.method static synthetic x(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)Lcom/jess/arms/mvp/b;
    .locals 0

    .line 150
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->b:Lcom/jess/arms/mvp/b;

    return-object p0
.end method

.method static synthetic y(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)Lcom/jess/arms/mvp/b;
    .locals 0

    .line 150
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->b:Lcom/jess/arms/mvp/b;

    return-object p0
.end method

.method static synthetic z(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)Lcom/jess/arms/mvp/b;
    .locals 0

    .line 150
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->b:Lcom/jess/arms/mvp/b;

    return-object p0
.end method


# virtual methods
.method public A()V
    .locals 2

    .line 2936
    invoke-static {}, Lcom/mh/movie/core/mvp/ui/utils/CommonTools;->getSystemTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->at:J

    return-void
.end method

.method public B()I
    .locals 8

    const/4 v0, 0x5

    :goto_0
    const/4 v1, 0x3

    const/4 v2, 0x0

    if-lt v0, v1, :cond_1

    .line 2949
    new-instance v3, Lcom/raizlabs/android/dbflow/sql/language/q;

    new-array v4, v2, [Lcom/raizlabs/android/dbflow/sql/language/a/a;

    invoke-direct {v3, v4}, Lcom/raizlabs/android/dbflow/sql/language/q;-><init>([Lcom/raizlabs/android/dbflow/sql/language/a/a;)V

    const-class v4, Lcom/mh/movie/core/mvp/model/db/TableCommodity;

    invoke-virtual {v3, v4}, Lcom/raizlabs/android/dbflow/sql/language/q;->a(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/sql/language/h;

    move-result-object v3

    const/4 v4, 0x1

    new-array v5, v4, [Lcom/raizlabs/android/dbflow/sql/language/o;

    sget-object v6, Lcom/mh/movie/core/mvp/model/db/TableCommodity_Table;->authId:Lcom/raizlabs/android/dbflow/sql/language/a/b;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/raizlabs/android/dbflow/sql/language/a/b;->a(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/m;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-virtual {v3, v5}, Lcom/raizlabs/android/dbflow/sql/language/h;->a([Lcom/raizlabs/android/dbflow/sql/language/o;)Lcom/raizlabs/android/dbflow/sql/language/s;

    move-result-object v2

    invoke-virtual {v2}, Lcom/raizlabs/android/dbflow/sql/language/s;->e()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mh/movie/core/mvp/model/db/TableCommodity;

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 2952
    :pswitch_0
    iget v1, v2, Lcom/mh/movie/core/mvp/model/db/TableCommodity;->hasFlag:I

    if-ne v1, v4, :cond_0

    const v0, 0x7fffffff

    return v0

    .line 2957
    :pswitch_1
    iget v1, v2, Lcom/mh/movie/core/mvp/model/db/TableCommodity;->hasFlag:I

    if-ne v1, v4, :cond_0

    const/16 v0, 0xa

    return v0

    .line 2962
    :pswitch_2
    iget v2, v2, Lcom/mh/movie/core/mvp/model/db/TableCommodity;->hasFlag:I

    if-ne v2, v4, :cond_0

    return v1

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public TvToMain(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lorg/simple/eventbus/Subscriber;
        tag = "tvDetailToMain"
    .end annotation

    .line 3021
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->finish()V

    return-void
.end method

.method public a(Landroid/os/Bundle;)I
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 394
    sget p1, Lcom/mh/movie/core/R$layout;->activity_player_2:I

    return p1
.end method

.method public a()V
    .locals 0

    invoke-static {p0}, Lcom/mh/movie/core/mvp/ui/widget/k;->a(Lcom/mh/movie/core/mvp/ui/widget/InputDialog$b;)V

    return-void
.end method

.method public a(I)V
    .locals 3

    .line 2862
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setStatus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 2884
    :pswitch_0
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->p()V

    goto :goto_0

    .line 2887
    :pswitch_1
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->w()V

    .line 2888
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->x()V

    .line 2889
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->m()V

    .line 2890
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->y()V

    .line 2891
    invoke-static {p0}, Lcom/mh/movie/core/mvp/ui/utils/RecordUtils;->clearRecord(Landroid/content/Context;)V

    goto :goto_0

    .line 2880
    :pswitch_2
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->p()V

    goto :goto_0

    .line 2897
    :pswitch_3
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->A()V

    .line 2898
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->z()V

    goto :goto_0

    .line 2894
    :pswitch_4
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->p()V

    goto :goto_0

    .line 2875
    :pswitch_5
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->A()V

    .line 2876
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->z()V

    goto :goto_0

    .line 2870
    :pswitch_6
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->w()V

    .line 2871
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->x()V

    goto :goto_0

    .line 2865
    :pswitch_7
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->w()V

    .line 2866
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->x()V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(II)V
    .locals 3

    .line 1400
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->tvPlayerDetailUpInfo:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ""

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1401
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->tvPlayerDetailUpInfo:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->r:Landroid/content/Context;

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    sget v2, Lcom/mh/movie/core/R$color;->themeColor:I

    goto :goto_0

    :cond_0
    sget v2, Lcom/mh/movie/core/R$color;->text_66:I

    :goto_0
    invoke-static {v0, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1402
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->ivPlayerDetailUpIcon:Landroid/widget/ImageView;

    if-ne p1, v1, :cond_1

    sget p1, Lcom/mh/movie/core/R$mipmap;->icon_video_like_do:I

    goto :goto_1

    :cond_1
    sget p1, Lcom/mh/movie/core/R$mipmap;->icon_video_like:I

    :goto_1
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public a(IILjava/lang/Integer;)V
    .locals 1

    .line 2989
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->u:Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView;->a(IILjava/lang/Integer;)V

    return-void
.end method

.method public a(IIZ)V
    .locals 1

    .line 1486
    new-instance v0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$8;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$8;-><init>(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;IIZ)V

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method final synthetic a(ILcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;)V
    .locals 2

    .line 2019
    iget v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->y:I

    if-ne p1, v0, :cond_0

    return-void

    .line 2022
    :cond_0
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->y:I

    .line 2023
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->b:Lcom/jess/arms/mvp/b;

    check-cast p1, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->a(Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;IZ)V

    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 2

    .line 1043
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->mhVideoPlayer:Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;->getCurrentPlayer()Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->onVideoReset()V

    .line 1044
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->t()V

    .line 1045
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->pvProjectionControl:Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->a(ILjava/lang/String;I)V

    .line 1046
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->b:Lcom/jess/arms/mvp/b;

    check-cast p1, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->q()V

    const-string p1, "kkk"

    .line 1047
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->ae:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->getIsLand()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1053
    iget-boolean p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->m:Z

    if-eqz p1, :cond_0

    const-string p1, "kkk"

    const-string p2, "true"

    .line 1054
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1055
    invoke-static {p0}, Lcom/jess/arms/c/a;->e(Landroid/content/Context;)V

    .line 1056
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->pvProjectionControl:Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->i()V

    :cond_0
    return-void
.end method

.method public a(ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/ClarityEntity;",
            ">;)V"
        }
    .end annotation

    .line 2167
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->A:Lcom/mh/movie/core/mvp/ui/adapter/player/PlayerTVPartAdapter;

    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/ui/adapter/player/PlayerTVPartAdapter;->b(I)V

    .line 2168
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->mhVideoPlayer:Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;

    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;->setHdChoice(I)V

    .line 2169
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->mhVideoPlayer:Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;

    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;->setTvPartResolution(I)V

    if-eqz p2, :cond_0

    .line 2171
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->mhVideoPlayer:Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;

    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->b:Lcom/jess/arms/mvp/b;

    check-cast p2, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->k()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;->c(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public a(IZ)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1387
    sget p1, Lcom/mh/movie/core/R$id;->commend_collect_icon:I

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    sget v0, Lcom/mh/movie/core/R$mipmap;->icon_video_collect:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    const-string p1, "\u6536\u85cf\u6210\u529f\uff0c\u53ef\u5728\u4e2a\u4eba\u4e2d\u5fc3\u5feb\u901f\u627e\u5230"

    goto :goto_0

    .line 1390
    :cond_0
    sget p1, Lcom/mh/movie/core/R$id;->commend_collect_icon:I

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    sget v0, Lcom/mh/movie/core/R$mipmap;->icon_video_collect02:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    const-string p1, "\u5df2\u53d6\u6d88\u6536\u85cf"

    :goto_0
    if-eqz p2, :cond_1

    .line 1394
    invoke-static {p0, p1}, Lcom/jess/arms/c/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method final synthetic a(Landroid/view/View;)V
    .locals 0

    .line 2449
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->b:Lcom/jess/arms/mvp/b;

    check-cast p1, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    invoke-virtual {p1, p0}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->b(Landroid/app/Activity;)V

    return-void
.end method

.method final synthetic a(Landroid/widget/TextView;Ljava/lang/String;I)V
    .locals 1

    .line 2143
    new-instance p1, Landroid/content/Intent;

    iget-object p3, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->r:Landroid/content/Context;

    const-class v0, Lcom/mh/movie/core/mvp/ui/activity/player/TagActivity;

    invoke-direct {p1, p3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p3, "content"

    .line 2144
    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2145
    sget p2, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->e:I

    invoke-virtual {p0, p1, p2}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public a(Lcom/jess/arms/b/a/a;)V
    .locals 1
    .param p1    # Lcom/jess/arms/b/a/a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 385
    invoke-static {}, Lcom/mh/movie/core/a/a/b/a;->a()Lcom/mh/movie/core/a/a/b/a$a;

    move-result-object v0

    .line 386
    invoke-virtual {v0, p1}, Lcom/mh/movie/core/a/a/b/a$a;->a(Lcom/jess/arms/b/a/a;)Lcom/mh/movie/core/a/a/b/a$a;

    move-result-object p1

    new-instance v0, Lcom/mh/movie/core/a/b/b/d;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/a/b/b/d;-><init>(Lcom/mh/movie/core/mvp/a/b/b$b;)V

    .line 387
    invoke-virtual {p1, v0}, Lcom/mh/movie/core/a/a/b/a$a;->a(Lcom/mh/movie/core/a/b/b/d;)Lcom/mh/movie/core/a/a/b/a$a;

    move-result-object p1

    .line 388
    invoke-virtual {p1}, Lcom/mh/movie/core/a/a/b/a$a;->a()Lcom/mh/movie/core/a/a/b/d;

    move-result-object p1

    .line 389
    invoke-interface {p1, p0}, Lcom/mh/movie/core/a/a/b/d;->a(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)V

    return-void
.end method

.method public a(Lcom/mh/movie/core/mvp/model/db/TableCommodity;)V
    .locals 1

    const/4 v0, 0x0

    .line 1038
    invoke-virtual {p0, p1, v0}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->a(Lcom/mh/movie/core/mvp/model/db/TableCommodity;Ljava/lang/Integer;)V

    return-void
.end method

.method public a(Lcom/mh/movie/core/mvp/model/db/TableCommodity;Ljava/lang/Integer;)V
    .locals 5

    .line 984
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

    .line 986
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->B:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    if-nez p2, :cond_1

    .line 987
    new-instance p2, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->r:Landroid/content/Context;

    const/16 v1, 0x9

    invoke-direct {p2, v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->B:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    .line 988
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->B:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    const-string v0, "\u63d0\u793a"

    invoke-virtual {p2, v0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->a(Ljava/lang/String;)V

    :cond_1
    const-string p2, "\u5f00\u542f%s\u8fd8\u9700 "

    .line 990
    new-array v0, v3, [Ljava/lang/Object;

    iget-object v1, p1, Lcom/mh/movie/core/mvp/model/db/TableCommodity;->title:Ljava/lang/String;

    aput-object v1, v0, v2

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 991
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->B:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/mh/movie/core/mvp/model/db/TableCommodity;->money:I

    invoke-static {}, Lcom/mh/movie/core/mvp/ui/b;->a()Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;

    move-result-object p2

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;->getMoney()I

    move-result p2

    sub-int/2addr p1, p2

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " \u4e2a\u9ebb\u82b1\u5e01\n\u60a8\u7684\u9ebb\u82b1\u5e01\u4e0d\u8db3\uff0c\u65e0\u6cd5\u5f00\u542f"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->b(Ljava/lang/String;)V

    .line 992
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->B:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    const-string p2, "\u505a\u4efb\u52a1\u8d5a\u53d6"

    invoke-virtual {p1, p2}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->d(Ljava/lang/String;)V

    .line 993
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->B:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    new-instance p2, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$28;

    invoke-direct {p2, p0}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$28;-><init>(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)V

    invoke-virtual {p1, p2}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->a(Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog$a;)V

    .line 1007
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->B:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->show()V

    goto :goto_1

    .line 1010
    :cond_2
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->C:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    if-nez v0, :cond_3

    .line 1011
    new-instance v0, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->r:Landroid/content/Context;

    const/16 v4, 0x8

    invoke-direct {v0, v1, v4}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->C:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    .line 1012
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->C:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    const-string v1, "\u63d0\u793a"

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->a(Ljava/lang/String;)V

    :cond_3
    const-string v0, " \u9ebb\u82b1\u5e01\u5f00\u542f%s\uff1f"

    .line 1014
    new-array v1, v3, [Ljava/lang/Object;

    iget-object v4, p1, Lcom/mh/movie/core/mvp/model/db/TableCommodity;->title:Ljava/lang/String;

    aput-object v4, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u4e2a\u6708\u7684%s\u4f53\u9a8c"

    .line 1015
    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p1, Lcom/mh/movie/core/mvp/model/db/TableCommodity;->title:Ljava/lang/String;

    aput-object v4, v3, v2

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1016
    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->C:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

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

    .line 1017
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->C:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

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

    .line 1018
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->C:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$2;-><init>(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;Lcom/mh/movie/core/mvp/model/db/TableCommodity;Ljava/lang/Integer;)V

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->a(Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog$a;)V

    .line 1031
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->C:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->show()V

    :goto_1
    return-void
.end method

.method public a(Lcom/mh/movie/core/mvp/model/entity/response/CommentResponse;)V
    .locals 4

    .line 1371
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->t:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 1372
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->T:Ljava/util/List;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->viewPager:Lcom/mh/movie/core/mvp/ui/widget/ControlScrollViewPager;

    invoke-virtual {v2}, Lcom/mh/movie/core/mvp/ui/widget/ControlScrollViewPager;->getCurrentItem()I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/ui/fragment/CommentFragment;

    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/ui/fragment/CommentFragment;->a(Lcom/mh/movie/core/mvp/model/entity/response/CommentResponse;)V

    .line 1373
    iput-boolean v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->ap:Z

    goto :goto_0

    .line 1375
    :cond_0
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->b:Lcom/jess/arms/mvp/b;

    check-cast p1, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    iget v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->n:I

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->b(I)V

    .line 1376
    iput-boolean v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->ap:Z

    :goto_0
    const/4 p1, 0x2

    .line 1378
    new-array p1, p1, [I

    .line 1379
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->t:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getLocationInWindow([I)V

    .line 1380
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->postDetailNestedScroll:Landroid/support/v4/widget/NestedScrollView;

    const/4 v2, 0x0

    aget p1, p1, v1

    int-to-float p1, p1

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->r:Landroid/content/Context;

    const/high16 v3, 0x43560000    # 214.0f

    invoke-static {v1, v3}, Lcom/jess/arms/c/e;->a(Landroid/content/Context;F)F

    move-result v1

    sub-float/2addr p1, v1

    float-to-int p1, p1

    invoke-virtual {v0, v2, p1}, Landroid/support/v4/widget/NestedScrollView;->scrollBy(II)V

    return-void
.end method

.method public a(Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;)V
    .locals 7

    .line 2510
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->getId()I

    move-result v0

    iput v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->x:I

    .line 2512
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->getTagDTO()Lcom/mh/movie/core/mvp/model/entity/TagDTOBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/TagDTOBean;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/a;->a(Ljava/lang/String;)Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 2513
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->tvPlayerLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2515
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->getTagDTO()Lcom/mh/movie/core/mvp/model/entity/TagDTOBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/TagDTOBean;->getBackgroundColor()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    .line 2516
    iget-object v3, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->r:Landroid/content/Context;

    sget v4, Lcom/mh/movie/core/R$drawable;->tag_corner_bg:I

    invoke-static {v3, v4}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v4/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 2517
    invoke-static {v3, v0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    .line 2518
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->tvPlayerLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2520
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->tvPlayerLabel:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->getTagDTO()Lcom/mh/movie/core/mvp/model/entity/TagDTOBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mh/movie/core/mvp/model/entity/TagDTOBean;->getFrontColor()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2521
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->tvPlayerLabel:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->getTagDTO()Lcom/mh/movie/core/mvp/model/entity/TagDTOBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mh/movie/core/mvp/model/entity/TagDTOBean;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2523
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->tvPlayerLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2527
    :goto_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->tvPlayerDetailName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2528
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->getDoubanScore()D

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmpl-double v0, v3, v5

    const/4 v3, 0x1

    if-nez v0, :cond_1

    .line 2529
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->tvPlayerDetailScore:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 2531
    :cond_1
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->tvPlayerDetailScore:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2532
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->tvPlayerDetailScore:Landroid/widget/TextView;

    const-string v1, "%.1f\u5206"

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->getDoubanScore()D

    move-result-wide v5

    double-to-float v5, v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2534
    :goto_1
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->getClassifyTypeList()Ljava/util/List;

    move-result-object v0

    const-string v1, ""

    .line 2536
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v3, :cond_2

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 2537
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2539
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x2

    if-le v4, v5, :cond_3

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 2540
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2542
    :cond_3
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->tvPlayerDetailUpSource:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u5f71\u7247\u6765\u6e90\uff1a"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->getTagSource()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2543
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->tvPlayerDetailDescription:Landroid/widget/TextView;

    const-string v4, "%s\u6b21\u64ad\u653e %s..."

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->getPlayCount()I

    move-result v6

    int-to-float v6, v6

    invoke-static {v6}, Lcom/mh/movie/core/mvp/ui/utils/T;->formatShow(F)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    const-string v1, ""

    :goto_2
    aput-object v1, v5, v3

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2545
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->getReviewNum()I

    move-result v0

    const/16 v1, 0x3e7

    if-le v0, v1, :cond_5

    .line 2546
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->tvPlayerDetailCommentInfo:Landroid/widget/TextView;

    const-string v1, "%.1f\u4e07\u70ed\u8bc4"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->getReviewNum()I

    move-result p1

    int-to-float p1, p1

    const v4, 0x461c4000    # 10000.0f

    div-float/2addr p1, v4

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v3, v2

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 2548
    :cond_5
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->tvPlayerDetailCommentInfo:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->getReviewNum()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\u70ed\u8bc4"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    return-void
.end method

.method public a(Lcom/mh/movie/core/mvp/model/entity/response/DownUrlResponse;)V
    .locals 1

    .line 1447
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->D:Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;

    if-eqz v0, :cond_0

    .line 1448
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->D:Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;

    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->a(Lcom/mh/movie/core/mvp/model/entity/response/DownUrlResponse;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/mh/movie/core/mvp/model/entity/response/ExchangeCenterResponse$CommodityInfoListBean;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1454
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/ExchangeCenterResponse$CommodityInfoListBean;->getHasFlag()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1455
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->s()V

    goto :goto_0

    .line 1457
    :cond_0
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->r()V

    :goto_0
    return-void
.end method

.method public a(Lcom/mh/movie/core/mvp/presenter/player/j;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1519
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->mhVideoPlayer:Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;->getDuration()I

    move-result v0

    .line 1520
    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/presenter/player/j;->a(I)V

    .line 1521
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/presenter/player/j;->a()Ljava/util/List;

    move-result-object p1

    .line 1522
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->mhVideoPlayer:Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;

    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;->a(Ljava/util/List;)V

    return-void
.end method

.method public a(Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView$a;)V
    .locals 1

    .line 2977
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->u:Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView;

    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView;->setOnCallBack(Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView$a;)V

    .line 2978
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->u:Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView;->setVisibility(I)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .line 2715
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->b:Lcom/jess/arms/mvp/b;

    check-cast v0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    iget v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->y:I

    invoke-virtual {v0, v1, p1}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->a(ILjava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;IZ)V
    .locals 2

    .line 1496
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->mhVideoPlayer:Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;->getCurrentPlayer()Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    move-result-object p2

    invoke-virtual {p2}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->onVideoReset()V

    .line 1497
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->mhVideoPlayer:Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;->getCurrentPlayer()Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    move-result-object p2

    invoke-virtual {p2}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->release()V

    .line 1498
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->mhVideoPlayer:Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;->d(Z)V

    .line 1499
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->mhVideoPlayer:Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;->hideAllWidget()V

    .line 1500
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->mhVideoPlayer:Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;

    iget-object p2, p2, Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;->rlVideoPlayerDetailOne:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {p2, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1501
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->mhVideoPlayer:Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;

    iget-object p2, p2, Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;->rlVideoPlayerDetail:Landroid/widget/RelativeLayout;

    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1502
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->mhVideoPlayer:Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;

    iget-object p2, p2, Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;->tvVideoPlayerVideoTip:Landroid/widget/TextView;

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1503
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->mhVideoPlayer:Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;

    iget-object p2, p2, Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;->tvVideoPlayerTryWatchM:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1504
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->mhVideoPlayer:Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;

    iget-object p2, p2, Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;->tvVideoPlayerWatchMhb:Landroid/widget/TextView;

    const-string p3, "\u89c2\u770b\u5b8c\u6574\u7248"

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1505
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->toolbarPlayer:Lcom/mh/movie/core/mvp/ui/widget/PlayerToolbar;

    iget-object p2, p2, Lcom/mh/movie/core/mvp/ui/widget/PlayerToolbar;->b:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    .line 1569
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->mhVideoPlayer:Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;->rlVideoPlayerDetail:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1570
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->mhVideoPlayer:Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;->rlVideoPlayerDetailOne:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1571
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->mhVideoPlayer:Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;->d(Z)V

    const-string v0, "TTT"

    .line 1572
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playUrl:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1573
    sget-boolean v0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->o:Z

    if-nez v0, :cond_0

    .line 1574
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->w()V

    .line 1575
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->x()V

    .line 1576
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->m()V

    .line 1577
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->y()V

    .line 1578
    invoke-static {p0}, Lcom/mh/movie/core/mvp/ui/utils/RecordUtils;->clearRecord(Landroid/content/Context;)V

    .line 1581
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->ae:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    sget-boolean v1, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->o:Z

    invoke-virtual {v0, v1}, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->setDisableProt(Z)V

    .line 1582
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->mhVideoPlayer:Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;->getCurrentPlayer()Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->onVideoReset()V

    .line 1583
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->mhVideoPlayer:Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;->getCurrentPlayer()Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->release()V

    .line 1587
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->mhVideoPlayer:Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;->getCurrentPlayer()Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, ""

    invoke-virtual {v0, p1, v1, v2}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->setUp(Ljava/lang/String;ZLjava/lang/String;)Z

    .line 1588
    iput-object p2, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->al:Ljava/lang/String;

    .line 1589
    iput p3, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->am:I

    .line 1590
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->mhVideoPlayer:Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;->startPlayLogic()V

    if-lez p3, :cond_1

    .line 1592
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->mhVideoPlayer:Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;->getCurrentPlayer()Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    move-result-object p1

    int-to-long p2, p3

    invoke-virtual {p1, p2, p3}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->seekTo(J)V

    :cond_1
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/ClarityEntity;",
            ">;)V"
        }
    .end annotation

    .line 1734
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->pvProjectionControl:Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;

    invoke-virtual {v0, p1, p2}, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->a(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method final synthetic a(Ljava/lang/Void;)V
    .locals 0

    .line 2442
    sget-object p1, Lcom/mh/movie/core/mvp/ui/b;->i:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/jess/arms/c/d;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 2443
    const-class p1, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;

    invoke-static {p1}, Lcom/jess/arms/c/a;->a(Ljava/lang/Class;)V

    goto :goto_0

    .line 2445
    :cond_0
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->b:Lcom/jess/arms/mvp/b;

    check-cast p1, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->p()V

    :goto_0
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;",
            ">;)V"
        }
    .end annotation

    .line 2111
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2112
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->llPlayerDetailTv:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2114
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->z:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2115
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_2

    .line 2116
    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->z:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2117
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;

    invoke-virtual {v2}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;->getIsHighlight()I

    move-result v2

    if-ne v2, v3, :cond_1

    .line 2118
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;

    invoke-virtual {v2}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;->getId()I

    move-result v2

    iput v2, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->y:I

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2122
    :cond_2
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->b:Lcom/jess/arms/mvp/b;

    check-cast p1, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->f()Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;

    move-result-object p1

    .line 2123
    :goto_1
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->getVideoPageList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 2124
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->getVideoPageList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoPageListBean;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoPageListBean;->getIsShow()I

    move-result v1

    if-ne v1, v3, :cond_3

    .line 2125
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->getVideoPageList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoPageListBean;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoPageListBean;->getCurrentPage()I

    move-result p1

    sub-int/2addr p1, v3

    iput p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->ai:I

    .line 2126
    iget p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->ai:I

    iput p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->aj:I

    .line 2127
    iget p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->ai:I

    iput p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->ak:I

    goto :goto_2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2131
    :cond_4
    :goto_2
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->A:Lcom/mh/movie/core/mvp/ui/adapter/player/PlayerTVPartAdapter;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->b:Lcom/jess/arms/mvp/b;

    check-cast v0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->f()Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->getType()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/ui/adapter/player/PlayerTVPartAdapter;->a(I)V

    .line 2132
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->A:Lcom/mh/movie/core/mvp/ui/adapter/player/PlayerTVPartAdapter;

    iget v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->y:I

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/ui/adapter/player/PlayerTVPartAdapter;->c(I)V

    .line 2133
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->A:Lcom/mh/movie/core/mvp/ui/adapter/player/PlayerTVPartAdapter;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/ui/adapter/player/PlayerTVPartAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public a(Ljava/util/List;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/response/CommentResponse;",
            ">;I)V"
        }
    .end annotation

    .line 1303
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->v:Lcom/mh/movie/core/mvp/ui/widget/recylerview/RecyclerFooterView;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-lez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/recylerview/RecyclerFooterView;->setVisibility(I)V

    .line 1304
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 1305
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->az:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1306
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->t:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v0, 0x1

    .line 1307
    iput-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->ap:Z

    .line 1316
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->ap:Z

    if-ne p2, v0, :cond_2

    .line 1318
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->T:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/mh/movie/core/mvp/ui/fragment/CommentFragment;

    invoke-virtual {p2, p1}, Lcom/mh/movie/core/mvp/ui/fragment/CommentFragment;->a(Ljava/util/List;)V

    goto :goto_2

    .line 1321
    :cond_2
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->T:Ljava/util/List;

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/mh/movie/core/mvp/ui/fragment/CommentFragment;

    invoke-virtual {p2, p1}, Lcom/mh/movie/core/mvp/ui/fragment/CommentFragment;->a(Ljava/util/List;)V

    .line 1324
    :goto_2
    iget-boolean p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->aB:Z

    if-eqz p1, :cond_3

    const/4 p1, 0x2

    .line 1325
    invoke-direct {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->b(I)V

    .line 1327
    :cond_3
    iput-boolean v3, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->aB:Z

    return-void

    .line 1309
    :cond_4
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->b:Lcom/jess/arms/mvp/b;

    check-cast p1, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->e()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_5

    .line 1310
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->az:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1312
    :cond_5
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->t:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1313
    iput-boolean v3, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->ap:Z

    return-void
.end method

.method final synthetic a(Ljava/util/List;Z)V
    .locals 2

    if-eqz p2, :cond_0

    .line 2189
    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 2190
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->ivPlayerDetailMovieGo:Landroid/widget/ImageView;

    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/player/t;

    invoke-direct {v1, p0, p2, p1}, Lcom/mh/movie/core/mvp/ui/activity/player/t;-><init>(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method final synthetic a(Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/List;Landroid/view/View;)V
    .locals 1

    .line 2192
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p3

    const/4 v0, 0x1

    if-nez p3, :cond_0

    .line 2193
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2194
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->labels:Lcom/mh/movie/core/mvp/ui/widget/LabelsView;

    const/16 p3, 0xa

    invoke-virtual {p1, p3}, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->setMaxLine(I)V

    .line 2195
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->labels:Lcom/mh/movie/core/mvp/ui/widget/LabelsView;

    sget-object p3, Lcom/mh/movie/core/mvp/ui/activity/player/u;->a:Lcom/mh/movie/core/mvp/ui/widget/LabelsView$a;

    invoke-virtual {p1, p2, p3}, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->a(Ljava/util/List;Lcom/mh/movie/core/mvp/ui/widget/LabelsView$a;)V

    .line 2196
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->ivPlayerDetailMovieGo:Landroid/widget/ImageView;

    sget p2, Lcom/mh/movie/core/R$mipmap;->expand_no_more:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 2199
    :cond_0
    iget-object p3, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->labels:Lcom/mh/movie/core/mvp/ui/widget/LabelsView;

    invoke-virtual {p3, v0}, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->setMaxLine(I)V

    const/4 p3, 0x0

    .line 2200
    invoke-virtual {p1, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2201
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->labels:Lcom/mh/movie/core/mvp/ui/widget/LabelsView;

    sget-object p3, Lcom/mh/movie/core/mvp/ui/activity/player/m;->a:Lcom/mh/movie/core/mvp/ui/widget/LabelsView$a;

    invoke-virtual {p1, p2, p3}, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->a(Ljava/util/List;Lcom/mh/movie/core/mvp/ui/widget/LabelsView$a;)V

    .line 2202
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->ivPlayerDetailMovieGo:Landroid/widget/ImageView;

    sget p2, Lcom/mh/movie/core/R$mipmap;->expand_more:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method

.method public a(Z)V
    .locals 3

    if-eqz p1, :cond_1

    .line 1359
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->l:Landroid/widget/PopupWindow;

    if-eqz p1, :cond_0

    .line 1360
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->l:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1362
    :cond_0
    invoke-static {p0}, Lcom/mh/movie/core/mvp/ui/utils/CommonTools;->createLoadingDialog(Landroid/content/Context;)Landroid/widget/PopupWindow;

    move-result-object p1

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->l:Landroid/widget/PopupWindow;

    .line 1363
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->l:Landroid/widget/PopupWindow;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->l:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x11

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2, v2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0

    .line 1364
    :cond_1
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->l:Landroid/widget/PopupWindow;

    if-eqz p1, :cond_2

    .line 1365
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->l:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_2
    :goto_0
    return-void
.end method

.method public a(ZLjava/lang/String;)V
    .locals 4

    .line 1211
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->rlPlayerVideoAsking:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/16 v3, 0x8

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    if-eqz p1, :cond_4

    .line 1213
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->rlPlayerVideoAsking:Landroid/widget/LinearLayout;

    sget v0, Lcom/mh/movie/core/R$id;->rl_player_load:I

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    if-eqz p2, :cond_1

    sget v0, Lcom/mh/movie/core/R$mipmap;->error:I

    goto :goto_1

    :cond_1
    sget v0, Lcom/mh/movie/core/R$mipmap;->loading:I

    :goto_1
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1214
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->rlPlayerVideoAsking:Landroid/widget/LinearLayout;

    sget v0, Lcom/mh/movie/core/R$id;->rl_player_load_desc:I

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p2, :cond_2

    move-object v0, p2

    goto :goto_2

    :cond_2
    const-string v0, "\u6b63\u5728\u52a0\u8f7d\u4e2d..."

    :goto_2
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1215
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->rlPlayerVideoAsking:Landroid/widget/LinearLayout;

    sget v0, Lcom/mh/movie/core/R$id;->rl_player_retry:I

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p2, :cond_3

    const/4 v1, 0x0

    .line 1216
    :cond_3
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1217
    new-instance p2, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$6;

    invoke-direct {p2, p0}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$6;-><init>(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    return-void
.end method

.method public a(ZZ)V
    .locals 4

    const/4 v0, 0x0

    .line 1198
    sput-boolean v0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->o:Z

    .line 1199
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->postDetailNestedScroll:Landroid/support/v4/widget/NestedScrollView;

    const/16 v2, 0x8

    if-eqz p1, :cond_0

    const/16 v3, 0x8

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v1, v3}, Landroid/support/v4/widget/NestedScrollView;->setVisibility(I)V

    .line 1200
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->inputCommetn:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_1

    const/16 v0, 0x8

    :cond_1
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v0, 0x0

    .line 1201
    invoke-virtual {p0, p1, v0}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->a(ZLjava/lang/String;)V

    if-eqz p1, :cond_2

    if-nez p2, :cond_2

    .line 1204
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->mhVideoPlayer:Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;->getCurrentPlayer()Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->onVideoReset()V

    :cond_2
    return-void
.end method

.method public b(II)V
    .locals 3

    .line 1407
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->tvPlayerDetailDownInfo:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ""

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1408
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->tvPlayerDetailDownInfo:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->r:Landroid/content/Context;

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    sget v2, Lcom/mh/movie/core/R$color;->themeColor:I

    goto :goto_0

    :cond_0
    sget v2, Lcom/mh/movie/core/R$color;->text_66:I

    :goto_0
    invoke-static {v0, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1409
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->ivPlayerDetailDownIcon:Landroid/widget/ImageView;

    if-ne p1, v1, :cond_1

    sget p1, Lcom/mh/movie/core/R$mipmap;->icon_video_unlike_do:I

    goto :goto_1

    :cond_1
    sget p1, Lcom/mh/movie/core/R$mipmap;->icon_video_unlike:I

    :goto_1
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 399
    sget-object p1, Lcom/mh/movie/core/mvp/ui/b;->i:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/jess/arms/c/d;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->Q:Z

    .line 400
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->r:Landroid/content/Context;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->toolbarPlayer:Lcom/mh/movie/core/mvp/ui/widget/PlayerToolbar;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/mh/movie/core/mvp/ui/utils/UIUtils;->initTopbar(Landroid/content/Context;Landroid/view/View;Z)V

    .line 405
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->D()V

    .line 406
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->H()V

    .line 408
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->I()V

    .line 409
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->J()V

    .line 410
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->K()V

    .line 411
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->L()V

    .line 413
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->C()V

    .line 414
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->E()V

    .line 415
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->P()V

    .line 416
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->m()V

    .line 417
    invoke-static {p0}, Lcom/mh/movie/core/mvp/ui/utils/RecordUtils;->clearRecord(Landroid/content/Context;)V

    .line 418
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->mhVideoPlayer:Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;

    invoke-virtual {p1, p0}, Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;->setStatusListener(Lcom/mh/movie/core/mvp/ui/activity/player/y;)V

    .line 420
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->b:Lcom/jess/arms/mvp/b;

    check-cast p1, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    invoke-virtual {p1, p0}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->c(Landroid/app/Activity;)V

    return-void
.end method

.method final synthetic b(Landroid/view/View;)V
    .locals 0

    .line 2448
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->v()V

    return-void
.end method

.method public b(Lcom/mh/movie/core/mvp/model/entity/response/CommentResponse;)V
    .locals 1

    .line 3016
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->u:Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView;

    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView;->a(Lcom/mh/movie/core/mvp/model/entity/response/CommentResponse;)V

    return-void
.end method

.method public b(Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;)V
    .locals 2

    .line 1556
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1557
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->mhVideoPlayer:Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;

    invoke-virtual {v1, v0}, Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;->d(Ljava/lang/String;)V

    .line 1558
    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->c(Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;)Ljava/lang/String;

    move-result-object p1

    .line 1560
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->mhVideoPlayer:Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;

    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;->setVideoTitle(Ljava/lang/String;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    .line 2048
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->llPlayerDetailTv:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2049
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->tvPlayerDetailTvPart:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public b(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2179
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 2180
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->llDetailLabel:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void

    .line 2183
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->labels:Lcom/mh/movie/core/mvp/ui/widget/LabelsView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->setMaxLine(I)V

    .line 2184
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->ivPlayerDetailMovieGo:Landroid/widget/ImageView;

    sget v1, Lcom/mh/movie/core/R$mipmap;->expand_more:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2185
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->ivPlayerDetailMovieGo:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2187
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->labels:Lcom/mh/movie/core/mvp/ui/widget/LabelsView;

    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/player/o;

    invoke-direct {v1, p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/player/o;-><init>(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->setOnLinesCallBack(Lcom/mh/movie/core/mvp/ui/widget/LabelsView$b;)V

    .line 2208
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->labels:Lcom/mh/movie/core/mvp/ui/widget/LabelsView;

    sget-object v1, Lcom/mh/movie/core/mvp/ui/activity/player/p;->a:Lcom/mh/movie/core/mvp/ui/widget/LabelsView$a;

    invoke-virtual {v0, p1, v1}, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;->a(Ljava/util/List;Lcom/mh/movie/core/mvp/ui/widget/LabelsView$a;)V

    return-void
.end method

.method public b(Ljava/util/List;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;",
            ">;I)V"
        }
    .end annotation

    .line 1414
    sget v0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->f:I

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->q:Lcom/mh/movie/core/mvp/ui/widget/player/TvPartView;

    if-eqz v0, :cond_0

    .line 1415
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->q:Lcom/mh/movie/core/mvp/ui/widget/player/TvPartView;

    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/ui/widget/player/TvPartView;->setDataLists(Ljava/util/List;)V

    .line 1417
    :cond_0
    sget v0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->g:I

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->D:Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;

    if-eqz v0, :cond_1

    .line 1418
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->D:Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;

    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->setCacheList(Ljava/util/List;)V

    .line 1420
    :cond_1
    sget v0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->h:I

    if-ne p2, v0, :cond_2

    .line 1421
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->mhVideoPlayer:Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->b:Lcom/jess/arms/mvp/b;

    check-cast v2, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    invoke-virtual {v2}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->f()Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->getType()I

    move-result v2

    iget v3, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->y:I

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;->a(Ljava/util/List;Ljava/util/List;II)V

    .line 1424
    :cond_2
    sget v0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->i:I

    if-ne p2, v0, :cond_3

    .line 1425
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->z:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p2, v0, p1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 1426
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->A:Lcom/mh/movie/core/mvp/ui/adapter/player/PlayerTVPartAdapter;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p2, v0, p1}, Lcom/mh/movie/core/mvp/ui/adapter/player/PlayerTVPartAdapter;->notifyItemRangeInserted(II)V

    .line 1427
    iget p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->aj:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->aj:I

    .line 1428
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->L:Lcom/mh/movie/core/mvp/ui/widget/a/a;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/ui/widget/a/a;->c()V

    goto :goto_0

    .line 1429
    :cond_3
    sget v0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->j:I

    if-ne p2, v0, :cond_4

    .line 1430
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->z:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    .line 1431
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->z:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1432
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->A:Lcom/mh/movie/core/mvp/ui/adapter/player/PlayerTVPartAdapter;

    add-int/lit8 p2, p2, -0x1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v0, p2, p1}, Lcom/mh/movie/core/mvp/ui/adapter/player/PlayerTVPartAdapter;->notifyItemRangeInserted(II)V

    .line 1433
    iget p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->ak:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->ak:I

    .line 1434
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->L:Lcom/mh/movie/core/mvp/ui/widget/a/a;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/ui/widget/a/a;->c()V

    :cond_4
    :goto_0
    return-void
.end method

.method public b(Z)V
    .locals 3

    .line 2819
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->b:Lcom/jess/arms/mvp/b;

    check-cast v0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->f()Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2821
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->r:Landroid/content/Context;

    const-string v0, "\u5f71\u7247\u6570\u636e\u52a0\u8f7d\u5931\u8d25\uff0c\u65e0\u6cd5\u5206\u4eab"

    invoke-static {p1, v0}, Lcom/mh/movie/core/mvp/ui/utils/T;->showShort(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    const-string v1, "clipboard"

    .line 2824
    invoke-virtual {p0, v1}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipboardManager;

    .line 2825
    invoke-static {}, Lcom/mh/movie/core/c/b;->a()Lcom/mh/movie/core/c/b;

    move-result-object v2

    invoke-virtual {v2, p0, p0, p0, p0}, Lcom/mh/movie/core/c/b;->a(Landroid/content/Context;Landroid/app/Activity;Lcom/mh/movie/core/c/a;Lcom/tencent/tauth/IUiListener;)V

    .line 2826
    invoke-static {}, Lcom/mh/movie/core/c/b;->a()Lcom/mh/movie/core/c/b;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/mh/movie/core/c/b;->a(Z)V

    .line 2827
    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->d(Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;)Lcom/mh/movie/core/mvp/model/entity/ShareRequest;

    move-result-object p1

    .line 2828
    invoke-virtual {p1, v1}, Lcom/mh/movie/core/mvp/model/entity/ShareRequest;->setmClipboardManager(Landroid/content/ClipboardManager;)V

    .line 2829
    invoke-static {}, Lcom/mh/movie/core/c/b;->a()Lcom/mh/movie/core/c/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mh/movie/core/c/b;->a(Lcom/mh/movie/core/mvp/model/entity/ShareRequest;)V

    return-void
.end method

.method public b_(Ljava/lang/String;)V
    .locals 3

    .line 1510
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->mhVideoPlayer:Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;->rlVideoPlayerDetail:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1511
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->mhVideoPlayer:Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;->rlVideoPlayerDetailOne:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1512
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->mhVideoPlayer:Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;->tvVideoPlayerTryWatchMOne:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1513
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->toolbarPlayer:Lcom/mh/movie/core/mvp/ui/widget/PlayerToolbar;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/widget/PlayerToolbar;->b:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u7528\u6d41\u91cf\u64ad\u653e "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public c(Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;)Ljava/lang/String;
    .locals 4

    .line 1533
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 1534
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v1, 0x0

    .line 1535
    :goto_0
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->getVideoList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 1536
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->getVideoList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;

    invoke-virtual {v2}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;->getId()I

    move-result v2

    iget v3, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->y:I

    if-ne v2, v3, :cond_1

    .line 1537
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->getType()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    .line 1538
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " \u7b2c"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->getVideoList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;->getPeriod()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\u671f"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1540
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " \u7b2c"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->getVideoList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;->getSortNum()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\u96c6"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v0
.end method

.method public c()V
    .locals 10

    .line 1229
    invoke-static {}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->a()Lcom/mh/movie/core/mvp/ui/widget/cache/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->x()Ljava/util/List;

    move-result-object v0

    .line 1230
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "videoInfoId"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->Z:I

    .line 1231
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "videoId"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->aa:I

    const-string v1, ""

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1234
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ge v3, v4, :cond_5

    .line 1236
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 1238
    instance-of v6, v4, Lcom/mh/movie/core/mvp/model/entity/DownloadData;

    if-eqz v6, :cond_0

    .line 1240
    check-cast v4, Lcom/mh/movie/core/mvp/model/entity/DownloadData;

    .line 1241
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getVideoInfoId()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->Z:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1242
    iput v5, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->X:I

    .line 1243
    invoke-virtual {v4}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getVideoTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->ad:Ljava/lang/String;

    .line 1244
    invoke-virtual {v4}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getQuality()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->ac:Ljava/lang/String;

    goto/16 :goto_3

    .line 1248
    :cond_0
    instance-of v6, v4, Lcom/mh/movie/core/mvp/model/entity/DownloadTVData;

    if-eqz v6, :cond_4

    .line 1250
    check-cast v4, Lcom/mh/movie/core/mvp/model/entity/DownloadTVData;

    .line 1251
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/mh/movie/core/mvp/model/entity/DownloadTVData;->getVideoInfoId()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->Z:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v0, 0x2

    .line 1252
    iput v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->X:I

    .line 1253
    invoke-virtual {v4}, Lcom/mh/movie/core/mvp/model/entity/DownloadTVData;->getVideoTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->ad:Ljava/lang/String;

    .line 1254
    invoke-virtual {v4}, Lcom/mh/movie/core/mvp/model/entity/DownloadTVData;->getTvList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->Y:Ljava/util/List;

    const/4 v0, 0x0

    .line 1255
    :goto_1
    iget-object v3, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->Y:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_5

    .line 1256
    iget-object v3, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->Y:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mh/movie/core/mvp/model/entity/DownloadTV;

    invoke-virtual {v3}, Lcom/mh/movie/core/mvp/model/entity/DownloadTV;->getVideoId()J

    move-result-wide v6

    iget v3, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->aa:I

    int-to-long v8, v3

    cmp-long v3, v6, v8

    if-nez v3, :cond_3

    .line 1257
    iput v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->ab:I

    .line 1258
    invoke-virtual {v4}, Lcom/mh/movie/core/mvp/model/entity/DownloadTVData;->getType()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 1259
    iget-object v3, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->Y:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mh/movie/core/mvp/model/entity/DownloadTV;

    invoke-virtual {v3}, Lcom/mh/movie/core/mvp/model/entity/DownloadTV;->getPeriod()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1260
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " \u7b2c"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->Y:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mh/movie/core/mvp/model/entity/DownloadTV;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/DownloadTV;->getPeriod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u671f"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 1262
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " \u7b2c"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->Y:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mh/movie/core/mvp/model/entity/DownloadTV;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/DownloadTV;->getSortNum()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\u671f"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 1265
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " \u7b2c"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->Y:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mh/movie/core/mvp/model/entity/DownloadTV;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/DownloadTV;->getSortNum()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\u96c6"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1267
    :goto_2
    iget-object v3, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->Y:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/model/entity/DownloadTV;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/DownloadTV;->getQuality()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->ac:Ljava/lang/String;

    goto :goto_3

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 1278
    :cond_5
    :goto_3
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->mhVideoPlayer:Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->ad:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;->setVideoTitle(Ljava/lang/String;)V

    .line 1279
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->mhVideoPlayer:Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;->getHdQuityBtn()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->ac:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1280
    sput-boolean v5, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->o:Z

    .line 1281
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->mhVideoPlayer:Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;

    sget-boolean v1, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->o:Z

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;->setLocalPlayer(Z)V

    .line 1282
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->postDetailNestedScroll:Landroid/support/v4/widget/NestedScrollView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/NestedScrollView;->setVisibility(I)V

    .line 1283
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->inputCommetn:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1285
    invoke-virtual {p0, v2}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->setRequestedOrientation(I)V

    return-void
.end method

.method final synthetic c(Landroid/view/View;)V
    .locals 3

    .line 690
    sget-object v0, Lcom/mh/movie/core/mvp/ui/b;->i:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/jess/arms/c/d;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->Q:Z

    .line 691
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 692
    sget v1, Lcom/mh/movie/core/R$id;->iv_player_video_screen:I

    if-ne v0, v1, :cond_3

    .line 693
    iget-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->Q:Z

    if-nez v0, :cond_0

    .line 694
    const-class p1, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;

    invoke-static {p1}, Lcom/jess/arms/c/a;->a(Ljava/lang/Class;)V

    return-void

    .line 697
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->b:Lcom/jess/arms/mvp/b;

    check-cast v0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->c(I)Lcom/mh/movie/core/mvp/model/db/TableCommodity;

    move-result-object v0

    .line 698
    iget v2, v0, Lcom/mh/movie/core/mvp/model/db/TableCommodity;->hasFlag:I

    if-eq v2, v1, :cond_2

    .line 699
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/shuyu/gsyvideoplayer/utils/NetworkUtils;->isAvailable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 700
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "\u5f53\u524d\u65e0\u7f51\u7edc\u8fde\u63a5\uff0c\u8bf7\u8fde\u4e0a\u7f51\u7edc\u540e\u518d\u8bd5"

    invoke-static {p1, v0}, Lcom/mh/movie/core/mvp/ui/utils/T;->showShort(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 702
    :cond_1
    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->a(Lcom/mh/movie/core/mvp/model/db/TableCommodity;)V

    .line 703
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->mhVideoPlayer:Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;->hideAllWidget()V

    goto :goto_0

    .line 706
    :cond_2
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->b:Lcom/jess/arms/mvp/b;

    check-cast p1, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    invoke-virtual {p1, p0}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->a(Landroid/app/Activity;)V

    goto :goto_0

    .line 708
    :cond_3
    sget p1, Lcom/mh/movie/core/R$id;->ll_video_player_try_watch_one:I

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-ne v0, p1, :cond_4

    .line 709
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->mhVideoPlayer:Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;

    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;->rlVideoPlayerDetailOne:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 710
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->b:Lcom/jess/arms/mvp/b;

    check-cast p1, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    invoke-virtual {p1, v1}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 711
    :cond_4
    sget p1, Lcom/mh/movie/core/R$id;->ll_video_player_try_watch:I

    if-ne v0, p1, :cond_5

    .line 712
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->mhVideoPlayer:Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;

    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;->rlVideoPlayerDetail:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 713
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->b:Lcom/jess/arms/mvp/b;

    check-cast p1, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    invoke-virtual {p1, v1}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 714
    :cond_5
    sget p1, Lcom/mh/movie/core/R$id;->ll_video_player_watch_mhb:I

    if-ne v0, p1, :cond_6

    .line 715
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->q()V

    :cond_6
    :goto_0
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    .line 3051
    invoke-static {}, Lcom/mh/movie/core/c/b;->a()Lcom/mh/movie/core/c/b;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/c/b;->b(Ljava/lang/String;)V

    .line 3052
    invoke-static {p0, p1}, Lcom/mh/movie/core/mvp/ui/utils/T;->showShort(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public c(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/response/QueryListBean;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1293
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1296
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->rlPlayerLike:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1297
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->movieCardView:Lcom/mh/movie/core/mvp/ui/widget/MovieCardView;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1}, Lcom/mh/movie/core/mvp/ui/widget/MovieCardView;->a(ILjava/util/List;)V

    goto :goto_1

    .line 1294
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->rlPlayerLike:Landroid/widget/RelativeLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public c(Ljava/util/List;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/response/CommentResponse;",
            ">;I)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 1333
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->T:Ljava/util/List;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/mh/movie/core/mvp/ui/fragment/CommentFragment;

    invoke-virtual {p2, p1}, Lcom/mh/movie/core/mvp/ui/fragment/CommentFragment;->b(Ljava/util/List;)V

    goto :goto_0

    .line 1336
    :cond_0
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->T:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/mh/movie/core/mvp/ui/fragment/CommentFragment;

    invoke-virtual {p2, p1}, Lcom/mh/movie/core/mvp/ui/fragment/CommentFragment;->b(Ljava/util/List;)V

    .line 1339
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_1

    .line 1340
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->v:Lcom/mh/movie/core/mvp/ui/widget/recylerview/RecyclerFooterView;

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/ui/widget/recylerview/RecyclerFooterView;->setShowLoadView(Z)V

    .line 1342
    :cond_1
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->M:Lcom/mh/movie/core/mvp/ui/widget/a/b;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/ui/widget/a/b;->b()V

    return-void
.end method

.method public d(Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;)Lcom/mh/movie/core/mvp/model/entity/ShareRequest;
    .locals 6

    .line 2794
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->getShareHtmlAddr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "?t="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/mh/movie/core/mvp/ui/b;->a()Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;->getInvitationCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&a="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/mh/movie/core/mvp/ui/utils/RHelp;->getPackageId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2796
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u300a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\u300b\u8fd9\u7247\u5b50\u633a\u4e0d\u9519\u7684"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u6211\u521a\u770b\u5b8c,\u611f\u89c9\u5f88\u597d\u770b,\u4e5f\u53d1\u7ed9\u4f60\u770b\u4e0b"

    .line 2798
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u300a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\u300b\u8fd9\u7247\u5b50\u633a\u4e0d\u9519\u7684\uff0c\u6211\u521a\u770b\u5b8c,\u611f\u89c9\u5f88\u597d\u770b,\u4e5f\u53d1\u7ed9\u4f60\u770b\u4e0b"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2801
    new-instance v4, Lcom/mh/movie/core/mvp/model/entity/ShareRequest;

    invoke-direct {v4}, Lcom/mh/movie/core/mvp/model/entity/ShareRequest;-><init>()V

    .line 2802
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->getId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/mh/movie/core/mvp/model/entity/ShareRequest;->setVideoInfoId(I)V

    .line 2803
    iget-object v5, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->b:Lcom/jess/arms/mvp/b;

    check-cast v5, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    invoke-virtual {v5}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->h()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/mh/movie/core/mvp/model/entity/ShareRequest;->setVideoId(I)V

    .line 2804
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->getType()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/mh/movie/core/mvp/model/entity/ShareRequest;->setVideoType(I)V

    const-string v5, "web"

    .line 2806
    invoke-virtual {v4, v5}, Lcom/mh/movie/core/mvp/model/entity/ShareRequest;->setType(Ljava/lang/String;)V

    .line 2807
    invoke-virtual {v4, v1}, Lcom/mh/movie/core/mvp/model/entity/ShareRequest;->setTitle(Ljava/lang/String;)V

    .line 2808
    invoke-virtual {v4, v2}, Lcom/mh/movie/core/mvp/model/entity/ShareRequest;->setDescription(Ljava/lang/String;)V

    .line 2809
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->getCoverUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/mh/movie/core/mvp/model/entity/ShareRequest;->setImageUrl(Ljava/lang/String;)V

    .line 2810
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->getCoverUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/raizlabs/android/dbflow/a;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2811
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->getCoverHUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Lcom/mh/movie/core/mvp/model/entity/ShareRequest;->setImageUrl(Ljava/lang/String;)V

    .line 2813
    :cond_0
    invoke-virtual {v4, v0}, Lcom/mh/movie/core/mvp/model/entity/ShareRequest;->setWebPageUrl(Ljava/lang/String;)V

    .line 2814
    invoke-virtual {v4, v3}, Lcom/mh/movie/core/mvp/model/entity/ShareRequest;->setContent(Ljava/lang/String;)V

    return-object v4
.end method

.method public d()V
    .locals 1

    .line 1129
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->pvProjectionControl:Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->a()V

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 1

    .line 1528
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->mhVideoPlayer:Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;

    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;->b(Ljava/lang/String;)V

    return-void
.end method

.method public d(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/BootadsListBean;",
            ">;)V"
        }
    .end annotation

    .line 1463
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1464
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->bannerAdList:Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;->setVisibility(I)V

    goto :goto_0

    .line 1466
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->bannerAdList:Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;->setVisibility(I)V

    .line 1467
    new-instance v0, Lcom/mh/movie/core/mvp/ui/adapter/w;

    invoke-direct {v0, p0, p1}, Lcom/mh/movie/core/mvp/ui/adapter/w;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->w:Lcom/mh/movie/core/mvp/ui/widget/banner/a;

    .line 1468
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->bannerAdList:Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;->a(I)Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [I

    sget v3, Lcom/mh/movie/core/R$drawable;->no_selected_dot:I

    aput v3, v2, v1

    sget v1, Lcom/mh/movie/core/R$drawable;->no_selected_dot:I

    const/4 v3, 0x1

    aput v1, v2, v3

    .line 1469
    invoke-virtual {v0, v2}, Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;->a([I)Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;

    move-result-object v0

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->w:Lcom/mh/movie/core/mvp/ui/widget/banner/a;

    .line 1470
    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;->a(Lcom/mh/movie/core/mvp/ui/widget/banner/a;)Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;

    move-result-object v0

    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$7;

    invoke-direct {v1, p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$7;-><init>(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;Ljava/util/List;)V

    .line 1471
    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;->a(Lcom/mh/movie/core/mvp/ui/widget/banner/a$a;)Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;

    .line 1477
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->bannerAdList:Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;->c()V

    .line 1478
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, v3, :cond_1

    .line 1479
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->bannerAdList:Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;->a()Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;

    :cond_1
    :goto_0
    return-void
.end method

.method public deleteDownloading(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lorg/simple/eventbus/Subscriber;
        tag = "SFILE_DELETE_DOWNLOADING"
    .end annotation

    .line 2848
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->D:Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;

    if-eqz v0, :cond_0

    .line 2849
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->D:Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;

    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public e()V
    .locals 2

    const/4 v0, 0x0

    .line 1134
    sput v0, Lcom/mh/movie/core/mvp/ui/b;->A:I

    .line 1135
    sput v0, Lcom/mh/movie/core/mvp/ui/b;->B:I

    .line 1136
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->b:Lcom/jess/arms/mvp/b;

    check-cast v0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->l()V

    .line 1137
    invoke-static {}, Lcom/mh/movie/core/androidupnp/a;->a()Lcom/mh/movie/core/androidupnp/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mh/movie/core/androidupnp/a;->d()V

    .line 1138
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->F()V

    .line 1139
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->b:Lcom/jess/arms/mvp/b;

    check-cast v0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->a(Ljava/lang/String;)V

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 3

    .line 788
    sget-boolean v0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->o:Z

    if-eqz v0, :cond_0

    return-void

    .line 791
    :cond_0
    new-instance v0, Lcom/mh/movie/core/mvp/model/db/WatchCauseEvent;

    invoke-direct {v0}, Lcom/mh/movie/core/mvp/model/db/WatchCauseEvent;-><init>()V

    const-string v1, "watch"

    .line 792
    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/model/db/WatchCauseEvent;->setType(Ljava/lang/String;)V

    const-string v1, "pauseWatch"

    .line 793
    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/model/db/WatchCauseEvent;->setSecondaryType(Ljava/lang/String;)V

    .line 795
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->b:Lcom/jess/arms/mvp/b;

    check-cast v1, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->h()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/model/db/WatchCauseEvent;->setVideoId(I)V

    .line 796
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->b:Lcom/jess/arms/mvp/b;

    check-cast v1, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    invoke-virtual {v1, p0}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->d(Landroid/app/Activity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/model/db/WatchCauseEvent;->setVideoInfoId(I)V

    .line 797
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->b:Lcom/jess/arms/mvp/b;

    check-cast v1, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->f()Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->X:I

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->b:Lcom/jess/arms/mvp/b;

    check-cast v2, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    invoke-virtual {v2}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->f()Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->getType()I

    move-result v2

    goto :goto_0

    :goto_1
    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/model/db/WatchCauseEvent;->setVideoType(Ljava/lang/String;)V

    .line 799
    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/model/db/WatchCauseEvent;->setCause(Ljava/lang/String;)V

    .line 800
    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/utils/b/a;->b(Lcom/mh/movie/core/mvp/model/db/BaseAnalysisEvent;)V

    return-void
.end method

.method public e(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/response/CommentResponse;",
            ">;)V"
        }
    .end annotation

    .line 2249
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2250
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->R:Lcom/mh/movie/core/mvp/ui/fragment/CommentFragment;

    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/ui/fragment/CommentFragment;->a(Ljava/util/List;)V

    .line 2252
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->llHotComment:Landroid/widget/LinearLayout;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public f()V
    .locals 6

    .line 2054
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->b:Lcom/jess/arms/mvp/b;

    check-cast v0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->f()Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2058
    :goto_0
    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->z:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 2060
    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->z:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;

    invoke-virtual {v2}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;->getId()I

    move-result v2

    iget v3, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->y:I

    if-ne v2, v3, :cond_4

    .line 2062
    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->b:Lcom/jess/arms/mvp/b;

    check-cast v2, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    invoke-virtual {v2}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->f()Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->getType()I

    move-result v2

    const/4 v3, 0x4

    const/4 v4, 0x1

    if-ne v2, v3, :cond_2

    .line 2067
    :try_start_0
    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->b:Lcom/jess/arms/mvp/b;

    check-cast v2, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    invoke-virtual {v2}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->f()Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;

    move-result-object v2

    .line 2068
    iget-object v3, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->z:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;

    .line 2070
    invoke-virtual {v3}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;->getSortNum()I

    .line 2071
    invoke-virtual {v2}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->getEpisodeUploadCount()I

    .line 2073
    invoke-virtual {v3}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;->getPeriod()Ljava/lang/String;

    move-result-object v3

    .line 2075
    invoke-virtual {v2}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->getVideoPageList()Ljava/util/List;

    move-result-object v2

    .line 2076
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v4

    .line 2078
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoPageListBean;

    .line 2079
    invoke-virtual {v2}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoPageListBean;->getTabName()Ljava/lang/String;

    move-result-object v2

    .line 2081
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2083
    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->z:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v4

    if-ne v2, v1, :cond_1

    .line 2085
    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->mhVideoPlayer:Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;

    invoke-virtual {v2, v0}, Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;->c(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 2091
    invoke-static {v0}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    .line 2094
    :cond_1
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->mhVideoPlayer:Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;

    invoke-virtual {v0, v4}, Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;->c(Z)V

    goto :goto_1

    .line 2099
    :cond_2
    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->mhVideoPlayer:Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;

    iget-object v3, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->z:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;

    invoke-virtual {v3}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;->getSortNum()I

    move-result v3

    iget-object v5, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->b:Lcom/jess/arms/mvp/b;

    check-cast v5, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    invoke-virtual {v5}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->f()Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->getEpisodeUploadCount()I

    move-result v5

    if-ge v3, v5, :cond_3

    const/4 v0, 0x1

    :cond_3
    invoke-virtual {v2, v0}, Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;->c(Z)V

    :goto_1
    move v0, v1

    goto :goto_2

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 2105
    :cond_5
    :goto_2
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->rvPlayerDetailTv:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->rvPlayerDetailTv:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, -0x3c

    invoke-virtual {v1, v0, v2}, Landroid/support/v7/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 2106
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->b:Lcom/jess/arms/mvp/b;

    check-cast v0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->f()Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->b(Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;)V

    return-void
.end method

.method public f(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/response/CommentResponse;",
            ">;)V"
        }
    .end annotation

    .line 2998
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->u:Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView;

    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView;->a(Ljava/util/List;)V

    return-void
.end method

.method public g()V
    .locals 2

    const/4 v0, 0x0

    .line 1347
    iput-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->ap:Z

    .line 1348
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->v:Lcom/mh/movie/core/mvp/ui/widget/recylerview/RecyclerFooterView;

    invoke-virtual {v1, v0}, Lcom/mh/movie/core/mvp/ui/widget/recylerview/RecyclerFooterView;->setShowLoadView(Z)V

    return-void
.end method

.method public g(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/response/CommentResponse;",
            ">;)V"
        }
    .end annotation

    .line 3007
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->u:Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView;

    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView;->b(Ljava/util/List;)V

    return-void
.end method

.method public g_()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCacheStatusValue(I)V
    .locals 1
    .annotation runtime Lorg/simple/eventbus/Subscriber;
        tag = "money"
    .end annotation

    .line 2942
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->D:Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;

    if-eqz p1, :cond_0

    .line 2943
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->D:Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->B()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->setPlayNum(I)V

    :cond_0
    return-void
.end method

.method public h()V
    .locals 1

    .line 3036
    invoke-static {}, Lcom/mh/movie/core/c/b;->a()Lcom/mh/movie/core/c/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mh/movie/core/c/b;->e()V

    const-string v0, "\u5fae\u4fe1\u5206\u4eab\u6210\u529f"

    .line 3037
    invoke-static {p0, v0}, Lcom/mh/movie/core/mvp/ui/utils/T;->showShort(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 3040
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->b:Lcom/jess/arms/mvp/b;

    check-cast v0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->n()V

    return-void
.end method

.method public i_()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1353
    iput-wide v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->as:J

    return-void
.end method

.method public k()V
    .locals 2

    .line 3045
    invoke-static {}, Lcom/mh/movie/core/c/b;->a()Lcom/mh/movie/core/c/b;

    move-result-object v0

    const-string v1, "3"

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/c/b;->b(Ljava/lang/String;)V

    const-string v0, "\u53d6\u6d88\u5fae\u4fe1\u5206\u4eab"

    .line 3046
    invoke-static {p0, v0}, Lcom/mh/movie/core/mvp/ui/utils/T;->showShort(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public l()V
    .locals 7

    const-wide/16 v0, 0x0

    .line 518
    iput-wide v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->ar:J

    .line 519
    iput-wide v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->as:J

    .line 521
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->ax:Ljava/util/Timer;

    .line 522
    new-instance v0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$1;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$1;-><init>(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)V

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->ay:Ljava/util/TimerTask;

    .line 536
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->ax:Ljava/util/Timer;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->ay:Ljava/util/TimerTask;

    const-wide/32 v3, 0x2bf20

    const-wide/32 v5, 0x2bf20

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method public m()V
    .locals 6

    .line 541
    invoke-static {p0}, Lcom/mh/movie/core/mvp/ui/utils/RecordUtils;->getVedioData(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 542
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    .line 543
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/model/entity/RecordInfo;

    .line 544
    new-instance v1, Lcom/mh/movie/core/mvp/model/db/WatchFromEvent;

    invoke-direct {v1}, Lcom/mh/movie/core/mvp/model/db/WatchFromEvent;-><init>()V

    const-string v2, "watch"

    .line 545
    invoke-virtual {v1, v2}, Lcom/mh/movie/core/mvp/model/db/WatchFromEvent;->setType(Ljava/lang/String;)V

    .line 546
    iget v2, v0, Lcom/mh/movie/core/mvp/model/entity/RecordInfo;->from:I

    invoke-virtual {v1, v2}, Lcom/mh/movie/core/mvp/model/db/WatchFromEvent;->setFrom(I)V

    .line 547
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, v0, Lcom/mh/movie/core/mvp/model/entity/RecordInfo;->type:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mh/movie/core/mvp/model/db/WatchFromEvent;->setVideoType(Ljava/lang/String;)V

    .line 548
    iget-object v2, v0, Lcom/mh/movie/core/mvp/model/entity/RecordInfo;->vedioId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/mh/movie/core/mvp/model/db/WatchFromEvent;->setVideoId(I)V

    .line 549
    iget-object v2, v0, Lcom/mh/movie/core/mvp/model/entity/RecordInfo;->vedioInfoId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/mh/movie/core/mvp/model/db/WatchFromEvent;->setVideoInfoId(I)V

    const-string v2, "watchVideo"

    .line 550
    invoke-virtual {v1, v2}, Lcom/mh/movie/core/mvp/model/db/WatchFromEvent;->setSecondaryType(Ljava/lang/String;)V

    .line 551
    iget-object v2, v0, Lcom/mh/movie/core/mvp/model/entity/RecordInfo;->videoPX:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/mh/movie/core/mvp/model/db/WatchFromEvent;->setVideoPX(Ljava/lang/String;)V

    .line 552
    iget-wide v2, v0, Lcom/mh/movie/core/mvp/model/entity/RecordInfo;->time:J

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lcom/mh/movie/core/mvp/model/db/WatchFromEvent;->setStayTime(J)V

    .line 553
    iget-object v0, v0, Lcom/mh/movie/core/mvp/model/entity/RecordInfo;->classifyType:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/mh/movie/core/mvp/model/db/WatchFromEvent;->setClassifyType(Ljava/lang/String;)V

    .line 562
    invoke-static {v1}, Lcom/mh/movie/core/mvp/ui/utils/b/a;->b(Lcom/mh/movie/core/mvp/model/db/BaseAnalysisEvent;)V

    :cond_0
    return-void
.end method

.method public n()V
    .locals 8

    .line 567
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->b:Lcom/jess/arms/mvp/b;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->b:Lcom/jess/arms/mvp/b;

    check-cast v0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->f()Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 568
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->b:Lcom/jess/arms/mvp/b;

    check-cast v0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->f()Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;

    move-result-object v0

    const-string v1, ""

    const/4 v2, 0x0

    move-object v3, v1

    const/4 v1, 0x0

    .line 570
    :goto_0
    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->getClassifyTypeList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 571
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->getClassifyTypeList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 573
    :cond_0
    iget-wide v4, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->av:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_2

    iget-wide v4, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->at:J

    cmp-long v1, v4, v6

    if-nez v1, :cond_1

    goto :goto_1

    .line 577
    :cond_1
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->x()V

    .line 578
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->w()V

    .line 579
    iget-wide v4, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->as:J

    invoke-static {p0, v4, v5}, Lcom/mh/movie/core/mvp/ui/utils/RecordUtils;->saveTime(Landroid/content/Context;J)V

    .line 580
    new-instance v1, Lcom/mh/movie/core/mvp/model/entity/RecordInfo;

    invoke-direct {v1}, Lcom/mh/movie/core/mvp/model/entity/RecordInfo;-><init>()V

    .line 581
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->b:Lcom/jess/arms/mvp/b;

    check-cast v5, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    invoke-virtual {v5}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->h()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/mh/movie/core/mvp/model/entity/RecordInfo;->vedioId:Ljava/lang/String;

    .line 582
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->getId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/mh/movie/core/mvp/model/entity/RecordInfo;->vedioInfoId:Ljava/lang/String;

    .line 583
    iget-object v4, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->b:Lcom/jess/arms/mvp/b;

    check-cast v4, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    sget v4, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->r:I

    iput v4, v1, Lcom/mh/movie/core/mvp/model/entity/RecordInfo;->from:I

    .line 584
    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->getType()I

    move-result v0

    iput v0, v1, Lcom/mh/movie/core/mvp/model/entity/RecordInfo;->type:I

    .line 585
    iget-wide v4, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->ar:J

    iput-wide v4, v1, Lcom/mh/movie/core/mvp/model/entity/RecordInfo;->time:J

    .line 586
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->b:Lcom/jess/arms/mvp/b;

    check-cast v0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->v()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/mh/movie/core/mvp/model/entity/RecordInfo;->videoPX:Ljava/lang/String;

    .line 587
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v3, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/mh/movie/core/mvp/model/entity/RecordInfo;->classifyType:Ljava/lang/String;

    .line 588
    invoke-static {p0, v1}, Lcom/mh/movie/core/mvp/ui/utils/RecordUtils;->saveData(Landroid/content/Context;Lcom/mh/movie/core/mvp/model/entity/RecordInfo;)V

    .line 591
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->z()V

    .line 592
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->A()V

    .line 593
    iput-wide v6, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->as:J

    .line 594
    iput-wide v6, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->ar:J

    goto :goto_2

    :cond_2
    :goto_1
    return-void

    :cond_3
    :goto_2
    return-void
.end method

.method public o()Z
    .locals 6

    .line 602
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->b:Lcom/jess/arms/mvp/b;

    check-cast v0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->u()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 604
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->b:Lcom/jess/arms/mvp/b;

    check-cast v0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->w()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 605
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 607
    :cond_1
    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->ae:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    invoke-virtual {v2}, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->isEnable()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 610
    iget-object v3, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->ae:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    invoke-virtual {v3, v1}, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->setEnable(Z)V

    .line 613
    :cond_2
    iget-object v3, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->mhVideoPlayer:Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;

    invoke-virtual {v3}, Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;->isPlaying()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 615
    iget-object v4, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->mhVideoPlayer:Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;

    invoke-virtual {v4}, Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;->onVideoPause()V

    .line 618
    :cond_3
    new-instance v4, Lcom/mh/movie/core/mvp/ui/activity/player/view/b;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/mh/movie/core/mvp/ui/activity/player/view/b;-><init>(Landroid/content/Context;)V

    .line 619
    new-instance v5, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$11;

    invoke-direct {v5, p0, v2, v3}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$11;-><init>(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;ZZ)V

    invoke-virtual {v4, v5}, Lcom/mh/movie/core/mvp/ui/activity/player/view/b;->a(Lcom/mh/movie/core/mvp/ui/activity/player/view/d;)V

    .line 635
    invoke-virtual {v4, v0}, Lcom/mh/movie/core/mvp/ui/activity/player/view/b;->a(Ljava/util/List;)V

    .line 636
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->playerDialogFrameLayout:Lcom/mh/movie/core/mvp/ui/activity/player/view/PlayerDialogFrameLayout;

    invoke-virtual {v0, v4}, Lcom/mh/movie/core/mvp/ui/activity/player/view/PlayerDialogFrameLayout;->a(Lcom/mh/movie/core/mvp/ui/activity/player/view/a;)V

    .line 637
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->playerDialogFrameLayout:Lcom/mh/movie/core/mvp/ui/activity/player/view/PlayerDialogFrameLayout;

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/activity/player/view/PlayerDialogFrameLayout;->setCanceledOnTouchOutside(Z)V

    .line 638
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->playerDialogFrameLayout:Lcom/mh/movie/core/mvp/ui/activity/player/view/PlayerDialogFrameLayout;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/activity/player/view/PlayerDialogFrameLayout;->a()V

    .line 640
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "show_damu_and_comment_tip"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/jess/arms/c/d;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 642
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->mhVideoPlayer:Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;->isIfCurrentIsFullscreen()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 643
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->playerDialogFrameLayout:Lcom/mh/movie/core/mvp/ui/activity/player/view/PlayerDialogFrameLayout;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/activity/player/view/PlayerDialogFrameLayout;->d()V

    :cond_4
    return v2

    :cond_5
    :goto_0
    return v1
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 1063
    invoke-super {p0, p1, p2, p3}, Lcom/mh/movie/core/mvp/ui/activity/ac;->onActivityResult(IILandroid/content/Intent;)V

    .line 1064
    sget v0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->c:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    if-eqz p3, :cond_0

    const-string p1, "durtaion"

    .line 1066
    invoke-virtual {p3, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    mul-int/lit16 p1, p1, 0x3e8

    const-string p2, "title"

    invoke-virtual {p3, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->a(ILjava/lang/String;)V

    :cond_0
    return-void

    .line 1069
    :cond_1
    sget v0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->d:I

    if-eq p1, v0, :cond_5

    sget v0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->e:I

    if-ne p1, v0, :cond_2

    goto :goto_0

    .line 1077
    :cond_2
    invoke-static {p1, p2, p3, p0}, Lcom/tencent/tauth/Tencent;->onActivityResultData(IILandroid/content/Intent;Lcom/tencent/tauth/IUiListener;)Z

    const/16 v0, 0x2774

    if-ne p1, v0, :cond_4

    const/16 p1, 0x2777

    if-eq p2, p1, :cond_3

    const/16 p1, 0x2778

    if-eq p2, p1, :cond_3

    const/16 p1, 0x2b5f

    if-ne p2, p1, :cond_4

    .line 1082
    :cond_3
    invoke-static {p3, p0}, Lcom/tencent/tauth/Tencent;->handleResultData(Landroid/content/Intent;Lcom/tencent/tauth/IUiListener;)V

    :cond_4
    return-void

    :cond_5
    :goto_0
    if-eqz p3, :cond_6

    .line 1071
    sget p1, Lcom/mh/movie/core/mvp/model/db/WatchFromEvent;->FROM_SHOULD_LIKE:I

    sput p1, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->r:I

    .line 1072
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->b:Lcom/jess/arms/mvp/b;

    check-cast p1, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    const-string p2, "videoInfoId"

    invoke-virtual {p3, p2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    const/4 p3, -0x1

    const/4 v0, 0x0

    invoke-virtual {p1, v1, p2, p3, v0}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->a(IIILjava/lang/String;)V

    :cond_6
    return-void
.end method

.method public onBackPressed()V
    .locals 4

    .line 2280
    sget-boolean v0, Lcom/mh/movie/core/mvp/ui/b;->c:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 2281
    sput-boolean v1, Lcom/mh/movie/core/mvp/ui/b;->d:Z

    .line 2285
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->mhVideoPlayer:Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;->isIfCurrentIsFullscreen()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->ae:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->isEnable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2286
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->ae:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    invoke-virtual {v0, v1}, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->setEnable(Z)V

    .line 2287
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->mhVideoPlayer:Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;->p()V

    .line 2290
    :cond_1
    sget-boolean v0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->o:Z

    if-nez v0, :cond_6

    .line 2291
    iget-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->V:Z

    if-eqz v0, :cond_2

    .line 2292
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->b:Lcom/jess/arms/mvp/b;

    check-cast v0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->mhVideoPlayer:Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;

    invoke-virtual {v2}, Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;->getCurrentPositionWhenPlaying()I

    move-result v2

    div-int/lit16 v2, v2, 0x3e8

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    invoke-virtual {v0, v2, v1}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->a(IZ)V

    .line 2304
    :cond_2
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->mhVideoPlayer:Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;->isIfCurrentIsFullscreen()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2305
    invoke-virtual {p0, v1}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->setRequestedOrientation(I)V

    return-void

    .line 2312
    :cond_3
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->ae:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    if-eqz v0, :cond_4

    .line 2313
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->ae:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->backToProtVideo()I

    .line 2315
    :cond_4
    invoke-static {p0}, Lcom/shuyu/gsyvideoplayer/d;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    return-void

    .line 2318
    :cond_5
    invoke-super {p0}, Lcom/mh/movie/core/mvp/ui/activity/ac;->onBackPressed()V

    return-void

    .line 2294
    :cond_6
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->mhVideoPlayer:Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;->isAutoCompletion()Z

    move-result v0

    if-nez v0, :cond_7

    .line 2295
    invoke-static {}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->a()Lcom/mh/movie/core/mvp/ui/widget/cache/g;

    move-result-object v0

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->mhVideoPlayer:Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;->getCurrentPositionWhenPlaying()I

    move-result v1

    div-int/lit16 v1, v1, 0x3e8

    iget v2, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->Z:I

    iget v3, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->aa:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->a(III)V

    goto :goto_0

    .line 2298
    :cond_7
    invoke-static {}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->a()Lcom/mh/movie/core/mvp/ui/widget/cache/g;

    move-result-object v0

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->mhVideoPlayer:Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;->getDuration()I

    move-result v1

    div-int/lit16 v1, v1, 0x3e8

    iget v2, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->Z:I

    iget v3, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->aa:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->a(III)V

    .line 2300
    :goto_0
    invoke-super {p0}, Lcom/mh/movie/core/mvp/ui/activity/ac;->onBackPressed()V

    return-void
.end method

.method public onCancel()V
    .locals 2

    .line 3091
    invoke-static {}, Lcom/mh/movie/core/c/b;->a()Lcom/mh/movie/core/c/b;

    move-result-object v0

    const-string v1, "3"

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/c/b;->b(Ljava/lang/String;)V

    const-string v0, "\u53d6\u6d88QQ\u5206\u4eab"

    .line 3092
    invoke-static {p0, v0}, Lcom/mh/movie/core/mvp/ui/utils/T;->showShort(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onComplete(Ljava/lang/Object;)V
    .locals 0

    .line 3077
    invoke-static {}, Lcom/mh/movie/core/c/b;->a()Lcom/mh/movie/core/c/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mh/movie/core/c/b;->e()V

    const-string p1, "QQ\u5206\u4eab\u6210\u529f"

    .line 3078
    invoke-static {p0, p1}, Lcom/mh/movie/core/mvp/ui/utils/T;->showShort(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 3080
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->b:Lcom/jess/arms/mvp/b;

    check-cast p1, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->n()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    .line 2324
    invoke-super {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/ac;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2326
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->ae:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->isEnable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2328
    :cond_0
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->m:Z

    .line 2329
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->af:Lcom/mh/movie/core/mvp/ui/widget/InputDialog;

    if-eqz v0, :cond_2

    .line 2330
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->aA:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/widget/i;->b(Landroid/view/View;)V

    .line 2333
    :cond_2
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->u:Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView;

    if-eqz v0, :cond_3

    .line 2334
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->u:Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/widget/CommentDetailView;->c()V

    .line 2338
    :cond_3
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_5

    const-string v0, "TTT"

    const-string v2, "startWindowFullscreen"

    .line 2340
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2342
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->O()V

    .line 2345
    iget-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->ao:Z

    if-nez v0, :cond_4

    .line 2346
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->mhVideoPlayer:Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;->D()V

    .line 2347
    sget-boolean v0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->o:Z

    if-eqz v0, :cond_4

    .line 2349
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->mhVideoPlayer:Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->X:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;->f(Ljava/lang/String;)V

    .line 2353
    :cond_4
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->playerDialogFrameLayout:Lcom/mh/movie/core/mvp/ui/activity/player/view/PlayerDialogFrameLayout;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/activity/player/view/PlayerDialogFrameLayout;->d()V

    goto :goto_1

    :cond_5
    const-string v0, "TTT"

    const-string v2, "quiteFullScreen"

    .line 2357
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2360
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->playerDialogFrameLayout:Lcom/mh/movie/core/mvp/ui/activity/player/view/PlayerDialogFrameLayout;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/activity/player/view/PlayerDialogFrameLayout;->e()V

    .line 2363
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->mhVideoPlayer:Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;->getLocalPlayer()Z

    move-result v0

    if-eqz v0, :cond_6

    return-void

    .line 2365
    :cond_6
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->mhVideoPlayer:Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;->x()V

    .line 2366
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->mhVideoPlayer:Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;->q()V

    .line 2368
    invoke-static {}, Lcom/mh/movie/core/c/b;->a()Lcom/mh/movie/core/c/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mh/movie/core/c/b;->b()V

    .line 2372
    :goto_1
    iget-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->ao:Z

    if-eqz v0, :cond_8

    .line 2373
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne p1, v1, :cond_7

    .line 2374
    invoke-static {p0}, Lcom/jess/arms/c/a;->e(Landroid/content/Context;)V

    goto :goto_2

    .line 2376
    :cond_7
    invoke-static {p0}, Lcom/jess/arms/c/a;->f(Landroid/content/Context;)V

    .line 2379
    :goto_2
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->pvProjectionControl:Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->mhVideoPlayer:Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;->getLocalPlayer()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->a(Z)V

    :cond_8
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 481
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->mhVideoPlayer:Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;->release()V

    const/4 v0, 0x0

    .line 482
    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->viewPager:Lcom/mh/movie/core/mvp/ui/widget/ControlScrollViewPager;

    .line 483
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->U:Lcom/mh/movie/core/mvp/ui/adapter/a/a;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/ui/adapter/a/a;->a()V

    .line 484
    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->U:Lcom/mh/movie/core/mvp/ui/adapter/a/a;

    .line 485
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->T:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 486
    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->R:Lcom/mh/movie/core/mvp/ui/fragment/CommentFragment;

    .line 488
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->ae:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    if-eqz v1, :cond_0

    .line 489
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->ae:Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    invoke-virtual {v1}, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->releaseListener()V

    .line 491
    :cond_0
    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->S:Landroid/support/v4/app/FragmentManager;

    .line 492
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->ax:Ljava/util/Timer;

    if-eqz v1, :cond_1

    .line 493
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->ax:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 494
    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->ax:Ljava/util/Timer;

    .line 496
    :cond_1
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->ay:Ljava/util/TimerTask;

    if-eqz v1, :cond_2

    .line 497
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->ay:Ljava/util/TimerTask;

    invoke-virtual {v1}, Ljava/util/TimerTask;->cancel()Z

    .line 498
    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->ay:Ljava/util/TimerTask;

    .line 500
    :cond_2
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->n()V

    .line 501
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->m()V

    .line 502
    invoke-static {p0}, Lcom/mh/movie/core/mvp/ui/utils/RecordUtils;->clearRecord(Landroid/content/Context;)V

    .line 503
    iget-wide v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->as:J

    invoke-static {p0, v0, v1}, Lcom/mh/movie/core/mvp/ui/utils/RecordUtils;->saveTime(Landroid/content/Context;J)V

    .line 505
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->ag:Lcom/mh/movie/core/mvp/ui/widget/dialog/ShareToFriendDialog;

    if-eqz v0, :cond_3

    .line 506
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->ag:Lcom/mh/movie/core/mvp/ui/widget/dialog/ShareToFriendDialog;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/ShareToFriendDialog;->dismiss()V

    .line 509
    :cond_3
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->mhVideoPlayer:Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;->z()V

    .line 511
    invoke-super {p0}, Lcom/mh/movie/core/mvp/ui/activity/ac;->onDestroy()V

    return-void
.end method

.method public onError(Lcom/tencent/tauth/UiError;)V
    .locals 1

    .line 3085
    invoke-static {}, Lcom/mh/movie/core/c/b;->a()Lcom/mh/movie/core/c/b;

    move-result-object p1

    const-string v0, "1"

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/c/b;->b(Ljava/lang/String;)V

    const-string p1, "QQ\u5206\u4eab\u5931\u8d25"

    .line 3086
    invoke-static {p0, p1}, Lcom/mh/movie/core/mvp/ui/utils/T;->showShort(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onFinished(Landroid/os/Bundle;)V
    .locals 1
    .annotation runtime Lorg/simple/eventbus/Subscriber;
        tag = "SFILE_ONFINISHED"
    .end annotation

    .line 2834
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->D:Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;

    if-eqz v0, :cond_0

    .line 2835
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->D:Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;

    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->a(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onLoadFile(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lorg/simple/eventbus/Subscriber;
        tag = "SFILE_LOAD_FILE"
    .end annotation

    .line 2841
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->D:Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;

    if-eqz v0, :cond_0

    .line 2842
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->D:Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;

    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1

    .line 3027
    invoke-super {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/ac;->onNewIntent(Landroid/content/Intent;)V

    .line 3028
    invoke-static {}, Lcom/mh/movie/core/c/b;->a()Lcom/mh/movie/core/c/b;

    move-result-object v0

    iget-object v0, v0, Lcom/mh/movie/core/c/b;->a:Lcom/sina/weibo/sdk/share/WbShareHandler;

    if-eqz v0, :cond_0

    .line 3029
    invoke-static {}, Lcom/mh/movie/core/c/b;->a()Lcom/mh/movie/core/c/b;

    move-result-object v0

    iget-object v0, v0, Lcom/mh/movie/core/c/b;->a:Lcom/sina/weibo/sdk/share/WbShareHandler;

    invoke-virtual {v0, p1, p0}, Lcom/sina/weibo/sdk/share/WbShareHandler;->doResultIntent(Landroid/content/Intent;Lcom/sina/weibo/sdk/share/WbShareCallback;)V

    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 3

    .line 461
    invoke-super {p0}, Lcom/mh/movie/core/mvp/ui/activity/ac;->onPause()V

    .line 462
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->mhVideoPlayer:Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;->getCurrentState()I

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 463
    iput-boolean v2, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->aq:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 468
    iput-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->aq:Z

    .line 469
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->mhVideoPlayer:Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;

    invoke-virtual {v0, v2}, Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;->onVideoPause(Z)V

    .line 471
    invoke-virtual {p0, v1}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->a(I)V

    .line 472
    iput-boolean v2, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->W:Z

    const-string v0, "TTT"

    const-string v1, "onPause"

    .line 473
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->D:Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;

    if-eqz v0, :cond_1

    .line 475
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->D:Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->h()V

    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 430
    invoke-super {p0}, Lcom/mh/movie/core/mvp/ui/activity/ac;->onResume()V

    .line 431
    iget-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->aq:Z

    if-eqz v0, :cond_0

    return-void

    .line 436
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->mhVideoPlayer:Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;->onVideoResume(Z)V

    .line 437
    iput-boolean v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->W:Z

    const-string v0, "TTT"

    const-string v1, "onResume"

    .line 438
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->mhVideoPlayer:Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;->getDanmakuView()Lmaster/flame/danmaku/a/f;

    move-result-object v0

    invoke-interface {v0}, Lmaster/flame/danmaku/a/f;->g()V

    .line 440
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->toolbarPlayer:Lcom/mh/movie/core/mvp/ui/widget/PlayerToolbar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/PlayerToolbar;->setVisibility(I)V

    .line 443
    invoke-static {p0}, Lcom/mh/movie/core/mvp/ui/utils/UIUtils;->isTV(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 444
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->mhVideoPlayer:Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;->D()V

    .line 447
    :cond_1
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->b:Lcom/jess/arms/mvp/b;

    check-cast v0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->mhVideoPlayer:Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->a(Lcom/mh/movie/core/mvp/ui/activity/player/view/c;)V

    .line 448
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->b:Lcom/jess/arms/mvp/b;

    check-cast v0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->g()V

    return-void
.end method

.method protected onStart()V
    .locals 1

    .line 454
    invoke-super {p0}, Lcom/mh/movie/core/mvp/ui/activity/ac;->onStart()V

    .line 455
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->D:Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;

    if-eqz v0, :cond_0

    .line 456
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->D:Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->g()V

    :cond_0
    return-void
.end method

.method public onViewClicked(Landroid/view/View;)V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0c0204,
            0x7f0c0200,
            0x7f0c042c,
            0x7f0c0429,
            0x7f0c0207,
            0x7f0c0201,
            0x7f0c0203,
            0x7f0c0426,
            0x7f0c0205,
            0x7f0c0347,
            0x7f0c016b,
            0x7f0c01fe,
            0x7f0c01ff,
            0x7f0c042d,
            0x7f0c02e9,
            0x7f0c02f1
        }
    .end annotation

    .line 2465
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 2466
    sget v0, Lcom/mh/movie/core/R$id;->ll_player_detail_intro:I

    if-ne p1, v0, :cond_0

    goto/16 :goto_1

    .line 2467
    :cond_0
    sget v0, Lcom/mh/movie/core/R$id;->ll_player_detail_comment:I

    if-ne p1, v0, :cond_1

    .line 2468
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->T()V

    goto/16 :goto_1

    .line 2469
    :cond_1
    sget v0, Lcom/mh/movie/core/R$id;->ll_player_detail_up:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_2

    .line 2470
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->b:Lcom/jess/arms/mvp/b;

    check-cast p1, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    invoke-virtual {p1, v1}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->d(I)V

    goto/16 :goto_1

    .line 2471
    :cond_2
    sget v0, Lcom/mh/movie/core/R$id;->ll_player_detail_down:I

    const/4 v2, 0x1

    if-ne p1, v0, :cond_3

    .line 2472
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->b:Lcom/jess/arms/mvp/b;

    check-cast p1, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    invoke-virtual {p1, v2}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->d(I)V

    goto/16 :goto_1

    .line 2473
    :cond_3
    sget v0, Lcom/mh/movie/core/R$id;->ll_player_detail_feedback:I

    if-ne p1, v0, :cond_4

    .line 2475
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->r:Landroid/content/Context;

    const-class v1, Lcom/mh/movie/core/mvp/ui/activity/HelpAndFeedBackActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "title"

    .line 2476
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->b:Lcom/jess/arms/mvp/b;

    check-cast v1, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->f()Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->c(Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2477
    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 2478
    :cond_4
    sget v0, Lcom/mh/movie/core/R$id;->ll_player_detail_share:I

    if-ne p1, v0, :cond_6

    .line 2479
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->b:Lcom/jess/arms/mvp/b;

    check-cast p1, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->f()Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->getVipFlag()I

    move-result p1

    if-ne p1, v2, :cond_5

    .line 2480
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->r:Landroid/content/Context;

    const-string v0, "VIP\u7247\u6e90\u65e0\u6cd5\u5206\u4eab"

    invoke-static {p1, v0}, Lcom/jess/arms/c/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 2483
    :cond_5
    invoke-virtual {p0, v1}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->b(Z)V

    goto :goto_1

    .line 2485
    :cond_6
    sget v0, Lcom/mh/movie/core/R$id;->sort_info:I

    if-ne p1, v0, :cond_7

    .line 2486
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->Q()V

    goto :goto_1

    .line 2487
    :cond_7
    sget v0, Lcom/mh/movie/core/R$id;->iv_player_detail_movie_go:I

    if-ne p1, v0, :cond_8

    goto :goto_1

    .line 2488
    :cond_8
    sget v0, Lcom/mh/movie/core/R$id;->ll_player_detail_commend_all:I

    if-ne p1, v0, :cond_9

    .line 2489
    invoke-direct {p0, v2}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->b(I)V

    goto :goto_1

    .line 2490
    :cond_9
    sget v0, Lcom/mh/movie/core/R$id;->ll_player_detail_commend_new:I

    if-ne p1, v0, :cond_a

    const/4 p1, 0x2

    .line 2491
    invoke-direct {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->b(I)V

    goto :goto_1

    .line 2499
    :cond_a
    sget v0, Lcom/mh/movie/core/R$id;->rl_player_introduce:I

    if-eq p1, v0, :cond_c

    sget v0, Lcom/mh/movie/core/R$id;->tv_player_detail_up_source:I

    if-eq p1, v0, :cond_c

    sget v0, Lcom/mh/movie/core/R$id;->tv_player_detail_score:I

    if-eq p1, v0, :cond_c

    sget v0, Lcom/mh/movie/core/R$id;->tv_player_detail_description:I

    if-eq p1, v0, :cond_c

    sget v0, Lcom/mh/movie/core/R$id;->tv_player_introduce:I

    if-ne p1, v0, :cond_b

    goto :goto_0

    .line 2502
    :cond_b
    sget v0, Lcom/mh/movie/core/R$id;->rl_player_video_screen_lock:I

    if-ne p1, v0, :cond_d

    .line 2503
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->S()V

    .line 2504
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->N()V

    goto :goto_1

    .line 2501
    :cond_c
    :goto_0
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->R()V

    :cond_d
    :goto_1
    return-void
.end method

.method public onWbShareCancel()V
    .locals 2

    .line 3065
    invoke-static {}, Lcom/mh/movie/core/c/b;->a()Lcom/mh/movie/core/c/b;

    move-result-object v0

    const-string v1, "3"

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/c/b;->b(Ljava/lang/String;)V

    const-string v0, "\u53d6\u6d88\u5fae\u535a\u5206\u4eab"

    .line 3066
    invoke-static {p0, v0}, Lcom/mh/movie/core/mvp/ui/utils/T;->showShort(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onWbShareFail()V
    .locals 2

    .line 3071
    invoke-static {}, Lcom/mh/movie/core/c/b;->a()Lcom/mh/movie/core/c/b;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/c/b;->b(Ljava/lang/String;)V

    const-string v0, "\u5fae\u535a\u5206\u4eab\u5931\u8d25"

    .line 3072
    invoke-static {p0, v0}, Lcom/mh/movie/core/mvp/ui/utils/T;->showShort(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onWbShareSuccess()V
    .locals 1

    .line 3057
    invoke-static {}, Lcom/mh/movie/core/c/b;->a()Lcom/mh/movie/core/c/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mh/movie/core/c/b;->e()V

    const-string v0, "\u5fae\u535a\u5206\u4eab\u6210\u529f"

    .line 3058
    invoke-static {p0, v0}, Lcom/mh/movie/core/mvp/ui/utils/T;->showShort(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 3060
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->b:Lcom/jess/arms/mvp/b;

    check-cast v0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->n()V

    return-void
.end method

.method public p()V
    .locals 8

    .line 650
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->b:Lcom/jess/arms/mvp/b;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->b:Lcom/jess/arms/mvp/b;

    check-cast v0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->f()Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 651
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->b:Lcom/jess/arms/mvp/b;

    check-cast v0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->f()Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;

    move-result-object v0

    const-string v1, ""

    const/4 v2, 0x0

    move-object v3, v1

    const/4 v1, 0x0

    .line 653
    :goto_0
    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->getClassifyTypeList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 654
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->getClassifyTypeList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 656
    :cond_0
    iget-wide v4, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->av:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_2

    iget-wide v4, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->at:J

    cmp-long v1, v4, v6

    if-nez v1, :cond_1

    goto :goto_1

    .line 659
    :cond_1
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->x()V

    .line 660
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->w()V

    .line 661
    iget-wide v4, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->as:J

    invoke-static {p0, v4, v5}, Lcom/mh/movie/core/mvp/ui/utils/RecordUtils;->saveTime(Landroid/content/Context;J)V

    .line 662
    new-instance v1, Lcom/mh/movie/core/mvp/model/entity/RecordInfo;

    invoke-direct {v1}, Lcom/mh/movie/core/mvp/model/entity/RecordInfo;-><init>()V

    .line 663
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->b:Lcom/jess/arms/mvp/b;

    check-cast v5, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    invoke-virtual {v5}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->h()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/mh/movie/core/mvp/model/entity/RecordInfo;->vedioId:Ljava/lang/String;

    .line 664
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->getId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/mh/movie/core/mvp/model/entity/RecordInfo;->vedioInfoId:Ljava/lang/String;

    .line 665
    iget-object v4, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->b:Lcom/jess/arms/mvp/b;

    check-cast v4, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    sget v4, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->r:I

    iput v4, v1, Lcom/mh/movie/core/mvp/model/entity/RecordInfo;->from:I

    .line 666
    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->getType()I

    move-result v0

    iput v0, v1, Lcom/mh/movie/core/mvp/model/entity/RecordInfo;->type:I

    .line 667
    iget-wide v4, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->ar:J

    iput-wide v4, v1, Lcom/mh/movie/core/mvp/model/entity/RecordInfo;->time:J

    .line 668
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->b:Lcom/jess/arms/mvp/b;

    check-cast v0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->v()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/mh/movie/core/mvp/model/entity/RecordInfo;->videoPX:Ljava/lang/String;

    .line 669
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v3, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/mh/movie/core/mvp/model/entity/RecordInfo;->classifyType:Ljava/lang/String;

    .line 670
    invoke-static {p0, v1}, Lcom/mh/movie/core/mvp/ui/utils/RecordUtils;->saveData(Landroid/content/Context;Lcom/mh/movie/core/mvp/model/entity/RecordInfo;)V

    .line 673
    iput-wide v6, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->as:J

    .line 674
    iput-wide v6, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->ar:J

    goto :goto_2

    :cond_2
    :goto_1
    return-void

    :cond_3
    :goto_2
    return-void
.end method

.method public q()V
    .locals 2

    .line 720
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->b:Lcom/jess/arms/mvp/b;

    check-cast v0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->c(Z)V

    return-void
.end method

.method public r()V
    .locals 2

    .line 724
    sget-object v0, Lcom/mh/movie/core/mvp/ui/b;->i:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/jess/arms/c/d;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 725
    const-class v0, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;

    invoke-static {v0}, Lcom/jess/arms/c/a;->a(Ljava/lang/Class;)V

    return-void

    .line 729
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->ag:Lcom/mh/movie/core/mvp/ui/widget/dialog/ShareToFriendDialog;

    if-nez v0, :cond_1

    .line 730
    new-instance v0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ShareToFriendDialog;

    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$22;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$22;-><init>(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)V

    invoke-direct {v0, p0, v1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/ShareToFriendDialog;-><init>(Landroid/content/Context;Lcom/mh/movie/core/c/a;)V

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->ag:Lcom/mh/movie/core/mvp/ui/widget/dialog/ShareToFriendDialog;

    .line 755
    :cond_1
    invoke-static {}, Lcom/mh/movie/core/c/b;->a()Lcom/mh/movie/core/c/b;

    move-result-object v0

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->ag:Lcom/mh/movie/core/mvp/ui/widget/dialog/ShareToFriendDialog;

    iget-object v1, v1, Lcom/mh/movie/core/mvp/ui/widget/dialog/ShareToFriendDialog;->b:Lcom/mh/movie/core/c/a;

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/c/b;->initWxShare(Lcom/mh/movie/core/c/a;)V

    .line 756
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->ag:Lcom/mh/movie/core/mvp/ui/widget/dialog/ShareToFriendDialog;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->b:Lcom/jess/arms/mvp/b;

    check-cast v1, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->f()Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->d(Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;)Lcom/mh/movie/core/mvp/model/entity/ShareRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/ShareToFriendDialog;->a(Lcom/mh/movie/core/mvp/model/entity/ShareRequest;)V

    .line 758
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->ag:Lcom/mh/movie/core/mvp/ui/widget/dialog/ShareToFriendDialog;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/ShareToFriendDialog;->show()V

    return-void
.end method

.method public s()V
    .locals 2

    .line 762
    sget-object v0, Lcom/mh/movie/core/mvp/ui/b;->i:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/jess/arms/c/d;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 763
    const-class v0, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;

    invoke-static {v0}, Lcom/jess/arms/c/a;->a(Ljava/lang/Class;)V

    return-void

    .line 766
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->ah:Lcom/mh/movie/core/mvp/ui/widget/dialog/GetInviteFromFriendDialog;

    if-nez v0, :cond_1

    .line 767
    new-instance v0, Lcom/mh/movie/core/mvp/ui/widget/dialog/GetInviteFromFriendDialog;

    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$23;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$23;-><init>(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)V

    invoke-direct {v0, p0, v1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/GetInviteFromFriendDialog;-><init>(Landroid/content/Context;Lcom/mh/movie/core/mvp/ui/widget/dialog/GetInviteFromFriendDialog$a;)V

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->ah:Lcom/mh/movie/core/mvp/ui/widget/dialog/GetInviteFromFriendDialog;

    .line 784
    :cond_1
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->ah:Lcom/mh/movie/core/mvp/ui/widget/dialog/GetInviteFromFriendDialog;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/GetInviteFromFriendDialog;->show()V

    return-void
.end method

.method public t()V
    .locals 2

    .line 1183
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->mhVideoPlayer:Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;->setVisibility(I)V

    .line 1184
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->pvProjectionControl:Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->setVisibility(I)V

    .line 1185
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->pvProjectionControl:Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->d()V

    const/4 v0, 0x1

    .line 1186
    iput-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->ao:Z

    return-void
.end method

.method public u()V
    .locals 3

    .line 1738
    sget-boolean v0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->o:Z

    if-eqz v0, :cond_0

    return-void

    .line 1741
    :cond_0
    new-instance v0, Lcom/mh/movie/core/mvp/model/db/WatchAnalysisEvent;

    invoke-direct {v0}, Lcom/mh/movie/core/mvp/model/db/WatchAnalysisEvent;-><init>()V

    const-string v1, "watch"

    .line 1742
    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/model/db/WatchAnalysisEvent;->setType(Ljava/lang/String;)V

    const-string v1, "fastWatch"

    .line 1743
    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/model/db/WatchAnalysisEvent;->setSecondaryType(Ljava/lang/String;)V

    .line 1745
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->b:Lcom/jess/arms/mvp/b;

    check-cast v1, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->h()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/model/db/WatchAnalysisEvent;->setVideoId(I)V

    .line 1746
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->b:Lcom/jess/arms/mvp/b;

    check-cast v1, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    invoke-virtual {v1, p0}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->d(Landroid/app/Activity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/model/db/WatchAnalysisEvent;->setVideoInfoId(I)V

    .line 1747
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->b:Lcom/jess/arms/mvp/b;

    check-cast v1, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->f()Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->X:I

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->b:Lcom/jess/arms/mvp/b;

    check-cast v2, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    invoke-virtual {v2}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->f()Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->getType()I

    move-result v2

    goto :goto_0

    :goto_1
    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/model/db/WatchAnalysisEvent;->setVideoType(Ljava/lang/String;)V

    .line 1748
    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/utils/b/a;->b(Lcom/mh/movie/core/mvp/model/db/BaseAnalysisEvent;)V

    return-void
.end method

.method public updataDownloaded(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lorg/simple/eventbus/Subscriber;
        tag = "SFILE_DELETE_DOWNLOADED"
    .end annotation

    .line 2855
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->D:Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;

    if-eqz v0, :cond_0

    .line 2856
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->D:Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;

    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public v()V
    .locals 5

    .line 2596
    sget-object v0, Lcom/mh/movie/core/mvp/ui/b;->i:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/jess/arms/c/d;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->Q:Z

    .line 2597
    iget-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->Q:Z

    if-eqz v0, :cond_4

    .line 2598
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->b:Lcom/jess/arms/mvp/b;

    check-cast v0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->f()Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->getVideoInfoConfig()Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoInfoConfigBean;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->b:Lcom/jess/arms/mvp/b;

    check-cast v0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->f()Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->getVideoInfoConfig()Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoInfoConfigBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoInfoConfigBean;->isVideoCanDown()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "\u5e94\u7248\u6743\u65b9\u8981\u6c42\u6682\u4e0d\u652f\u6301\u7f13\u5b58"

    .line 2599
    invoke-static {p0, v0}, Lcom/jess/arms/c/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 2603
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->b:Lcom/jess/arms/mvp/b;

    check-cast v0, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->f()Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;

    move-result-object v0

    .line 2604
    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->getType()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_2

    const/4 v1, 0x0

    .line 2607
    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->getVideoList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 2608
    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->getVideoList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoListBean;->getTagDTO()Lcom/mh/movie/core/mvp/model/entity/TagDTOBean;

    move-result-object v1

    :cond_1
    if-eqz v1, :cond_2

    const-string v0, "\u62b1\u6b49\uff0c\u70ed\u95e8\u5f71\u7247\u65e0\u6cd5\u4e0b\u8f7d"

    .line 2612
    invoke-static {p0, v0}, Lcom/jess/arms/c/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :cond_2
    if-eqz v0, :cond_5

    .line 2618
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->D:Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;

    if-nez v1, :cond_3

    .line 2619
    sget v1, Lcom/mh/movie/core/R$id;->cv_cache_view:I

    invoke-virtual {p0, v1}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;

    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->D:Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;

    .line 2620
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->D:Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->getDownloadBean()Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoDownloadBean;

    move-result-object v2

    iget v4, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->y:I

    invoke-virtual {v1, v2, v4}, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->a(Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoDownloadBean;I)V

    .line 2621
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->D:Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;

    new-instance v2, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$20;

    invoke-direct {v2, p0}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$20;-><init>(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)V

    invoke-virtual {v1, v2}, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->setOnItemClickListener(Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView$b;)V

    .line 2638
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->D:Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;

    new-instance v2, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$21;

    invoke-direct {v2, p0}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity$21;-><init>(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)V

    invoke-virtual {v1, v2}, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->setClarityDialogListener(Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView$a;)V

    .line 2658
    :cond_3
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->D:Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;

    iget v2, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->y:I

    invoke-virtual {v1, v2}, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->setWatchPosition(I)V

    .line 2659
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->D:Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->getDownloadBean()Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoDownloadBean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->setDownloadBean(Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse$VideoDownloadBean;)V

    .line 2660
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->D:Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->getVideoPageList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/response/DetailResponse;->getVideoList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->a(Ljava/util/List;Ljava/util/List;)V

    .line 2662
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->D:Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;

    invoke-virtual {v0, v3}, Lcom/mh/movie/core/mvp/ui/widget/cache/CacheView;->setVisibility(I)V

    goto :goto_0

    .line 2665
    :cond_4
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->r:Landroid/content/Context;

    const-class v2, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->startActivity(Landroid/content/Intent;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public w()V
    .locals 10

    .line 2906
    invoke-static {}, Lcom/mh/movie/core/mvp/ui/utils/CommonTools;->getSystemTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->au:J

    .line 2907
    iget-wide v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->at:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 2908
    iget-wide v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->ar:J

    iget-wide v4, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->au:J

    iget-wide v6, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->at:J

    sub-long v8, v4, v6

    add-long v4, v0, v8

    iput-wide v4, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->ar:J

    .line 2911
    :cond_0
    iput-wide v2, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->at:J

    .line 2912
    iput-wide v2, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->au:J

    return-void
.end method

.method public x()V
    .locals 10

    .line 2916
    invoke-static {}, Lcom/mh/movie/core/mvp/ui/utils/CommonTools;->getSystemTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->aw:J

    .line 2917
    iget-wide v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->av:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 2918
    iget-wide v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->as:J

    iget-wide v4, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->aw:J

    iget-wide v6, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->av:J

    sub-long v8, v4, v6

    add-long v4, v0, v8

    iput-wide v4, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->as:J

    .line 2922
    :cond_0
    iput-wide v2, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->av:J

    .line 2923
    iput-wide v2, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->aw:J

    return-void
.end method

.method public y()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 2927
    iput-wide v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->ar:J

    return-void
.end method

.method public z()V
    .locals 2

    .line 2931
    invoke-static {}, Lcom/mh/movie/core/mvp/ui/utils/CommonTools;->getSystemTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->av:J

    return-void
.end method
