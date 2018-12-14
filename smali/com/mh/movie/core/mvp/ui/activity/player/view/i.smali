.class public Lcom/mh/movie/core/mvp/ui/activity/player/view/i;
.super Lcom/mh/movie/core/mvp/ui/activity/player/view/a;
.source "VideoSpeedPlayView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mh/movie/core/mvp/ui/activity/player/view/i$a;,
        Lcom/mh/movie/core/mvp/ui/activity/player/view/i$b;
    }
.end annotation


# static fields
.field public static e:I = 0x1


# instance fields
.field f:Landroid/widget/TextView;

.field g:Landroid/widget/TextView;

.field h:Landroid/widget/TextView;

.field i:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/view/a;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/player/view/a;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private a(Landroid/widget/TextView;)V
    .locals 2

    .line 121
    sget v0, Lcom/mh/movie/core/R$drawable;->border_4_empty_gray:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 122
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/view/i;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/mh/movie/core/R$color;->grey_eee:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method private b(Landroid/widget/TextView;)V
    .locals 2

    .line 126
    sget v0, Lcom/mh/movie/core/R$drawable;->border_4_empty_orange:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 127
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/view/i;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/mh/movie/core/R$color;->orange_ff4f66:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method


# virtual methods
.method public a(I)Lcom/mh/movie/core/mvp/ui/activity/player/view/i$a;
    .locals 14

    packed-switch p1, :pswitch_data_0

    .line 146
    new-instance p1, Lcom/mh/movie/core/mvp/ui/activity/player/view/i$a;

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const-string v4, "\u500d\u901f"

    const/4 v5, 0x1

    const-string v6, "\u6b63\u5728\u4ee5\u6b63\u5e38\u901f\u5ea6\u64ad\u653e"

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/mh/movie/core/mvp/ui/activity/player/view/i$a;-><init>(Lcom/mh/movie/core/mvp/ui/activity/player/view/i;FFLjava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 143
    :pswitch_0
    new-instance p1, Lcom/mh/movie/core/mvp/ui/activity/player/view/i$a;

    const/high16 v2, 0x40000000    # 2.0f

    const v3, 0x3f19999a    # 0.6f

    const-string v4, "2.0x"

    const/4 v5, 0x2

    const-string v6, "\u6b63\u5728\u4ee52.0x\u500d\u6570\u64ad\u653e"

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/mh/movie/core/mvp/ui/activity/player/view/i$a;-><init>(Lcom/mh/movie/core/mvp/ui/activity/player/view/i;FFLjava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 140
    :pswitch_1
    new-instance p1, Lcom/mh/movie/core/mvp/ui/activity/player/view/i$a;

    const/high16 v9, 0x3fc00000    # 1.5f

    const v10, 0x3f4ccccd    # 0.8f

    const-string v11, "1.5x"

    const/4 v12, 0x2

    const-string v13, "\u6b63\u5728\u4ee51.5x\u500d\u6570\u64ad\u653e"

    move-object v7, p1

    move-object v8, p0

    invoke-direct/range {v7 .. v13}, Lcom/mh/movie/core/mvp/ui/activity/player/view/i$a;-><init>(Lcom/mh/movie/core/mvp/ui/activity/player/view/i;FFLjava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 137
    :pswitch_2
    new-instance p1, Lcom/mh/movie/core/mvp/ui/activity/player/view/i$a;

    const/high16 v2, 0x3fa00000    # 1.25f

    const v3, 0x3f666666    # 0.9f

    const-string v4, "1.25x"

    const/4 v5, 0x2

    const-string v6, "\u6b63\u5728\u4ee51.25x\u500d\u6570\u64ad\u653e"

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/mh/movie/core/mvp/ui/activity/player/view/i$a;-><init>(Lcom/mh/movie/core/mvp/ui/activity/player/view/i;FFLjava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 134
    :pswitch_3
    new-instance p1, Lcom/mh/movie/core/mvp/ui/activity/player/view/i$a;

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const-string v11, "\u500d\u901f"

    const/4 v12, 0x1

    const-string v13, "\u6b63\u5728\u4ee5\u6b63\u5e38\u901f\u5ea6\u64ad\u653e"

    move-object v7, p1

    move-object v8, p0

    invoke-direct/range {v7 .. v13}, Lcom/mh/movie/core/mvp/ui/activity/player/view/i$a;-><init>(Lcom/mh/movie/core/mvp/ui/activity/player/view/i;FFLjava/lang/String;ILjava/lang/String;)V

    :goto_0
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(IZ)V
    .locals 3

    .line 85
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/view/i;->f:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/player/view/i;->a(Landroid/widget/TextView;)V

    .line 86
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/view/i;->g:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/player/view/i;->a(Landroid/widget/TextView;)V

    .line 87
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/view/i;->h:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/player/view/i;->a(Landroid/widget/TextView;)V

    .line 88
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/view/i;->i:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/player/view/i;->a(Landroid/widget/TextView;)V

    .line 91
    sput p1, Lcom/mh/movie/core/mvp/ui/activity/player/view/i;->e:I

    .line 93
    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/player/view/i;->a(I)Lcom/mh/movie/core/mvp/ui/activity/player/view/i$a;

    move-result-object v0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 106
    :pswitch_0
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/view/i;->i:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/player/view/i;->b(Landroid/widget/TextView;)V

    goto :goto_0

    .line 103
    :pswitch_1
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/view/i;->h:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/player/view/i;->b(Landroid/widget/TextView;)V

    goto :goto_0

    .line 100
    :pswitch_2
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/view/i;->g:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/player/view/i;->b(Landroid/widget/TextView;)V

    goto :goto_0

    .line 97
    :pswitch_3
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/view/i;->f:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/player/view/i;->b(Landroid/widget/TextView;)V

    :goto_0
    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 113
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/view/i;->d:Lcom/mh/movie/core/mvp/ui/activity/player/view/d;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/view/i;->d:Lcom/mh/movie/core/mvp/ui/activity/player/view/d;

    instance-of p1, p1, Lcom/mh/movie/core/mvp/ui/activity/player/view/i$b;

    if-eqz p1, :cond_1

    .line 114
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/view/i;->d:Lcom/mh/movie/core/mvp/ui/activity/player/view/d;

    check-cast p1, Lcom/mh/movie/core/mvp/ui/activity/player/view/i$b;

    iget p2, v0, Lcom/mh/movie/core/mvp/ui/activity/player/view/i$a;->a:F

    iget v1, v0, Lcom/mh/movie/core/mvp/ui/activity/player/view/i$a;->b:F

    iget-object v2, v0, Lcom/mh/movie/core/mvp/ui/activity/player/view/i$a;->c:Ljava/lang/String;

    invoke-interface {p1, p2, v1, v2}, Lcom/mh/movie/core/mvp/ui/activity/player/view/i$b;->a(FFLjava/lang/String;)V

    .line 115
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/view/i;->b:Landroid/content/Context;

    iget-object p2, v0, Lcom/mh/movie/core/mvp/ui/activity/player/view/i$a;->e:Ljava/lang/String;

    const/16 v0, 0x3e8

    invoke-static {p1, p2, v0}, Lcom/mh/movie/core/mvp/ui/utils/T;->show(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected b()I
    .locals 1

    .line 37
    sget v0, Lcom/mh/movie/core/R$layout;->view_video_speed_play:I

    return v0
.end method

.method protected d()V
    .locals 2

    .line 42
    invoke-super {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/view/a;->d()V

    .line 45
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/view/i;->c:Landroid/view/View;

    sget v1, Lcom/mh/movie/core/R$id;->tv_video_speed_bit_one:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/view/i;->f:Landroid/widget/TextView;

    .line 46
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/view/i;->c:Landroid/view/View;

    sget v1, Lcom/mh/movie/core/R$id;->tv_video_speed_bit_two:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/view/i;->g:Landroid/widget/TextView;

    .line 47
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/view/i;->c:Landroid/view/View;

    sget v1, Lcom/mh/movie/core/R$id;->tv_video_speed_bit_three:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/view/i;->h:Landroid/widget/TextView;

    .line 48
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/view/i;->c:Landroid/view/View;

    sget v1, Lcom/mh/movie/core/R$id;->tv_video_speed_bit_four:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/view/i;->i:Landroid/widget/TextView;

    .line 50
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/view/i;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/view/i;->g:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/view/i;->h:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/view/i;->i:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected e()V
    .locals 2

    .line 59
    invoke-super {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/view/a;->e()V

    .line 62
    sget v0, Lcom/mh/movie/core/mvp/ui/activity/player/view/i;->e:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/mh/movie/core/mvp/ui/activity/player/view/i;->a(IZ)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 69
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 71
    sget v0, Lcom/mh/movie/core/R$id;->tv_video_speed_bit_one:I

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    .line 72
    invoke-virtual {p0, v1, v1}, Lcom/mh/movie/core/mvp/ui/activity/player/view/i;->a(IZ)V

    goto :goto_0

    .line 73
    :cond_0
    sget v0, Lcom/mh/movie/core/R$id;->tv_video_speed_bit_two:I

    if-ne p1, v0, :cond_1

    const/4 p1, 0x2

    .line 74
    invoke-virtual {p0, p1, v1}, Lcom/mh/movie/core/mvp/ui/activity/player/view/i;->a(IZ)V

    goto :goto_0

    .line 75
    :cond_1
    sget v0, Lcom/mh/movie/core/R$id;->tv_video_speed_bit_three:I

    if-ne p1, v0, :cond_2

    const/4 p1, 0x3

    .line 76
    invoke-virtual {p0, p1, v1}, Lcom/mh/movie/core/mvp/ui/activity/player/view/i;->a(IZ)V

    goto :goto_0

    .line 77
    :cond_2
    sget v0, Lcom/mh/movie/core/R$id;->tv_video_speed_bit_four:I

    if-ne p1, v0, :cond_3

    const/4 p1, 0x4

    .line 78
    invoke-virtual {p0, p1, v1}, Lcom/mh/movie/core/mvp/ui/activity/player/view/i;->a(IZ)V

    :cond_3
    :goto_0
    return-void
.end method
