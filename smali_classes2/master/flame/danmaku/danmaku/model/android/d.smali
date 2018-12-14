.class public Lmaster/flame/danmaku/danmaku/model/android/d;
.super Ljava/lang/Object;
.source "DanmakuFactory.java"


# instance fields
.field public a:I

.field public b:I

.field public c:J

.field public d:J

.field public e:Lmaster/flame/danmaku/danmaku/model/g;

.field public f:Lmaster/flame/danmaku/danmaku/model/g;

.field public g:Lmaster/flame/danmaku/danmaku/model/g;

.field public h:Lmaster/flame/danmaku/danmaku/model/m;

.field private i:Lmaster/flame/danmaku/danmaku/model/q$c;

.field private j:F

.field private k:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;


# direct methods
.method protected constructor <init>()V
    .locals 2

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 48
    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/android/d;->a:I

    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/android/d;->b:I

    const/4 v0, 0x0

    .line 50
    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/d;->i:Lmaster/flame/danmaku/danmaku/model/q$c;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 52
    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/android/d;->j:F

    const-wide/16 v0, 0xed8

    .line 54
    iput-wide v0, p0, Lmaster/flame/danmaku/danmaku/model/android/d;->c:J

    const-wide/16 v0, 0xfa0

    .line 56
    iput-wide v0, p0, Lmaster/flame/danmaku/danmaku/model/android/d;->d:J

    return-void
.end method

.method public static a()Lmaster/flame/danmaku/danmaku/model/android/d;
    .locals 1

    .line 68
    new-instance v0, Lmaster/flame/danmaku/danmaku/model/android/d;

    invoke-direct {v0}, Lmaster/flame/danmaku/danmaku/model/android/d;-><init>()V

    return-object v0
.end method

.method private a(IIFF)V
    .locals 1

    .line 186
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/d;->i:Lmaster/flame/danmaku/danmaku/model/q$c;

    if-nez v0, :cond_0

    .line 187
    new-instance v0, Lmaster/flame/danmaku/danmaku/model/q$c;

    invoke-direct {v0, p1, p2, p3, p4}, Lmaster/flame/danmaku/danmaku/model/q$c;-><init>(IIFF)V

    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/d;->i:Lmaster/flame/danmaku/danmaku/model/q$c;

    .line 189
    :cond_0
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/d;->i:Lmaster/flame/danmaku/danmaku/model/q$c;

    invoke-virtual {v0, p1, p2, p3, p4}, Lmaster/flame/danmaku/danmaku/model/q$c;->a(IIFF)V

    return-void
.end method

.method private a(Lmaster/flame/danmaku/danmaku/model/d;)V
    .locals 5

    .line 288
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/d;->g:Lmaster/flame/danmaku/danmaku/model/g;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lmaster/flame/danmaku/danmaku/model/d;->q:Lmaster/flame/danmaku/danmaku/model/g;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lmaster/flame/danmaku/danmaku/model/d;->q:Lmaster/flame/danmaku/danmaku/model/g;

    iget-wide v0, v0, Lmaster/flame/danmaku/danmaku/model/g;->a:J

    iget-object v2, p0, Lmaster/flame/danmaku/danmaku/model/android/d;->g:Lmaster/flame/danmaku/danmaku/model/g;

    iget-wide v2, v2, Lmaster/flame/danmaku/danmaku/model/g;->a:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 289
    :cond_0
    iget-object p1, p1, Lmaster/flame/danmaku/danmaku/model/d;->q:Lmaster/flame/danmaku/danmaku/model/g;

    iput-object p1, p0, Lmaster/flame/danmaku/danmaku/model/android/d;->g:Lmaster/flame/danmaku/danmaku/model/g;

    .line 290
    invoke-virtual {p0}, Lmaster/flame/danmaku/danmaku/model/android/d;->c()V

    :cond_1
    return-void
.end method

.method public static a(Lmaster/flame/danmaku/danmaku/model/d;[[FFF)V
    .locals 5

    .line 261
    invoke-virtual {p0}, Lmaster/flame/danmaku/danmaku/model/d;->o()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_2

    array-length v0, p1

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    aget-object v1, p1, v0

    array-length v1, v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 264
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 265
    aget-object v2, p1, v1

    aget v3, v2, v0

    mul-float v3, v3, p2

    aput v3, v2, v0

    .line 266
    aget-object v2, p1, v1

    const/4 v3, 0x1

    aget v4, v2, v3

    mul-float v4, v4, p3

    aput v4, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 268
    :cond_1
    check-cast p0, Lmaster/flame/danmaku/danmaku/model/q;

    invoke-virtual {p0, p1}, Lmaster/flame/danmaku/danmaku/model/q;->a([[F)V

    return-void

    :cond_2
    :goto_1
    return-void
.end method

.method private declared-synchronized b(IIFF)V
    .locals 1

    monitor-enter p0

    .line 213
    :try_start_0
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/d;->i:Lmaster/flame/danmaku/danmaku/model/q$c;

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/d;->i:Lmaster/flame/danmaku/danmaku/model/q$c;

    invoke-virtual {v0, p1, p2, p3, p4}, Lmaster/flame/danmaku/danmaku/model/q$c;->a(IIFF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 212
    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public a(I)Lmaster/flame/danmaku/danmaku/model/d;
    .locals 1

    .line 91
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/d;->k:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    invoke-virtual {p0, p1, v0}, Lmaster/flame/danmaku/danmaku/model/android/d;->a(ILmaster/flame/danmaku/danmaku/model/android/DanmakuContext;)Lmaster/flame/danmaku/danmaku/model/d;

    move-result-object p1

    return-object p1
.end method

.method public a(IFFFF)Lmaster/flame/danmaku/danmaku/model/d;
    .locals 5

    .line 134
    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/android/d;->a:I

    .line 135
    iget v1, p0, Lmaster/flame/danmaku/danmaku/model/android/d;->b:I

    .line 136
    invoke-virtual {p0, p2, p3, p4}, Lmaster/flame/danmaku/danmaku/model/android/d;->a(FFF)Z

    move-result p4

    .line 137
    iget-object v2, p0, Lmaster/flame/danmaku/danmaku/model/android/d;->e:Lmaster/flame/danmaku/danmaku/model/g;

    if-nez v2, :cond_0

    .line 138
    new-instance v2, Lmaster/flame/danmaku/danmaku/model/g;

    iget-wide v3, p0, Lmaster/flame/danmaku/danmaku/model/android/d;->c:J

    invoke-direct {v2, v3, v4}, Lmaster/flame/danmaku/danmaku/model/g;-><init>(J)V

    iput-object v2, p0, Lmaster/flame/danmaku/danmaku/model/android/d;->e:Lmaster/flame/danmaku/danmaku/model/g;

    .line 139
    iget-object v2, p0, Lmaster/flame/danmaku/danmaku/model/android/d;->e:Lmaster/flame/danmaku/danmaku/model/g;

    invoke-virtual {v2, p5}, Lmaster/flame/danmaku/danmaku/model/g;->a(F)V

    goto :goto_0

    :cond_0
    if-eqz p4, :cond_1

    .line 141
    iget-object p5, p0, Lmaster/flame/danmaku/danmaku/model/android/d;->e:Lmaster/flame/danmaku/danmaku/model/g;

    iget-wide v2, p0, Lmaster/flame/danmaku/danmaku/model/android/d;->c:J

    invoke-virtual {p5, v2, v3}, Lmaster/flame/danmaku/danmaku/model/g;->a(J)V

    .line 144
    :cond_1
    :goto_0
    iget-object p5, p0, Lmaster/flame/danmaku/danmaku/model/android/d;->f:Lmaster/flame/danmaku/danmaku/model/g;

    if-nez p5, :cond_2

    .line 145
    new-instance p5, Lmaster/flame/danmaku/danmaku/model/g;

    const-wide/16 v2, 0xed8

    invoke-direct {p5, v2, v3}, Lmaster/flame/danmaku/danmaku/model/g;-><init>(J)V

    iput-object p5, p0, Lmaster/flame/danmaku/danmaku/model/android/d;->f:Lmaster/flame/danmaku/danmaku/model/g;

    :cond_2
    const/high16 p5, 0x3f800000    # 1.0f

    if-eqz p4, :cond_4

    const/4 p4, 0x0

    cmpl-float v2, p2, p4

    if-lez v2, :cond_4

    .line 151
    invoke-virtual {p0}, Lmaster/flame/danmaku/danmaku/model/android/d;->c()V

    if-lez v0, :cond_3

    if-lez v1, :cond_3

    int-to-float p5, v0

    div-float p5, p2, p5

    int-to-float v0, v1

    div-float v0, p3, v0

    goto :goto_1

    :cond_3
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_1
    float-to-int v1, p2

    float-to-int v2, p3

    .line 156
    invoke-direct {p0, v1, v2, p5, v0}, Lmaster/flame/danmaku/danmaku/model/android/d;->a(IIFF)V

    cmpl-float p4, p3, p4

    if-lez p4, :cond_5

    .line 158
    invoke-direct {p0, v1, v2, p5, v0}, Lmaster/flame/danmaku/danmaku/model/android/d;->b(IIFF)V

    goto :goto_2

    :cond_4
    const/high16 v0, 0x3f800000    # 1.0f

    :cond_5
    :goto_2
    const/4 p4, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_6

    packed-switch p1, :pswitch_data_0

    goto :goto_3

    .line 177
    :pswitch_0
    new-instance p4, Lmaster/flame/danmaku/danmaku/model/q;

    invoke-direct {p4}, Lmaster/flame/danmaku/danmaku/model/q;-><init>()V

    float-to-int p1, p2

    float-to-int p2, p3

    .line 178
    invoke-direct {p0, p1, p2, p5, v0}, Lmaster/flame/danmaku/danmaku/model/android/d;->a(IIFF)V

    .line 179
    move-object p1, p4

    check-cast p1, Lmaster/flame/danmaku/danmaku/model/q;

    iget-object p2, p0, Lmaster/flame/danmaku/danmaku/model/android/d;->i:Lmaster/flame/danmaku/danmaku/model/q$c;

    invoke-virtual {p1, p2}, Lmaster/flame/danmaku/danmaku/model/q;->a(Lmaster/flame/danmaku/danmaku/model/q$c;)V

    goto :goto_3

    .line 174
    :pswitch_1
    new-instance p4, Lmaster/flame/danmaku/danmaku/model/o;

    iget-object p1, p0, Lmaster/flame/danmaku/danmaku/model/android/d;->e:Lmaster/flame/danmaku/danmaku/model/g;

    invoke-direct {p4, p1}, Lmaster/flame/danmaku/danmaku/model/o;-><init>(Lmaster/flame/danmaku/danmaku/model/g;)V

    goto :goto_3

    .line 171
    :pswitch_2
    new-instance p4, Lmaster/flame/danmaku/danmaku/model/i;

    iget-object p1, p0, Lmaster/flame/danmaku/danmaku/model/android/d;->f:Lmaster/flame/danmaku/danmaku/model/g;

    invoke-direct {p4, p1}, Lmaster/flame/danmaku/danmaku/model/i;-><init>(Lmaster/flame/danmaku/danmaku/model/g;)V

    goto :goto_3

    .line 168
    :pswitch_3
    new-instance p4, Lmaster/flame/danmaku/danmaku/model/h;

    iget-object p1, p0, Lmaster/flame/danmaku/danmaku/model/android/d;->f:Lmaster/flame/danmaku/danmaku/model/g;

    invoke-direct {p4, p1}, Lmaster/flame/danmaku/danmaku/model/h;-><init>(Lmaster/flame/danmaku/danmaku/model/g;)V

    goto :goto_3

    .line 165
    :cond_6
    new-instance p4, Lmaster/flame/danmaku/danmaku/model/p;

    iget-object p1, p0, Lmaster/flame/danmaku/danmaku/model/android/d;->e:Lmaster/flame/danmaku/danmaku/model/g;

    invoke-direct {p4, p1}, Lmaster/flame/danmaku/danmaku/model/p;-><init>(Lmaster/flame/danmaku/danmaku/model/g;)V

    :goto_3
    return-object p4

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(IIIFF)Lmaster/flame/danmaku/danmaku/model/d;
    .locals 6

    int-to-float v2, p2

    int-to-float v3, p3

    move-object v0, p0

    move v1, p1

    move v4, p4

    move v5, p5

    .line 120
    invoke-virtual/range {v0 .. v5}, Lmaster/flame/danmaku/danmaku/model/android/d;->a(IFFFF)Lmaster/flame/danmaku/danmaku/model/d;

    move-result-object p1

    return-object p1
.end method

.method public a(ILmaster/flame/danmaku/danmaku/model/android/DanmakuContext;)Lmaster/flame/danmaku/danmaku/model/d;
    .locals 7

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 97
    :cond_0
    iput-object p2, p0, Lmaster/flame/danmaku/danmaku/model/android/d;->k:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    .line 98
    invoke-virtual {p2}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->b()Lmaster/flame/danmaku/danmaku/model/b;

    move-result-object v0

    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/d;->h:Lmaster/flame/danmaku/danmaku/model/m;

    .line 99
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/d;->h:Lmaster/flame/danmaku/danmaku/model/m;

    invoke-interface {v0}, Lmaster/flame/danmaku/danmaku/model/m;->e()I

    move-result v3

    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/d;->h:Lmaster/flame/danmaku/danmaku/model/m;

    invoke-interface {v0}, Lmaster/flame/danmaku/danmaku/model/m;->f()I

    move-result v4

    iget v5, p0, Lmaster/flame/danmaku/danmaku/model/android/d;->j:F

    iget v6, p2, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->l:F

    move-object v1, p0

    move v2, p1

    invoke-virtual/range {v1 .. v6}, Lmaster/flame/danmaku/danmaku/model/android/d;->a(IIIFF)Lmaster/flame/danmaku/danmaku/model/d;

    move-result-object p1

    return-object p1
.end method

.method public a(F)V
    .locals 1

    .line 231
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/d;->e:Lmaster/flame/danmaku/danmaku/model/g;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/d;->f:Lmaster/flame/danmaku/danmaku/model/g;

    if-nez v0, :cond_0

    goto :goto_0

    .line 233
    :cond_0
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/d;->e:Lmaster/flame/danmaku/danmaku/model/g;

    invoke-virtual {v0, p1}, Lmaster/flame/danmaku/danmaku/model/g;->a(F)V

    .line 234
    invoke-virtual {p0}, Lmaster/flame/danmaku/danmaku/model/android/d;->c()V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;)V
    .locals 1

    .line 85
    iput-object p1, p0, Lmaster/flame/danmaku/danmaku/model/android/d;->k:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    .line 86
    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->b()Lmaster/flame/danmaku/danmaku/model/b;

    move-result-object v0

    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/d;->h:Lmaster/flame/danmaku/danmaku/model/m;

    const/4 v0, 0x1

    .line 87
    invoke-virtual {p0, v0, p1}, Lmaster/flame/danmaku/danmaku/model/android/d;->a(ILmaster/flame/danmaku/danmaku/model/android/DanmakuContext;)Lmaster/flame/danmaku/danmaku/model/d;

    return-void
.end method

.method public a(Lmaster/flame/danmaku/danmaku/model/d;FFFFJJFF)V
    .locals 10

    .line 252
    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/d;->o()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    return-void

    .line 254
    :cond_0
    move-object v1, p1

    check-cast v1, Lmaster/flame/danmaku/danmaku/model/q;

    mul-float v2, p2, p10

    mul-float v3, p3, p11

    mul-float v4, p4, p10

    mul-float v5, p5, p11

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    invoke-virtual/range {v1 .. v9}, Lmaster/flame/danmaku/danmaku/model/q;->a(FFFFJJ)V

    .line 256
    invoke-direct {p0, p1}, Lmaster/flame/danmaku/danmaku/model/android/d;->a(Lmaster/flame/danmaku/danmaku/model/d;)V

    return-void
.end method

.method public a(Lmaster/flame/danmaku/danmaku/model/d;IIJ)V
    .locals 2

    .line 281
    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/d;->o()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    return-void

    .line 283
    :cond_0
    move-object v0, p1

    check-cast v0, Lmaster/flame/danmaku/danmaku/model/q;

    invoke-virtual {v0, p2, p3, p4, p5}, Lmaster/flame/danmaku/danmaku/model/q;->a(IIJ)V

    .line 284
    invoke-direct {p0, p1}, Lmaster/flame/danmaku/danmaku/model/android/d;->a(Lmaster/flame/danmaku/danmaku/model/d;)V

    return-void
.end method

.method public a(FFF)Z
    .locals 6

    .line 195
    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/android/d;->a:I

    float-to-int v1, p1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/android/d;->b:I

    float-to-int v2, p2

    if-ne v0, v2, :cond_1

    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/android/d;->j:F

    cmpl-float v0, v0, p3

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    const v2, 0x456d8000    # 3800.0f

    mul-float p1, p1, p3

    const v3, 0x442a8000    # 682.0f

    div-float/2addr p1, v3

    mul-float p1, p1, v2

    float-to-long v2, p1

    .line 199
    iput-wide v2, p0, Lmaster/flame/danmaku/danmaku/model/android/d;->c:J

    const-wide/16 v2, 0x2328

    .line 201
    iget-wide v4, p0, Lmaster/flame/danmaku/danmaku/model/android/d;->c:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lmaster/flame/danmaku/danmaku/model/android/d;->c:J

    const-wide/16 v2, 0xfa0

    .line 203
    iget-wide v4, p0, Lmaster/flame/danmaku/danmaku/model/android/d;->c:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lmaster/flame/danmaku/danmaku/model/android/d;->c:J

    .line 205
    iput v1, p0, Lmaster/flame/danmaku/danmaku/model/android/d;->a:I

    float-to-int p1, p2

    .line 206
    iput p1, p0, Lmaster/flame/danmaku/danmaku/model/android/d;->b:I

    .line 207
    iput p3, p0, Lmaster/flame/danmaku/danmaku/model/android/d;->j:F

    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public b()V
    .locals 2

    const/4 v0, 0x0

    .line 76
    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/d;->h:Lmaster/flame/danmaku/danmaku/model/m;

    const/4 v1, 0x0

    .line 77
    iput v1, p0, Lmaster/flame/danmaku/danmaku/model/android/d;->b:I

    iput v1, p0, Lmaster/flame/danmaku/danmaku/model/android/d;->a:I

    .line 78
    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/d;->e:Lmaster/flame/danmaku/danmaku/model/g;

    .line 79
    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/d;->f:Lmaster/flame/danmaku/danmaku/model/g;

    .line 80
    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/d;->g:Lmaster/flame/danmaku/danmaku/model/g;

    const-wide/16 v0, 0xfa0

    .line 81
    iput-wide v0, p0, Lmaster/flame/danmaku/danmaku/model/android/d;->d:J

    return-void
.end method

.method public c()V
    .locals 7

    .line 219
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/d;->e:Lmaster/flame/danmaku/danmaku/model/g;

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    move-wide v3, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/d;->e:Lmaster/flame/danmaku/danmaku/model/g;

    iget-wide v3, v0, Lmaster/flame/danmaku/danmaku/model/g;->a:J

    .line 220
    :goto_0
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/d;->f:Lmaster/flame/danmaku/danmaku/model/g;

    if-nez v0, :cond_1

    move-wide v5, v1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/d;->f:Lmaster/flame/danmaku/danmaku/model/g;

    iget-wide v5, v0, Lmaster/flame/danmaku/danmaku/model/g;->a:J

    .line 221
    :goto_1
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/d;->g:Lmaster/flame/danmaku/danmaku/model/g;

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/d;->g:Lmaster/flame/danmaku/danmaku/model/g;

    iget-wide v1, v0, Lmaster/flame/danmaku/danmaku/model/g;->a:J

    .line 223
    :goto_2
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    iput-wide v3, p0, Lmaster/flame/danmaku/danmaku/model/android/d;->d:J

    .line 224
    iget-wide v3, p0, Lmaster/flame/danmaku/danmaku/model/android/d;->d:J

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lmaster/flame/danmaku/danmaku/model/android/d;->d:J

    const-wide/16 v0, 0xed8

    .line 226
    iget-wide v2, p0, Lmaster/flame/danmaku/danmaku/model/android/d;->d:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lmaster/flame/danmaku/danmaku/model/android/d;->d:J

    .line 227
    iget-wide v0, p0, Lmaster/flame/danmaku/danmaku/model/android/d;->c:J

    iget-wide v2, p0, Lmaster/flame/danmaku/danmaku/model/android/d;->d:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lmaster/flame/danmaku/danmaku/model/android/d;->d:J

    return-void
.end method
