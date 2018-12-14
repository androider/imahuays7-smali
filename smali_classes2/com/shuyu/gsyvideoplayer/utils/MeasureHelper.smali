.class public final Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper;
.super Ljava/lang/Object;
.source "MeasureHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper$MeasureFormVideoParamsListener;
    }
.end annotation


# instance fields
.field private mCurrentAspectRatio:I

.field private mMeasuredHeight:I

.field private mMeasuredWidth:I

.field private final mParamsListener:Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper$MeasureFormVideoParamsListener;

.field private mVideoHeight:I

.field private mVideoRotationDegree:I

.field private mVideoSarDen:I

.field private mVideoSarNum:I

.field private mVideoWidth:I

.field private mWeakView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper$MeasureFormVideoParamsListener;)V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput v0, p0, Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper;->mCurrentAspectRatio:I

    .line 43
    iput-object p2, p0, Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper;->mParamsListener:Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper$MeasureFormVideoParamsListener;

    .line 44
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper;->mWeakView:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public doMeasure(II)V
    .locals 8

    .line 76
    invoke-static {}, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoType;->getShowType()I

    move-result v0

    iput v0, p0, Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper;->mCurrentAspectRatio:I

    .line 78
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper;->mVideoRotationDegree:I

    const/16 v1, 0x10e

    const/16 v2, 0x5a

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper;->mVideoRotationDegree:I

    if-ne v0, v1, :cond_1

    :cond_0
    move v7, p2

    move p2, p1

    move p1, v7

    .line 84
    :cond_1
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper;->mVideoWidth:I

    invoke-static {v0, p1}, Landroid/view/View;->getDefaultSize(II)I

    move-result v0

    .line 85
    iget v3, p0, Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper;->mVideoHeight:I

    invoke-static {v3, p2}, Landroid/view/View;->getDefaultSize(II)I

    move-result v3

    .line 86
    iget v4, p0, Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper;->mCurrentAspectRatio:I

    const/4 v5, -0x4

    if-ne v4, v5, :cond_2

    goto/16 :goto_3

    .line 89
    :cond_2
    iget v4, p0, Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper;->mVideoWidth:I

    if-lez v4, :cond_13

    iget v4, p0, Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper;->mVideoHeight:I

    if-lez v4, :cond_13

    .line 90
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 91
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 92
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 93
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/high16 v4, -0x80000000

    if-ne v0, v4, :cond_b

    if-ne v3, v4, :cond_b

    int-to-float v0, p1

    int-to-float v3, p2

    div-float v4, v0, v3

    .line 98
    iget v5, p0, Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper;->mCurrentAspectRatio:I

    packed-switch v5, :pswitch_data_0

    .line 113
    iget v1, p0, Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper;->mVideoWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper;->mVideoHeight:I

    int-to-float v2, v2

    div-float v5, v1, v2

    .line 114
    iget v1, p0, Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper;->mVideoSarNum:I

    if-lez v1, :cond_5

    iget v1, p0, Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper;->mVideoSarDen:I

    if-lez v1, :cond_5

    .line 115
    iget v1, p0, Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper;->mVideoSarNum:I

    int-to-float v1, v1

    mul-float v5, v5, v1

    iget v1, p0, Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper;->mVideoSarDen:I

    int-to-float v1, v1

    div-float/2addr v5, v1

    goto :goto_0

    :pswitch_0
    const v5, 0x3faaaaab

    .line 106
    iget v6, p0, Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper;->mVideoRotationDegree:I

    if-eq v6, v2, :cond_3

    iget v2, p0, Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper;->mVideoRotationDegree:I

    if-ne v2, v1, :cond_5

    :cond_3
    const/high16 v5, 0x3f400000    # 0.75f

    goto :goto_0

    :pswitch_1
    const v5, 0x3fe38e39

    .line 101
    iget v6, p0, Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper;->mVideoRotationDegree:I

    if-eq v6, v2, :cond_4

    iget v2, p0, Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper;->mVideoRotationDegree:I

    if-ne v2, v1, :cond_5

    :cond_4
    const/high16 v5, 0x3f100000    # 0.5625f

    :cond_5
    :goto_0
    cmpl-float v1, v5, v4

    if-lez v1, :cond_6

    const/4 v1, 0x1

    goto :goto_1

    :cond_6
    const/4 v1, 0x0

    .line 120
    :goto_1
    iget v2, p0, Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper;->mCurrentAspectRatio:I

    const/4 v4, 0x4

    if-eq v2, v4, :cond_9

    packed-switch v2, :pswitch_data_1

    if-eqz v1, :cond_7

    .line 149
    iget p2, p0, Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper;->mVideoWidth:I

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-float p2, p1

    div-float/2addr p2, v5

    float-to-int p2, p2

    goto/16 :goto_3

    .line 153
    :cond_7
    iget p1, p0, Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper;->mVideoHeight:I

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-float p2, p1

    mul-float p2, p2, v5

    float-to-int p2, p2

    move v7, p2

    move p2, p1

    move p1, v7

    goto/16 :goto_3

    :pswitch_2
    if-eqz v1, :cond_8

    div-float/2addr v0, v5

    float-to-int p2, v0

    goto/16 :goto_3

    :cond_8
    mul-float v3, v3, v5

    float-to-int p1, v3

    goto/16 :goto_3

    :cond_9
    if-eqz v1, :cond_a

    mul-float v3, v3, v5

    float-to-int p1, v3

    goto/16 :goto_3

    :cond_a
    div-float/2addr v0, v5

    float-to-int p2, v0

    goto/16 :goto_3

    :cond_b
    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_d

    if-ne v3, v1, :cond_d

    .line 164
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper;->mVideoWidth:I

    mul-int v0, v0, p2

    iget v1, p0, Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper;->mVideoHeight:I

    mul-int v1, v1, p1

    if-ge v0, v1, :cond_c

    .line 166
    iget p1, p0, Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper;->mVideoWidth:I

    mul-int p1, p1, p2

    iget v0, p0, Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper;->mVideoHeight:I

    div-int/2addr p1, v0

    goto :goto_3

    .line 167
    :cond_c
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper;->mVideoWidth:I

    mul-int v0, v0, p2

    iget v1, p0, Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper;->mVideoHeight:I

    mul-int v1, v1, p1

    if-le v0, v1, :cond_14

    .line 169
    iget p2, p0, Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper;->mVideoHeight:I

    mul-int p2, p2, p1

    iget v0, p0, Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper;->mVideoWidth:I

    div-int/2addr p2, v0

    goto :goto_3

    :cond_d
    if-ne v0, v1, :cond_f

    .line 174
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper;->mVideoHeight:I

    mul-int v0, v0, p1

    iget v1, p0, Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper;->mVideoWidth:I

    div-int/2addr v0, v1

    if-ne v3, v4, :cond_e

    if-le v0, p2, :cond_e

    goto :goto_3

    :cond_e
    move p2, v0

    goto :goto_3

    :cond_f
    if-ne v3, v1, :cond_11

    .line 182
    iget v1, p0, Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper;->mVideoWidth:I

    mul-int v1, v1, p2

    iget v2, p0, Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper;->mVideoHeight:I

    div-int/2addr v1, v2

    if-ne v0, v4, :cond_10

    if-le v1, p1, :cond_10

    goto :goto_3

    :cond_10
    move p1, v1

    goto :goto_3

    .line 189
    :cond_11
    iget v1, p0, Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper;->mVideoWidth:I

    .line 190
    iget v2, p0, Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper;->mVideoHeight:I

    if-ne v3, v4, :cond_12

    if-le v2, p2, :cond_12

    .line 194
    iget v1, p0, Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper;->mVideoWidth:I

    mul-int v1, v1, p2

    iget v2, p0, Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper;->mVideoHeight:I

    div-int/2addr v1, v2

    goto :goto_2

    :cond_12
    move p2, v2

    :goto_2
    if-ne v0, v4, :cond_10

    if-le v1, p1, :cond_10

    .line 199
    iget p2, p0, Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper;->mVideoHeight:I

    mul-int p2, p2, p1

    iget v0, p0, Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper;->mVideoWidth:I

    div-int/2addr p2, v0

    goto :goto_3

    :cond_13
    move p1, v0

    move p2, v3

    .line 206
    :cond_14
    :goto_3
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper;->mMeasuredWidth:I

    .line 207
    iput p2, p0, Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper;->mMeasuredHeight:I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public getMeasuredHeight()I
    .locals 1

    .line 238
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper;->mMeasuredHeight:I

    return v0
.end method

.method public getMeasuredWidth()I
    .locals 1

    .line 234
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper;->mMeasuredWidth:I

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper;->mWeakView:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper;->mWeakView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public prepareMeasure(III)V
    .locals 4

    .line 212
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper;->mParamsListener:Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper$MeasureFormVideoParamsListener;

    if-eqz v0, :cond_1

    .line 214
    :try_start_0
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper;->mParamsListener:Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper$MeasureFormVideoParamsListener;

    invoke-interface {v0}, Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper$MeasureFormVideoParamsListener;->getCurrentVideoWidth()I

    move-result v0

    .line 215
    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper;->mParamsListener:Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper$MeasureFormVideoParamsListener;

    invoke-interface {v1}, Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper$MeasureFormVideoParamsListener;->getCurrentVideoHeight()I

    move-result v1

    .line 216
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "videoWidth: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " videoHeight: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/shuyu/gsyvideoplayer/utils/Debuger;->printfLog(Ljava/lang/String;)V

    .line 217
    iget-object v2, p0, Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper;->mParamsListener:Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper$MeasureFormVideoParamsListener;

    invoke-interface {v2}, Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper$MeasureFormVideoParamsListener;->getVideoSarNum()I

    move-result v2

    .line 218
    iget-object v3, p0, Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper;->mParamsListener:Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper$MeasureFormVideoParamsListener;

    invoke-interface {v3}, Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper$MeasureFormVideoParamsListener;->getVideoSarDen()I

    move-result v3

    if-lez v0, :cond_0

    if-lez v1, :cond_0

    .line 221
    invoke-virtual {p0, v2, v3}, Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper;->setVideoSampleAspectRatio(II)V

    .line 222
    invoke-virtual {p0, v0, v1}, Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper;->setVideoSize(II)V

    .line 224
    :cond_0
    invoke-virtual {p0, p3}, Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper;->setVideoRotation(I)V

    .line 225
    invoke-virtual {p0, p1, p2}, Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper;->doMeasure(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 227
    invoke-static {p1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setAspectRatio(I)V
    .locals 0

    .line 242
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper;->mCurrentAspectRatio:I

    return-void
.end method

.method public setVideoRotation(I)V
    .locals 0

    .line 65
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper;->mVideoRotationDegree:I

    return-void
.end method

.method public setVideoSampleAspectRatio(II)V
    .locals 0

    .line 60
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper;->mVideoSarNum:I

    .line 61
    iput p2, p0, Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper;->mVideoSarDen:I

    return-void
.end method

.method public setVideoSize(II)V
    .locals 0

    .line 55
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper;->mVideoWidth:I

    .line 56
    iput p2, p0, Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper;->mVideoHeight:I

    return-void
.end method
