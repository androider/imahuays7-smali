.class public Lcom/flyco/dialog/utils/CornerUtils;
.super Ljava/lang/Object;
.source "CornerUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static btnSelector(FIII)Landroid/graphics/drawable/StateListDrawable;
    .locals 17

    move/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    .line 41
    new-instance v4, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    const/4 v6, 0x7

    const/4 v7, 0x6

    const/4 v8, 0x5

    const/4 v9, 0x4

    const/4 v10, 0x3

    const/4 v11, 0x2

    const/16 v12, 0x8

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x0

    if-nez v3, :cond_0

    .line 46
    new-array v3, v12, [F

    aput v15, v3, v13

    aput v15, v3, v14

    aput v15, v3, v11

    aput v15, v3, v10

    aput v15, v3, v9

    aput v15, v3, v8

    aput v0, v3, v7

    aput v0, v3, v6

    invoke-static {v1, v3}, Lcom/flyco/dialog/utils/CornerUtils;->cornerDrawable(I[F)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 47
    new-array v1, v12, [F

    aput v15, v1, v13

    aput v15, v1, v14

    aput v15, v1, v11

    aput v15, v1, v10

    aput v15, v1, v9

    aput v15, v1, v8

    aput v0, v1, v7

    aput v0, v1, v6

    invoke-static {v2, v1}, Lcom/flyco/dialog/utils/CornerUtils;->cornerDrawable(I[F)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    if-ne v3, v14, :cond_1

    .line 49
    new-array v3, v12, [F

    aput v15, v3, v13

    aput v15, v3, v14

    aput v15, v3, v11

    aput v15, v3, v10

    aput v0, v3, v9

    aput v0, v3, v8

    aput v15, v3, v7

    aput v15, v3, v6

    invoke-static {v1, v3}, Lcom/flyco/dialog/utils/CornerUtils;->cornerDrawable(I[F)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 50
    new-array v1, v12, [F

    aput v15, v1, v13

    aput v15, v1, v14

    aput v15, v1, v11

    aput v15, v1, v10

    aput v0, v1, v9

    aput v0, v1, v8

    aput v15, v1, v7

    aput v15, v1, v6

    invoke-static {v2, v1}, Lcom/flyco/dialog/utils/CornerUtils;->cornerDrawable(I[F)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v5, -0x1

    if-ne v3, v5, :cond_2

    .line 52
    new-array v3, v12, [F

    aput v15, v3, v13

    aput v15, v3, v14

    aput v15, v3, v11

    aput v15, v3, v10

    aput v0, v3, v9

    aput v0, v3, v8

    aput v0, v3, v7

    aput v0, v3, v6

    invoke-static {v1, v3}, Lcom/flyco/dialog/utils/CornerUtils;->cornerDrawable(I[F)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 53
    new-array v1, v12, [F

    aput v15, v1, v13

    aput v15, v1, v14

    aput v15, v1, v11

    aput v15, v1, v10

    aput v0, v1, v9

    aput v0, v1, v8

    aput v0, v1, v7

    aput v0, v1, v6

    invoke-static {v2, v1}, Lcom/flyco/dialog/utils/CornerUtils;->cornerDrawable(I[F)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v5, -0x2

    if-ne v3, v5, :cond_3

    .line 55
    invoke-static {v1, v0}, Lcom/flyco/dialog/utils/CornerUtils;->cornerDrawable(IF)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 56
    invoke-static {v2, v0}, Lcom/flyco/dialog/utils/CornerUtils;->cornerDrawable(IF)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    const/4 v5, 0x0

    .line 59
    :goto_0
    new-array v1, v14, [I

    const v2, -0x10100a7

    aput v2, v1, v13

    invoke-virtual {v4, v1, v5}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 60
    new-array v1, v14, [I

    const v2, 0x10100a7

    aput v2, v1, v13

    invoke-virtual {v4, v1, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    return-object v4
.end method

.method public static cornerDrawable(IF)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 13
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 14
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 15
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    return-object v0
.end method

.method public static cornerDrawable(I[F)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 21
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 22
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 23
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    return-object v0
.end method

.method public static cornerDrawable(I[FII)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 29
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 30
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 31
    invoke-virtual {v0, p2, p3}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 32
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    return-object v0
.end method

.method public static listItemSelector(FIIII)Landroid/graphics/drawable/StateListDrawable;
    .locals 17

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v4, p4

    .line 92
    new-instance v5, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v5}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    const/4 v6, 0x7

    const/4 v7, 0x6

    const/4 v8, 0x5

    const/4 v9, 0x4

    const/4 v10, 0x3

    const/4 v11, 0x2

    const/16 v12, 0x8

    const/4 v13, 0x0

    const/4 v14, 0x1

    if-nez v4, :cond_0

    add-int/lit8 v15, p3, -0x1

    if-ne v4, v15, :cond_0

    .line 97
    new-array v3, v12, [F

    aput p0, v3, v13

    aput p0, v3, v14

    aput p0, v3, v11

    aput p0, v3, v10

    aput p0, v3, v9

    aput p0, v3, v8

    aput p0, v3, v7

    aput p0, v3, v6

    invoke-static {v1, v3}, Lcom/flyco/dialog/utils/CornerUtils;->cornerDrawable(I[F)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 99
    new-array v3, v12, [F

    aput p0, v3, v13

    aput p0, v3, v14

    aput p0, v3, v11

    aput p0, v3, v10

    aput p0, v3, v9

    aput p0, v3, v8

    aput p0, v3, v7

    aput p0, v3, v6

    invoke-static {v2, v3}, Lcom/flyco/dialog/utils/CornerUtils;->cornerDrawable(I[F)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v15, 0x0

    if-nez v4, :cond_1

    .line 102
    new-array v3, v12, [F

    aput p0, v3, v13

    aput p0, v3, v14

    aput p0, v3, v11

    aput p0, v3, v10

    aput v15, v3, v9

    aput v15, v3, v8

    aput v15, v3, v7

    aput v15, v3, v6

    invoke-static {v1, v3}, Lcom/flyco/dialog/utils/CornerUtils;->cornerDrawable(I[F)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 103
    new-array v3, v12, [F

    aput p0, v3, v13

    aput p0, v3, v14

    aput p0, v3, v11

    aput p0, v3, v10

    aput v15, v3, v9

    aput v15, v3, v8

    aput v15, v3, v7

    aput v15, v3, v6

    invoke-static {v2, v3}, Lcom/flyco/dialog/utils/CornerUtils;->cornerDrawable(I[F)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_1
    add-int/lit8 v3, p3, -0x1

    if-ne v4, v3, :cond_2

    .line 105
    new-array v3, v12, [F

    aput v15, v3, v13

    aput v15, v3, v14

    aput v15, v3, v11

    aput v15, v3, v10

    aput p0, v3, v9

    aput p0, v3, v8

    aput p0, v3, v7

    aput p0, v3, v6

    invoke-static {v1, v3}, Lcom/flyco/dialog/utils/CornerUtils;->cornerDrawable(I[F)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 106
    new-array v3, v12, [F

    aput v15, v3, v13

    aput v15, v3, v14

    aput v15, v3, v11

    aput v15, v3, v10

    aput p0, v3, v9

    aput p0, v3, v8

    aput p0, v3, v7

    aput p0, v3, v6

    invoke-static {v2, v3}, Lcom/flyco/dialog/utils/CornerUtils;->cornerDrawable(I[F)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 108
    :cond_2
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 109
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    move-object/from16 v16, v1

    move-object v1, v0

    move-object/from16 v0, v16

    .line 112
    :goto_0
    new-array v2, v14, [I

    const v3, -0x10100a7

    aput v3, v2, v13

    invoke-virtual {v5, v2, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 113
    new-array v1, v14, [I

    const v2, 0x10100a7

    aput v2, v1, v13

    invoke-virtual {v5, v1, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    return-object v5
.end method

.method public static listItemSelector(FIIZ)Landroid/graphics/drawable/StateListDrawable;
    .locals 12

    .line 69
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p3, :cond_0

    .line 74
    new-instance p0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 75
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p1, p2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    goto :goto_0

    :cond_0
    const/16 p3, 0x8

    .line 77
    new-array v3, p3, [F

    const/4 v4, 0x0

    aput v4, v3, v2

    aput v4, v3, v1

    const/4 v5, 0x2

    aput v4, v3, v5

    const/4 v6, 0x3

    aput v4, v3, v6

    const/4 v7, 0x4

    aput p0, v3, v7

    const/4 v8, 0x5

    aput p0, v3, v8

    const/4 v9, 0x6

    aput p0, v3, v9

    const/4 v10, 0x7

    aput p0, v3, v10

    invoke-static {p1, v3}, Lcom/flyco/dialog/utils/CornerUtils;->cornerDrawable(I[F)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 78
    new-array p3, p3, [F

    aput v4, p3, v2

    aput v4, p3, v1

    aput v4, p3, v5

    aput v4, p3, v6

    aput p0, p3, v7

    aput p0, p3, v8

    aput p0, p3, v9

    aput p0, p3, v10

    invoke-static {p2, p3}, Lcom/flyco/dialog/utils/CornerUtils;->cornerDrawable(I[F)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    move-object v11, p1

    move-object p1, p0

    move-object p0, v11

    .line 81
    :goto_0
    new-array p2, v1, [I

    const p3, -0x10100a7

    aput p3, p2, v2

    invoke-virtual {v0, p2, p0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 82
    new-array p0, v1, [I

    const p2, 0x10100a7

    aput p2, p0, v2

    invoke-virtual {v0, p0, p1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    return-object v0
.end method
