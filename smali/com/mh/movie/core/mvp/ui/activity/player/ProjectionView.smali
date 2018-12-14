.class public Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;
.super Landroid/widget/FrameLayout;
.source "ProjectionView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView$a;
    }
.end annotation


# instance fields
.field protected A:F

.field B:I

.field C:Ljava/lang/String;

.field D:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/ClarityEntity;",
            ">;"
        }
    .end annotation
.end field

.field E:I

.field private F:[I

.field private G:[I

.field private H:I

.field private I:I

.field private J:I

.field private K:Z

.field private L:Z

.field private M:Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView$a;

.field private N:Z

.field private O:I

.field private P:I

.field private Q:I

.field private R:Ljava/lang/String;

.field private S:Ljava/lang/String;

.field private T:Lcom/mh/movie/core/mvp/ui/widget/dialog/ScreenDialog;

.field private U:Landroid/widget/FrameLayout;

.field private V:Landroid/view/GestureDetector;

.field a:Landroid/widget/RelativeLayout;

.field b:Landroid/widget/TextView;

.field c:Landroid/widget/SeekBar;

.field d:Landroid/widget/TextView;

.field e:Landroid/widget/ImageView;

.field f:Landroid/widget/LinearLayout;

.field g:Landroid/widget/TextView;

.field h:Landroid/widget/LinearLayout;

.field i:Landroid/widget/ImageView;

.field j:Landroid/widget/TextView;

.field k:Landroid/widget/TextView;

.field l:Landroid/widget/RelativeLayout;

.field m:Landroid/widget/ImageView;

.field n:Landroid/widget/ImageView;

.field o:Landroid/widget/TextView;

.field p:Landroid/widget/TextView;

.field q:Landroid/widget/TextView;

.field r:Landroid/widget/RelativeLayout;

.field s:Landroid/widget/RelativeLayout;

.field t:Landroid/widget/LinearLayout;

.field u:Landroid/widget/TextView;

.field v:Landroid/widget/ImageView;

.field protected w:Z

.field protected x:I

.field protected y:Z

.field protected z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 139
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x2

    .line 75
    new-array p2, p1, [I

    iput-object p2, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->F:[I

    .line 77
    new-array p1, p1, [I

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->G:[I

    const/16 p1, 0x50

    .line 84
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->J:I

    const/4 p1, 0x0

    .line 92
    iput-boolean p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->K:Z

    .line 94
    iput-boolean p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->w:Z

    .line 96
    iput-boolean p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->L:Z

    .line 100
    iput-boolean p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->y:Z

    .line 106
    iput-boolean p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->z:Z

    const/high16 p2, 0x3f800000    # 1.0f

    .line 110
    iput p2, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->A:F

    const/16 p2, 0x32

    .line 121
    iput p2, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->Q:I

    const/4 p2, 0x1

    .line 122
    iput p2, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->B:I

    .line 136
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->E:I

    .line 619
    new-instance p1, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    new-instance v0, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView$6;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView$6;-><init>(Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;)V

    invoke-direct {p1, p2, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->V:Landroid/view/GestureDetector;

    .line 141
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/mh/movie/core/R$layout;->view_player_projection:I

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->addView(Landroid/view/View;)V

    .line 142
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->k()V

    return-void
.end method

.method static synthetic a(Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;)I
    .locals 0

    .line 44
    iget p0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->O:I

    return p0
.end method

.method static synthetic a(Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;I)I
    .locals 0

    .line 44
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->P:I

    return p1
.end method

.method static synthetic b(Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;)I
    .locals 0

    .line 44
    iget p0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->P:I

    return p0
.end method

.method static synthetic b(Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;I)I
    .locals 0

    .line 44
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->Q:I

    return p1
.end method

.method static synthetic c(Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;)Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView$a;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->M:Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView$a;

    return-object p0
.end method

.method static synthetic d(Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;)Ljava/lang/String;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->S:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic e(Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->m()V

    return-void
.end method

.method private k()V
    .locals 2

    .line 147
    sget v0, Lcom/mh/movie/core/R$id;->rl_projection_contains_root:I

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->a:Landroid/widget/RelativeLayout;

    .line 148
    sget v0, Lcom/mh/movie/core/R$id;->current:I

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->b:Landroid/widget/TextView;

    .line 149
    sget v0, Lcom/mh/movie/core/R$id;->progress:I

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->c:Landroid/widget/SeekBar;

    .line 150
    sget v0, Lcom/mh/movie/core/R$id;->total:I

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->d:Landroid/widget/TextView;

    .line 151
    sget v0, Lcom/mh/movie/core/R$id;->fullscreen:I

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->e:Landroid/widget/ImageView;

    .line 152
    sget v0, Lcom/mh/movie/core/R$id;->ll_projection_btn_full:I

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->f:Landroid/widget/LinearLayout;

    .line 153
    sget v0, Lcom/mh/movie/core/R$id;->tv_projection_state_txt:I

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->g:Landroid/widget/TextView;

    .line 154
    sget v0, Lcom/mh/movie/core/R$id;->ll_projection_state:I

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->h:Landroid/widget/LinearLayout;

    .line 155
    sget v0, Lcom/mh/movie/core/R$id;->back:I

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->i:Landroid/widget/ImageView;

    .line 156
    sget v0, Lcom/mh/movie/core/R$id;->tv_projection_video_name:I

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->j:Landroid/widget/TextView;

    .line 157
    sget v0, Lcom/mh/movie/core/R$id;->tv_projection_device_name:I

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->k:Landroid/widget/TextView;

    .line 158
    sget v0, Lcom/mh/movie/core/R$id;->layout_top:I

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->l:Landroid/widget/RelativeLayout;

    .line 159
    sget v0, Lcom/mh/movie/core/R$id;->iv_projection_volume_subtract:I

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->m:Landroid/widget/ImageView;

    .line 160
    sget v0, Lcom/mh/movie/core/R$id;->iv_projection_volume_add:I

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->n:Landroid/widget/ImageView;

    .line 161
    sget v0, Lcom/mh/movie/core/R$id;->iv_projection_sharpness:I

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->o:Landroid/widget/TextView;

    .line 162
    sget v0, Lcom/mh/movie/core/R$id;->iv_projection_exit:I

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->p:Landroid/widget/TextView;

    .line 163
    sget v0, Lcom/mh/movie/core/R$id;->iv_projection_change_device:I

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->q:Landroid/widget/TextView;

    .line 164
    sget v0, Lcom/mh/movie/core/R$id;->rl_projection_help_contains:I

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->r:Landroid/widget/RelativeLayout;

    .line 165
    sget v0, Lcom/mh/movie/core/R$id;->rl_projection_help_contains:I

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->s:Landroid/widget/RelativeLayout;

    .line 167
    sget v0, Lcom/mh/movie/core/R$id;->ll_projection_fast:I

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->t:Landroid/widget/LinearLayout;

    .line 168
    sget v0, Lcom/mh/movie/core/R$id;->tv_projection_fast_time:I

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->u:Landroid/widget/TextView;

    .line 170
    sget v0, Lcom/mh/movie/core/R$id;->start:I

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->v:Landroid/widget/ImageView;

    .line 171
    invoke-virtual {p0, p0}, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 173
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->n:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->m:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->o:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->p:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->q:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->i:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->v:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->H:I

    .line 183
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->I:I

    .line 184
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x42480000    # 50.0f

    invoke-static {v0, v1}, Lcom/shuyu/gsyvideoplayer/utils/CommonUtil;->dip2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->x:I

    .line 187
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->t:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 189
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->c:Landroid/widget/SeekBar;

    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView$1;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView$1;-><init>(Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method

.method private l()V
    .locals 2

    .line 363
    iget-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->N:Z

    if-eqz v0, :cond_0

    .line 364
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 366
    :cond_0
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :goto_0
    return-void
.end method

.method private m()V
    .locals 2

    const-string v0, "TTT"

    const-string v1, "touchDoubleUp"

    .line 722
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->f()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 274
    iget-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->N:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->o:Z

    if-nez v0, :cond_0

    .line 275
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->l()V

    .line 277
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView$2;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView$2;-><init>(Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public a(I)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 400
    :pswitch_0
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->g:Landroid/widget/TextView;

    const-string v0, "\u6b63\u5728\u8fde\u63a5"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 397
    :pswitch_1
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->g:Landroid/widget/TextView;

    const-string v0, "\u65ad\u5f00\u8fde\u63a5"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 394
    :pswitch_2
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->g:Landroid/widget/TextView;

    const-string v0, "\u6b63\u5728\u6295\u5c4f"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(IIZ)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 471
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->v:Landroid/widget/ImageView;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 472
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->v:Landroid/widget/ImageView;

    sget p3, Lcom/mh/movie/core/R$mipmap;->icon_video_pause:I

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 474
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->v:Landroid/widget/ImageView;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 475
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->v:Landroid/widget/ImageView;

    sget p3, Lcom/mh/movie/core/R$mipmap;->icon_video_play:I

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    if-ne p1, v1, :cond_3

    if-eqz p3, :cond_3

    .line 477
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->M:Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView$a;

    if-eqz p1, :cond_2

    .line 478
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->M:Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView$a;

    invoke-interface {p1}, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView$a;->a()V

    :cond_2
    return-void

    :cond_3
    :goto_0
    mul-int/lit16 p1, p2, 0x3e8

    .line 483
    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->b(I)V

    .line 485
    iget p3, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->O:I

    if-nez p3, :cond_4

    goto :goto_1

    :cond_4
    mul-int/lit8 p1, p1, 0x64

    .line 488
    iget p3, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->O:I

    div-int v0, p1, p3

    .line 490
    :goto_1
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->c:Landroid/widget/SeekBar;

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    const/16 p1, 0x5a

    if-le v0, p1, :cond_5

    if-eqz p2, :cond_6

    :cond_5
    const/16 p1, 0x62

    if-lt v0, p1, :cond_8

    .line 492
    iget p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->O:I

    if-lt p2, p1, :cond_8

    .line 493
    :cond_6
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->M:Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView$a;

    if-eqz p1, :cond_7

    .line 494
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->M:Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView$a;

    invoke-interface {p1}, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView$a;->a()V

    :cond_7
    return-void

    :cond_8
    return-void
.end method

.method public a(ILjava/lang/String;I)V
    .locals 2

    .line 411
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->O:I

    .line 412
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->c:Landroid/widget/SeekBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    const/16 v0, 0x32

    .line 414
    iput v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->Q:I

    .line 416
    iput-object p2, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->S:Ljava/lang/String;

    .line 417
    invoke-static {}, Lcom/mh/movie/core/androidupnp/a;->a()Lcom/mh/movie/core/androidupnp/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mh/movie/core/androidupnp/a;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->R:Ljava/lang/String;

    .line 419
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->d:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/shuyu/gsyvideoplayer/utils/CommonUtil;->stringForTime(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 420
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->b:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/shuyu/gsyvideoplayer/utils/CommonUtil;->stringForTime(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 422
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 423
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->j:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 424
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->j:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->postInvalidate()V

    .line 427
    :cond_0
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->R:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 428
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->k:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->R:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 429
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->k:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->postInvalidate()V

    .line 432
    :cond_1
    invoke-virtual {p0, p3}, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->a(I)V

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

    .line 209
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->C:Ljava/lang/String;

    .line 211
    iput-object p2, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->D:Ljava/util/List;

    const/4 p1, 0x0

    .line 212
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 213
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/model/entity/ClarityEntity;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/ClarityEntity;->isSelect()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mh/movie/core/mvp/model/entity/ClarityEntity;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/ClarityEntity;->getResolution()I

    move-result p1

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    .line 218
    :goto_1
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->o:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/utils/CommonTools;->getClarityText(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public a(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 382
    iget-boolean p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->N:Z

    if-eqz p1, :cond_0

    return-void

    .line 384
    :cond_0
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->c()V

    return-void
.end method

.method public b()V
    .locals 3

    .line 313
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->T:Lcom/mh/movie/core/mvp/ui/widget/dialog/ScreenDialog;

    if-nez v0, :cond_0

    .line 329
    new-instance v0, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView$4;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView$4;-><init>(Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->T:Lcom/mh/movie/core/mvp/ui/widget/dialog/ScreenDialog;

    .line 350
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->T:Lcom/mh/movie/core/mvp/ui/widget/dialog/ScreenDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/ScreenDialog;->a(Z)V

    .line 351
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->T:Lcom/mh/movie/core/mvp/ui/widget/dialog/ScreenDialog;

    const-string v1, "\u8bf7\u9009\u62e9\u5206\u8fa8\u7387"

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/ScreenDialog;->a(Ljava/lang/String;)V

    .line 353
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 354
    :goto_0
    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->D:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 355
    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->D:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mh/movie/core/mvp/model/entity/ClarityEntity;

    invoke-virtual {v2}, Lcom/mh/movie/core/mvp/model/entity/ClarityEntity;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 357
    :cond_1
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->T:Lcom/mh/movie/core/mvp/ui/widget/dialog/ScreenDialog;

    invoke-virtual {v1, v0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/ScreenDialog;->a(Ljava/util/List;)V

    .line 358
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->T:Lcom/mh/movie/core/mvp/ui/widget/dialog/ScreenDialog;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/ScreenDialog;->show()V

    return-void
.end method

.method public b(I)V
    .locals 1

    .line 444
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->P:I

    .line 445
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->b:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/shuyu/gsyvideoplayer/utils/CommonUtil;->stringForTime(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public b(Z)V
    .locals 2

    const-wide/high16 v0, 0x4018000000000000L    # 6.0

    .line 509
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 510
    iget p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->Q:I

    add-int/2addr p1, v0

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->Q:I

    sub-int/2addr p1, v0

    :goto_0
    if-gtz p1, :cond_1

    const/4 p1, 0x0

    :cond_1
    const/16 v0, 0x64

    if-lt p1, v0, :cond_2

    const/16 p1, 0x64

    .line 517
    :cond_2
    iget v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->Q:I

    if-ne p1, v0, :cond_3

    return-void

    .line 521
    :cond_3
    invoke-static {}, Lcom/mh/movie/core/androidupnp/a;->a()Lcom/mh/movie/core/androidupnp/a;

    move-result-object v0

    iget-object v0, v0, Lcom/mh/movie/core/androidupnp/a;->a:Lcom/mh/movie/core/androidupnp/a/a;

    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView$5;

    invoke-direct {v1, p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView$5;-><init>(Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;I)V

    invoke-virtual {v0, p1, v1}, Lcom/mh/movie/core/androidupnp/a/a;->b(ILcom/mh/movie/core/androidupnp/a/a/a;)V

    return-void
.end method

.method public c()V
    .locals 1

    .line 371
    iget-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->N:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 372
    iput-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->N:Z

    .line 373
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->j()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 375
    iput-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->N:Z

    .line 376
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->i()V

    :goto_0
    return-void
.end method

.method public d()V
    .locals 2

    .line 388
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->f:Landroid/widget/LinearLayout;

    sget-boolean v1, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->o:Z

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public e()V
    .locals 1

    .line 436
    iget-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->N:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->o:Z

    if-nez v0, :cond_0

    .line 437
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->l()V

    goto :goto_0

    .line 439
    :cond_0
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/shuyu/gsyvideoplayer/utils/CommonUtil;->scanForActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    :goto_0
    return-void
.end method

.method public f()V
    .locals 3

    .line 449
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->v:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 450
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->v:Landroid/widget/ImageView;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 453
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->v:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 456
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->v:Landroid/widget/ImageView;

    sget v2, Lcom/mh/movie/core/R$mipmap;->icon_video_play:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 457
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->v:Landroid/widget/ImageView;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 459
    invoke-static {}, Lcom/mh/movie/core/androidupnp/a;->a()Lcom/mh/movie/core/androidupnp/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mh/movie/core/androidupnp/a;->f()V

    goto :goto_0

    .line 462
    :cond_1
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->v:Landroid/widget/ImageView;

    sget v1, Lcom/mh/movie/core/R$mipmap;->icon_video_pause:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 463
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->v:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 465
    invoke-static {}, Lcom/mh/movie/core/androidupnp/a;->a()Lcom/mh/movie/core/androidupnp/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mh/movie/core/androidupnp/a;->e()V

    :goto_0
    return-void
.end method

.method public g()V
    .locals 1

    const/4 v0, 0x1

    .line 501
    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->b(Z)V

    return-void
.end method

.method public h()V
    .locals 1

    const/4 v0, 0x0

    .line 505
    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->b(Z)V

    return-void
.end method

.method public i()V
    .locals 3

    const/4 v0, 0x1

    .line 537
    iput-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->N:Z

    .line 538
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/utils/UIUtils;->scanForActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    const v1, 0x1020002

    .line 539
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz p0, :cond_0

    .line 541
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/mh/movie/core/R$color;->black:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->setBackgroundColor(I)V

    .line 542
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->U:Landroid/widget/FrameLayout;

    .line 543
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->U:Landroid/widget/FrameLayout;

    invoke-virtual {v1, p0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 546
    :cond_0
    :try_start_0
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 548
    invoke-virtual {v0, p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 551
    invoke-static {v0}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public j()V
    .locals 4

    .line 558
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/utils/UIUtils;->scanForActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    const v1, 0x1020002

    .line 559
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz p0, :cond_0

    .line 562
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 565
    :cond_0
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    .line 566
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/mh/movie/core/R$dimen;->post_media_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const-string v1, "#99000000"

    .line 567
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->setBackgroundColor(I)V

    .line 568
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mh/movie/core/mvp/ui/utils/UIUtils;->scanForActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/jaeger/library/StatusBarUtil;->setTranslucentForImageView(Landroid/app/Activity;ILandroid/view/View;)V

    .line 569
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->U:Landroid/widget/FrameLayout;

    invoke-virtual {v1, p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 223
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 225
    sget v0, Lcom/mh/movie/core/R$id;->ll_projection_btn_full:I

    if-ne p1, v0, :cond_0

    .line 227
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->l()V

    goto/16 :goto_2

    .line 229
    :cond_0
    sget v0, Lcom/mh/movie/core/R$id;->iv_projection_volume_add:I

    if-ne p1, v0, :cond_1

    const-string p1, "TTT"

    const-string v0, "iv_projection_volume_add"

    .line 230
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->g()V

    goto/16 :goto_2

    .line 232
    :cond_1
    sget v0, Lcom/mh/movie/core/R$id;->iv_projection_volume_subtract:I

    if-ne p1, v0, :cond_2

    const-string p1, "TTT"

    const-string v0, "iv_projection_volume_subtract"

    .line 233
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->h()V

    goto/16 :goto_2

    .line 235
    :cond_2
    sget v0, Lcom/mh/movie/core/R$id;->back:I

    if-ne p1, v0, :cond_3

    const-string p1, "TTT"

    const-string v0, "back"

    .line 236
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->e()V

    goto/16 :goto_2

    .line 238
    :cond_3
    sget v0, Lcom/mh/movie/core/R$id;->iv_projection_sharpness:I

    if-ne p1, v0, :cond_8

    const-string p1, "TTT"

    const-string v0, "iv_projection_sharpness"

    .line 239
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->D:Ljava/util/List;

    if-nez p1, :cond_4

    .line 241
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "\u672c\u5730\u6295\u5c4f\u6682\u4e0d\u652f\u6301\u6b64\u529f\u80fd\uff01"

    invoke-static {p1, v0}, Lcom/mh/movie/core/mvp/ui/utils/T;->showShort(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void

    :cond_4
    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 245
    :goto_0
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->D:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_6

    .line 246
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->D:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mh/movie/core/mvp/model/entity/ClarityEntity;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/ClarityEntity;->isSelect()Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 p1, 0x1

    goto :goto_1

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_6
    :goto_1
    if-nez p1, :cond_7

    return-void

    .line 254
    :cond_7
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->M:Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView$a;

    if-eqz p1, :cond_b

    .line 255
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->M:Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView$a;

    iget-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->N:Z

    invoke-interface {p1, v0}, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView$a;->b(Z)V

    goto :goto_2

    .line 259
    :cond_8
    sget v0, Lcom/mh/movie/core/R$id;->iv_projection_exit:I

    if-ne p1, v0, :cond_9

    const-string p1, "TTT"

    const-string v0, "iv_projection_exit"

    .line 260
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->a()V

    goto :goto_2

    .line 262
    :cond_9
    sget v0, Lcom/mh/movie/core/R$id;->iv_projection_change_device:I

    if-ne p1, v0, :cond_a

    const-string p1, "TTT"

    const-string v0, "iv_projection_change_device"

    .line 263
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->M:Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView$a;

    if-eqz p1, :cond_b

    .line 265
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->M:Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView$a;

    iget-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->N:Z

    invoke-interface {p1, v0}, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView$a;->a(Z)V

    goto :goto_2

    .line 267
    :cond_a
    sget v0, Lcom/mh/movie/core/R$id;->start:I

    if-ne p1, v0, :cond_b

    .line 268
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->f()V

    :cond_b
    :goto_2
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public setProjectionCallback(Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView$a;)V
    .locals 0

    .line 727
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->M:Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView$a;

    return-void
.end method
