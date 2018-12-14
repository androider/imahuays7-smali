.class public Lcom/mh/movie/core/mvp/ui/widget/dialog/q;
.super Ljava/lang/Object;
.source "ShareVideoInfoDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mh/movie/core/mvp/ui/widget/dialog/q$a;,
        Lcom/mh/movie/core/mvp/ui/widget/dialog/q$b;
    }
.end annotation


# instance fields
.field public a:Lcom/mh/movie/core/mvp/ui/widget/dialog/q$b;

.field private b:Landroid/app/Dialog;

.field private c:Landroid/view/View;

.field private d:Landroid/widget/LinearLayout;

.field private e:Landroid/widget/LinearLayout;

.field private f:Landroid/widget/LinearLayout;

.field private g:Landroid/widget/LinearLayout;

.field private h:Landroid/widget/LinearLayout;

.field private i:Landroid/widget/LinearLayout;

.field private j:Landroid/widget/ImageView;

.field private k:Landroid/widget/RelativeLayout;

.field private l:Landroid/widget/TextView;

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:Landroid/graphics/Bitmap;

.field private r:Ljava/lang/String;

.field private s:Landroid/content/Context;

.field private t:Lcom/mh/movie/core/mvp/ui/widget/dialog/q$a;

.field private u:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 49
    iput v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/q;->m:I

    .line 50
    iput v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/q;->n:I

    .line 51
    iput v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/q;->o:I

    const/4 v0, 0x1

    .line 53
    iput v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/q;->p:I

    .line 65
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/q;->s:Landroid/content/Context;

    .line 66
    iput-boolean p2, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/q;->u:Z

    .line 67
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/q;->d()V

    return-void
.end method

.method private d()V
    .locals 3

    .line 73
    iget-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/q;->u:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/q;->s:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lcom/mh/movie/core/R$layout;->dialog_share_video_layout:I

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/q;->c:Landroid/view/View;

    goto :goto_0

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/q;->s:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lcom/mh/movie/core/R$layout;->dialog_share_video_gif_layout:I

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/q;->c:Landroid/view/View;

    .line 78
    :goto_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/q;->c:Landroid/view/View;

    sget v1, Lcom/mh/movie/core/R$id;->ll_share_moments:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/q;->e:Landroid/widget/LinearLayout;

    .line 79
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/q;->c:Landroid/view/View;

    sget v1, Lcom/mh/movie/core/R$id;->ll_share_wechat:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/q;->d:Landroid/widget/LinearLayout;

    .line 80
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/q;->c:Landroid/view/View;

    sget v1, Lcom/mh/movie/core/R$id;->ll_share_qq:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/q;->f:Landroid/widget/LinearLayout;

    .line 81
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/q;->c:Landroid/view/View;

    sget v1, Lcom/mh/movie/core/R$id;->ll_share_qzone:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/q;->g:Landroid/widget/LinearLayout;

    .line 82
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/q;->c:Landroid/view/View;

    sget v1, Lcom/mh/movie/core/R$id;->ll_share_web:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/q;->h:Landroid/widget/LinearLayout;

    .line 83
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/q;->c:Landroid/view/View;

    sget v1, Lcom/mh/movie/core/R$id;->cancel:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/q;->l:Landroid/widget/TextView;

    .line 85
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/q;->c:Landroid/view/View;

    sget v1, Lcom/mh/movie/core/R$id;->tv_video_share_cancel:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/q;->l:Landroid/widget/TextView;

    .line 86
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/q;->c:Landroid/view/View;

    sget v1, Lcom/mh/movie/core/R$id;->iv_video_share_shot:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/q;->j:Landroid/widget/ImageView;

    .line 87
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/q;->c:Landroid/view/View;

    sget v1, Lcom/mh/movie/core/R$id;->ll_share_save_pic:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/q;->i:Landroid/widget/LinearLayout;

    .line 89
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/q;->c:Landroid/view/View;

    sget v1, Lcom/mh/movie/core/R$id;->ll_share_shot_contains:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/q;->k:Landroid/widget/RelativeLayout;

    .line 92
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/q;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/q;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/q;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/q;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/q;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/q;->l:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/q;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/q;->e()V

    return-void
.end method

.method private e()V
    .locals 8

    .line 113
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/q;->s:Landroid/content/Context;

    invoke-static {v0}, Lcom/jess/arms/c/a;->c(Landroid/content/Context;)I

    move-result v0

    .line 114
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/q;->s:Landroid/content/Context;

    invoke-static {v1}, Lcom/jess/arms/c/a;->b(Landroid/content/Context;)I

    move-result v1

    .line 116
    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/q;->s:Landroid/content/Context;

    invoke-static {v2}, Lcom/mh/movie/core/mvp/ui/utils/UIUtils;->scanForActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/jess/arms/c/a;->a(Landroid/app/Activity;)I

    move-result v2

    .line 119
    iget-object v3, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/q;->k:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    int-to-double v4, v0

    const-wide v6, 0x3fbc28f5c28f5c29L    # 0.11

    mul-double v4, v4, v6

    double-to-float v0, v4

    int-to-double v4, v1

    mul-double v4, v4, v6

    double-to-float v1, v4

    float-to-int v0, v0

    .line 123
    iput v0, v3, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v0, v2

    .line 124
    iput v0, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    float-to-int v1, v1

    .line 125
    iput v1, v3, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 126
    iput v1, v3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 128
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/q;->k:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 131
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/q;->l:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 132
    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 133
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/q;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 155
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/q;->b:Landroid/app/Dialog;

    if-nez v0, :cond_0

    .line 156
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/q;->s:Landroid/content/Context;

    sget v2, Lcom/mh/movie/core/R$style;->AppDialogFullStyle:I

    invoke-direct {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/q;->b:Landroid/app/Dialog;

    .line 158
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/q;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    sget v1, Lcom/mh/movie/core/R$style;->dialogWindowAnim:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    goto :goto_0

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/q;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 163
    :goto_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/q;->b:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/q;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 166
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/q;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x50

    .line 167
    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    .line 168
    sget v1, Lcom/mh/movie/core/R$style;->AnimBottom:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    const/high16 v1, 0x20000

    .line 170
    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    const/4 v1, -0x1

    const/4 v2, -0x2

    .line 171
    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    return-void
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .locals 1

    const/4 v0, 0x1

    .line 138
    iput v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/q;->p:I

    .line 139
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/q;->q:Landroid/graphics/Bitmap;

    if-nez p1, :cond_0

    return-void

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/q;->s:Landroid/content/Context;

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestManager;->load(Landroid/graphics/Bitmap;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/q;->j:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    return-void
.end method

.method public a(Lcom/mh/movie/core/mvp/ui/widget/dialog/q$a;)V
    .locals 0

    .line 274
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/q;->t:Lcom/mh/movie/core/mvp/ui/widget/dialog/q$a;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x2

    .line 148
    iput v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/q;->p:I

    .line 149
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/q;->r:Ljava/lang/String;

    if-nez p1, :cond_0

    return-void

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/q;->s:Landroid/content/Context;

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/q;->j:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    return-void
.end method

.method public b()V
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/q;->t:Lcom/mh/movie/core/mvp/ui/widget/dialog/q$a;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/q;->t:Lcom/mh/movie/core/mvp/ui/widget/dialog/q$a;

    invoke-interface {v0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/q$a;->a()V

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/q;->b:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/q;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 181
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/q;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_1
    return-void
.end method

.method final synthetic c()V
    .locals 2

    .line 250
    iget v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/q;->p:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 251
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/q;->s:Landroid/content/Context;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/utils/UIUtils;->scanForActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/q;->q:Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Lcom/mh/movie/core/mvp/ui/utils/BitmapUtil;->save2Album(Landroid/app/Activity;Landroid/graphics/Bitmap;)Z

    goto :goto_0

    .line 252
    :cond_0
    iget v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/q;->p:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 253
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/q;->s:Landroid/content/Context;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/q;->r:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/mh/movie/core/mvp/ui/utils/BitmapUtil;->save2GifAlbum(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 211
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 212
    sget v0, Lcom/mh/movie/core/R$id;->cancel:I

    if-ne p1, v0, :cond_0

    goto/16 :goto_0

    .line 214
    :cond_0
    sget v0, Lcom/mh/movie/core/R$id;->ll_share_moments:I

    if-ne p1, v0, :cond_1

    .line 217
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/q;->a:Lcom/mh/movie/core/mvp/ui/widget/dialog/q$b;

    if-eqz p1, :cond_8

    .line 218
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/q;->a:Lcom/mh/movie/core/mvp/ui/widget/dialog/q$b;

    invoke-interface {p1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/q$b;->a()V

    goto :goto_0

    .line 219
    :cond_1
    sget v0, Lcom/mh/movie/core/R$id;->ll_share_wechat:I

    if-ne p1, v0, :cond_2

    .line 222
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/q;->a:Lcom/mh/movie/core/mvp/ui/widget/dialog/q$b;

    if-eqz p1, :cond_8

    .line 223
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/q;->a:Lcom/mh/movie/core/mvp/ui/widget/dialog/q$b;

    invoke-interface {p1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/q$b;->b()V

    goto :goto_0

    .line 224
    :cond_2
    sget v0, Lcom/mh/movie/core/R$id;->ll_share_qq:I

    if-ne p1, v0, :cond_3

    .line 227
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/q;->a:Lcom/mh/movie/core/mvp/ui/widget/dialog/q$b;

    if-eqz p1, :cond_8

    .line 228
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/q;->a:Lcom/mh/movie/core/mvp/ui/widget/dialog/q$b;

    invoke-interface {p1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/q$b;->c()V

    goto :goto_0

    .line 229
    :cond_3
    sget v0, Lcom/mh/movie/core/R$id;->ll_share_qzone:I

    if-ne p1, v0, :cond_4

    .line 232
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/q;->a:Lcom/mh/movie/core/mvp/ui/widget/dialog/q$b;

    if-eqz p1, :cond_8

    .line 233
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/q;->a:Lcom/mh/movie/core/mvp/ui/widget/dialog/q$b;

    invoke-interface {p1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/q$b;->d()V

    goto :goto_0

    .line 234
    :cond_4
    sget v0, Lcom/mh/movie/core/R$id;->ll_share_web:I

    if-ne p1, v0, :cond_5

    .line 237
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/q;->a:Lcom/mh/movie/core/mvp/ui/widget/dialog/q$b;

    if-eqz p1, :cond_8

    .line 238
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/q;->a:Lcom/mh/movie/core/mvp/ui/widget/dialog/q$b;

    invoke-interface {p1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/q$b;->e()V

    goto :goto_0

    .line 239
    :cond_5
    sget v0, Lcom/mh/movie/core/R$id;->ll_copy_link:I

    if-ne p1, v0, :cond_6

    .line 242
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/q;->a:Lcom/mh/movie/core/mvp/ui/widget/dialog/q$b;

    if-eqz p1, :cond_8

    .line 243
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/q;->a:Lcom/mh/movie/core/mvp/ui/widget/dialog/q$b;

    invoke-interface {p1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/q$b;->f()V

    goto :goto_0

    .line 244
    :cond_6
    sget v0, Lcom/mh/movie/core/R$id;->tv_video_share_cancel:I

    if-ne p1, v0, :cond_7

    .line 245
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/q;->b()V

    goto :goto_0

    .line 246
    :cond_7
    sget v0, Lcom/mh/movie/core/R$id;->ll_share_save_pic:I

    if-ne p1, v0, :cond_8

    .line 249
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/q;->s:Landroid/content/Context;

    sget-object v0, Lcom/mh/movie/core/mvp/ui/utils/PermissionUtils;->EXTERNAL_GROUP:[Ljava/lang/String;

    new-instance v1, Lcom/mh/movie/core/mvp/ui/widget/dialog/r;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/r;-><init>(Lcom/mh/movie/core/mvp/ui/widget/dialog/q;)V

    invoke-static {p1, v0, v1}, Lcom/mh/movie/core/mvp/ui/utils/PermissionUtils;->requestPermission(Landroid/content/Context;[Ljava/lang/String;Lcom/mh/movie/core/mvp/ui/utils/PermissionUtils$PermissionCallback;)V

    :cond_8
    :goto_0
    return-void
.end method
