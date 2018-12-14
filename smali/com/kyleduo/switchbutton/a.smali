.class public Lcom/kyleduo/switchbutton/a;
.super Ljava/lang/Object;
.source "ColorUtils.java"


# direct methods
.method static a(I)Landroid/content/res/ColorStateList;
    .locals 9

    const/4 v0, 0x6

    .line 15
    new-array v1, v0, [[I

    const/4 v2, 0x2

    new-array v3, v2, [I

    fill-array-data v3, :array_0

    const/4 v4, 0x0

    aput-object v3, v1, v4

    const/4 v3, 0x1

    new-array v5, v3, [I

    const v6, -0x101009e

    aput v6, v5, v4

    aput-object v5, v1, v3

    new-array v5, v2, [I

    fill-array-data v5, :array_1

    aput-object v5, v1, v2

    new-array v5, v2, [I

    fill-array-data v5, :array_2

    const/4 v6, 0x3

    aput-object v5, v1, v6

    new-array v5, v3, [I

    const v7, 0x10100a0

    aput v7, v5, v4

    const/4 v7, 0x4

    aput-object v5, v1, v7

    new-array v5, v3, [I

    const v8, -0x10100a0

    aput v8, v5, v4

    const/4 v8, 0x5

    aput-object v5, v1, v8

    .line 24
    new-array v0, v0, [I

    const/high16 v5, -0x56000000

    sub-int v5, p0, v5

    aput v5, v0, v4

    const v4, -0x454546

    aput v4, v0, v3

    const/high16 v3, -0x67000000

    sub-int v3, p0, v3

    aput v3, v0, v2

    aput v3, v0, v6

    const/high16 v2, -0x1000000

    or-int/2addr p0, v2

    aput p0, v0, v7

    const p0, -0x111112

    aput p0, v0, v8

    .line 32
    new-instance p0, Landroid/content/res/ColorStateList;

    invoke-direct {p0, v1, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object p0

    :array_0
    .array-data 4
        -0x101009e
        0x10100a0
    .end array-data

    :array_1
    .array-data 4
        0x10100a7
        -0x10100a0
    .end array-data

    :array_2
    .array-data 4
        0x10100a7
        0x10100a0
    .end array-data
.end method

.method static b(I)Landroid/content/res/ColorStateList;
    .locals 9

    const/4 v0, 0x6

    .line 36
    new-array v1, v0, [[I

    const/4 v2, 0x2

    new-array v3, v2, [I

    fill-array-data v3, :array_0

    const/4 v4, 0x0

    aput-object v3, v1, v4

    const/4 v3, 0x1

    new-array v5, v3, [I

    const v6, -0x101009e

    aput v6, v5, v4

    aput-object v5, v1, v3

    new-array v5, v2, [I

    fill-array-data v5, :array_1

    aput-object v5, v1, v2

    new-array v5, v2, [I

    fill-array-data v5, :array_2

    const/4 v6, 0x3

    aput-object v5, v1, v6

    new-array v5, v3, [I

    const v7, 0x10100a0

    aput v7, v5, v4

    const/4 v7, 0x4

    aput-object v5, v1, v7

    new-array v5, v3, [I

    const v8, -0x10100a0

    aput v8, v5, v4

    const/4 v8, 0x5

    aput-object v5, v1, v8

    .line 45
    new-array v0, v0, [I

    const/high16 v5, -0x1f000000

    sub-int v5, p0, v5

    aput v5, v0, v4

    const/high16 v4, 0x10000000

    aput v4, v0, v3

    const/high16 v3, -0x30000000

    sub-int/2addr p0, v3

    aput p0, v0, v2

    const/high16 v2, 0x20000000

    aput v2, v0, v6

    aput p0, v0, v7

    aput v2, v0, v8

    .line 53
    new-instance p0, Landroid/content/res/ColorStateList;

    invoke-direct {p0, v1, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object p0

    :array_0
    .array-data 4
        -0x101009e
        0x10100a0
    .end array-data

    :array_1
    .array-data 4
        0x10100a0
        0x10100a7
    .end array-data

    :array_2
    .array-data 4
        -0x10100a0
        0x10100a7
    .end array-data
.end method
