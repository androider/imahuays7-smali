.class public Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer_ViewBinding;
.super Ljava/lang/Object;
.source "MHVideoPlayer_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private a:Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;

.field private h:Landroid/view/View;

.field private i:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;Landroid/view/View;)V
    .locals 4
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer_ViewBinding;->a:Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;

    .line 52
    sget v0, Lcom/mh/movie/core/R$id;->tv_video_player_title:I

    const-string v1, "field \'tvVideoPlayerTitle\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->tvVideoPlayerTitle:Landroid/widget/TextView;

    .line 53
    sget v0, Lcom/mh/movie/core/R$id;->tv_video_player_try_watch_m:I

    const-string v1, "field \'tvVideoPlayerTryWatchM\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->tvVideoPlayerTryWatchM:Landroid/widget/TextView;

    .line 54
    sget v0, Lcom/mh/movie/core/R$id;->tv_video_player_try_watch_m_one:I

    const-string v1, "field \'tvVideoPlayerTryWatchMOne\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->tvVideoPlayerTryWatchMOne:Landroid/widget/TextView;

    .line 55
    sget v0, Lcom/mh/movie/core/R$id;->ll_video_player_try_watch:I

    const-string v1, "field \'llVideoPlayerTryWatch\'"

    const-class v2, Landroid/widget/LinearLayout;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->llVideoPlayerTryWatch:Landroid/widget/LinearLayout;

    .line 56
    sget v0, Lcom/mh/movie/core/R$id;->ll_video_player_try_watch_one:I

    const-string v1, "field \'llVideoPlayerTryWatchOne\'"

    const-class v2, Landroid/widget/LinearLayout;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->llVideoPlayerTryWatchOne:Landroid/widget/LinearLayout;

    .line 57
    sget v0, Lcom/mh/movie/core/R$id;->tv_video_player_watch_mhb:I

    const-string v1, "field \'tvVideoPlayerWatchMhb\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->tvVideoPlayerWatchMhb:Landroid/widget/TextView;

    .line 58
    sget v0, Lcom/mh/movie/core/R$id;->ll_video_player_watch_mhb:I

    const-string v1, "field \'llVideoPlayerWatchMhb\'"

    const-class v2, Landroid/widget/LinearLayout;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->llVideoPlayerWatchMhb:Landroid/widget/LinearLayout;

    .line 59
    sget v0, Lcom/mh/movie/core/R$id;->tv_video_player_video_tip:I

    const-string v1, "field \'tvVideoPlayerVideoTip\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->tvVideoPlayerVideoTip:Landroid/widget/TextView;

    .line 60
    sget v0, Lcom/mh/movie/core/R$id;->tv_video_player_video_tip_one:I

    const-string v1, "field \'tvVideoPlayerVideoTipOne\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->tvVideoPlayerVideoTipOne:Landroid/widget/TextView;

    .line 61
    sget v0, Lcom/mh/movie/core/R$id;->rl_video_player_detail:I

    const-string v1, "field \'rlVideoPlayerDetail\'"

    const-class v2, Landroid/widget/RelativeLayout;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->rlVideoPlayerDetail:Landroid/widget/RelativeLayout;

    .line 62
    sget v0, Lcom/mh/movie/core/R$id;->rl_video_player_detail_one:I

    const-string v1, "field \'rlVideoPlayerDetailOne\'"

    const-class v2, Landroid/widget/RelativeLayout;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->rlVideoPlayerDetailOne:Landroid/widget/RelativeLayout;

    .line 63
    sget v0, Lcom/mh/movie/core/R$id;->iv_player_video_screen:I

    const-string v1, "field \'ivPlayerVideoScreen\'"

    const-class v2, Landroid/widget/ImageView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->ivPlayerVideoScreen:Landroid/widget/ImageView;

    .line 64
    sget v0, Lcom/mh/movie/core/R$id;->tv_video_play_info:I

    const-string v1, "field \'tvVideoPlayInfo\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->tvVideoPlayInfo:Landroid/widget/TextView;

    .line 65
    sget v0, Lcom/mh/movie/core/R$id;->vjpv_jump_watch_movie:I

    const-string v1, "field \'vjpvJumpWatchMovie\'"

    const-class v2, Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoJumpPlayView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoJumpPlayView;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->vjpvJumpWatchMovie:Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoJumpPlayView;

    .line 66
    sget v0, Lcom/mh/movie/core/R$id;->vwsv_video_watch_share:I

    const-string v1, "field \'vwsvWatchShare\'"

    const-class v2, Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoWatchShareView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoWatchShareView;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->vwsvWatchShare:Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoWatchShareView;

    .line 67
    sget v0, Lcom/mh/movie/core/R$id;->vdgv_video_danmu_guide:I

    const-string v1, "field \'vdgvDanmuGuide\'"

    const-class v2, Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoDanmuGuideView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoDanmuGuideView;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->vdgvDanmuGuide:Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoDanmuGuideView;

    .line 68
    sget v0, Lcom/mh/movie/core/R$id;->ll_video_loading_error:I

    const-string v1, "field \'llVideoLoadingError\'"

    const-class v2, Landroid/widget/LinearLayout;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->llVideoLoadingError:Landroid/widget/LinearLayout;

    .line 69
    sget v0, Lcom/mh/movie/core/R$id;->tv_video_reload:I

    const-string v1, "field \'tvVideoReload\' and method \'onViewClicked\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 70
    sget v1, Lcom/mh/movie/core/R$id;->tv_video_reload:I

    const-string v2, "field \'tvVideoReload\'"

    const-class v3, Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->tvVideoReload:Landroid/widget/TextView;

    .line 71
    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer_ViewBinding;->b:Landroid/view/View;

    .line 72
    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer_ViewBinding$1;-><init>(Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer_ViewBinding;Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    sget v0, Lcom/mh/movie/core/R$id;->tv_video_feedback:I

    const-string v1, "field \'tvVideoFeedback\' and method \'onViewClicked\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 79
    sget v1, Lcom/mh/movie/core/R$id;->tv_video_feedback:I

    const-string v2, "field \'tvVideoFeedback\'"

    const-class v3, Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->tvVideoFeedback:Landroid/widget/TextView;

    .line 80
    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer_ViewBinding;->c:Landroid/view/View;

    .line 81
    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer_ViewBinding$2;

    invoke-direct {v1, p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer_ViewBinding$2;-><init>(Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer_ViewBinding;Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    sget v0, Lcom/mh/movie/core/R$id;->ll_video_fast:I

    const-string v1, "field \'llVideoFast\'"

    const-class v2, Landroid/widget/LinearLayout;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->llVideoFast:Landroid/widget/LinearLayout;

    .line 88
    sget v0, Lcom/mh/movie/core/R$id;->tv_video_fast_time:I

    const-string v1, "field \'tvVideoFastTime\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->tvVideoFastTime:Landroid/widget/TextView;

    .line 89
    sget v0, Lcom/mh/movie/core/R$id;->sb_video_fast_progress:I

    const-string v1, "field \'sbVideoFastProgress\'"

    const-class v2, Lcom/mh/movie/core/mvp/ui/widget/SeekBarNotDrag;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/ui/widget/SeekBarNotDrag;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->sbVideoFastProgress:Lcom/mh/movie/core/mvp/ui/widget/SeekBarNotDrag;

    .line 90
    sget v0, Lcom/mh/movie/core/R$id;->iv_full:I

    const-string v1, "field \'ivFullScreen\' and method \'onViewClicked\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 91
    sget v1, Lcom/mh/movie/core/R$id;->iv_full:I

    const-string v2, "field \'ivFullScreen\'"

    const-class v3, Landroid/widget/ImageView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p1, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->ivFullScreen:Landroid/widget/ImageView;

    .line 92
    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer_ViewBinding;->d:Landroid/view/View;

    .line 93
    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer_ViewBinding$3;

    invoke-direct {v1, p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer_ViewBinding$3;-><init>(Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer_ViewBinding;Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    sget v0, Lcom/mh/movie/core/R$id;->iv_land_full:I

    const-string v1, "field \'ivLandFull\' and method \'onViewClicked\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 100
    sget v1, Lcom/mh/movie/core/R$id;->iv_land_full:I

    const-string v2, "field \'ivLandFull\'"

    const-class v3, Landroid/widget/ImageView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p1, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->ivLandFull:Landroid/widget/ImageView;

    .line 101
    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer_ViewBinding;->e:Landroid/view/View;

    .line 102
    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer_ViewBinding$4;

    invoke-direct {v1, p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer_ViewBinding$4;-><init>(Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer_ViewBinding;Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    sget v0, Lcom/mh/movie/core/R$id;->iv_player_video_share:I

    const-string v1, "field \'ivShare\'"

    const-class v2, Landroid/widget/ImageView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->ivShare:Landroid/widget/ImageView;

    .line 109
    sget v0, Lcom/mh/movie/core/R$id;->iv_player_video_setting:I

    const-string v1, "field \'ivSetting\'"

    const-class v2, Landroid/widget/ImageView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->ivSetting:Landroid/widget/ImageView;

    .line 110
    sget v0, Lcom/mh/movie/core/R$id;->ll_player_video_phone_info:I

    const-string v1, "field \'llVideoPhoneInfoContains\'"

    const-class v2, Landroid/widget/LinearLayout;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->llVideoPhoneInfoContains:Landroid/widget/LinearLayout;

    .line 111
    sget v0, Lcom/mh/movie/core/R$id;->bv_player_video_battery:I

    const-string v1, "field \'bvVideoBattery\'"

    const-class v2, Lcom/mh/movie/core/mvp/ui/widget/BatteryView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/ui/widget/BatteryView;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->bvVideoBattery:Lcom/mh/movie/core/mvp/ui/widget/BatteryView;

    .line 112
    sget v0, Lcom/mh/movie/core/R$id;->tv_player_video_time:I

    const-string v1, "field \'tvVideoTime\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->tvVideoTime:Landroid/widget/TextView;

    .line 113
    sget v0, Lcom/mh/movie/core/R$id;->rl_ad:I

    const-string v1, "field \'mRlAd\' and method \'onViewClicked\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 114
    sget v1, Lcom/mh/movie/core/R$id;->rl_ad:I

    const-string v2, "field \'mRlAd\'"

    const-class v3, Landroid/widget/RelativeLayout;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p1, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->mRlAd:Landroid/widget/RelativeLayout;

    .line 115
    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer_ViewBinding;->f:Landroid/view/View;

    .line 116
    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer_ViewBinding$5;

    invoke-direct {v1, p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer_ViewBinding$5;-><init>(Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer_ViewBinding;Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    sget v0, Lcom/mh/movie/core/R$id;->img_ad:I

    const-string v1, "field \'mImgAd\'"

    const-class v2, Landroid/widget/ImageView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->mImgAd:Landroid/widget/ImageView;

    .line 123
    sget v0, Lcom/mh/movie/core/R$id;->img_shut_ad:I

    const-string v1, "field \'mImgAdShut\'"

    const-class v2, Landroid/widget/ImageView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->mImgAdShut:Landroid/widget/ImageView;

    .line 124
    sget v0, Lcom/mh/movie/core/R$id;->rl_ad_one:I

    const-string v1, "field \'mRlAdOne\' and method \'onViewClicked\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 125
    sget v1, Lcom/mh/movie/core/R$id;->rl_ad_one:I

    const-string v2, "field \'mRlAdOne\'"

    const-class v3, Landroid/widget/RelativeLayout;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p1, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->mRlAdOne:Landroid/widget/RelativeLayout;

    .line 126
    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer_ViewBinding;->g:Landroid/view/View;

    .line 127
    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer_ViewBinding$6;

    invoke-direct {v1, p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer_ViewBinding$6;-><init>(Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer_ViewBinding;Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    sget v0, Lcom/mh/movie/core/R$id;->rl_shut:I

    const-string v1, "field \'mRlShut\' and method \'onViewClicked\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 134
    sget v1, Lcom/mh/movie/core/R$id;->rl_shut:I

    const-string v2, "field \'mRlShut\'"

    const-class v3, Landroid/widget/RelativeLayout;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p1, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->mRlShut:Landroid/widget/RelativeLayout;

    .line 135
    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer_ViewBinding;->h:Landroid/view/View;

    .line 136
    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer_ViewBinding$7;

    invoke-direct {v1, p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer_ViewBinding$7;-><init>(Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer_ViewBinding;Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    sget v0, Lcom/mh/movie/core/R$id;->ll_func_layout:I

    const-string v1, "field \'mFuncLayout\'"

    const-class v2, Landroid/widget/LinearLayout;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->mFuncLayout:Landroid/widget/LinearLayout;

    .line 143
    sget v0, Lcom/mh/movie/core/R$id;->iv_player_video_danma_toggle:I

    const-string v1, "field \'mIvDanmaToggle\'"

    const-class v2, Landroid/widget/ImageView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->mIvDanmaToggle:Landroid/widget/ImageView;

    .line 144
    sget v0, Lcom/mh/movie/core/R$id;->rl_volumn:I

    const-string v1, "field \'rlVolumn\'"

    const-class v2, Landroid/widget/RelativeLayout;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->rlVolumn:Landroid/widget/RelativeLayout;

    .line 145
    sget v0, Lcom/mh/movie/core/R$id;->ic_volumn:I

    const-string v1, "field \'ivVolumnIcon\'"

    const-class v2, Landroid/widget/ImageView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->ivVolumnIcon:Landroid/widget/ImageView;

    .line 146
    sget v0, Lcom/mh/movie/core/R$id;->pb_volumn:I

    const-string v1, "field \'pbVolumn\'"

    const-class v2, Lcom/mh/movie/core/mvp/ui/widget/SeekBarNotDrag;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/ui/widget/SeekBarNotDrag;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->pbVolumn:Lcom/mh/movie/core/mvp/ui/widget/SeekBarNotDrag;

    .line 147
    sget v0, Lcom/mh/movie/core/R$id;->ll_back_container:I

    const-string v1, "field \'llBackContainer\'"

    const-class v2, Landroid/widget/LinearLayout;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->llBackContainer:Landroid/widget/LinearLayout;

    .line 148
    sget v0, Lcom/mh/movie/core/R$id;->iv_video_back:I

    const-string v1, "field \'ivVideoBack\' and method \'onViewClicked\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 149
    sget v1, Lcom/mh/movie/core/R$id;->iv_video_back:I

    const-string v2, "field \'ivVideoBack\'"

    const-class v3, Landroid/widget/ImageView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p1, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->ivVideoBack:Landroid/widget/ImageView;

    .line 150
    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer_ViewBinding;->i:Landroid/view/View;

    .line 151
    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer_ViewBinding$8;

    invoke-direct {v1, p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer_ViewBinding$8;-><init>(Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer_ViewBinding;Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    sget v0, Lcom/mh/movie/core/R$id;->tv_video_network:I

    const-string v1, "field \'tvVideoNetwork\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->tvVideoNetwork:Landroid/widget/TextView;

    .line 158
    sget v0, Lcom/mh/movie/core/R$id;->tv_video_title:I

    const-string v1, "field \'tvVideoTitle\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->tvVideoTitle:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 164
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer_ViewBinding;->a:Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;

    if-nez v0, :cond_0

    .line 165
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v1, 0x0

    .line 166
    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer_ViewBinding;->a:Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;

    .line 168
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->tvVideoPlayerTitle:Landroid/widget/TextView;

    .line 169
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->tvVideoPlayerTryWatchM:Landroid/widget/TextView;

    .line 170
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->tvVideoPlayerTryWatchMOne:Landroid/widget/TextView;

    .line 171
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->llVideoPlayerTryWatch:Landroid/widget/LinearLayout;

    .line 172
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->llVideoPlayerTryWatchOne:Landroid/widget/LinearLayout;

    .line 173
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->tvVideoPlayerWatchMhb:Landroid/widget/TextView;

    .line 174
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->llVideoPlayerWatchMhb:Landroid/widget/LinearLayout;

    .line 175
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->tvVideoPlayerVideoTip:Landroid/widget/TextView;

    .line 176
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->tvVideoPlayerVideoTipOne:Landroid/widget/TextView;

    .line 177
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->rlVideoPlayerDetail:Landroid/widget/RelativeLayout;

    .line 178
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->rlVideoPlayerDetailOne:Landroid/widget/RelativeLayout;

    .line 179
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->ivPlayerVideoScreen:Landroid/widget/ImageView;

    .line 180
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->tvVideoPlayInfo:Landroid/widget/TextView;

    .line 181
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->vjpvJumpWatchMovie:Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoJumpPlayView;

    .line 182
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->vwsvWatchShare:Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoWatchShareView;

    .line 183
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->vdgvDanmuGuide:Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoDanmuGuideView;

    .line 184
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->llVideoLoadingError:Landroid/widget/LinearLayout;

    .line 185
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->tvVideoReload:Landroid/widget/TextView;

    .line 186
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->tvVideoFeedback:Landroid/widget/TextView;

    .line 187
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->llVideoFast:Landroid/widget/LinearLayout;

    .line 188
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->tvVideoFastTime:Landroid/widget/TextView;

    .line 189
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->sbVideoFastProgress:Lcom/mh/movie/core/mvp/ui/widget/SeekBarNotDrag;

    .line 190
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->ivFullScreen:Landroid/widget/ImageView;

    .line 191
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->ivLandFull:Landroid/widget/ImageView;

    .line 192
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->ivShare:Landroid/widget/ImageView;

    .line 193
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->ivSetting:Landroid/widget/ImageView;

    .line 194
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->llVideoPhoneInfoContains:Landroid/widget/LinearLayout;

    .line 195
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->bvVideoBattery:Lcom/mh/movie/core/mvp/ui/widget/BatteryView;

    .line 196
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->tvVideoTime:Landroid/widget/TextView;

    .line 197
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->mRlAd:Landroid/widget/RelativeLayout;

    .line 198
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->mImgAd:Landroid/widget/ImageView;

    .line 199
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->mImgAdShut:Landroid/widget/ImageView;

    .line 200
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->mRlAdOne:Landroid/widget/RelativeLayout;

    .line 201
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->mRlShut:Landroid/widget/RelativeLayout;

    .line 202
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->mFuncLayout:Landroid/widget/LinearLayout;

    .line 203
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->mIvDanmaToggle:Landroid/widget/ImageView;

    .line 204
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->rlVolumn:Landroid/widget/RelativeLayout;

    .line 205
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->ivVolumnIcon:Landroid/widget/ImageView;

    .line 206
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->pbVolumn:Lcom/mh/movie/core/mvp/ui/widget/SeekBarNotDrag;

    .line 207
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->llBackContainer:Landroid/widget/LinearLayout;

    .line 208
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->ivVideoBack:Landroid/widget/ImageView;

    .line 209
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->tvVideoNetwork:Landroid/widget/TextView;

    .line 210
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer;->tvVideoTitle:Landroid/widget/TextView;

    .line 212
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer_ViewBinding;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 213
    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer_ViewBinding;->b:Landroid/view/View;

    .line 214
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer_ViewBinding;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 215
    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer_ViewBinding;->c:Landroid/view/View;

    .line 216
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer_ViewBinding;->d:Landroid/view/View;

    .line 218
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer_ViewBinding;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer_ViewBinding;->e:Landroid/view/View;

    .line 220
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer_ViewBinding;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 221
    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer_ViewBinding;->f:Landroid/view/View;

    .line 222
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer_ViewBinding;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 223
    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer_ViewBinding;->g:Landroid/view/View;

    .line 224
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer_ViewBinding;->h:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 225
    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer_ViewBinding;->h:Landroid/view/View;

    .line 226
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer_ViewBinding;->i:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 227
    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHVideoPlayer_ViewBinding;->i:Landroid/view/View;

    return-void
.end method
