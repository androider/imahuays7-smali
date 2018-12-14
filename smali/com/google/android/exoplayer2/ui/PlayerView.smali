.class public Lcom/google/android/exoplayer2/ui/PlayerView;
.super Landroid/widget/FrameLayout;
.source "PlayerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/ui/PlayerView$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

.field private final b:Landroid/view/View;

.field private final c:Landroid/view/View;

.field private final d:Landroid/widget/ImageView;

.field private final e:Lcom/google/android/exoplayer2/ui/SubtitleView;

.field private final f:Landroid/view/View;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final g:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final h:Lcom/google/android/exoplayer2/ui/PlayerControlView;

.field private final i:Lcom/google/android/exoplayer2/ui/PlayerView$a;

.field private final j:Landroid/widget/FrameLayout;

.field private k:Lcom/google/android/exoplayer2/v;

.field private l:Z

.field private m:Z

.field private n:Landroid/graphics/Bitmap;

.field private o:Z

.field private p:Z

.field private q:Lcom/google/android/exoplayer2/util/g;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/util/g<",
            "-",
            "Lcom/google/android/exoplayer2/ExoPlaybackException;",
            ">;"
        }
    .end annotation
.end field

.field private r:Ljava/lang/CharSequence;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private s:I

.field private t:Z

.field private u:Z

.field private v:Z

.field private w:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 261
    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/ui/PlayerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 265
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/ui/PlayerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    .line 269
    invoke-direct/range {p0 .. p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 271
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->isInEditMode()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    .line 272
    iput-object v5, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->a:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    .line 273
    iput-object v5, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->b:Landroid/view/View;

    .line 274
    iput-object v5, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->c:Landroid/view/View;

    .line 275
    iput-object v5, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->d:Landroid/widget/ImageView;

    .line 276
    iput-object v5, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->e:Lcom/google/android/exoplayer2/ui/SubtitleView;

    .line 277
    iput-object v5, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->f:Landroid/view/View;

    .line 278
    iput-object v5, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->g:Landroid/widget/TextView;

    .line 279
    iput-object v5, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->h:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    .line 280
    iput-object v5, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->i:Lcom/google/android/exoplayer2/ui/PlayerView$a;

    .line 281
    iput-object v5, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->j:Landroid/widget/FrameLayout;

    .line 282
    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 283
    sget v2, Lcom/google/android/exoplayer2/util/aa;->a:I

    const/16 v4, 0x17

    if-lt v2, v4, :cond_0

    .line 284
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/ui/PlayerView;->a(Landroid/content/res/Resources;Landroid/widget/ImageView;)V

    goto :goto_0

    .line 286
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/ui/PlayerView;->b(Landroid/content/res/Resources;Landroid/widget/ImageView;)V

    .line 288
    :goto_0
    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/ui/PlayerView;->addView(Landroid/view/View;)V

    return-void

    .line 294
    :cond_1
    sget v4, Lcom/google/android/exoplayer2/ui/R$layout;->exo_player_view:I

    const/16 v6, 0x1388

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v3, :cond_2

    .line 306
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v9

    sget-object v10, Lcom/google/android/exoplayer2/ui/R$styleable;->PlayerView:[I

    invoke-virtual {v9, v3, v10, v8, v8}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v9

    .line 308
    :try_start_0
    sget v10, Lcom/google/android/exoplayer2/ui/R$styleable;->PlayerView_shutter_background_color:I

    invoke-virtual {v9, v10}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v10

    .line 309
    sget v11, Lcom/google/android/exoplayer2/ui/R$styleable;->PlayerView_shutter_background_color:I

    invoke-virtual {v9, v11, v8}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v11

    .line 310
    sget v12, Lcom/google/android/exoplayer2/ui/R$styleable;->PlayerView_player_layout_id:I

    invoke-virtual {v9, v12, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 311
    sget v12, Lcom/google/android/exoplayer2/ui/R$styleable;->PlayerView_use_artwork:I

    invoke-virtual {v9, v12, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v12

    .line 312
    sget v13, Lcom/google/android/exoplayer2/ui/R$styleable;->PlayerView_default_artwork:I

    .line 313
    invoke-virtual {v9, v13, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v13

    .line 314
    sget v14, Lcom/google/android/exoplayer2/ui/R$styleable;->PlayerView_use_controller:I

    invoke-virtual {v9, v14, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v14

    .line 315
    sget v15, Lcom/google/android/exoplayer2/ui/R$styleable;->PlayerView_surface_type:I

    invoke-virtual {v9, v15, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v15

    .line 316
    sget v5, Lcom/google/android/exoplayer2/ui/R$styleable;->PlayerView_resize_mode:I

    invoke-virtual {v9, v5, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 317
    sget v8, Lcom/google/android/exoplayer2/ui/R$styleable;->PlayerView_show_timeout:I

    .line 318
    invoke-virtual {v9, v8, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    .line 319
    sget v8, Lcom/google/android/exoplayer2/ui/R$styleable;->PlayerView_hide_on_touch:I

    .line 320
    invoke-virtual {v9, v8, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    move/from16 v16, v4

    .line 321
    sget v4, Lcom/google/android/exoplayer2/ui/R$styleable;->PlayerView_auto_show:I

    invoke-virtual {v9, v4, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    .line 322
    sget v7, Lcom/google/android/exoplayer2/ui/R$styleable;->PlayerView_show_buffering:I

    move/from16 v17, v4

    const/4 v4, 0x0

    invoke-virtual {v9, v7, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    .line 323
    sget v4, Lcom/google/android/exoplayer2/ui/R$styleable;->PlayerView_keep_content_on_player_reset:I

    move/from16 v18, v5

    iget-boolean v5, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->p:Z

    .line 324
    invoke-virtual {v9, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->p:Z

    .line 326
    sget v4, Lcom/google/android/exoplayer2/ui/R$styleable;->PlayerView_hide_during_ads:I

    const/4 v5, 0x1

    .line 327
    invoke-virtual {v9, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 329
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    move v5, v4

    move/from16 v19, v6

    move v9, v8

    move/from16 v4, v16

    move/from16 v6, v18

    move/from16 v16, v14

    move/from16 v14, v17

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v2, v0

    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    throw v2

    :cond_2
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x1

    const/16 v16, 0x1

    const/16 v19, 0x1388

    .line 333
    :goto_1
    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    invoke-virtual {v8, v4, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 334
    new-instance v4, Lcom/google/android/exoplayer2/ui/PlayerView$a;

    const/4 v8, 0x0

    invoke-direct {v4, v1, v8}, Lcom/google/android/exoplayer2/ui/PlayerView$a;-><init>(Lcom/google/android/exoplayer2/ui/PlayerView;Lcom/google/android/exoplayer2/ui/PlayerView$1;)V

    iput-object v4, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->i:Lcom/google/android/exoplayer2/ui/PlayerView$a;

    const/high16 v4, 0x40000

    .line 335
    invoke-virtual {v1, v4}, Lcom/google/android/exoplayer2/ui/PlayerView;->setDescendantFocusability(I)V

    .line 338
    sget v4, Lcom/google/android/exoplayer2/ui/R$id;->exo_content_frame:I

    invoke-virtual {v1, v4}, Lcom/google/android/exoplayer2/ui/PlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    iput-object v4, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->a:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    .line 339
    iget-object v4, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->a:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    if-eqz v4, :cond_3

    .line 340
    iget-object v4, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->a:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-static {v4, v6}, Lcom/google/android/exoplayer2/ui/PlayerView;->a(Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;I)V

    .line 344
    :cond_3
    sget v4, Lcom/google/android/exoplayer2/ui/R$id;->exo_shutter:I

    invoke-virtual {v1, v4}, Lcom/google/android/exoplayer2/ui/PlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->b:Landroid/view/View;

    .line 345
    iget-object v4, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->b:Landroid/view/View;

    if-eqz v4, :cond_4

    if-eqz v10, :cond_4

    .line 346
    iget-object v4, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->b:Landroid/view/View;

    invoke-virtual {v4, v11}, Landroid/view/View;->setBackgroundColor(I)V

    .line 350
    :cond_4
    iget-object v4, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->a:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    if-eqz v4, :cond_6

    if-eqz v15, :cond_6

    .line 351
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    const/4 v6, -0x1

    invoke-direct {v4, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    const/4 v6, 0x2

    if-ne v15, v6, :cond_5

    .line 354
    new-instance v6, Landroid/view/TextureView;

    invoke-direct {v6, v2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    goto :goto_2

    :cond_5
    new-instance v6, Landroid/view/SurfaceView;

    invoke-direct {v6, v2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    :goto_2
    iput-object v6, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->c:Landroid/view/View;

    .line 358
    iget-object v6, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->c:Landroid/view/View;

    invoke-virtual {v6, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 359
    iget-object v4, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->a:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    iget-object v6, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->c:Landroid/view/View;

    const/4 v8, 0x0

    invoke-virtual {v4, v6, v8}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->addView(Landroid/view/View;I)V

    goto :goto_3

    :cond_6
    const/4 v4, 0x0

    .line 361
    iput-object v4, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->c:Landroid/view/View;

    .line 365
    :goto_3
    sget v4, Lcom/google/android/exoplayer2/ui/R$id;->exo_overlay:I

    invoke-virtual {v1, v4}, Lcom/google/android/exoplayer2/ui/PlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    iput-object v4, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->j:Landroid/widget/FrameLayout;

    .line 368
    sget v4, Lcom/google/android/exoplayer2/ui/R$id;->exo_artwork:I

    invoke-virtual {v1, v4}, Lcom/google/android/exoplayer2/ui/PlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->d:Landroid/widget/ImageView;

    if-eqz v12, :cond_7

    .line 369
    iget-object v4, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->d:Landroid/widget/ImageView;

    if-eqz v4, :cond_7

    const/4 v4, 0x1

    goto :goto_4

    :cond_7
    const/4 v4, 0x0

    :goto_4
    iput-boolean v4, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->m:Z

    if-eqz v13, :cond_8

    .line 371
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v4, v13}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->n:Landroid/graphics/Bitmap;

    .line 375
    :cond_8
    sget v4, Lcom/google/android/exoplayer2/ui/R$id;->exo_subtitles:I

    invoke-virtual {v1, v4}, Lcom/google/android/exoplayer2/ui/PlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/ui/SubtitleView;

    iput-object v4, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->e:Lcom/google/android/exoplayer2/ui/SubtitleView;

    .line 376
    iget-object v4, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->e:Lcom/google/android/exoplayer2/ui/SubtitleView;

    if-eqz v4, :cond_9

    .line 377
    iget-object v4, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->e:Lcom/google/android/exoplayer2/ui/SubtitleView;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/ui/SubtitleView;->b()V

    .line 378
    iget-object v4, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->e:Lcom/google/android/exoplayer2/ui/SubtitleView;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/ui/SubtitleView;->a()V

    .line 382
    :cond_9
    sget v4, Lcom/google/android/exoplayer2/ui/R$id;->exo_buffering:I

    invoke-virtual {v1, v4}, Lcom/google/android/exoplayer2/ui/PlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->f:Landroid/view/View;

    .line 383
    iget-object v4, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->f:Landroid/view/View;

    const/16 v6, 0x8

    if-eqz v4, :cond_a

    .line 384
    iget-object v4, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->f:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 386
    :cond_a
    iput-boolean v7, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->o:Z

    .line 389
    sget v4, Lcom/google/android/exoplayer2/ui/R$id;->exo_error_message:I

    invoke-virtual {v1, v4}, Lcom/google/android/exoplayer2/ui/PlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->g:Landroid/widget/TextView;

    .line 390
    iget-object v4, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->g:Landroid/widget/TextView;

    if-eqz v4, :cond_b

    .line 391
    iget-object v4, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->g:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 395
    :cond_b
    sget v4, Lcom/google/android/exoplayer2/ui/R$id;->exo_controller:I

    invoke-virtual {v1, v4}, Lcom/google/android/exoplayer2/ui/PlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/ui/PlayerControlView;

    .line 396
    sget v6, Lcom/google/android/exoplayer2/ui/R$id;->exo_controller_placeholder:I

    invoke-virtual {v1, v6}, Lcom/google/android/exoplayer2/ui/PlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    if-eqz v4, :cond_c

    .line 398
    iput-object v4, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->h:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    const/4 v8, 0x0

    goto :goto_5

    :cond_c
    if-eqz v6, :cond_d

    .line 402
    new-instance v4, Lcom/google/android/exoplayer2/ui/PlayerControlView;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {v4, v2, v7, v8, v3}, Lcom/google/android/exoplayer2/ui/PlayerControlView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/util/AttributeSet;)V

    iput-object v4, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->h:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    .line 403
    iget-object v2, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->h:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 404
    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 405
    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v3

    .line 406
    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 407
    iget-object v4, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->h:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-virtual {v2, v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_5

    :cond_d
    const/4 v2, 0x0

    const/4 v8, 0x0

    .line 409
    iput-object v2, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->h:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    .line 411
    :goto_5
    iget-object v2, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->h:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    if-eqz v2, :cond_e

    move/from16 v2, v19

    goto :goto_6

    :cond_e
    const/4 v2, 0x0

    :goto_6
    iput v2, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->s:I

    .line 412
    iput-boolean v9, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->v:Z

    .line 413
    iput-boolean v14, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->t:Z

    .line 414
    iput-boolean v5, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->u:Z

    if-eqz v16, :cond_f

    .line 415
    iget-object v2, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->h:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    if-eqz v2, :cond_f

    const/4 v8, 0x1

    :cond_f
    iput-boolean v8, v1, Lcom/google/android/exoplayer2/ui/PlayerView;->l:Z

    .line 416
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->b()V

    return-void
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/ui/PlayerView;I)I
    .locals 0

    .line 229
    iput p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->w:I

    return p1
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/ui/PlayerView;)Lcom/google/android/exoplayer2/ui/SubtitleView;
    .locals 0

    .line 229
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->e:Lcom/google/android/exoplayer2/ui/SubtitleView;

    return-object p0
.end method

.method private static a(Landroid/content/res/Resources;Landroid/widget/ImageView;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .line 1120
    sget v0, Lcom/google/android/exoplayer2/ui/R$drawable;->exo_edit_mode_logo:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1121
    sget v0, Lcom/google/android/exoplayer2/ui/R$color;->exo_edit_mode_background_color:I

    invoke-virtual {p0, v0, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    return-void
.end method

.method static synthetic a(Landroid/view/TextureView;I)V
    .locals 0

    .line 229
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/ui/PlayerView;->b(Landroid/view/TextureView;I)V

    return-void
.end method

.method private static a(Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;I)V
    .locals 0

    .line 1132
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->setResizeMode(I)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/ui/PlayerView;Z)V
    .locals 0

    .line 229
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/PlayerView;->c(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 2

    .line 961
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->u:Z

    if-eqz v0, :cond_0

    return-void

    .line 964
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->l:Z

    if-eqz v0, :cond_3

    .line 965
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->h:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->h:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->getShowTimeoutMs()I

    move-result v0

    if-gtz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 966
    :goto_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->c()Z

    move-result v1

    if-nez p1, :cond_2

    if-nez v0, :cond_2

    if-eqz v1, :cond_3

    .line 968
    :cond_2
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/ui/PlayerView;->b(Z)V

    :cond_3
    return-void
.end method

.method private a(I)Z
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    const/16 v0, 0x13

    if-eq p1, v0, :cond_1

    const/16 v0, 0x10e

    if-eq p1, v0, :cond_1

    const/16 v0, 0x16

    if-eq p1, v0, :cond_1

    const/16 v0, 0x10f

    if-eq p1, v0, :cond_1

    const/16 v0, 0x14

    if-eq p1, v0, :cond_1

    const/16 v0, 0x10d

    if-eq p1, v0, :cond_1

    const/16 v0, 0x15

    if-eq p1, v0, :cond_1

    const/16 v0, 0x10c

    if-eq p1, v0, :cond_1

    const/16 v0, 0x17

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private a(Landroid/graphics/Bitmap;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 1057
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 1058
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-lez v1, :cond_1

    if-lez v2, :cond_1

    .line 1060
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->a:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    if-eqz v3, :cond_0

    .line 1061
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->a:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    int-to-float v1, v1

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {v3, v1}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->setAspectRatio(F)V

    .line 1063
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->d:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1064
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->d:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method

.method private a(Lcom/google/android/exoplayer2/metadata/Metadata;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1044
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/metadata/Metadata;->a()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1045
    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/metadata/Metadata;->a(I)Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    move-result-object v2

    .line 1046
    instance-of v3, v2, Lcom/google/android/exoplayer2/metadata/id3/ApicFrame;

    if-eqz v3, :cond_0

    .line 1047
    check-cast v2, Lcom/google/android/exoplayer2/metadata/id3/ApicFrame;

    iget-object p1, v2, Lcom/google/android/exoplayer2/metadata/id3/ApicFrame;->d:[B

    .line 1048
    array-length v1, p1

    invoke-static {p1, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 1049
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/PlayerView;->a(Landroid/graphics/Bitmap;)Z

    move-result p1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method static synthetic b(Lcom/google/android/exoplayer2/ui/PlayerView;)Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;
    .locals 0

    .line 229
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->a:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    return-object p0
.end method

.method private static b(Landroid/content/res/Resources;Landroid/widget/ImageView;)V
    .locals 1

    .line 1126
    sget v0, Lcom/google/android/exoplayer2/ui/R$drawable;->exo_edit_mode_logo:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1127
    sget v0, Lcom/google/android/exoplayer2/ui/R$color;->exo_edit_mode_background_color:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    return-void
.end method

.method private static b(Landroid/view/TextureView;I)V
    .locals 6

    .line 1137
    invoke-virtual {p0}, Landroid/view/TextureView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 1138
    invoke-virtual {p0}, Landroid/view/TextureView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    cmpl-float v3, v0, v2

    if-eqz v3, :cond_1

    cmpl-float v3, v1, v2

    if-eqz v3, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 1142
    :cond_0
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v4, 0x40000000    # 2.0f

    div-float v5, v0, v4

    div-float v4, v1, v4

    int-to-float p1, p1

    .line 1145
    invoke-virtual {v3, p1, v5, v4}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 1148
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1, v2, v2, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 1149
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    .line 1150
    invoke-virtual {v3, v2, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 1152
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result p1

    div-float/2addr v0, p1

    .line 1153
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result p1

    div-float/2addr v1, p1

    .line 1151
    invoke-virtual {v3, v0, v1, v5, v4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 1156
    invoke-virtual {p0, v3}, Landroid/view/TextureView;->setTransform(Landroid/graphics/Matrix;)V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 1140
    invoke-virtual {p0, p1}, Landroid/view/TextureView;->setTransform(Landroid/graphics/Matrix;)V

    :goto_1
    return-void
.end method

.method static synthetic b(Lcom/google/android/exoplayer2/ui/PlayerView;Z)V
    .locals 0

    .line 229
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/PlayerView;->a(Z)V

    return-void
.end method

.method private b(Z)V
    .locals 1

    .line 985
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->l:Z

    if-nez v0, :cond_0

    return-void

    .line 988
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->h:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    iget p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->s:I

    :goto_0
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->setShowTimeoutMs(I)V

    .line 989
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->h:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->a()V

    return-void
.end method

.method static synthetic c(Lcom/google/android/exoplayer2/ui/PlayerView;)Landroid/view/View;
    .locals 0

    .line 229
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->c:Landroid/view/View;

    return-object p0
.end method

.method private c(Z)V
    .locals 5

    .line 997
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->k:Lcom/google/android/exoplayer2/v;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->k:Lcom/google/android/exoplayer2/v;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/v;->w()Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    :cond_0
    if-eqz p1, :cond_1

    .line 1005
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->p:Z

    if-nez p1, :cond_1

    .line 1007
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->f()V

    .line 1010
    :cond_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->k:Lcom/google/android/exoplayer2/v;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/v;->x()Lcom/google/android/exoplayer2/trackselection/f;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1011
    :goto_0
    iget v2, p1, Lcom/google/android/exoplayer2/trackselection/f;->a:I

    if-ge v1, v2, :cond_3

    .line 1012
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->k:Lcom/google/android/exoplayer2/v;

    invoke-interface {v2, v1}, Lcom/google/android/exoplayer2/v;->b(I)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/trackselection/f;->a(I)Lcom/google/android/exoplayer2/trackselection/e;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1015
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->e()V

    return-void

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1021
    :cond_3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->f()V

    .line 1023
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->m:Z

    if-eqz v1, :cond_7

    const/4 v1, 0x0

    .line 1024
    :goto_1
    iget v2, p1, Lcom/google/android/exoplayer2/trackselection/f;->a:I

    if-ge v1, v2, :cond_6

    .line 1025
    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/trackselection/f;->a(I)Lcom/google/android/exoplayer2/trackselection/e;

    move-result-object v2

    if-eqz v2, :cond_5

    const/4 v3, 0x0

    .line 1027
    :goto_2
    invoke-interface {v2}, Lcom/google/android/exoplayer2/trackselection/e;->g()I

    move-result v4

    if-ge v3, v4, :cond_5

    .line 1028
    invoke-interface {v2, v3}, Lcom/google/android/exoplayer2/trackselection/e;->a(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v4

    iget-object v4, v4, Lcom/google/android/exoplayer2/Format;->d:Lcom/google/android/exoplayer2/metadata/Metadata;

    if-eqz v4, :cond_4

    .line 1029
    invoke-direct {p0, v4}, Lcom/google/android/exoplayer2/ui/PlayerView;->a(Lcom/google/android/exoplayer2/metadata/Metadata;)Z

    move-result v4

    if-eqz v4, :cond_4

    return-void

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1035
    :cond_6
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->n:Landroid/graphics/Bitmap;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/PlayerView;->a(Landroid/graphics/Bitmap;)Z

    move-result p1

    if-eqz p1, :cond_7

    return-void

    .line 1040
    :cond_7
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->e()V

    return-void

    .line 998
    :cond_8
    :goto_3
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->p:Z

    if-nez p1, :cond_9

    .line 999
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->e()V

    .line 1000
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->f()V

    :cond_9
    return-void
.end method

.method private c()Z
    .locals 3

    .line 974
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->k:Lcom/google/android/exoplayer2/v;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 977
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->k:Lcom/google/android/exoplayer2/v;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/v;->c()I

    move-result v0

    .line 978
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->t:Z

    if-eqz v2, :cond_1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x4

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->k:Lcom/google/android/exoplayer2/v;

    .line 981
    invoke-interface {v0}, Lcom/google/android/exoplayer2/v;->e()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method static synthetic d(Lcom/google/android/exoplayer2/ui/PlayerView;)I
    .locals 0

    .line 229
    iget p0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->w:I

    return p0
.end method

.method private d()Z
    .locals 1

    .line 993
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->k:Lcom/google/android/exoplayer2/v;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->k:Lcom/google/android/exoplayer2/v;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/v;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->k:Lcom/google/android/exoplayer2/v;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/v;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic e(Lcom/google/android/exoplayer2/ui/PlayerView;)Landroid/view/View;
    .locals 0

    .line 229
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->b:Landroid/view/View;

    return-object p0
.end method

.method private e()V
    .locals 2

    .line 1072
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->d:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 1073
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->d:Landroid/widget/ImageView;

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1074
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->d:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private f()V
    .locals 2

    .line 1079
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->b:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1080
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->b:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method static synthetic f(Lcom/google/android/exoplayer2/ui/PlayerView;)V
    .locals 0

    .line 229
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->g()V

    return-void
.end method

.method private g()V
    .locals 3

    .line 1085
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->f:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 1086
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->o:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->k:Lcom/google/android/exoplayer2/v;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->k:Lcom/google/android/exoplayer2/v;

    .line 1089
    invoke-interface {v0}, Lcom/google/android/exoplayer2/v;->c()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->k:Lcom/google/android/exoplayer2/v;

    .line 1090
    invoke-interface {v0}, Lcom/google/android/exoplayer2/v;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1091
    :goto_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->f:Landroid/view/View;

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method static synthetic g(Lcom/google/android/exoplayer2/ui/PlayerView;)V
    .locals 0

    .line 229
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->h()V

    return-void
.end method

.method private h()V
    .locals 4

    .line 1096
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->g:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 1097
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->r:Ljava/lang/CharSequence;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1098
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->g:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->r:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1099
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 1103
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->k:Lcom/google/android/exoplayer2/v;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->k:Lcom/google/android/exoplayer2/v;

    .line 1104
    invoke-interface {v2}, Lcom/google/android/exoplayer2/v;->c()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->q:Lcom/google/android/exoplayer2/util/g;

    if-eqz v2, :cond_1

    .line 1106
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->k:Lcom/google/android/exoplayer2/v;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/v;->d()Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_2

    .line 1109
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->q:Lcom/google/android/exoplayer2/util/g;

    invoke-interface {v2, v0}, Lcom/google/android/exoplayer2/util/g;->a(Ljava/lang/Throwable;)Landroid/util/Pair;

    move-result-object v0

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    .line 1110
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->g:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1111
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 1113
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->g:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method static synthetic h(Lcom/google/android/exoplayer2/ui/PlayerView;)Z
    .locals 0

    .line 229
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->d()Z

    move-result p0

    return p0
.end method

.method static synthetic i(Lcom/google/android/exoplayer2/ui/PlayerView;)Z
    .locals 0

    .line 229
    iget-boolean p0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->u:Z

    return p0
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 707
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->c()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->b(Z)V

    return-void
.end method

.method public a(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 696
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->l:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->h:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->a(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public b()V
    .locals 1

    .line 712
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->h:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    if-eqz v0, :cond_0

    .line 713
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->h:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->b()V

    :cond_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    .line 675
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->k:Lcom/google/android/exoplayer2/v;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->k:Lcom/google/android/exoplayer2/v;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/v;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 679
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->j:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->requestFocus()Z

    .line 680
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 683
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->a(I)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->l:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->h:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->c()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 684
    :goto_0
    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/ui/PlayerView;->a(Z)V

    if-nez v0, :cond_2

    .line 685
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ui/PlayerView;->a(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public getControllerAutoShow()Z
    .locals 1

    .line 766
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->t:Z

    return v0
.end method

.method public getControllerHideOnTouch()Z
    .locals 1

    .line 747
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->v:Z

    return v0
.end method

.method public getControllerShowTimeoutMs()I
    .locals 1

    .line 726
    iget v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->s:I

    return v0
.end method

.method public getDefaultArtwork()Landroid/graphics/Bitmap;
    .locals 1

    .line 557
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->n:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getOverlayFrameLayout()Landroid/widget/FrameLayout;
    .locals 1

    .line 924
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->j:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getPlayer()Lcom/google/android/exoplayer2/v;
    .locals 1

    .line 447
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->k:Lcom/google/android/exoplayer2/v;

    return-object v0
.end method

.method public getResizeMode()I
    .locals 1

    .line 533
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->a:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 534
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->a:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->getResizeMode()I

    move-result v0

    return v0
.end method

.method public getSubtitleView()Lcom/google/android/exoplayer2/ui/SubtitleView;
    .locals 1

    .line 934
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->e:Lcom/google/android/exoplayer2/ui/SubtitleView;

    return-object v0
.end method

.method public getUseArtwork()Z
    .locals 1

    .line 539
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->m:Z

    return v0
.end method

.method public getUseController()Z
    .locals 1

    .line 575
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->l:Z

    return v0
.end method

.method public getVideoSurfaceView()Landroid/view/View;
    .locals 1

    .line 913
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->c:Landroid/view/View;

    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 939
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->l:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->k:Lcom/google/android/exoplayer2/v;

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    .line 942
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->h:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->c()Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_1

    .line 943
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->a(Z)V

    goto :goto_0

    .line 944
    :cond_1
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->v:Z

    if-eqz p1, :cond_2

    .line 945
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->h:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->b()V

    :cond_2
    :goto_0
    return v0

    :cond_3
    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 952
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->l:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->k:Lcom/google/android/exoplayer2/v;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 955
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/PlayerView;->a(Z)V

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public setAspectRatioListener(Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout$a;)V
    .locals 1

    .line 896
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->a:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 897
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->a:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->setAspectRatioListener(Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout$a;)V

    return-void
.end method

.method public setControlDispatcher(Lcom/google/android/exoplayer2/c;)V
    .locals 1
    .param p1    # Lcom/google/android/exoplayer2/c;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 817
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->h:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 818
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->h:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->setControlDispatcher(Lcom/google/android/exoplayer2/c;)V

    return-void
.end method

.method public setControllerAutoShow(Z)V
    .locals 0

    .line 777
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->t:Z

    return-void
.end method

.method public setControllerHideDuringAds(Z)V
    .locals 0

    .line 787
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->u:Z

    return-void
.end method

.method public setControllerHideOnTouch(Z)V
    .locals 1

    .line 756
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->h:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 757
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->v:Z

    return-void
.end method

.method public setControllerShowTimeoutMs(I)V
    .locals 1

    .line 737
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->h:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 738
    iput p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->s:I

    .line 739
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->h:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->c()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 741
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->a()V

    :cond_1
    return-void
.end method

.method public setControllerVisibilityListener(Lcom/google/android/exoplayer2/ui/PlayerControlView$b;)V
    .locals 1

    .line 796
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->h:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 797
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->h:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->setVisibilityListener(Lcom/google/android/exoplayer2/ui/PlayerControlView$b;)V

    return-void
.end method

.method public setCustomErrorMessage(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 668
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->g:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 669
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->r:Ljava/lang/CharSequence;

    .line 670
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->h()V

    return-void
.end method

.method public setDefaultArtwork(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 567
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->n:Landroid/graphics/Bitmap;

    if-eq v0, p1, :cond_0

    .line 568
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->n:Landroid/graphics/Bitmap;

    const/4 p1, 0x0

    .line 569
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/PlayerView;->c(Z)V

    :cond_0
    return-void
.end method

.method public setErrorMessageProvider(Lcom/google/android/exoplayer2/util/g;)V
    .locals 1
    .param p1    # Lcom/google/android/exoplayer2/util/g;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/util/g<",
            "-",
            "Lcom/google/android/exoplayer2/ExoPlaybackException;",
            ">;)V"
        }
    .end annotation

    .line 655
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->q:Lcom/google/android/exoplayer2/util/g;

    if-eq v0, p1, :cond_0

    .line 656
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->q:Lcom/google/android/exoplayer2/util/g;

    .line 657
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->h()V

    :cond_0
    return-void
.end method

.method public setFastForwardIncrementMs(I)V
    .locals 1

    .line 839
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->h:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 840
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->h:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->setFastForwardIncrementMs(I)V

    return-void
.end method

.method public setKeepContentOnPlayerReset(Z)V
    .locals 1

    .line 629
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->p:Z

    if-eq v0, p1, :cond_0

    .line 630
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->p:Z

    const/4 p1, 0x0

    .line 631
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/PlayerView;->c(Z)V

    :cond_0
    return-void
.end method

.method public setPlaybackPreparer(Lcom/google/android/exoplayer2/u;)V
    .locals 1
    .param p1    # Lcom/google/android/exoplayer2/u;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 806
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->h:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 807
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->h:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->setPlaybackPreparer(Lcom/google/android/exoplayer2/u;)V

    return-void
.end method

.method public setPlayer(Lcom/google/android/exoplayer2/v;)V
    .locals 2

    .line 462
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->k:Lcom/google/android/exoplayer2/v;

    if-ne v0, p1, :cond_0

    return-void

    .line 465
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->k:Lcom/google/android/exoplayer2/v;

    if-eqz v0, :cond_3

    .line 466
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->k:Lcom/google/android/exoplayer2/v;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->i:Lcom/google/android/exoplayer2/ui/PlayerView$a;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/v;->b(Lcom/google/android/exoplayer2/v$b;)V

    .line 467
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->k:Lcom/google/android/exoplayer2/v;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/v;->a()Lcom/google/android/exoplayer2/v$d;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 469
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->i:Lcom/google/android/exoplayer2/ui/PlayerView$a;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/v$d;->b(Lcom/google/android/exoplayer2/video/e;)V

    .line 470
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->c:Landroid/view/View;

    instance-of v1, v1, Landroid/view/TextureView;

    if-eqz v1, :cond_1

    .line 471
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->c:Landroid/view/View;

    check-cast v1, Landroid/view/TextureView;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/v$d;->b(Landroid/view/TextureView;)V

    goto :goto_0

    .line 472
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->c:Landroid/view/View;

    instance-of v1, v1, Landroid/view/SurfaceView;

    if-eqz v1, :cond_2

    .line 473
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->c:Landroid/view/View;

    check-cast v1, Landroid/view/SurfaceView;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/v$d;->b(Landroid/view/SurfaceView;)V

    .line 476
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->k:Lcom/google/android/exoplayer2/v;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/v;->b()Lcom/google/android/exoplayer2/v$c;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 478
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->i:Lcom/google/android/exoplayer2/ui/PlayerView$a;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/v$c;->b(Lcom/google/android/exoplayer2/text/j;)V

    .line 481
    :cond_3
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->k:Lcom/google/android/exoplayer2/v;

    .line 482
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->l:Z

    if-eqz v0, :cond_4

    .line 483
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->h:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->setPlayer(Lcom/google/android/exoplayer2/v;)V

    .line 485
    :cond_4
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->e:Lcom/google/android/exoplayer2/ui/SubtitleView;

    if-eqz v0, :cond_5

    .line 486
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->e:Lcom/google/android/exoplayer2/ui/SubtitleView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/SubtitleView;->setCues(Ljava/util/List;)V

    .line 488
    :cond_5
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->g()V

    .line 489
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->h()V

    const/4 v0, 0x1

    .line 490
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->c(Z)V

    if-eqz p1, :cond_a

    .line 492
    invoke-interface {p1}, Lcom/google/android/exoplayer2/v;->a()Lcom/google/android/exoplayer2/v$d;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 494
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->c:Landroid/view/View;

    instance-of v1, v1, Landroid/view/TextureView;

    if-eqz v1, :cond_6

    .line 495
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->c:Landroid/view/View;

    check-cast v1, Landroid/view/TextureView;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/v$d;->a(Landroid/view/TextureView;)V

    goto :goto_1

    .line 496
    :cond_6
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->c:Landroid/view/View;

    instance-of v1, v1, Landroid/view/SurfaceView;

    if-eqz v1, :cond_7

    .line 497
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->c:Landroid/view/View;

    check-cast v1, Landroid/view/SurfaceView;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/v$d;->a(Landroid/view/SurfaceView;)V

    .line 499
    :cond_7
    :goto_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->i:Lcom/google/android/exoplayer2/ui/PlayerView$a;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/v$d;->a(Lcom/google/android/exoplayer2/video/e;)V

    .line 501
    :cond_8
    invoke-interface {p1}, Lcom/google/android/exoplayer2/v;->b()Lcom/google/android/exoplayer2/v$c;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 503
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->i:Lcom/google/android/exoplayer2/ui/PlayerView$a;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/v$c;->a(Lcom/google/android/exoplayer2/text/j;)V

    .line 505
    :cond_9
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->i:Lcom/google/android/exoplayer2/ui/PlayerView$a;

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/v;->a(Lcom/google/android/exoplayer2/v$b;)V

    const/4 p1, 0x0

    .line 506
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/PlayerView;->a(Z)V

    goto :goto_2

    .line 508
    :cond_a
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->b()V

    :goto_2
    return-void
.end method

.method public setRepeatToggleModes(I)V
    .locals 1

    .line 849
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->h:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 850
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->h:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->setRepeatToggleModes(I)V

    return-void
.end method

.method public setResizeMode(I)V
    .locals 1

    .line 527
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->a:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 528
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->a:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->setResizeMode(I)V

    return-void
.end method

.method public setRewindIncrementMs(I)V
    .locals 1

    .line 828
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->h:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 829
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->h:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->setRewindIncrementMs(I)V

    return-void
.end method

.method public setShowBuffering(Z)V
    .locals 1

    .line 642
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->o:Z

    if-eq v0, p1, :cond_0

    .line 643
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->o:Z

    .line 644
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->g()V

    :cond_0
    return-void
.end method

.method public setShowMultiWindowTimeBar(Z)V
    .locals 1

    .line 869
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->h:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 870
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->h:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->setShowMultiWindowTimeBar(Z)V

    return-void
.end method

.method public setShowShuffleButton(Z)V
    .locals 1

    .line 859
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->h:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 860
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->h:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->setShowShuffleButton(Z)V

    return-void
.end method

.method public setShutterBackgroundColor(I)V
    .locals 1

    .line 604
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->b:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 605
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->b:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    return-void
.end method

.method public setUseArtwork(Z)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 548
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->d:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 549
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->m:Z

    if-eq v1, p1, :cond_2

    .line 550
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->m:Z

    .line 551
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->c(Z)V

    :cond_2
    return-void
.end method

.method public setUseController(Z)V
    .locals 1

    if-eqz p1, :cond_1

    .line 585
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->h:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 586
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->l:Z

    if-ne v0, p1, :cond_2

    return-void

    .line 589
    :cond_2
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->l:Z

    if-eqz p1, :cond_3

    .line 591
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->h:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->k:Lcom/google/android/exoplayer2/v;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->setPlayer(Lcom/google/android/exoplayer2/v;)V

    goto :goto_2

    .line 592
    :cond_3
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->h:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    if-eqz p1, :cond_4

    .line 593
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->h:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->b()V

    .line 594
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->h:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->setPlayer(Lcom/google/android/exoplayer2/v;)V

    :cond_4
    :goto_2
    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    .line 514
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 515
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->c:Landroid/view/View;

    instance-of v0, v0, Landroid/view/SurfaceView;

    if-eqz v0, :cond_0

    .line 517
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView;->c:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
