.class public Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity_ViewBinding;
.super Ljava/lang/Object;
.source "PlayerActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private a:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;

.field private h:Landroid/view/View;

.field private i:Landroid/view/View;

.field private j:Landroid/view/View;

.field private k:Landroid/view/View;

.field private l:Landroid/view/View;

.field private m:Landroid/view/View;

.field private n:Landroid/view/View;

.field private o:Landroid/view/View;

.field private p:Landroid/view/View;

.field private q:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;Landroid/view/View;)V
    .locals 4
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity_ViewBinding;->a:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    .line 72
    sget v0, Lcom/mh/movie/core/R$id;->rl_player_introduce:I

    const-string v1, "field \'rlPlayerIntroduce\' and method \'onViewClicked\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 73
    sget v1, Lcom/mh/movie/core/R$id;->rl_player_introduce:I

    const-string v2, "field \'rlPlayerIntroduce\'"

    const-class v3, Landroid/widget/RelativeLayout;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p1, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->rlPlayerIntroduce:Landroid/widget/RelativeLayout;

    .line 74
    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity_ViewBinding;->b:Landroid/view/View;

    .line 75
    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity_ViewBinding$1;-><init>(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity_ViewBinding;Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    sget v0, Lcom/mh/movie/core/R$id;->mh_video_player:I

    const-string v1, "field \'mhVideoPlayer\'"

    const-class v2, Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->mhVideoPlayer:Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;

    .line 82
    sget v0, Lcom/mh/movie/core/R$id;->pv_projection_control:I

    const-string v1, "field \'pvProjectionControl\'"

    const-class v2, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->pvProjectionControl:Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;

    .line 83
    sget v0, Lcom/mh/movie/core/R$id;->rl_player_video_asking:I

    const-string v1, "field \'rlPlayerVideoAsking\'"

    const-class v2, Landroid/widget/LinearLayout;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->rlPlayerVideoAsking:Landroid/widget/LinearLayout;

    .line 84
    sget v0, Lcom/mh/movie/core/R$id;->input_comment:I

    const-string v1, "field \'inputCommetn\'"

    const-class v2, Landroid/widget/LinearLayout;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->inputCommetn:Landroid/widget/LinearLayout;

    .line 85
    sget v0, Lcom/mh/movie/core/R$id;->tv_player_detail_name:I

    const-string v1, "field \'tvPlayerDetailName\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->tvPlayerDetailName:Landroid/widget/TextView;

    .line 86
    sget v0, Lcom/mh/movie/core/R$id;->iv_player_icon_go:I

    const-string v1, "field \'ivPlayerIconGo\'"

    const-class v2, Landroid/widget/ImageView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->ivPlayerIconGo:Landroid/widget/ImageView;

    .line 87
    sget v0, Lcom/mh/movie/core/R$id;->tv_player_detail_score:I

    const-string v1, "field \'tvPlayerDetailScore\' and method \'onViewClicked\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 88
    sget v1, Lcom/mh/movie/core/R$id;->tv_player_detail_score:I

    const-string v2, "field \'tvPlayerDetailScore\'"

    const-class v3, Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->tvPlayerDetailScore:Landroid/widget/TextView;

    .line 89
    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity_ViewBinding;->c:Landroid/view/View;

    .line 90
    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity_ViewBinding$9;

    invoke-direct {v1, p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity_ViewBinding$9;-><init>(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity_ViewBinding;Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    sget v0, Lcom/mh/movie/core/R$id;->tv_player_detail_description:I

    const-string v1, "field \'tvPlayerDetailDescription\' and method \'onViewClicked\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 97
    sget v1, Lcom/mh/movie/core/R$id;->tv_player_detail_description:I

    const-string v2, "field \'tvPlayerDetailDescription\'"

    const-class v3, Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->tvPlayerDetailDescription:Landroid/widget/TextView;

    .line 98
    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity_ViewBinding;->d:Landroid/view/View;

    .line 99
    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity_ViewBinding$10;

    invoke-direct {v1, p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity_ViewBinding$10;-><init>(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity_ViewBinding;Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    sget v0, Lcom/mh/movie/core/R$id;->ll_player_detail_intro:I

    const-string v1, "field \'llPlayerDetailIntro\' and method \'onViewClicked\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 106
    sget v1, Lcom/mh/movie/core/R$id;->ll_player_detail_intro:I

    const-string v2, "field \'llPlayerDetailIntro\'"

    const-class v3, Landroid/widget/LinearLayout;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p1, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->llPlayerDetailIntro:Landroid/widget/LinearLayout;

    .line 107
    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity_ViewBinding;->e:Landroid/view/View;

    .line 108
    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity_ViewBinding$11;

    invoke-direct {v1, p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity_ViewBinding$11;-><init>(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity_ViewBinding;Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    sget v0, Lcom/mh/movie/core/R$id;->iv_player_detail_comment_icon:I

    const-string v1, "field \'ivPlayerDetailCommentIcon\'"

    const-class v2, Landroid/widget/ImageView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->ivPlayerDetailCommentIcon:Landroid/widget/ImageView;

    .line 115
    sget v0, Lcom/mh/movie/core/R$id;->tv_player_detail_comment_info:I

    const-string v1, "field \'tvPlayerDetailCommentInfo\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->tvPlayerDetailCommentInfo:Landroid/widget/TextView;

    .line 116
    sget v0, Lcom/mh/movie/core/R$id;->ll_player_detail_comment:I

    const-string v1, "field \'llPlayerDetailComment\' and method \'onViewClicked\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 117
    sget v1, Lcom/mh/movie/core/R$id;->ll_player_detail_comment:I

    const-string v2, "field \'llPlayerDetailComment\'"

    const-class v3, Landroid/widget/LinearLayout;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p1, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->llPlayerDetailComment:Landroid/widget/LinearLayout;

    .line 118
    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity_ViewBinding;->f:Landroid/view/View;

    .line 119
    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity_ViewBinding$12;

    invoke-direct {v1, p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity_ViewBinding$12;-><init>(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity_ViewBinding;Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    sget v0, Lcom/mh/movie/core/R$id;->iv_player_detail_up_icon:I

    const-string v1, "field \'ivPlayerDetailUpIcon\'"

    const-class v2, Landroid/widget/ImageView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->ivPlayerDetailUpIcon:Landroid/widget/ImageView;

    .line 126
    sget v0, Lcom/mh/movie/core/R$id;->tv_player_detail_up_info:I

    const-string v1, "field \'tvPlayerDetailUpInfo\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->tvPlayerDetailUpInfo:Landroid/widget/TextView;

    .line 127
    sget v0, Lcom/mh/movie/core/R$id;->ll_player_detail_up:I

    const-string v1, "field \'llPlayerDetailUp\' and method \'onViewClicked\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 128
    sget v1, Lcom/mh/movie/core/R$id;->ll_player_detail_up:I

    const-string v2, "field \'llPlayerDetailUp\'"

    const-class v3, Landroid/widget/LinearLayout;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p1, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->llPlayerDetailUp:Landroid/widget/LinearLayout;

    .line 129
    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity_ViewBinding;->g:Landroid/view/View;

    .line 130
    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity_ViewBinding$13;

    invoke-direct {v1, p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity_ViewBinding$13;-><init>(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity_ViewBinding;Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    sget v0, Lcom/mh/movie/core/R$id;->iv_player_detail_down_icon:I

    const-string v1, "field \'ivPlayerDetailDownIcon\'"

    const-class v2, Landroid/widget/ImageView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->ivPlayerDetailDownIcon:Landroid/widget/ImageView;

    .line 137
    sget v0, Lcom/mh/movie/core/R$id;->tv_player_detail_down_info:I

    const-string v1, "field \'tvPlayerDetailDownInfo\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->tvPlayerDetailDownInfo:Landroid/widget/TextView;

    .line 138
    sget v0, Lcom/mh/movie/core/R$id;->ll_player_detail_down:I

    const-string v1, "field \'llPlayerDetailDown\' and method \'onViewClicked\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 139
    sget v1, Lcom/mh/movie/core/R$id;->ll_player_detail_down:I

    const-string v2, "field \'llPlayerDetailDown\'"

    const-class v3, Landroid/widget/LinearLayout;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p1, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->llPlayerDetailDown:Landroid/widget/LinearLayout;

    .line 140
    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity_ViewBinding;->h:Landroid/view/View;

    .line 141
    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity_ViewBinding$14;

    invoke-direct {v1, p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity_ViewBinding$14;-><init>(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity_ViewBinding;Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    sget v0, Lcom/mh/movie/core/R$id;->iv_player_detail_share_icon:I

    const-string v1, "field \'ivPlayerDetailShareIcon\'"

    const-class v2, Landroid/widget/ImageView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->ivPlayerDetailShareIcon:Landroid/widget/ImageView;

    .line 148
    sget v0, Lcom/mh/movie/core/R$id;->ll_player_detail_share:I

    const-string v1, "field \'llPlayerDetailShare\' and method \'onViewClicked\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 149
    sget v1, Lcom/mh/movie/core/R$id;->ll_player_detail_share:I

    const-string v2, "field \'llPlayerDetailShare\'"

    const-class v3, Landroid/widget/LinearLayout;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p1, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->llPlayerDetailShare:Landroid/widget/LinearLayout;

    .line 150
    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity_ViewBinding;->i:Landroid/view/View;

    .line 151
    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity_ViewBinding$15;

    invoke-direct {v1, p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity_ViewBinding$15;-><init>(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity_ViewBinding;Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    sget v0, Lcom/mh/movie/core/R$id;->ll_player_detail_feedback:I

    const-string v1, "field \'llPlayerDetailFeedback\' and method \'onViewClicked\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 158
    sget v1, Lcom/mh/movie/core/R$id;->ll_player_detail_feedback:I

    const-string v2, "field \'llPlayerDetailFeedback\'"

    const-class v3, Landroid/widget/LinearLayout;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p1, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->llPlayerDetailFeedback:Landroid/widget/LinearLayout;

    .line 159
    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity_ViewBinding;->j:Landroid/view/View;

    .line 160
    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity_ViewBinding$16;

    invoke-direct {v1, p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity_ViewBinding$16;-><init>(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity_ViewBinding;Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    sget v0, Lcom/mh/movie/core/R$id;->sort_info:I

    const-string v1, "field \'sortInfo\' and method \'onViewClicked\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 167
    sget v1, Lcom/mh/movie/core/R$id;->sort_info:I

    const-string v2, "field \'sortInfo\'"

    const-class v3, Landroid/widget/RelativeLayout;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p1, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->sortInfo:Landroid/widget/RelativeLayout;

    .line 168
    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity_ViewBinding;->k:Landroid/view/View;

    .line 169
    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity_ViewBinding$2;

    invoke-direct {v1, p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity_ViewBinding$2;-><init>(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity_ViewBinding;Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    sget v0, Lcom/mh/movie/core/R$id;->tv_player_detail_tv_part:I

    const-string v1, "field \'tvPlayerDetailTvPart\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->tvPlayerDetailTvPart:Landroid/widget/TextView;

    .line 176
    sget v0, Lcom/mh/movie/core/R$id;->iv_player_detail_tv_go:I

    const-string v1, "field \'ivPlayerDetailTvGo\'"

    const-class v2, Landroid/widget/ImageView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->ivPlayerDetailTvGo:Landroid/widget/ImageView;

    .line 177
    sget v0, Lcom/mh/movie/core/R$id;->rv_player_detail_tv:I

    const-string v1, "field \'rvPlayerDetailTv\'"

    const-class v2, Landroid/support/v7/widget/RecyclerView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->rvPlayerDetailTv:Landroid/support/v7/widget/RecyclerView;

    .line 178
    sget v0, Lcom/mh/movie/core/R$id;->ll_player_detail_tv:I

    const-string v1, "field \'llPlayerDetailTv\'"

    const-class v2, Landroid/widget/LinearLayout;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->llPlayerDetailTv:Landroid/widget/LinearLayout;

    .line 179
    sget v0, Lcom/mh/movie/core/R$id;->labels:I

    const-string v1, "field \'labels\'"

    const-class v2, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/ui/widget/LabelsView;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->labels:Lcom/mh/movie/core/mvp/ui/widget/LabelsView;

    .line 180
    sget v0, Lcom/mh/movie/core/R$id;->iv_player_detail_movie_go:I

    const-string v1, "field \'ivPlayerDetailMovieGo\' and method \'onViewClicked\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 181
    sget v1, Lcom/mh/movie/core/R$id;->iv_player_detail_movie_go:I

    const-string v2, "field \'ivPlayerDetailMovieGo\'"

    const-class v3, Landroid/widget/ImageView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p1, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->ivPlayerDetailMovieGo:Landroid/widget/ImageView;

    .line 182
    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity_ViewBinding;->l:Landroid/view/View;

    .line 183
    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity_ViewBinding$3;

    invoke-direct {v1, p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity_ViewBinding$3;-><init>(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity_ViewBinding;Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    sget v0, Lcom/mh/movie/core/R$id;->tv_player_detail_up_source:I

    const-string v1, "field \'tvPlayerDetailUpSource\' and method \'onViewClicked\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 190
    sget v1, Lcom/mh/movie/core/R$id;->tv_player_detail_up_source:I

    const-string v2, "field \'tvPlayerDetailUpSource\'"

    const-class v3, Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->tvPlayerDetailUpSource:Landroid/widget/TextView;

    .line 191
    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity_ViewBinding;->m:Landroid/view/View;

    .line 192
    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity_ViewBinding$4;

    invoke-direct {v1, p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity_ViewBinding$4;-><init>(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity_ViewBinding;Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    sget v0, Lcom/mh/movie/core/R$id;->iv_player_detail_guess_like_go:I

    const-string v1, "field \'ivPlayerDetailGuessLikeGo\'"

    const-class v2, Landroid/widget/ImageView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->ivPlayerDetailGuessLikeGo:Landroid/widget/ImageView;

    .line 199
    sget v0, Lcom/mh/movie/core/R$id;->rv_player_detail_guess_like:I

    const-string v1, "field \'rvPlayerDetailGuessLike\'"

    const-class v2, Landroid/support/v7/widget/RecyclerView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->rvPlayerDetailGuessLike:Landroid/support/v7/widget/RecyclerView;

    .line 200
    sget v0, Lcom/mh/movie/core/R$id;->ll_player_detail_commend_all:I

    const-string v1, "field \'llPlayerDetailCommendAll\' and method \'onViewClicked\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 201
    sget v1, Lcom/mh/movie/core/R$id;->ll_player_detail_commend_all:I

    const-string v2, "field \'llPlayerDetailCommendAll\'"

    const-class v3, Landroid/widget/LinearLayout;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p1, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->llPlayerDetailCommendAll:Landroid/widget/LinearLayout;

    .line 202
    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity_ViewBinding;->n:Landroid/view/View;

    .line 203
    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity_ViewBinding$5;

    invoke-direct {v1, p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity_ViewBinding$5;-><init>(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity_ViewBinding;Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    sget v0, Lcom/mh/movie/core/R$id;->ll_player_detail_commend_new:I

    const-string v1, "field \'llPlayerDetailCommendNew\' and method \'onViewClicked\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 210
    sget v1, Lcom/mh/movie/core/R$id;->ll_player_detail_commend_new:I

    const-string v2, "field \'llPlayerDetailCommendNew\'"

    const-class v3, Landroid/widget/LinearLayout;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p1, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->llPlayerDetailCommendNew:Landroid/widget/LinearLayout;

    .line 211
    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity_ViewBinding;->o:Landroid/view/View;

    .line 212
    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity_ViewBinding$6;

    invoke-direct {v1, p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity_ViewBinding$6;-><init>(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity_ViewBinding;Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    sget v0, Lcom/mh/movie/core/R$id;->ll_detail_tag:I

    const-string v1, "field \'llDetailLabel\'"

    const-class v2, Landroid/widget/LinearLayout;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->llDetailLabel:Landroid/widget/LinearLayout;

    .line 219
    sget v0, Lcom/mh/movie/core/R$id;->view_pager:I

    const-string v1, "field \'viewPager\'"

    const-class v2, Lcom/mh/movie/core/mvp/ui/widget/ControlScrollViewPager;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/ui/widget/ControlScrollViewPager;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->viewPager:Lcom/mh/movie/core/mvp/ui/widget/ControlScrollViewPager;

    .line 220
    sget v0, Lcom/mh/movie/core/R$id;->commend_collect:I

    const-string v1, "field \'llCollect\'"

    const-class v2, Landroid/widget/LinearLayout;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->llCollect:Landroid/widget/LinearLayout;

    .line 221
    sget v0, Lcom/mh/movie/core/R$id;->ll_hot_comment:I

    const-string v1, "field \'llHotComment\'"

    const-class v2, Landroid/widget/LinearLayout;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->llHotComment:Landroid/widget/LinearLayout;

    .line 222
    sget v0, Lcom/mh/movie/core/R$id;->ll_player_detail_download_cache:I

    const-string v1, "field \'llCacheDownload\'"

    const-class v2, Landroid/widget/LinearLayout;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->llCacheDownload:Landroid/widget/LinearLayout;

    .line 223
    sget v0, Lcom/mh/movie/core/R$id;->rl_player_like:I

    const-string v1, "field \'rlPlayerLike\'"

    const-class v2, Landroid/widget/RelativeLayout;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->rlPlayerLike:Landroid/widget/RelativeLayout;

    .line 224
    sget v0, Lcom/mh/movie/core/R$id;->post_detail_nested_scroll:I

    const-string v1, "field \'postDetailNestedScroll\'"

    const-class v2, Landroid/support/v4/widget/NestedScrollView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/NestedScrollView;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->postDetailNestedScroll:Landroid/support/v4/widget/NestedScrollView;

    .line 225
    sget v0, Lcom/mh/movie/core/R$id;->mcv_player_detail_guess_like:I

    const-string v1, "field \'movieCardView\'"

    const-class v2, Lcom/mh/movie/core/mvp/ui/widget/MovieCardView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/ui/widget/MovieCardView;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->movieCardView:Lcom/mh/movie/core/mvp/ui/widget/MovieCardView;

    .line 226
    sget v0, Lcom/mh/movie/core/R$id;->banner_adlist:I

    const-string v1, "field \'bannerAdList\'"

    const-class v2, Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->bannerAdList:Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;

    .line 227
    sget v0, Lcom/mh/movie/core/R$id;->tv_player_detail_commend_all:I

    const-string v1, "field \'tvPlayerDetailCommendAll\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->tvPlayerDetailCommendAll:Landroid/widget/TextView;

    .line 228
    sget v0, Lcom/mh/movie/core/R$id;->v_player_detail_commend_all_line:I

    const-string v1, "field \'vPlayerDetailCommendAllLine\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->vPlayerDetailCommendAllLine:Landroid/view/View;

    .line 229
    sget v0, Lcom/mh/movie/core/R$id;->tv_player_detail_commend_new:I

    const-string v1, "field \'tvPlayerDetailCommendNew\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->tvPlayerDetailCommendNew:Landroid/widget/TextView;

    .line 230
    sget v0, Lcom/mh/movie/core/R$id;->v_player_detail_commend_new_line:I

    const-string v1, "field \'vPlayerDetailCommendNewLine\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->vPlayerDetailCommendNewLine:Landroid/view/View;

    .line 231
    sget v0, Lcom/mh/movie/core/R$id;->relative_edit_text:I

    const-string v1, "field \'relativeEditText\'"

    const-class v2, Landroid/widget/LinearLayout;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->relativeEditText:Landroid/widget/LinearLayout;

    .line 232
    sget v0, Lcom/mh/movie/core/R$id;->rl_player_video_screen_lock:I

    const-string v1, "field \'rlPlayerVideoScreenLock\' and method \'onViewClicked\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 233
    sget v1, Lcom/mh/movie/core/R$id;->rl_player_video_screen_lock:I

    const-string v2, "field \'rlPlayerVideoScreenLock\'"

    const-class v3, Landroid/widget/LinearLayout;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p1, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->rlPlayerVideoScreenLock:Landroid/widget/LinearLayout;

    .line 234
    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity_ViewBinding;->p:Landroid/view/View;

    .line 235
    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity_ViewBinding$7;

    invoke-direct {v1, p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity_ViewBinding$7;-><init>(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity_ViewBinding;Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 241
    sget v0, Lcom/mh/movie/core/R$id;->iv_player_video_rotation:I

    const-string v1, "field \'ivPlayerVideoRotation\'"

    const-class v2, Landroid/widget/ImageView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->ivPlayerVideoRotation:Landroid/widget/ImageView;

    .line 242
    sget v0, Lcom/mh/movie/core/R$id;->tv_player_video_rotation:I

    const-string v1, "field \'tvPlayerRotation\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->tvPlayerRotation:Landroid/widget/TextView;

    .line 243
    sget v0, Lcom/mh/movie/core/R$id;->linear_commend_option:I

    const-string v1, "field \'linearOption\'"

    const-class v2, Landroid/widget/LinearLayout;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->linearOption:Landroid/widget/LinearLayout;

    .line 244
    sget v0, Lcom/mh/movie/core/R$id;->tv_commend_input_send:I

    const-string v1, "field \'tvMsgSend\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->tvMsgSend:Landroid/widget/TextView;

    .line 245
    sget v0, Lcom/mh/movie/core/R$id;->tv_player_introduce:I

    const-string v1, "field \'tvIntroduce\' and method \'onViewClicked\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 246
    sget v1, Lcom/mh/movie/core/R$id;->tv_player_introduce:I

    const-string v2, "field \'tvIntroduce\'"

    const-class v3, Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->tvIntroduce:Landroid/widget/TextView;

    .line 247
    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity_ViewBinding;->q:Landroid/view/View;

    .line 248
    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity_ViewBinding$8;

    invoke-direct {v1, p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity_ViewBinding$8;-><init>(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity_ViewBinding;Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 254
    sget v0, Lcom/mh/movie/core/R$id;->fl_player_video:I

    const-string v1, "field \'flPlayerVideo\'"

    const-class v2, Landroid/widget/FrameLayout;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->flPlayerVideo:Landroid/widget/FrameLayout;

    .line 255
    sget v0, Lcom/mh/movie/core/R$id;->toolbar_player:I

    const-string v1, "field \'toolbarPlayer\'"

    const-class v2, Lcom/mh/movie/core/mvp/ui/widget/PlayerToolbar;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/ui/widget/PlayerToolbar;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->toolbarPlayer:Lcom/mh/movie/core/mvp/ui/widget/PlayerToolbar;

    .line 256
    sget v0, Lcom/mh/movie/core/R$id;->tv_player_label:I

    const-string v1, "field \'tvPlayerLabel\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->tvPlayerLabel:Landroid/widget/TextView;

    .line 257
    sget v0, Lcom/mh/movie/core/R$id;->fdfl_player_dialog_full:I

    const-string v1, "field \'playerDialogFrameLayout\'"

    const-class v2, Lcom/mh/movie/core/mvp/ui/activity/player/view/PlayerDialogFrameLayout;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/mh/movie/core/mvp/ui/activity/player/view/PlayerDialogFrameLayout;

    iput-object p2, p1, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->playerDialogFrameLayout:Lcom/mh/movie/core/mvp/ui/activity/player/view/PlayerDialogFrameLayout;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 263
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity_ViewBinding;->a:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    if-nez v0, :cond_0

    .line 264
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v1, 0x0

    .line 265
    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity_ViewBinding;->a:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    .line 267
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->rlPlayerIntroduce:Landroid/widget/RelativeLayout;

    .line 268
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->mhVideoPlayer:Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;

    .line 269
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->pvProjectionControl:Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;

    .line 270
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->rlPlayerVideoAsking:Landroid/widget/LinearLayout;

    .line 271
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->inputCommetn:Landroid/widget/LinearLayout;

    .line 272
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->tvPlayerDetailName:Landroid/widget/TextView;

    .line 273
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->ivPlayerIconGo:Landroid/widget/ImageView;

    .line 274
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->tvPlayerDetailScore:Landroid/widget/TextView;

    .line 275
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->tvPlayerDetailDescription:Landroid/widget/TextView;

    .line 276
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->llPlayerDetailIntro:Landroid/widget/LinearLayout;

    .line 277
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->ivPlayerDetailCommentIcon:Landroid/widget/ImageView;

    .line 278
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->tvPlayerDetailCommentInfo:Landroid/widget/TextView;

    .line 279
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->llPlayerDetailComment:Landroid/widget/LinearLayout;

    .line 280
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->ivPlayerDetailUpIcon:Landroid/widget/ImageView;

    .line 281
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->tvPlayerDetailUpInfo:Landroid/widget/TextView;

    .line 282
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->llPlayerDetailUp:Landroid/widget/LinearLayout;

    .line 283
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->ivPlayerDetailDownIcon:Landroid/widget/ImageView;

    .line 284
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->tvPlayerDetailDownInfo:Landroid/widget/TextView;

    .line 285
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->llPlayerDetailDown:Landroid/widget/LinearLayout;

    .line 286
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->ivPlayerDetailShareIcon:Landroid/widget/ImageView;

    .line 287
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->llPlayerDetailShare:Landroid/widget/LinearLayout;

    .line 288
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->llPlayerDetailFeedback:Landroid/widget/LinearLayout;

    .line 289
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->sortInfo:Landroid/widget/RelativeLayout;

    .line 290
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->tvPlayerDetailTvPart:Landroid/widget/TextView;

    .line 291
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->ivPlayerDetailTvGo:Landroid/widget/ImageView;

    .line 292
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->rvPlayerDetailTv:Landroid/support/v7/widget/RecyclerView;

    .line 293
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->llPlayerDetailTv:Landroid/widget/LinearLayout;

    .line 294
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->labels:Lcom/mh/movie/core/mvp/ui/widget/LabelsView;

    .line 295
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->ivPlayerDetailMovieGo:Landroid/widget/ImageView;

    .line 296
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->tvPlayerDetailUpSource:Landroid/widget/TextView;

    .line 297
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->ivPlayerDetailGuessLikeGo:Landroid/widget/ImageView;

    .line 298
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->rvPlayerDetailGuessLike:Landroid/support/v7/widget/RecyclerView;

    .line 299
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->llPlayerDetailCommendAll:Landroid/widget/LinearLayout;

    .line 300
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->llPlayerDetailCommendNew:Landroid/widget/LinearLayout;

    .line 301
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->llDetailLabel:Landroid/widget/LinearLayout;

    .line 302
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->viewPager:Lcom/mh/movie/core/mvp/ui/widget/ControlScrollViewPager;

    .line 303
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->llCollect:Landroid/widget/LinearLayout;

    .line 304
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->llHotComment:Landroid/widget/LinearLayout;

    .line 305
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->llCacheDownload:Landroid/widget/LinearLayout;

    .line 306
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->rlPlayerLike:Landroid/widget/RelativeLayout;

    .line 307
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->postDetailNestedScroll:Landroid/support/v4/widget/NestedScrollView;

    .line 308
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->movieCardView:Lcom/mh/movie/core/mvp/ui/widget/MovieCardView;

    .line 309
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->bannerAdList:Lcom/mh/movie/core/mvp/ui/widget/banner/Banner;

    .line 310
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->tvPlayerDetailCommendAll:Landroid/widget/TextView;

    .line 311
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->vPlayerDetailCommendAllLine:Landroid/view/View;

    .line 312
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->tvPlayerDetailCommendNew:Landroid/widget/TextView;

    .line 313
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->vPlayerDetailCommendNewLine:Landroid/view/View;

    .line 314
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->relativeEditText:Landroid/widget/LinearLayout;

    .line 315
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->rlPlayerVideoScreenLock:Landroid/widget/LinearLayout;

    .line 316
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->ivPlayerVideoRotation:Landroid/widget/ImageView;

    .line 317
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->tvPlayerRotation:Landroid/widget/TextView;

    .line 318
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->linearOption:Landroid/widget/LinearLayout;

    .line 319
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->tvMsgSend:Landroid/widget/TextView;

    .line 320
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->tvIntroduce:Landroid/widget/TextView;

    .line 321
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->flPlayerVideo:Landroid/widget/FrameLayout;

    .line 322
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->toolbarPlayer:Lcom/mh/movie/core/mvp/ui/widget/PlayerToolbar;

    .line 323
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->tvPlayerLabel:Landroid/widget/TextView;

    .line 324
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->playerDialogFrameLayout:Lcom/mh/movie/core/mvp/ui/activity/player/view/PlayerDialogFrameLayout;

    .line 326
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity_ViewBinding;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 327
    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity_ViewBinding;->b:Landroid/view/View;

    .line 328
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity_ViewBinding;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 329
    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity_ViewBinding;->c:Landroid/view/View;

    .line 330
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 331
    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity_ViewBinding;->d:Landroid/view/View;

    .line 332
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity_ViewBinding;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 333
    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity_ViewBinding;->e:Landroid/view/View;

    .line 334
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity_ViewBinding;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 335
    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity_ViewBinding;->f:Landroid/view/View;

    .line 336
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity_ViewBinding;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 337
    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity_ViewBinding;->g:Landroid/view/View;

    .line 338
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity_ViewBinding;->h:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 339
    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity_ViewBinding;->h:Landroid/view/View;

    .line 340
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity_ViewBinding;->i:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 341
    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity_ViewBinding;->i:Landroid/view/View;

    .line 342
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity_ViewBinding;->j:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 343
    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity_ViewBinding;->j:Landroid/view/View;

    .line 344
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity_ViewBinding;->k:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 345
    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity_ViewBinding;->k:Landroid/view/View;

    .line 346
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity_ViewBinding;->l:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 347
    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity_ViewBinding;->l:Landroid/view/View;

    .line 348
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity_ViewBinding;->m:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 349
    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity_ViewBinding;->m:Landroid/view/View;

    .line 350
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity_ViewBinding;->n:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 351
    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity_ViewBinding;->n:Landroid/view/View;

    .line 352
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity_ViewBinding;->o:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 353
    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity_ViewBinding;->o:Landroid/view/View;

    .line 354
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity_ViewBinding;->p:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 355
    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity_ViewBinding;->p:Landroid/view/View;

    .line 356
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity_ViewBinding;->q:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 357
    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity_ViewBinding;->q:Landroid/view/View;

    return-void
.end method
