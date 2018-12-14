.class public Lcom/google/android/exoplayer2/ui/PlayerControlView;
.super Landroid/widget/FrameLayout;
.source "PlayerControlView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/ui/PlayerControlView$a;,
        Lcom/google/android/exoplayer2/ui/PlayerControlView$b;
    }
.end annotation


# instance fields
.field private A:Z

.field private B:Z

.field private C:Z

.field private D:Z

.field private E:I

.field private F:I

.field private G:I

.field private H:I

.field private I:Z

.field private J:J

.field private K:[J

.field private L:[Z

.field private M:[J

.field private N:[Z

.field private final O:Ljava/lang/Runnable;

.field private final P:Ljava/lang/Runnable;

.field private final a:Lcom/google/android/exoplayer2/ui/PlayerControlView$a;

.field private final b:Landroid/view/View;

.field private final c:Landroid/view/View;

.field private final d:Landroid/view/View;

.field private final e:Landroid/view/View;

.field private final f:Landroid/view/View;

.field private final g:Landroid/view/View;

.field private final h:Landroid/widget/ImageView;

.field private final i:Landroid/view/View;

.field private final j:Landroid/widget/TextView;

.field private final k:Landroid/widget/TextView;

.field private final l:Lcom/google/android/exoplayer2/ui/c;

.field private final m:Ljava/lang/StringBuilder;

.field private final n:Ljava/util/Formatter;

.field private final o:Lcom/google/android/exoplayer2/ad$a;

.field private final p:Lcom/google/android/exoplayer2/ad$b;

.field private final q:Landroid/graphics/drawable/Drawable;

.field private final r:Landroid/graphics/drawable/Drawable;

.field private final s:Landroid/graphics/drawable/Drawable;

.field private final t:Ljava/lang/String;

.field private final u:Ljava/lang/String;

.field private final v:Ljava/lang/String;

.field private w:Lcom/google/android/exoplayer2/v;

.field private x:Lcom/google/android/exoplayer2/c;

.field private y:Lcom/google/android/exoplayer2/ui/PlayerControlView$b;

.field private z:Lcom/google/android/exoplayer2/u;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "goog.exo.ui"

    .line 165
    invoke-static {v0}, Lcom/google/android/exoplayer2/l;->a(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 255
    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 259
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 263
    invoke-direct {p0, p1, p2, p3, p2}, Lcom/google/android/exoplayer2/ui/PlayerControlView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/util/AttributeSet;)V
    .locals 2

    .line 268
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 238
    new-instance p2, Lcom/google/android/exoplayer2/ui/PlayerControlView$1;

    invoke-direct {p2, p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView$1;-><init>(Lcom/google/android/exoplayer2/ui/PlayerControlView;)V

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->O:Ljava/lang/Runnable;

    .line 246
    new-instance p2, Lcom/google/android/exoplayer2/ui/PlayerControlView$2;

    invoke-direct {p2, p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView$2;-><init>(Lcom/google/android/exoplayer2/ui/PlayerControlView;)V

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->P:Ljava/lang/Runnable;

    .line 269
    sget p2, Lcom/google/android/exoplayer2/ui/R$layout;->exo_player_control_view:I

    const/16 p3, 0x1388

    .line 270
    iput p3, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->E:I

    const/16 v0, 0x3a98

    .line 271
    iput v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->F:I

    .line 272
    iput p3, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->G:I

    const/4 p3, 0x0

    .line 273
    iput p3, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->H:I

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 274
    iput-wide v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->J:J

    .line 275
    iput-boolean p3, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->I:Z

    if-eqz p4, :cond_0

    .line 279
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Lcom/google/android/exoplayer2/ui/R$styleable;->PlayerControlView:[I

    .line 280
    invoke-virtual {v0, p4, v1, p3, p3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p4

    .line 282
    :try_start_0
    sget v0, Lcom/google/android/exoplayer2/ui/R$styleable;->PlayerControlView_rewind_increment:I

    iget v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->E:I

    invoke-virtual {p4, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->E:I

    .line 283
    sget v0, Lcom/google/android/exoplayer2/ui/R$styleable;->PlayerControlView_fastforward_increment:I

    iget v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->F:I

    .line 284
    invoke-virtual {p4, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->F:I

    .line 285
    sget v0, Lcom/google/android/exoplayer2/ui/R$styleable;->PlayerControlView_show_timeout:I

    iget v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->G:I

    invoke-virtual {p4, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->G:I

    .line 286
    sget v0, Lcom/google/android/exoplayer2/ui/R$styleable;->PlayerControlView_controller_layout_id:I

    .line 287
    invoke-virtual {p4, v0, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    .line 288
    iget v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->H:I

    invoke-static {p4, v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->a(Landroid/content/res/TypedArray;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->H:I

    .line 289
    sget v0, Lcom/google/android/exoplayer2/ui/R$styleable;->PlayerControlView_show_shuffle_button:I

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->I:Z

    .line 290
    invoke-virtual {p4, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->I:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 292
    invoke-virtual {p4}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p4}, Landroid/content/res/TypedArray;->recycle()V

    throw p1

    .line 295
    :cond_0
    :goto_0
    new-instance p4, Lcom/google/android/exoplayer2/ad$a;

    invoke-direct {p4}, Lcom/google/android/exoplayer2/ad$a;-><init>()V

    iput-object p4, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->o:Lcom/google/android/exoplayer2/ad$a;

    .line 296
    new-instance p4, Lcom/google/android/exoplayer2/ad$b;

    invoke-direct {p4}, Lcom/google/android/exoplayer2/ad$b;-><init>()V

    iput-object p4, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->p:Lcom/google/android/exoplayer2/ad$b;

    .line 297
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p4, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->m:Ljava/lang/StringBuilder;

    .line 298
    new-instance p4, Ljava/util/Formatter;

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->m:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {p4, v0, v1}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object p4, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->n:Ljava/util/Formatter;

    .line 299
    new-array p4, p3, [J

    iput-object p4, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->K:[J

    .line 300
    new-array p4, p3, [Z

    iput-object p4, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->L:[Z

    .line 301
    new-array p4, p3, [J

    iput-object p4, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->M:[J

    .line 302
    new-array p3, p3, [Z

    iput-object p3, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->N:[Z

    .line 303
    new-instance p3, Lcom/google/android/exoplayer2/ui/PlayerControlView$a;

    const/4 p4, 0x0

    invoke-direct {p3, p0, p4}, Lcom/google/android/exoplayer2/ui/PlayerControlView$a;-><init>(Lcom/google/android/exoplayer2/ui/PlayerControlView;Lcom/google/android/exoplayer2/ui/PlayerControlView$1;)V

    iput-object p3, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView$a;

    .line 304
    new-instance p3, Lcom/google/android/exoplayer2/d;

    invoke-direct {p3}, Lcom/google/android/exoplayer2/d;-><init>()V

    iput-object p3, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->x:Lcom/google/android/exoplayer2/c;

    .line 306
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    invoke-virtual {p3, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const/high16 p2, 0x40000

    .line 307
    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->setDescendantFocusability(I)V

    .line 309
    sget p2, Lcom/google/android/exoplayer2/ui/R$id;->exo_duration:I

    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->j:Landroid/widget/TextView;

    .line 310
    sget p2, Lcom/google/android/exoplayer2/ui/R$id;->exo_position:I

    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->k:Landroid/widget/TextView;

    .line 311
    sget p2, Lcom/google/android/exoplayer2/ui/R$id;->exo_progress:I

    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/exoplayer2/ui/c;

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->l:Lcom/google/android/exoplayer2/ui/c;

    .line 312
    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->l:Lcom/google/android/exoplayer2/ui/c;

    if-eqz p2, :cond_1

    .line 313
    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->l:Lcom/google/android/exoplayer2/ui/c;

    iget-object p3, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView$a;

    invoke-interface {p2, p3}, Lcom/google/android/exoplayer2/ui/c;->addListener(Lcom/google/android/exoplayer2/ui/c$a;)V

    .line 315
    :cond_1
    sget p2, Lcom/google/android/exoplayer2/ui/R$id;->exo_play:I

    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->d:Landroid/view/View;

    .line 316
    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->d:Landroid/view/View;

    if-eqz p2, :cond_2

    .line 317
    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->d:Landroid/view/View;

    iget-object p3, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView$a;

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 319
    :cond_2
    sget p2, Lcom/google/android/exoplayer2/ui/R$id;->exo_pause:I

    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->e:Landroid/view/View;

    .line 320
    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->e:Landroid/view/View;

    if-eqz p2, :cond_3

    .line 321
    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->e:Landroid/view/View;

    iget-object p3, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView$a;

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 323
    :cond_3
    sget p2, Lcom/google/android/exoplayer2/ui/R$id;->exo_prev:I

    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->b:Landroid/view/View;

    .line 324
    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->b:Landroid/view/View;

    if-eqz p2, :cond_4

    .line 325
    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->b:Landroid/view/View;

    iget-object p3, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView$a;

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 327
    :cond_4
    sget p2, Lcom/google/android/exoplayer2/ui/R$id;->exo_next:I

    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->c:Landroid/view/View;

    .line 328
    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->c:Landroid/view/View;

    if-eqz p2, :cond_5

    .line 329
    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->c:Landroid/view/View;

    iget-object p3, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView$a;

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 331
    :cond_5
    sget p2, Lcom/google/android/exoplayer2/ui/R$id;->exo_rew:I

    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->g:Landroid/view/View;

    .line 332
    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->g:Landroid/view/View;

    if-eqz p2, :cond_6

    .line 333
    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->g:Landroid/view/View;

    iget-object p3, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView$a;

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 335
    :cond_6
    sget p2, Lcom/google/android/exoplayer2/ui/R$id;->exo_ffwd:I

    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->f:Landroid/view/View;

    .line 336
    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->f:Landroid/view/View;

    if-eqz p2, :cond_7

    .line 337
    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->f:Landroid/view/View;

    iget-object p3, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView$a;

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 339
    :cond_7
    sget p2, Lcom/google/android/exoplayer2/ui/R$id;->exo_repeat_toggle:I

    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->h:Landroid/widget/ImageView;

    .line 340
    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->h:Landroid/widget/ImageView;

    if-eqz p2, :cond_8

    .line 341
    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->h:Landroid/widget/ImageView;

    iget-object p3, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView$a;

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 343
    :cond_8
    sget p2, Lcom/google/android/exoplayer2/ui/R$id;->exo_shuffle:I

    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->i:Landroid/view/View;

    .line 344
    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->i:Landroid/view/View;

    if-eqz p2, :cond_9

    .line 345
    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->i:Landroid/view/View;

    iget-object p3, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView$a;

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 347
    :cond_9
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 348
    sget p2, Lcom/google/android/exoplayer2/ui/R$drawable;->exo_controls_repeat_off:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->q:Landroid/graphics/drawable/Drawable;

    .line 349
    sget p2, Lcom/google/android/exoplayer2/ui/R$drawable;->exo_controls_repeat_one:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->r:Landroid/graphics/drawable/Drawable;

    .line 350
    sget p2, Lcom/google/android/exoplayer2/ui/R$drawable;->exo_controls_repeat_all:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->s:Landroid/graphics/drawable/Drawable;

    .line 351
    sget p2, Lcom/google/android/exoplayer2/ui/R$string;->exo_controls_repeat_off_description:I

    .line 352
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->t:Ljava/lang/String;

    .line 353
    sget p2, Lcom/google/android/exoplayer2/ui/R$string;->exo_controls_repeat_one_description:I

    .line 354
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->u:Ljava/lang/String;

    .line 355
    sget p2, Lcom/google/android/exoplayer2/ui/R$string;->exo_controls_repeat_all_description:I

    .line 356
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->v:Ljava/lang/String;

    return-void
.end method

.method static synthetic A(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Landroid/view/View;
    .locals 0

    .line 162
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->i:Landroid/view/View;

    return-object p0
.end method

.method private static a(Landroid/content/res/TypedArray;I)I
    .locals 1

    .line 362
    sget v0, Lcom/google/android/exoplayer2/ui/R$styleable;->PlayerControlView_repeat_toggle_modes:I

    invoke-virtual {p0, v0, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p0

    return p0
.end method

.method private a(IJ)V
    .locals 2

    .line 898
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->x:Lcom/google/android/exoplayer2/c;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->w:Lcom/google/android/exoplayer2/v;

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/google/android/exoplayer2/c;->a(Lcom/google/android/exoplayer2/v;IJ)Z

    move-result p1

    if-nez p1, :cond_0

    .line 902
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->k()V

    :cond_0
    return-void
.end method

.method private a(J)V
    .locals 1

    .line 894
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->w:Lcom/google/android/exoplayer2/v;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/v;->k()I

    move-result v0

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->a(IJ)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/ui/PlayerControlView;)V
    .locals 0

    .line 162
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->k()V

    return-void
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/ui/PlayerControlView;J)V
    .locals 0

    .line 162
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->b(J)V

    return-void
.end method

.method private a(ZLandroid/view/View;)V
    .locals 0

    if-nez p2, :cond_0

    return-void

    .line 838
    :cond_0
    invoke-virtual {p2, p1}, Landroid/view/View;->setEnabled(Z)V

    if-eqz p1, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const p1, 0x3e99999a    # 0.3f

    .line 839
    :goto_0
    invoke-virtual {p2, p1}, Landroid/view/View;->setAlpha(F)V

    const/4 p1, 0x0

    .line 840
    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private static a(I)Z
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    const/16 v0, 0x5a

    if-eq p0, v0, :cond_1

    const/16 v0, 0x59

    if-eq p0, v0, :cond_1

    const/16 v0, 0x55

    if-eq p0, v0, :cond_1

    const/16 v0, 0x7e

    if-eq p0, v0, :cond_1

    const/16 v0, 0x7f

    if-eq p0, v0, :cond_1

    const/16 v0, 0x57

    if-eq p0, v0, :cond_1

    const/16 v0, 0x58

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static a(Lcom/google/android/exoplayer2/ad;Lcom/google/android/exoplayer2/ad$b;)Z
    .locals 8

    .line 1028
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ad;->b()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x64

    if-le v0, v2, :cond_0

    return v1

    .line 1031
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ad;->b()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 1033
    invoke-virtual {p0, v2, p1}, Lcom/google/android/exoplayer2/ad;->a(ILcom/google/android/exoplayer2/ad$b;)Lcom/google/android/exoplayer2/ad$b;

    move-result-object v3

    iget-wide v3, v3, Lcom/google/android/exoplayer2/ad$b;->i:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v7, v3, v5

    if-nez v7, :cond_1

    return v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/ui/PlayerControlView;Z)Z
    .locals 0

    .line 162
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->D:Z

    return p1
.end method

.method static synthetic b(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Ljava/lang/Runnable;
    .locals 0

    .line 162
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->P:Ljava/lang/Runnable;

    return-object p0
.end method

.method private b(J)V
    .locals 7

    .line 908
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->w:Lcom/google/android/exoplayer2/v;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/v;->y()Lcom/google/android/exoplayer2/ad;

    move-result-object v0

    .line 909
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->C:Z

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ad;->a()Z

    move-result v1

    if-nez v1, :cond_2

    .line 910
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ad;->b()I

    move-result v1

    const/4 v2, 0x0

    .line 913
    :goto_0
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->p:Lcom/google/android/exoplayer2/ad$b;

    invoke-virtual {v0, v2, v3}, Lcom/google/android/exoplayer2/ad;->a(ILcom/google/android/exoplayer2/ad$b;)Lcom/google/android/exoplayer2/ad$b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/ad$b;->c()J

    move-result-wide v3

    cmp-long v5, p1, v3

    if-gez v5, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v1, -0x1

    if-ne v2, v5, :cond_1

    move-wide p1, v3

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    sub-long v5, p1, v3

    add-int/lit8 v2, v2, 0x1

    move-wide p1, v5

    goto :goto_0

    .line 925
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->w:Lcom/google/android/exoplayer2/v;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/v;->k()I

    move-result v2

    .line 927
    :goto_1
    invoke-direct {p0, v2, p1, p2}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->a(IJ)V

    return-void
.end method

.method static synthetic c(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Landroid/widget/TextView;
    .locals 0

    .line 162
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->k:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic d(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Ljava/lang/StringBuilder;
    .locals 0

    .line 162
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->m:Ljava/lang/StringBuilder;

    return-object p0
.end method

.method private d()V
    .locals 6

    .line 590
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->P:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 591
    iget v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->G:I

    if-lez v0, :cond_0

    .line 592
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget v2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->G:I

    int-to-long v2, v2

    add-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->J:J

    .line 593
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->A:Z

    if-eqz v0, :cond_1

    .line 594
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->P:Ljava/lang/Runnable;

    iget v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->G:I

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 597
    iput-wide v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->J:J

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic e(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Ljava/util/Formatter;
    .locals 0

    .line 162
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->n:Ljava/util/Formatter;

    return-object p0
.end method

.method private e()V
    .locals 0

    .line 602
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->f()V

    .line 603
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->g()V

    .line 604
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->h()V

    .line 605
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->i()V

    .line 606
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->k()V

    return-void
.end method

.method static synthetic f(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Lcom/google/android/exoplayer2/v;
    .locals 0

    .line 162
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->w:Lcom/google/android/exoplayer2/v;

    return-object p0
.end method

.method private f()V
    .locals 7

    .line 610
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->c()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->A:Z

    if-nez v0, :cond_0

    goto :goto_5

    .line 614
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->q()Z

    move-result v0

    .line 615
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->d:Landroid/view/View;

    const/16 v2, 0x8

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_3

    if-eqz v0, :cond_1

    .line 616
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->d:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v1, v4

    .line 617
    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->d:Landroid/view/View;

    if-eqz v0, :cond_2

    const/16 v6, 0x8

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    :goto_1
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    .line 619
    :goto_2
    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->e:Landroid/view/View;

    if-eqz v5, :cond_6

    if-nez v0, :cond_4

    .line 620
    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->e:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->isFocused()Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_3

    :cond_4
    const/4 v3, 0x0

    :goto_3
    or-int/2addr v1, v3

    .line 621
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->e:Landroid/view/View;

    if-nez v0, :cond_5

    goto :goto_4

    :cond_5
    const/4 v2, 0x0

    :goto_4
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    if-eqz v1, :cond_7

    .line 624
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->l()V

    :cond_7
    return-void

    :cond_8
    :goto_5
    return-void
.end method

.method private g()V
    .locals 6

    .line 629
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->c()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->A:Z

    if-nez v0, :cond_0

    goto/16 :goto_8

    .line 632
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->w:Lcom/google/android/exoplayer2/v;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->w:Lcom/google/android/exoplayer2/v;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/v;->y()Lcom/google/android/exoplayer2/ad;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 633
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ad;->a()Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_7

    .line 637
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->w:Lcom/google/android/exoplayer2/v;

    invoke-interface {v3}, Lcom/google/android/exoplayer2/v;->r()Z

    move-result v3

    if-nez v3, :cond_7

    .line 638
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->w:Lcom/google/android/exoplayer2/v;

    invoke-interface {v3}, Lcom/google/android/exoplayer2/v;->k()I

    move-result v3

    .line 639
    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->p:Lcom/google/android/exoplayer2/ad$b;

    invoke-virtual {v0, v3, v4}, Lcom/google/android/exoplayer2/ad;->a(ILcom/google/android/exoplayer2/ad$b;)Lcom/google/android/exoplayer2/ad$b;

    .line 640
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->p:Lcom/google/android/exoplayer2/ad$b;

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/ad$b;->d:Z

    const/4 v3, -0x1

    if-nez v0, :cond_4

    .line 641
    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->p:Lcom/google/android/exoplayer2/ad$b;

    iget-boolean v4, v4, Lcom/google/android/exoplayer2/ad$b;->e:Z

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->w:Lcom/google/android/exoplayer2/v;

    .line 642
    invoke-interface {v4}, Lcom/google/android/exoplayer2/v;->m()I

    move-result v4

    if-eq v4, v3, :cond_3

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v4, 0x1

    .line 643
    :goto_3
    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->p:Lcom/google/android/exoplayer2/ad$b;

    iget-boolean v5, v5, Lcom/google/android/exoplayer2/ad$b;->e:Z

    if-nez v5, :cond_6

    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->w:Lcom/google/android/exoplayer2/v;

    invoke-interface {v5}, Lcom/google/android/exoplayer2/v;->l()I

    move-result v5

    if-eq v5, v3, :cond_5

    goto :goto_4

    :cond_5
    const/4 v3, 0x0

    goto :goto_5

    :cond_6
    :goto_4
    const/4 v3, 0x1

    goto :goto_5

    :cond_7
    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 645
    :goto_5
    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->b:Landroid/view/View;

    invoke-direct {p0, v4, v5}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->a(ZLandroid/view/View;)V

    .line 646
    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->c:Landroid/view/View;

    invoke-direct {p0, v3, v4}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->a(ZLandroid/view/View;)V

    .line 647
    iget v3, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->F:I

    if-lez v3, :cond_8

    if-eqz v0, :cond_8

    const/4 v3, 0x1

    goto :goto_6

    :cond_8
    const/4 v3, 0x0

    :goto_6
    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->f:Landroid/view/View;

    invoke-direct {p0, v3, v4}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->a(ZLandroid/view/View;)V

    .line 648
    iget v3, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->E:I

    if-lez v3, :cond_9

    if-eqz v0, :cond_9

    goto :goto_7

    :cond_9
    const/4 v1, 0x0

    :goto_7
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->g:Landroid/view/View;

    invoke-direct {p0, v1, v2}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->a(ZLandroid/view/View;)V

    .line 649
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->l:Lcom/google/android/exoplayer2/ui/c;

    if-eqz v1, :cond_a

    .line 650
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->l:Lcom/google/android/exoplayer2/ui/c;

    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/ui/c;->setEnabled(Z)V

    :cond_a
    return-void

    :cond_b
    :goto_8
    return-void
.end method

.method static synthetic g(Lcom/google/android/exoplayer2/ui/PlayerControlView;)V
    .locals 0

    .line 162
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->d()V

    return-void
.end method

.method private h()V
    .locals 3

    .line 655
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->A:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->h:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    goto :goto_1

    .line 658
    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->H:I

    if-nez v0, :cond_1

    .line 659
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->h:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    .line 662
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->w:Lcom/google/android/exoplayer2/v;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 663
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->h:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->a(ZLandroid/view/View;)V

    return-void

    :cond_2
    const/4 v0, 0x1

    .line 666
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->h:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v2}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->a(ZLandroid/view/View;)V

    .line 667
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->w:Lcom/google/android/exoplayer2/v;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/v;->f()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 677
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->h:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->s:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 678
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->h:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->v:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 673
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->h:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->r:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 674
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->h:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->u:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 669
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->h:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->q:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 670
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->h:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->t:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 683
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    :cond_3
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic h(Lcom/google/android/exoplayer2/ui/PlayerControlView;)V
    .locals 0

    .line 162
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->f()V

    return-void
.end method

.method private i()V
    .locals 3

    .line 687
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->A:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->i:Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_2

    .line 690
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->I:Z

    if-nez v0, :cond_1

    .line 691
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->i:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 692
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->w:Lcom/google/android/exoplayer2/v;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 693
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->i:Landroid/view/View;

    invoke-direct {p0, v1, v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->a(ZLandroid/view/View;)V

    goto :goto_1

    .line 695
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->i:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->w:Lcom/google/android/exoplayer2/v;

    invoke-interface {v2}, Lcom/google/android/exoplayer2/v;->g()Z

    move-result v2

    if-eqz v2, :cond_3

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_3
    const v2, 0x3e99999a    # 0.3f

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 696
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->i:Landroid/view/View;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 697
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->i:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void

    :cond_4
    :goto_2
    return-void
.end method

.method static synthetic i(Lcom/google/android/exoplayer2/ui/PlayerControlView;)V
    .locals 0

    .line 162
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->h()V

    return-void
.end method

.method private j()V
    .locals 2

    .line 702
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->w:Lcom/google/android/exoplayer2/v;

    if-nez v0, :cond_0

    return-void

    .line 705
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->B:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->w:Lcom/google/android/exoplayer2/v;

    .line 706
    invoke-interface {v0}, Lcom/google/android/exoplayer2/v;->y()Lcom/google/android/exoplayer2/ad;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->p:Lcom/google/android/exoplayer2/ad$b;

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->a(Lcom/google/android/exoplayer2/ad;Lcom/google/android/exoplayer2/ad$b;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->C:Z

    return-void
.end method

.method static synthetic j(Lcom/google/android/exoplayer2/ui/PlayerControlView;)V
    .locals 0

    .line 162
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->g()V

    return-void
.end method

.method private k()V
    .locals 24

    move-object/from16 v0, p0

    .line 710
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->c()Z

    move-result v1

    if-eqz v1, :cond_1c

    iget-boolean v1, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->A:Z

    if-nez v1, :cond_0

    goto/16 :goto_e

    .line 717
    :cond_0
    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->w:Lcom/google/android/exoplayer2/v;

    const/4 v4, 0x1

    if-eqz v1, :cond_10

    .line 721
    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->w:Lcom/google/android/exoplayer2/v;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/v;->y()Lcom/google/android/exoplayer2/ad;

    move-result-object v1

    .line 722
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/ad;->a()Z

    move-result v5

    if-nez v5, :cond_c

    .line 723
    iget-object v5, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->w:Lcom/google/android/exoplayer2/v;

    invoke-interface {v5}, Lcom/google/android/exoplayer2/v;->k()I

    move-result v5

    .line 724
    iget-boolean v7, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->C:Z

    if-eqz v7, :cond_1

    const/4 v7, 0x0

    goto :goto_0

    :cond_1
    move v7, v5

    .line 725
    :goto_0
    iget-boolean v8, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->C:Z

    if-eqz v8, :cond_2

    .line 726
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/ad;->b()I

    move-result v8

    sub-int/2addr v8, v4

    goto :goto_1

    :cond_2
    move v8, v5

    :goto_1
    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    :goto_2
    if-gt v7, v8, :cond_d

    if-ne v7, v5, :cond_3

    move-wide v12, v9

    .line 731
    :cond_3
    iget-object v14, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->p:Lcom/google/android/exoplayer2/ad$b;

    invoke-virtual {v1, v7, v14}, Lcom/google/android/exoplayer2/ad;->a(ILcom/google/android/exoplayer2/ad$b;)Lcom/google/android/exoplayer2/ad$b;

    .line 732
    iget-object v14, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->p:Lcom/google/android/exoplayer2/ad$b;

    iget-wide v14, v14, Lcom/google/android/exoplayer2/ad$b;->i:J

    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v18, v14, v16

    if-nez v18, :cond_4

    .line 733
    iget-boolean v1, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->C:Z

    xor-int/2addr v1, v4

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    goto/16 :goto_9

    .line 736
    :cond_4
    iget-object v14, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->p:Lcom/google/android/exoplayer2/ad$b;

    iget v14, v14, Lcom/google/android/exoplayer2/ad$b;->f:I

    :goto_3
    iget-object v15, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->p:Lcom/google/android/exoplayer2/ad$b;

    iget v15, v15, Lcom/google/android/exoplayer2/ad$b;->g:I

    if-gt v14, v15, :cond_b

    .line 737
    iget-object v15, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->o:Lcom/google/android/exoplayer2/ad$a;

    invoke-virtual {v1, v14, v15}, Lcom/google/android/exoplayer2/ad;->a(ILcom/google/android/exoplayer2/ad$a;)Lcom/google/android/exoplayer2/ad$a;

    .line 738
    iget-object v15, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->o:Lcom/google/android/exoplayer2/ad$a;

    invoke-virtual {v15}, Lcom/google/android/exoplayer2/ad$a;->e()I

    move-result v15

    move v4, v11

    const/4 v11, 0x0

    :goto_4
    if-ge v11, v15, :cond_a

    .line 740
    iget-object v6, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->o:Lcom/google/android/exoplayer2/ad$a;

    invoke-virtual {v6, v11}, Lcom/google/android/exoplayer2/ad$a;->a(I)J

    move-result-wide v19

    const-wide/high16 v21, -0x8000000000000000L

    cmp-long v6, v19, v21

    if-nez v6, :cond_6

    .line 742
    iget-object v6, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->o:Lcom/google/android/exoplayer2/ad$a;

    iget-wide v2, v6, Lcom/google/android/exoplayer2/ad$a;->d:J

    cmp-long v6, v2, v16

    if-nez v6, :cond_5

    goto :goto_7

    .line 746
    :cond_5
    iget-object v2, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->o:Lcom/google/android/exoplayer2/ad$a;

    iget-wide v2, v2, Lcom/google/android/exoplayer2/ad$a;->d:J

    goto :goto_5

    :cond_6
    move-wide/from16 v2, v19

    .line 748
    :goto_5
    iget-object v6, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->o:Lcom/google/android/exoplayer2/ad$a;

    invoke-virtual {v6}, Lcom/google/android/exoplayer2/ad$a;->d()J

    move-result-wide v19

    add-long v21, v2, v19

    const-wide/16 v2, 0x0

    cmp-long v6, v21, v2

    if-ltz v6, :cond_9

    .line 749
    iget-object v6, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->p:Lcom/google/android/exoplayer2/ad$b;

    iget-wide v2, v6, Lcom/google/android/exoplayer2/ad$b;->i:J

    cmp-long v6, v21, v2

    if-gtz v6, :cond_9

    .line 750
    iget-object v2, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->K:[J

    array-length v2, v2

    if-ne v4, v2, :cond_8

    .line 751
    iget-object v2, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->K:[J

    array-length v2, v2

    if-nez v2, :cond_7

    const/4 v2, 0x1

    goto :goto_6

    :cond_7
    iget-object v2, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->K:[J

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    .line 752
    :goto_6
    iget-object v3, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->K:[J

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->K:[J

    .line 753
    iget-object v3, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->L:[Z

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->L:[Z

    .line 755
    :cond_8
    iget-object v2, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->K:[J

    move/from16 v23, v5

    add-long v5, v9, v21

    invoke-static {v5, v6}, Lcom/google/android/exoplayer2/b;->a(J)J

    move-result-wide v5

    aput-wide v5, v2, v4

    .line 756
    iget-object v2, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->L:[Z

    iget-object v3, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->o:Lcom/google/android/exoplayer2/ad$a;

    invoke-virtual {v3, v11}, Lcom/google/android/exoplayer2/ad$a;->c(I)Z

    move-result v3

    aput-boolean v3, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_9
    :goto_7
    move/from16 v23, v5

    :goto_8
    add-int/lit8 v11, v11, 0x1

    move/from16 v5, v23

    goto :goto_4

    :cond_a
    move/from16 v23, v5

    add-int/lit8 v14, v14, 0x1

    move v11, v4

    const/4 v4, 0x1

    goto/16 :goto_3

    :cond_b
    move/from16 v23, v5

    .line 761
    iget-object v2, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->p:Lcom/google/android/exoplayer2/ad$b;

    iget-wide v2, v2, Lcom/google/android/exoplayer2/ad$b;->i:J

    add-long v4, v9, v2

    add-int/lit8 v7, v7, 0x1

    move-wide v9, v4

    move/from16 v5, v23

    const/4 v4, 0x1

    goto/16 :goto_2

    :cond_c
    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    .line 764
    :cond_d
    :goto_9
    invoke-static {v9, v10}, Lcom/google/android/exoplayer2/b;->a(J)J

    move-result-wide v2

    .line 765
    invoke-static {v12, v13}, Lcom/google/android/exoplayer2/b;->a(J)J

    move-result-wide v4

    .line 767
    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->w:Lcom/google/android/exoplayer2/v;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/v;->r()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 768
    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->w:Lcom/google/android/exoplayer2/v;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/v;->u()J

    move-result-wide v6

    add-long v8, v4, v6

    move-wide v12, v8

    goto :goto_a

    .line 771
    :cond_e
    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->w:Lcom/google/android/exoplayer2/v;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/v;->o()J

    move-result-wide v6

    add-long v8, v4, v6

    .line 772
    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->w:Lcom/google/android/exoplayer2/v;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/v;->p()J

    move-result-wide v6

    add-long v12, v4, v6

    .line 774
    :goto_a
    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->l:Lcom/google/android/exoplayer2/ui/c;

    if-eqz v1, :cond_11

    .line 775
    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->M:[J

    array-length v1, v1

    add-int v4, v11, v1

    .line 777
    iget-object v5, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->K:[J

    array-length v5, v5

    if-le v4, v5, :cond_f

    .line 778
    iget-object v5, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->K:[J

    invoke-static {v5, v4}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v5

    iput-object v5, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->K:[J

    .line 779
    iget-object v5, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->L:[Z

    invoke-static {v5, v4}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object v5

    iput-object v5, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->L:[Z

    .line 781
    :cond_f
    iget-object v5, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->M:[J

    iget-object v6, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->K:[J

    const/4 v7, 0x0

    invoke-static {v5, v7, v6, v11, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 782
    iget-object v5, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->N:[Z

    iget-object v6, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->L:[Z

    invoke-static {v5, v7, v6, v11, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 783
    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->l:Lcom/google/android/exoplayer2/ui/c;

    iget-object v5, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->K:[J

    iget-object v6, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->L:[Z

    invoke-interface {v1, v5, v6, v4}, Lcom/google/android/exoplayer2/ui/c;->a([J[ZI)V

    goto :goto_b

    :cond_10
    const-wide/16 v2, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v12, 0x0

    .line 786
    :cond_11
    :goto_b
    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->j:Landroid/widget/TextView;

    if-eqz v1, :cond_12

    .line 787
    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->j:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->m:Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->n:Ljava/util/Formatter;

    invoke-static {v4, v5, v2, v3}, Lcom/google/android/exoplayer2/util/aa;->a(Ljava/lang/StringBuilder;Ljava/util/Formatter;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 789
    :cond_12
    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->k:Landroid/widget/TextView;

    if-eqz v1, :cond_13

    iget-boolean v1, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->D:Z

    if-nez v1, :cond_13

    .line 790
    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->k:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->m:Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->n:Ljava/util/Formatter;

    invoke-static {v4, v5, v8, v9}, Lcom/google/android/exoplayer2/util/aa;->a(Ljava/lang/StringBuilder;Ljava/util/Formatter;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 792
    :cond_13
    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->l:Lcom/google/android/exoplayer2/ui/c;

    if-eqz v1, :cond_14

    .line 793
    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->l:Lcom/google/android/exoplayer2/ui/c;

    invoke-interface {v1, v8, v9}, Lcom/google/android/exoplayer2/ui/c;->setPosition(J)V

    .line 794
    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->l:Lcom/google/android/exoplayer2/ui/c;

    invoke-interface {v1, v12, v13}, Lcom/google/android/exoplayer2/ui/c;->setBufferedPosition(J)V

    .line 795
    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->l:Lcom/google/android/exoplayer2/ui/c;

    invoke-interface {v1, v2, v3}, Lcom/google/android/exoplayer2/ui/c;->setDuration(J)V

    .line 799
    :cond_14
    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->O:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 800
    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->w:Lcom/google/android/exoplayer2/v;

    if-nez v1, :cond_15

    const/4 v1, 0x1

    const/4 v4, 0x1

    goto :goto_c

    :cond_15
    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->w:Lcom/google/android/exoplayer2/v;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/v;->c()I

    move-result v4

    const/4 v1, 0x1

    :goto_c
    if-eq v4, v1, :cond_1b

    const/4 v1, 0x4

    if-eq v4, v1, :cond_1b

    .line 803
    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->w:Lcom/google/android/exoplayer2/v;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/v;->e()Z

    move-result v1

    const-wide/16 v2, 0x3e8

    if-eqz v1, :cond_1a

    const/4 v1, 0x3

    if-ne v4, v1, :cond_1a

    .line 804
    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->w:Lcom/google/android/exoplayer2/v;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/v;->h()Lcom/google/android/exoplayer2/t;

    move-result-object v1

    iget v1, v1, Lcom/google/android/exoplayer2/t;->b:F

    const v4, 0x3dcccccd    # 0.1f

    cmpg-float v4, v1, v4

    if-gtz v4, :cond_16

    goto :goto_d

    :cond_16
    const/high16 v2, 0x40a00000    # 5.0f

    cmpg-float v2, v1, v2

    if-gtz v2, :cond_19

    const/16 v2, 0x3e8

    const/high16 v3, 0x3f800000    # 1.0f

    div-float v4, v3, v1

    .line 808
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    const/4 v5, 0x1

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    div-int/2addr v2, v4

    int-to-long v4, v2

    .line 809
    rem-long/2addr v8, v4

    sub-long v6, v4, v8

    const-wide/16 v8, 0x5

    .line 810
    div-long v8, v4, v8

    cmp-long v2, v6, v8

    if-gez v2, :cond_17

    add-long v8, v6, v4

    move-wide v6, v8

    :cond_17
    cmpl-float v2, v1, v3

    if-nez v2, :cond_18

    move-wide v2, v6

    goto :goto_d

    :cond_18
    long-to-float v2, v6

    div-float/2addr v2, v1

    float-to-long v1, v2

    move-wide v2, v1

    goto :goto_d

    :cond_19
    const-wide/16 v2, 0xc8

    .line 821
    :cond_1a
    :goto_d
    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->O:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1b
    return-void

    :cond_1c
    :goto_e
    return-void
.end method

.method static synthetic k(Lcom/google/android/exoplayer2/ui/PlayerControlView;)V
    .locals 0

    .line 162
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->i()V

    return-void
.end method

.method private l()V
    .locals 2

    .line 826
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->q()Z

    move-result v0

    if-nez v0, :cond_0

    .line 827
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->d:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 828
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 829
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->e:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 830
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic l(Lcom/google/android/exoplayer2/ui/PlayerControlView;)V
    .locals 0

    .line 162
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->j()V

    return-void
.end method

.method static synthetic m(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Landroid/view/View;
    .locals 0

    .line 162
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->c:Landroid/view/View;

    return-object p0
.end method

.method private m()V
    .locals 6

    .line 844
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->w:Lcom/google/android/exoplayer2/v;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/v;->y()Lcom/google/android/exoplayer2/ad;

    move-result-object v0

    .line 845
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ad;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 848
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->w:Lcom/google/android/exoplayer2/v;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/v;->k()I

    move-result v1

    .line 849
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->p:Lcom/google/android/exoplayer2/ad$b;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/ad;->a(ILcom/google/android/exoplayer2/ad$b;)Lcom/google/android/exoplayer2/ad$b;

    .line 850
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->w:Lcom/google/android/exoplayer2/v;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/v;->m()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 851
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->w:Lcom/google/android/exoplayer2/v;

    .line 852
    invoke-interface {v1}, Lcom/google/android/exoplayer2/v;->o()J

    move-result-wide v1

    const-wide/16 v3, 0xbb8

    cmp-long v5, v1, v3

    if-lez v5, :cond_1

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->p:Lcom/google/android/exoplayer2/ad$b;

    iget-boolean v1, v1, Lcom/google/android/exoplayer2/ad$b;->e:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->p:Lcom/google/android/exoplayer2/ad$b;

    iget-boolean v1, v1, Lcom/google/android/exoplayer2/ad$b;->d:Z

    if-nez v1, :cond_2

    :cond_1
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 854
    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->a(IJ)V

    goto :goto_0

    :cond_2
    const-wide/16 v0, 0x0

    .line 856
    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->a(J)V

    :goto_0
    return-void
.end method

.method private n()V
    .locals 6

    .line 861
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->w:Lcom/google/android/exoplayer2/v;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/v;->y()Lcom/google/android/exoplayer2/ad;

    move-result-object v0

    .line 862
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ad;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 865
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->w:Lcom/google/android/exoplayer2/v;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/v;->k()I

    move-result v1

    .line 866
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->w:Lcom/google/android/exoplayer2/v;

    invoke-interface {v2}, Lcom/google/android/exoplayer2/v;->l()I

    move-result v2

    const/4 v3, -0x1

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    if-eq v2, v3, :cond_1

    .line 868
    invoke-direct {p0, v2, v4, v5}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->a(IJ)V

    goto :goto_0

    .line 869
    :cond_1
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->p:Lcom/google/android/exoplayer2/ad$b;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/ad;->a(ILcom/google/android/exoplayer2/ad$b;Z)Lcom/google/android/exoplayer2/ad$b;

    move-result-object v0

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/ad$b;->e:Z

    if-eqz v0, :cond_2

    .line 870
    invoke-direct {p0, v1, v4, v5}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->a(IJ)V

    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic n(Lcom/google/android/exoplayer2/ui/PlayerControlView;)V
    .locals 0

    .line 162
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->n()V

    return-void
.end method

.method static synthetic o(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Landroid/view/View;
    .locals 0

    .line 162
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->b:Landroid/view/View;

    return-object p0
.end method

.method private o()V
    .locals 6

    .line 875
    iget v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->E:I

    if-gtz v0, :cond_0

    return-void

    .line 878
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->w:Lcom/google/android/exoplayer2/v;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/v;->o()J

    move-result-wide v0

    iget v2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->E:I

    int-to-long v2, v2

    sub-long v4, v0, v2

    const-wide/16 v0, 0x0

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->a(J)V

    return-void
.end method

.method private p()V
    .locals 8

    .line 882
    iget v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->F:I

    if-gtz v0, :cond_0

    return-void

    .line 885
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->w:Lcom/google/android/exoplayer2/v;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/v;->n()J

    move-result-wide v0

    .line 886
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->w:Lcom/google/android/exoplayer2/v;

    invoke-interface {v2}, Lcom/google/android/exoplayer2/v;->o()J

    move-result-wide v2

    iget v4, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->F:I

    int-to-long v4, v4

    add-long v6, v2, v4

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 888
    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    .line 890
    :cond_1
    invoke-direct {p0, v6, v7}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->a(J)V

    return-void
.end method

.method static synthetic p(Lcom/google/android/exoplayer2/ui/PlayerControlView;)V
    .locals 0

    .line 162
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->m()V

    return-void
.end method

.method static synthetic q(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Landroid/view/View;
    .locals 0

    .line 162
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->f:Landroid/view/View;

    return-object p0
.end method

.method private q()Z
    .locals 3

    .line 1003
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->w:Lcom/google/android/exoplayer2/v;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->w:Lcom/google/android/exoplayer2/v;

    .line 1004
    invoke-interface {v0}, Lcom/google/android/exoplayer2/v;->c()I

    move-result v0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->w:Lcom/google/android/exoplayer2/v;

    .line 1005
    invoke-interface {v0}, Lcom/google/android/exoplayer2/v;->c()I

    move-result v0

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->w:Lcom/google/android/exoplayer2/v;

    .line 1006
    invoke-interface {v0}, Lcom/google/android/exoplayer2/v;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method static synthetic r(Lcom/google/android/exoplayer2/ui/PlayerControlView;)V
    .locals 0

    .line 162
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->p()V

    return-void
.end method

.method static synthetic s(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Landroid/view/View;
    .locals 0

    .line 162
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->g:Landroid/view/View;

    return-object p0
.end method

.method static synthetic t(Lcom/google/android/exoplayer2/ui/PlayerControlView;)V
    .locals 0

    .line 162
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->o()V

    return-void
.end method

.method static synthetic u(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Landroid/view/View;
    .locals 0

    .line 162
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->d:Landroid/view/View;

    return-object p0
.end method

.method static synthetic v(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Lcom/google/android/exoplayer2/u;
    .locals 0

    .line 162
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->z:Lcom/google/android/exoplayer2/u;

    return-object p0
.end method

.method static synthetic w(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Lcom/google/android/exoplayer2/c;
    .locals 0

    .line 162
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->x:Lcom/google/android/exoplayer2/c;

    return-object p0
.end method

.method static synthetic x(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Landroid/view/View;
    .locals 0

    .line 162
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->e:Landroid/view/View;

    return-object p0
.end method

.method static synthetic y(Lcom/google/android/exoplayer2/ui/PlayerControlView;)Landroid/widget/ImageView;
    .locals 0

    .line 162
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->h:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic z(Lcom/google/android/exoplayer2/ui/PlayerControlView;)I
    .locals 0

    .line 162
    iget p0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->H:I

    return p0
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 559
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->c()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 560
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->setVisibility(I)V

    .line 561
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->y:Lcom/google/android/exoplayer2/ui/PlayerControlView$b;

    if-eqz v0, :cond_0

    .line 562
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->y:Lcom/google/android/exoplayer2/ui/PlayerControlView$b;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->getVisibility()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/ui/PlayerControlView$b;->a(I)V

    .line 564
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->e()V

    .line 565
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->l()V

    .line 568
    :cond_1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->d()V

    return-void
.end method

.method public a(Landroid/view/KeyEvent;)Z
    .locals 4

    .line 968
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 969
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->w:Lcom/google/android/exoplayer2/v;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->a(I)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 972
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_3

    const/16 v1, 0x5a

    if-ne v0, v1, :cond_1

    .line 974
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->p()V

    goto :goto_0

    :cond_1
    const/16 v1, 0x59

    if-ne v0, v1, :cond_2

    .line 976
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->o()V

    goto :goto_0

    .line 977
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    if-nez p1, :cond_3

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 986
    :sswitch_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->x:Lcom/google/android/exoplayer2/c;

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->w:Lcom/google/android/exoplayer2/v;

    invoke-interface {p1, v0, v2}, Lcom/google/android/exoplayer2/c;->a(Lcom/google/android/exoplayer2/v;Z)Z

    goto :goto_0

    .line 983
    :sswitch_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->x:Lcom/google/android/exoplayer2/c;

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->w:Lcom/google/android/exoplayer2/v;

    invoke-interface {p1, v0, v3}, Lcom/google/android/exoplayer2/c;->a(Lcom/google/android/exoplayer2/v;Z)Z

    goto :goto_0

    .line 992
    :sswitch_2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->m()V

    goto :goto_0

    .line 989
    :sswitch_3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->n()V

    goto :goto_0

    .line 980
    :sswitch_4
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->x:Lcom/google/android/exoplayer2/c;

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->w:Lcom/google/android/exoplayer2/v;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->w:Lcom/google/android/exoplayer2/v;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/v;->e()Z

    move-result v1

    xor-int/2addr v1, v3

    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/c;->a(Lcom/google/android/exoplayer2/v;Z)Z

    :cond_3
    :goto_0
    return v3

    :cond_4
    :goto_1
    return v2

    nop

    :sswitch_data_0
    .sparse-switch
        0x55 -> :sswitch_4
        0x57 -> :sswitch_3
        0x58 -> :sswitch_2
        0x7e -> :sswitch_1
        0x7f -> :sswitch_0
    .end sparse-switch
.end method

.method public b()V
    .locals 2

    .line 573
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    .line 574
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->setVisibility(I)V

    .line 575
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->y:Lcom/google/android/exoplayer2/ui/PlayerControlView$b;

    if-eqz v0, :cond_0

    .line 576
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->y:Lcom/google/android/exoplayer2/ui/PlayerControlView$b;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->getVisibility()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/ui/PlayerControlView$b;->a(I)V

    .line 578
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->O:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 579
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->P:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->removeCallbacks(Ljava/lang/Runnable;)Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 580
    iput-wide v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->J:J

    :cond_1
    return-void
.end method

.method public c()Z
    .locals 1

    .line 586
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 957
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->a(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

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

.method public getPlayer()Lcom/google/android/exoplayer2/v;
    .locals 1

    .line 370
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->w:Lcom/google/android/exoplayer2/v;

    return-object v0
.end method

.method public getRepeatToggleModes()I
    .locals 1

    .line 514
    iget v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->H:I

    return v0
.end method

.method public getShowShuffleButton()Z
    .locals 1

    .line 541
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->I:Z

    return v0
.end method

.method public getShowTimeoutMs()I
    .locals 1

    .line 490
    iget v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->G:I

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 6

    .line 932
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    const/4 v0, 0x1

    .line 933
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->A:Z

    .line 934
    iget-wide v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->J:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 935
    iget-wide v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->J:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long v4, v0, v2

    const-wide/16 v0, 0x0

    cmp-long v2, v4, v0

    if-gtz v2, :cond_0

    .line 937
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->b()V

    goto :goto_0

    .line 939
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->P:Ljava/lang/Runnable;

    invoke-virtual {p0, v0, v4, v5}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 941
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 942
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->d()V

    .line 944
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->e()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 949
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 950
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->A:Z

    .line 951
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->O:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 952
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->P:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setControlDispatcher(Lcom/google/android/exoplayer2/c;)V
    .locals 0
    .param p1    # Lcom/google/android/exoplayer2/c;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    .line 454
    new-instance p1, Lcom/google/android/exoplayer2/d;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/d;-><init>()V

    :cond_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->x:Lcom/google/android/exoplayer2/c;

    return-void
.end method

.method public setFastForwardIncrementMs(I)V
    .locals 0

    .line 478
    iput p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->F:I

    .line 479
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->g()V

    return-void
.end method

.method public setPlaybackPreparer(Lcom/google/android/exoplayer2/u;)V
    .locals 0
    .param p1    # Lcom/google/android/exoplayer2/u;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 443
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->z:Lcom/google/android/exoplayer2/u;

    return-void
.end method

.method public setPlayer(Lcom/google/android/exoplayer2/v;)V
    .locals 2

    .line 379
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->w:Lcom/google/android/exoplayer2/v;

    if-ne v0, p1, :cond_0

    return-void

    .line 382
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->w:Lcom/google/android/exoplayer2/v;

    if-eqz v0, :cond_1

    .line 383
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->w:Lcom/google/android/exoplayer2/v;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView$a;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/v;->b(Lcom/google/android/exoplayer2/v$b;)V

    .line 385
    :cond_1
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->w:Lcom/google/android/exoplayer2/v;

    if-eqz p1, :cond_2

    .line 387
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView$a;

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/v;->a(Lcom/google/android/exoplayer2/v$b;)V

    .line 389
    :cond_2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->e()V

    return-void
.end method

.method public setRepeatToggleModes(I)V
    .locals 3

    .line 523
    iput p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->H:I

    .line 524
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->w:Lcom/google/android/exoplayer2/v;

    if-eqz v0, :cond_2

    .line 525
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->w:Lcom/google/android/exoplayer2/v;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/v;->f()I

    move-result v0

    if-nez p1, :cond_0

    if-eqz v0, :cond_0

    .line 528
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->x:Lcom/google/android/exoplayer2/c;

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->w:Lcom/google/android/exoplayer2/v;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/c;->a(Lcom/google/android/exoplayer2/v;I)Z

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    if-ne v0, v1, :cond_1

    .line 531
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->x:Lcom/google/android/exoplayer2/c;

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->w:Lcom/google/android/exoplayer2/v;

    invoke-interface {p1, v0, v2}, Lcom/google/android/exoplayer2/c;->a(Lcom/google/android/exoplayer2/v;I)Z

    goto :goto_0

    :cond_1
    if-ne p1, v1, :cond_2

    if-ne v0, v2, :cond_2

    .line 534
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->x:Lcom/google/android/exoplayer2/c;

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->w:Lcom/google/android/exoplayer2/v;

    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/c;->a(Lcom/google/android/exoplayer2/v;I)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public setRewindIncrementMs(I)V
    .locals 0

    .line 467
    iput p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->E:I

    .line 468
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->g()V

    return-void
.end method

.method public setShowMultiWindowTimeBar(Z)V
    .locals 0

    .line 401
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->B:Z

    .line 402
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->j()V

    return-void
.end method

.method public setShowShuffleButton(Z)V
    .locals 0

    .line 550
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->I:Z

    .line 551
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->i()V

    return-void
.end method

.method public setShowTimeoutMs(I)V
    .locals 0

    .line 501
    iput p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->G:I

    .line 502
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->c()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 504
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->d()V

    :cond_0
    return-void
.end method

.method public setVisibilityListener(Lcom/google/android/exoplayer2/ui/PlayerControlView$b;)V
    .locals 0

    .line 434
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->y:Lcom/google/android/exoplayer2/ui/PlayerControlView$b;

    return-void
.end method
