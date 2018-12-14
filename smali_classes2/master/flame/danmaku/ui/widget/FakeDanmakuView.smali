.class public Lmaster/flame/danmaku/ui/widget/FakeDanmakuView;
.super Lmaster/flame/danmaku/ui/widget/DanmakuView;
.source "FakeDanmakuView.java"

# interfaces
.implements Lmaster/flame/danmaku/a/c$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmaster/flame/danmaku/ui/widget/FakeDanmakuView$b;,
        Lmaster/flame/danmaku/ui/widget/FakeDanmakuView$a;
    }
.end annotation


# instance fields
.field private e:Lmaster/flame/danmaku/danmaku/model/f;

.field private f:Z

.field private g:Lmaster/flame/danmaku/ui/widget/FakeDanmakuView$b;

.field private h:I

.field private i:I

.field private j:F

.field private k:Lmaster/flame/danmaku/danmaku/model/f;

.field private l:J

.field private m:J

.field private n:J

.field private o:Landroid/graphics/Bitmap;

.field private p:Landroid/graphics/Canvas;

.field private q:I

.field private r:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 154
    invoke-direct {p0, p1}, Lmaster/flame/danmaku/ui/widget/DanmakuView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 140
    iput p1, p0, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView;->h:I

    .line 141
    iput p1, p0, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView;->i:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 142
    iput v0, p0, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView;->j:F

    const-wide/16 v0, 0x10

    .line 145
    iput-wide v0, p0, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView;->m:J

    .line 150
    iput p1, p0, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView;->q:I

    const-wide/16 v0, 0x0

    .line 151
    iput-wide v0, p0, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView;->r:J

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a(Lmaster/flame/danmaku/danmaku/a/a;Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;)V
    .locals 8

    .line 261
    new-instance v7, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView$a;

    iget-wide v3, p0, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView;->l:J

    iget-wide v5, p0, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView;->n:J

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView$a;-><init>(Lmaster/flame/danmaku/ui/widget/FakeDanmakuView;Lmaster/flame/danmaku/danmaku/a/a;JJ)V

    .line 264
    :try_start_0
    invoke-virtual {p2}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    .line 265
    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->h()Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    .line 266
    sget v0, Lmaster/flame/danmaku/danmaku/model/c;->a:I

    iput v0, p1, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->b:I

    .line 267
    iget v0, p2, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->b:I

    int-to-float v0, v0

    sget v1, Lmaster/flame/danmaku/danmaku/model/c;->a:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {p1, v0}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->a(F)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    .line 268
    iget-object v0, p1, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->r:Lmaster/flame/danmaku/danmaku/model/j;

    iget-object v1, p2, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->r:Lmaster/flame/danmaku/danmaku/model/j;

    iget v1, v1, Lmaster/flame/danmaku/danmaku/model/j;->c:I

    iput v1, v0, Lmaster/flame/danmaku/danmaku/model/j;->c:I

    const/4 v0, 0x0

    .line 269
    invoke-virtual {p1, v0}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->a(Lmaster/flame/danmaku/danmaku/model/a;)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    .line 270
    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->g()V

    .line 271
    iget-object v0, p1, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->r:Lmaster/flame/danmaku/danmaku/model/j;

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/j;->b()V
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 273
    invoke-static {p1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    move-object p1, p2

    :goto_0
    const/4 p2, 0x1

    .line 276
    iput-byte p2, p1, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->v:B

    .line 277
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView;->g:Lmaster/flame/danmaku/ui/widget/FakeDanmakuView$b;

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView;->g:Lmaster/flame/danmaku/ui/widget/FakeDanmakuView$b;

    invoke-interface {v0, p1}, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView$b;->a(Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;)V

    .line 280
    :cond_0
    invoke-super {p0, v7, p1}, Lmaster/flame/danmaku/ui/widget/DanmakuView;->a(Lmaster/flame/danmaku/danmaku/a/a;Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;)V

    .line 281
    iget-object p1, p0, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView;->a:Lmaster/flame/danmaku/a/c;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lmaster/flame/danmaku/a/c;->a(Z)V

    .line 282
    iget-object p1, p0, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView;->a:Lmaster/flame/danmaku/a/c;

    invoke-virtual {p1, p2}, Lmaster/flame/danmaku/a/c;->b(Z)V

    return-void
.end method

.method public a(Lmaster/flame/danmaku/danmaku/model/d;)V
    .locals 0

    return-void
.end method

.method public a(Lmaster/flame/danmaku/danmaku/model/f;)V
    .locals 3

    .line 330
    iput-object p1, p0, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView;->e:Lmaster/flame/danmaku/danmaku/model/f;

    .line 331
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView;->k:Lmaster/flame/danmaku/danmaku/model/f;

    iget-wide v0, v0, Lmaster/flame/danmaku/danmaku/model/f;->a:J

    invoke-virtual {p1, v0, v1}, Lmaster/flame/danmaku/danmaku/model/f;->a(J)J

    .line 332
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView;->k:Lmaster/flame/danmaku/danmaku/model/f;

    iget-wide v1, p0, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView;->m:J

    invoke-virtual {v0, v1, v2}, Lmaster/flame/danmaku/danmaku/model/f;->b(J)J

    .line 333
    iget-wide v0, p0, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView;->m:J

    invoke-virtual {p1, v0, v1}, Lmaster/flame/danmaku/danmaku/model/f;->b(J)J

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public getViewHeight()I
    .locals 1

    .line 256
    iget v0, p0, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView;->i:I

    return v0
.end method

.method public getViewWidth()I
    .locals 1

    .line 251
    iget v0, p0, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView;->h:I

    return v0
.end method

.method public h()V
    .locals 1

    const/4 v0, 0x1

    .line 229
    iput-boolean v0, p0, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView;->f:Z

    .line 230
    invoke-super {p0}, Lmaster/flame/danmaku/ui/widget/DanmakuView;->h()V

    const/4 v0, 0x0

    .line 231
    iput-object v0, p0, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView;->o:Landroid/graphics/Bitmap;

    return-void
.end method

.method public isShown()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public k()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public l()J
    .locals 12

    .line 172
    iget-boolean v0, p0, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView;->f:Z

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    return-wide v1

    .line 175
    :cond_0
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView;->p:Landroid/graphics/Canvas;

    if-nez v0, :cond_1

    return-wide v1

    .line 179
    :cond_1
    iget-object v3, p0, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView;->o:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_b

    .line 180
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-eqz v4, :cond_2

    goto/16 :goto_5

    :cond_2
    const/4 v1, 0x0

    .line 183
    invoke-virtual {v3, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 184
    iget-boolean v2, p0, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView;->d:Z

    if-eqz v2, :cond_3

    .line 185
    invoke-static {v0}, Lmaster/flame/danmaku/a/d;->a(Landroid/graphics/Canvas;)V

    .line 186
    iput-boolean v1, p0, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView;->d:Z

    goto :goto_0

    .line 188
    :cond_3
    iget-object v2, p0, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView;->a:Lmaster/flame/danmaku/a/c;

    if-eqz v2, :cond_4

    .line 189
    iget-object v2, p0, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView;->a:Lmaster/flame/danmaku/a/c;

    invoke-virtual {v2, v0}, Lmaster/flame/danmaku/a/c;->a(Landroid/graphics/Canvas;)Lmaster/flame/danmaku/danmaku/b/a$b;

    .line 192
    :cond_4
    :goto_0
    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView;->g:Lmaster/flame/danmaku/ui/widget/FakeDanmakuView$b;

    if-eqz v0, :cond_a

    .line 194
    iget-object v2, p0, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView;->k:Lmaster/flame/danmaku/danmaku/model/f;

    iget-wide v4, v2, Lmaster/flame/danmaku/danmaku/model/f;->a:J

    .line 196
    :try_start_0
    iget-wide v6, p0, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView;->r:J

    iget-wide v8, p0, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView;->m:J

    const/4 v2, 0x0

    sub-long v10, v6, v8

    cmp-long v2, v4, v10

    if-ltz v2, :cond_6

    .line 199
    iget v2, p0, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView;->j:F

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v6

    const/4 v6, 0x1

    if-nez v2, :cond_5

    const/4 v6, 0x0

    goto :goto_1

    .line 202
    :cond_5
    iget v2, p0, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView;->h:I

    int-to-float v2, v2

    iget v7, p0, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView;->j:F

    mul-float v2, v2, v7

    float-to-int v2, v2

    iget v7, p0, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView;->i:I

    int-to-float v7, v7

    iget v8, p0, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView;->j:F

    mul-float v7, v7, v8

    float-to-int v7, v7

    invoke-static {v3, v2, v7, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 205
    :goto_1
    invoke-interface {v0, v4, v5, v3}, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView$b;->a(JLandroid/graphics/Bitmap;)V

    if-eqz v6, :cond_6

    .line 207
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    :cond_6
    iget-wide v2, p0, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView;->n:J

    cmp-long v6, v4, v2

    if-ltz v6, :cond_a

    .line 215
    invoke-virtual {p0}, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView;->h()V

    .line 216
    iget-object v2, p0, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView;->e:Lmaster/flame/danmaku/danmaku/model/f;

    if-eqz v2, :cond_7

    .line 217
    :goto_2
    iget-object v2, p0, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView;->e:Lmaster/flame/danmaku/danmaku/model/f;

    iget-wide v6, p0, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView;->n:J

    invoke-virtual {v2, v6, v7}, Lmaster/flame/danmaku/danmaku/model/f;->a(J)J

    .line 219
    :cond_7
    invoke-interface {v0, v4, v5}, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView$b;->a(J)V

    goto :goto_4

    :catchall_0
    move-exception v1

    goto :goto_3

    :catch_0
    move-exception v2

    .line 211
    :try_start_1
    invoke-virtual {p0}, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView;->h()V

    const/16 v3, 0x65

    .line 212
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView$b;->a(ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 214
    iget-wide v2, p0, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView;->n:J

    cmp-long v6, v4, v2

    if-ltz v6, :cond_a

    .line 215
    invoke-virtual {p0}, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView;->h()V

    .line 216
    iget-object v2, p0, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView;->e:Lmaster/flame/danmaku/danmaku/model/f;

    if-eqz v2, :cond_7

    goto :goto_2

    .line 214
    :goto_3
    iget-wide v2, p0, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView;->n:J

    cmp-long v6, v4, v2

    if-ltz v6, :cond_9

    .line 215
    invoke-virtual {p0}, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView;->h()V

    .line 216
    iget-object v2, p0, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView;->e:Lmaster/flame/danmaku/danmaku/model/f;

    if-eqz v2, :cond_8

    .line 217
    iget-object v2, p0, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView;->e:Lmaster/flame/danmaku/danmaku/model/f;

    iget-wide v6, p0, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView;->n:J

    invoke-virtual {v2, v6, v7}, Lmaster/flame/danmaku/danmaku/model/f;->a(J)J

    .line 219
    :cond_8
    invoke-interface {v0, v4, v5}, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView$b;->a(J)V

    :cond_9
    throw v1

    .line 223
    :cond_a
    :goto_4
    iput-boolean v1, p0, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView;->c:Z

    const-wide/16 v0, 0x2

    return-wide v0

    :cond_b
    :goto_5
    return-wide v1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method public setOnFrameAvailableListener(Lmaster/flame/danmaku/ui/widget/FakeDanmakuView$b;)V
    .locals 0

    .line 292
    iput-object p1, p0, Lmaster/flame/danmaku/ui/widget/FakeDanmakuView;->g:Lmaster/flame/danmaku/ui/widget/FakeDanmakuView$b;

    return-void
.end method
