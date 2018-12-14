.class Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$1;
.super Ljava/lang/Object;
.source "LandLayoutVideo.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;)V
    .locals 0

    .line 246
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$1;->a:Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 249
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 251
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$1;->a:Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->a(Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;)I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    return-void

    .line 253
    :cond_0
    sget v0, Lcom/mh/movie/core/R$id;->iv_player_video_setting:I

    if-ne p1, v0, :cond_1

    .line 254
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$1;->a:Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;

    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->F:Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$b;

    if-eqz p1, :cond_e

    .line 255
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$1;->a:Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;

    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->F:Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$b;

    invoke-interface {p1}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$b;->c()V

    .line 256
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$1;->a:Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->hideAllWidget()V

    goto/16 :goto_0

    .line 262
    :cond_1
    sget v0, Lcom/mh/movie/core/R$id;->iv_video_land_setting_close:I

    if-ne p1, v0, :cond_2

    .line 263
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$1;->a:Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->r()V

    goto/16 :goto_0

    .line 264
    :cond_2
    sget v0, Lcom/mh/movie/core/R$id;->iv_video_land_skip_head_and_tail:I

    if-ne p1, v0, :cond_3

    .line 265
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$1;->a:Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$1;->a:Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->z:Landroid/widget/ImageView;

    invoke-static {p1, v0}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->a(Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;Landroid/widget/ImageView;)V

    goto/16 :goto_0

    .line 266
    :cond_3
    sget v0, Lcom/mh/movie/core/R$id;->iv_video_land_continuous_play:I

    if-ne p1, v0, :cond_4

    .line 267
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$1;->a:Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$1;->a:Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;

    iget-object v0, v0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->A:Landroid/widget/ImageView;

    invoke-static {p1, v0}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->a(Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;Landroid/widget/ImageView;)V

    goto/16 :goto_0

    .line 268
    :cond_4
    sget v0, Lcom/mh/movie/core/R$id;->iv_player_video_next:I

    if-ne p1, v0, :cond_5

    .line 269
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$1;->a:Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;

    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->F:Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$b;

    if-eqz p1, :cond_e

    .line 270
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$1;->a:Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->S:Z

    .line 271
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$1;->a:Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;

    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->F:Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$b;

    invoke-interface {p1}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$b;->e()V

    goto/16 :goto_0

    .line 273
    :cond_5
    sget v0, Lcom/mh/movie/core/R$id;->btn_video_hd_choice:I

    if-ne p1, v0, :cond_6

    .line 276
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$1;->a:Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;

    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->F:Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$b;

    if-eqz p1, :cond_e

    .line 277
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$1;->a:Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;

    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->F:Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$b;

    invoke-interface {p1}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$b;->a()V

    .line 278
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$1;->a:Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->hideAllWidget()V

    goto/16 :goto_0

    .line 280
    :cond_6
    sget v0, Lcom/mh/movie/core/R$id;->btn_video_tv_part_choice:I

    if-ne p1, v0, :cond_7

    .line 282
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$1;->a:Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;

    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->F:Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$b;

    if-eqz p1, :cond_e

    .line 283
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$1;->a:Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;

    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->F:Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$b;

    invoke-interface {p1}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$b;->b()V

    .line 284
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$1;->a:Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->hideAllWidget()V

    goto :goto_0

    .line 293
    :cond_7
    sget v0, Lcom/mh/movie/core/R$id;->ll_video_land_screen_lock:I

    if-ne p1, v0, :cond_9

    .line 295
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$1;->a:Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;

    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->P:Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$a;

    if-eqz p1, :cond_8

    .line 296
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$1;->a:Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;

    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->P:Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$a;

    invoke-interface {p1}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$a;->a()V

    .line 299
    :cond_8
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$1;->a:Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->l()V

    goto :goto_0

    .line 301
    :cond_9
    sget v0, Lcom/mh/movie/core/R$id;->iv_player_video_danma_toggle:I

    if-ne p1, v0, :cond_a

    .line 302
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$1;->a:Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->b(Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;)V

    .line 303
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$1;->a:Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->d()V

    goto :goto_0

    .line 305
    :cond_a
    sget v0, Lcom/mh/movie/core/R$id;->iv_player_video_share:I

    if-ne p1, v0, :cond_b

    .line 306
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$1;->a:Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;

    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->F:Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$b;

    if-eqz p1, :cond_e

    .line 307
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$1;->a:Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;

    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->F:Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$b;

    invoke-interface {p1}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$b;->d()V

    .line 308
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$1;->a:Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->hideAllWidget()V

    goto :goto_0

    .line 310
    :cond_b
    sget v0, Lcom/mh/movie/core/R$id;->iv_video_shot:I

    if-ne p1, v0, :cond_d

    .line 312
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$1;->a:Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->c(Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;)I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_c

    .line 313
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$1;->a:Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->d(Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;)Landroid/content/Context;

    move-result-object p1

    const-string v0, "\u622a\u5c4f\u529f\u80fd\u6682\u4e0d\u53ef\u7528\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5"

    const/16 v1, 0x3e8

    invoke-static {p1, v0, v1}, Lcom/mh/movie/core/mvp/ui/utils/T;->show(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    return-void

    .line 317
    :cond_c
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$1;->a:Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->h()V

    goto :goto_0

    .line 321
    :cond_d
    sget v0, Lcom/mh/movie/core/R$id;->btn_video_speed_bit_choice:I

    if-ne p1, v0, :cond_e

    .line 322
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo$1;->a:Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;->e(Lcom/mh/movie/core/mvp/ui/activity/player/LandLayoutVideo;)V

    :cond_e
    :goto_0
    return-void
.end method
