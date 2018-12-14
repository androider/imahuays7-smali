.class public Lorg/android/spdy/c;
.super Ljava/lang/Object;
.source "NetSparseArray.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/Object;


# instance fields
.field private b:Z

.field private c:[I

.field private d:[Ljava/lang/Object;

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 6
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/android/spdy/c;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/16 v0, 0xa

    .line 15
    invoke-direct {p0, v0}, Lorg/android/spdy/c;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lorg/android/spdy/c;->b:Z

    .line 21
    new-array v1, p1, [I

    iput-object v1, p0, Lorg/android/spdy/c;->c:[I

    .line 22
    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lorg/android/spdy/c;->d:[Ljava/lang/Object;

    .line 23
    iput v0, p0, Lorg/android/spdy/c;->e:I

    return-void
.end method

.method private static a([IIII)I
    .locals 4

    add-int/2addr p2, p1

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    move v1, p1

    move p1, p2

    :goto_0
    sub-int v2, p1, v1

    if-le v2, v0, :cond_1

    add-int v2, p1, v1

    .line 289
    div-int/lit8 v2, v2, 0x2

    .line 291
    aget v3, p0, v2

    if-ge v3, p3, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move p1, v2

    goto :goto_0

    :cond_1
    if-ne p1, p2, :cond_2

    xor-int/lit8 p0, p2, -0x1

    return p0

    .line 299
    :cond_2
    aget p0, p0, p1

    if-ne p0, p3, :cond_3

    return p1

    :cond_3
    xor-int/lit8 p0, p1, -0x1

    return p0
.end method

.method private a()V
    .locals 8

    .line 69
    iget v0, p0, Lorg/android/spdy/c;->e:I

    .line 71
    iget-object v1, p0, Lorg/android/spdy/c;->c:[I

    .line 72
    iget-object v2, p0, Lorg/android/spdy/c;->d:[Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v4, v0, :cond_2

    .line 75
    aget-object v6, v2, v4

    .line 77
    sget-object v7, Lorg/android/spdy/c;->a:Ljava/lang/Object;

    if-eq v6, v7, :cond_1

    if-eq v4, v5, :cond_0

    .line 79
    aget v7, v1, v4

    aput v7, v1, v5

    .line 80
    aput-object v6, v2, v5

    const/4 v6, 0x0

    .line 81
    aput-object v6, v2, v4

    :cond_0
    add-int/lit8 v5, v5, 0x1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 88
    :cond_2
    iput-boolean v3, p0, Lorg/android/spdy/c;->b:Z

    .line 89
    iput v5, p0, Lorg/android/spdy/c;->e:I

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 3

    .line 45
    iget-object v0, p0, Lorg/android/spdy/c;->c:[I

    iget v1, p0, Lorg/android/spdy/c;->e:I

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, p1}, Lorg/android/spdy/c;->a([IIII)I

    move-result p1

    if-ltz p1, :cond_0

    .line 48
    iget-object v0, p0, Lorg/android/spdy/c;->d:[Ljava/lang/Object;

    aget-object v0, v0, p1

    sget-object v1, Lorg/android/spdy/c;->a:Ljava/lang/Object;

    if-eq v0, v1, :cond_0

    .line 49
    iget-object v0, p0, Lorg/android/spdy/c;->d:[Ljava/lang/Object;

    sget-object v1, Lorg/android/spdy/c;->a:Ljava/lang/Object;

    aput-object v1, v0, p1

    const/4 p1, 0x1

    .line 50
    iput-boolean p1, p0, Lorg/android/spdy/c;->b:Z

    :cond_0
    return-void
.end method

.method public a(ILjava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .line 98
    iget-object v0, p0, Lorg/android/spdy/c;->c:[I

    iget v1, p0, Lorg/android/spdy/c;->e:I

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, p1}, Lorg/android/spdy/c;->a([IIII)I

    move-result v0

    if-ltz v0, :cond_0

    .line 101
    iget-object p1, p0, Lorg/android/spdy/c;->d:[Ljava/lang/Object;

    aput-object p2, p1, v0

    goto/16 :goto_0

    :cond_0
    xor-int/lit8 v0, v0, -0x1

    .line 105
    iget v1, p0, Lorg/android/spdy/c;->e:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/android/spdy/c;->d:[Ljava/lang/Object;

    aget-object v1, v1, v0

    sget-object v3, Lorg/android/spdy/c;->a:Ljava/lang/Object;

    if-ne v1, v3, :cond_1

    .line 106
    iget-object v1, p0, Lorg/android/spdy/c;->c:[I

    aput p1, v1, v0

    .line 107
    iget-object p1, p0, Lorg/android/spdy/c;->d:[Ljava/lang/Object;

    aput-object p2, p1, v0

    return-void

    .line 111
    :cond_1
    iget-boolean v1, p0, Lorg/android/spdy/c;->b:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lorg/android/spdy/c;->e:I

    iget-object v3, p0, Lorg/android/spdy/c;->c:[I

    array-length v3, v3

    if-lt v1, v3, :cond_2

    .line 112
    invoke-direct {p0}, Lorg/android/spdy/c;->a()V

    .line 115
    iget-object v0, p0, Lorg/android/spdy/c;->c:[I

    iget v1, p0, Lorg/android/spdy/c;->e:I

    invoke-static {v0, v2, v1, p1}, Lorg/android/spdy/c;->a([IIII)I

    move-result v0

    xor-int/lit8 v0, v0, -0x1

    .line 118
    :cond_2
    iget v1, p0, Lorg/android/spdy/c;->e:I

    iget-object v3, p0, Lorg/android/spdy/c;->c:[I

    array-length v3, v3

    if-lt v1, v3, :cond_3

    .line 119
    iget v1, p0, Lorg/android/spdy/c;->e:I

    add-int/lit8 v1, v1, 0x14

    .line 121
    new-array v3, v1, [I

    .line 122
    new-array v1, v1, [Ljava/lang/Object;

    .line 125
    iget-object v4, p0, Lorg/android/spdy/c;->c:[I

    iget-object v5, p0, Lorg/android/spdy/c;->c:[I

    array-length v5, v5

    invoke-static {v4, v2, v3, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 126
    iget-object v4, p0, Lorg/android/spdy/c;->d:[Ljava/lang/Object;

    iget-object v5, p0, Lorg/android/spdy/c;->d:[Ljava/lang/Object;

    array-length v5, v5

    invoke-static {v4, v2, v1, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 128
    iput-object v3, p0, Lorg/android/spdy/c;->c:[I

    .line 129
    iput-object v1, p0, Lorg/android/spdy/c;->d:[Ljava/lang/Object;

    .line 132
    :cond_3
    iget v1, p0, Lorg/android/spdy/c;->e:I

    sub-int/2addr v1, v0

    if-eqz v1, :cond_4

    .line 134
    iget-object v1, p0, Lorg/android/spdy/c;->c:[I

    iget-object v2, p0, Lorg/android/spdy/c;->c:[I

    add-int/lit8 v3, v0, 0x1

    iget v4, p0, Lorg/android/spdy/c;->e:I

    sub-int/2addr v4, v0

    invoke-static {v1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 135
    iget-object v1, p0, Lorg/android/spdy/c;->d:[Ljava/lang/Object;

    iget-object v2, p0, Lorg/android/spdy/c;->d:[Ljava/lang/Object;

    iget v4, p0, Lorg/android/spdy/c;->e:I

    sub-int/2addr v4, v0

    invoke-static {v1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 138
    :cond_4
    iget-object v1, p0, Lorg/android/spdy/c;->c:[I

    aput p1, v1, v0

    .line 139
    iget-object p1, p0, Lorg/android/spdy/c;->d:[Ljava/lang/Object;

    aput-object p2, p1, v0

    .line 140
    iget p1, p0, Lorg/android/spdy/c;->e:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/android/spdy/c;->e:I

    :goto_0
    return-void
.end method

.method public b(I)V
    .locals 0

    .line 57
    invoke-virtual {p0, p1}, Lorg/android/spdy/c;->a(I)V

    return-void
.end method
