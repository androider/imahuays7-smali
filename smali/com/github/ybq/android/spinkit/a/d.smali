.class public Lcom/github/ybq/android/spinkit/a/d;
.super Ljava/lang/Object;
.source "SpriteAnimatorBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/ybq/android/spinkit/a/d$a;,
        Lcom/github/ybq/android/spinkit/a/d$c;,
        Lcom/github/ybq/android/spinkit/a/d$b;
    }
.end annotation


# instance fields
.field private a:Lcom/github/ybq/android/spinkit/b/f;

.field private b:Landroid/view/animation/Interpolator;

.field private c:I

.field private d:J

.field private e:I

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/github/ybq/android/spinkit/a/d$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/github/ybq/android/spinkit/b/f;)V
    .locals 2

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 27
    iput v0, p0, Lcom/github/ybq/android/spinkit/a/d;->c:I

    const-wide/16 v0, 0x7d0

    .line 28
    iput-wide v0, p0, Lcom/github/ybq/android/spinkit/a/d;->d:J

    const/4 v0, 0x0

    .line 29
    iput v0, p0, Lcom/github/ybq/android/spinkit/a/d;->e:I

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/github/ybq/android/spinkit/a/d;->f:Ljava/util/Map;

    .line 60
    iput-object p1, p0, Lcom/github/ybq/android/spinkit/a/d;->a:Lcom/github/ybq/android/spinkit/b/f;

    return-void
.end method

.method private a(II)V
    .locals 5

    if-eq p1, p2, :cond_0

    .line 136
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 137
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "The fractions.length must equal values.length, fraction.length[%d], values.length[%d]"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 140
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v4

    const/4 p1, 0x1

    .line 141
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v3, p1

    .line 136
    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private a([FLandroid/util/Property;[Ljava/lang/Float;)V
    .locals 3

    .line 124
    array-length v0, p1

    array-length v1, p3

    invoke-direct {p0, v0, v1}, Lcom/github/ybq/android/spinkit/a/d;->a(II)V

    .line 125
    iget-object v0, p0, Lcom/github/ybq/android/spinkit/a/d;->f:Ljava/util/Map;

    invoke-virtual {p2}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/github/ybq/android/spinkit/a/d$a;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/github/ybq/android/spinkit/a/d$a;-><init>(Lcom/github/ybq/android/spinkit/a/d;[FLandroid/util/Property;[Ljava/lang/Float;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private a([FLandroid/util/Property;[Ljava/lang/Integer;)V
    .locals 3

    .line 130
    array-length v0, p1

    array-length v1, p3

    invoke-direct {p0, v0, v1}, Lcom/github/ybq/android/spinkit/a/d;->a(II)V

    .line 131
    iget-object v0, p0, Lcom/github/ybq/android/spinkit/a/d;->f:Ljava/util/Map;

    invoke-virtual {p2}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/github/ybq/android/spinkit/a/d$c;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/github/ybq/android/spinkit/a/d$c;-><init>(Lcom/github/ybq/android/spinkit/a/d;[FLandroid/util/Property;[Ljava/lang/Integer;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()Landroid/animation/ObjectAnimator;
    .locals 12

    .line 181
    iget-object v0, p0, Lcom/github/ybq/android/spinkit/a/d;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    .line 183
    iget-object v1, p0, Lcom/github/ybq/android/spinkit/a/d;->f:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 184
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/ybq/android/spinkit/a/d$b;

    .line 185
    iget-object v4, v3, Lcom/github/ybq/android/spinkit/a/d$b;->b:[F

    array-length v4, v4

    new-array v4, v4, [Landroid/animation/Keyframe;

    .line 186
    iget-object v5, v3, Lcom/github/ybq/android/spinkit/a/d$b;->b:[F

    .line 187
    iget v6, p0, Lcom/github/ybq/android/spinkit/a/d;->e:I

    aget v6, v5, v6

    .line 188
    iget v7, p0, Lcom/github/ybq/android/spinkit/a/d;->e:I

    :goto_1
    iget v8, p0, Lcom/github/ybq/android/spinkit/a/d;->e:I

    iget-object v9, v3, Lcom/github/ybq/android/spinkit/a/d$b;->d:[Ljava/lang/Object;

    array-length v9, v9

    add-int/2addr v8, v9

    if-ge v7, v8, :cond_3

    .line 189
    iget v8, p0, Lcom/github/ybq/android/spinkit/a/d;->e:I

    sub-int v8, v7, v8

    .line 190
    iget-object v9, v3, Lcom/github/ybq/android/spinkit/a/d$b;->d:[Ljava/lang/Object;

    array-length v9, v9

    rem-int v9, v7, v9

    .line 191
    aget v10, v5, v9

    sub-float/2addr v10, v6

    const/4 v11, 0x0

    cmpg-float v11, v10, v11

    if-gez v11, :cond_0

    .line 193
    array-length v11, v5

    add-int/lit8 v11, v11, -0x1

    aget v11, v5, v11

    add-float/2addr v10, v11

    .line 195
    :cond_0
    instance-of v11, v3, Lcom/github/ybq/android/spinkit/a/d$c;

    if-eqz v11, :cond_1

    .line 196
    iget-object v11, v3, Lcom/github/ybq/android/spinkit/a/d$b;->d:[Ljava/lang/Object;

    aget-object v9, v11, v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v10, v9}, Landroid/animation/Keyframe;->ofInt(FI)Landroid/animation/Keyframe;

    move-result-object v9

    aput-object v9, v4, v8

    goto :goto_2

    .line 197
    :cond_1
    instance-of v11, v3, Lcom/github/ybq/android/spinkit/a/d$a;

    if-eqz v11, :cond_2

    .line 198
    iget-object v11, v3, Lcom/github/ybq/android/spinkit/a/d$b;->d:[Ljava/lang/Object;

    aget-object v9, v11, v9

    check-cast v9, Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    invoke-static {v10, v9}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v9

    aput-object v9, v4, v8

    goto :goto_2

    .line 200
    :cond_2
    iget-object v11, v3, Lcom/github/ybq/android/spinkit/a/d$b;->d:[Ljava/lang/Object;

    aget-object v9, v11, v9

    invoke-static {v10, v9}, Landroid/animation/Keyframe;->ofObject(FLjava/lang/Object;)Landroid/animation/Keyframe;

    move-result-object v9

    aput-object v9, v4, v8

    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 203
    :cond_3
    iget-object v3, v3, Lcom/github/ybq/android/spinkit/a/d$b;->c:Landroid/util/Property;

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Landroid/util/Property;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 207
    :cond_4
    iget-object v1, p0, Lcom/github/ybq/android/spinkit/a/d;->a:Lcom/github/ybq/android/spinkit/b/f;

    invoke-static {v1, v0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 209
    iget-wide v1, p0, Lcom/github/ybq/android/spinkit/a/d;->d:J

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 210
    iget v1, p0, Lcom/github/ybq/android/spinkit/a/d;->c:I

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 211
    iget-object v1, p0, Lcom/github/ybq/android/spinkit/a/d;->b:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object v0
.end method

.method public a(I)Lcom/github/ybq/android/spinkit/a/d;
    .locals 1

    if-gez p1, :cond_0

    const-string p1, "SpriteAnimatorBuilder"

    const-string v0, "startFrame should always be non-negative"

    .line 172
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 175
    :cond_0
    iput p1, p0, Lcom/github/ybq/android/spinkit/a/d;->e:I

    return-object p0
.end method

.method public a(J)Lcom/github/ybq/android/spinkit/a/d;
    .locals 0

    .line 160
    iput-wide p1, p0, Lcom/github/ybq/android/spinkit/a/d;->d:J

    return-object p0
.end method

.method public a(Landroid/view/animation/Interpolator;)Lcom/github/ybq/android/spinkit/a/d;
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/github/ybq/android/spinkit/a/d;->b:Landroid/view/animation/Interpolator;

    return-object p0
.end method

.method public varargs a([F)Lcom/github/ybq/android/spinkit/a/d;
    .locals 0

    .line 152
    invoke-static {p1}, Lcom/github/ybq/android/spinkit/a/a/b;->a([F)Lcom/github/ybq/android/spinkit/a/a/b;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/github/ybq/android/spinkit/a/d;->a(Landroid/view/animation/Interpolator;)Lcom/github/ybq/android/spinkit/a/d;

    return-object p0
.end method

.method public varargs a([F[Ljava/lang/Float;)Lcom/github/ybq/android/spinkit/a/d;
    .locals 1

    .line 64
    sget-object v0, Lcom/github/ybq/android/spinkit/b/f;->k:Landroid/util/Property;

    invoke-direct {p0, p1, v0, p2}, Lcom/github/ybq/android/spinkit/a/d;->a([FLandroid/util/Property;[Ljava/lang/Float;)V

    return-object p0
.end method

.method public varargs a([F[Ljava/lang/Integer;)Lcom/github/ybq/android/spinkit/a/d;
    .locals 1

    .line 69
    sget-object v0, Lcom/github/ybq/android/spinkit/b/f;->l:Landroid/util/Property;

    invoke-direct {p0, p1, v0, p2}, Lcom/github/ybq/android/spinkit/a/d;->a([FLandroid/util/Property;[Ljava/lang/Integer;)V

    return-object p0
.end method

.method public varargs b([F[Ljava/lang/Float;)Lcom/github/ybq/android/spinkit/a/d;
    .locals 1

    .line 80
    sget-object v0, Lcom/github/ybq/android/spinkit/b/f;->j:Landroid/util/Property;

    invoke-direct {p0, p1, v0, p2}, Lcom/github/ybq/android/spinkit/a/d;->a([FLandroid/util/Property;[Ljava/lang/Float;)V

    return-object p0
.end method

.method public varargs b([F[Ljava/lang/Integer;)Lcom/github/ybq/android/spinkit/a/d;
    .locals 1

    .line 85
    sget-object v0, Lcom/github/ybq/android/spinkit/b/f;->b:Landroid/util/Property;

    invoke-direct {p0, p1, v0, p2}, Lcom/github/ybq/android/spinkit/a/d;->a([FLandroid/util/Property;[Ljava/lang/Integer;)V

    return-object p0
.end method

.method public varargs c([F[Ljava/lang/Float;)Lcom/github/ybq/android/spinkit/a/d;
    .locals 1

    .line 114
    sget-object v0, Lcom/github/ybq/android/spinkit/b/f;->g:Landroid/util/Property;

    invoke-direct {p0, p1, v0, p2}, Lcom/github/ybq/android/spinkit/a/d;->a([FLandroid/util/Property;[Ljava/lang/Float;)V

    return-object p0
.end method

.method public varargs c([F[Ljava/lang/Integer;)Lcom/github/ybq/android/spinkit/a/d;
    .locals 1

    .line 90
    sget-object v0, Lcom/github/ybq/android/spinkit/b/f;->d:Landroid/util/Property;

    invoke-direct {p0, p1, v0, p2}, Lcom/github/ybq/android/spinkit/a/d;->a([FLandroid/util/Property;[Ljava/lang/Integer;)V

    return-object p0
.end method

.method public varargs d([F[Ljava/lang/Float;)Lcom/github/ybq/android/spinkit/a/d;
    .locals 1

    .line 119
    sget-object v0, Lcom/github/ybq/android/spinkit/b/f;->h:Landroid/util/Property;

    invoke-direct {p0, p1, v0, p2}, Lcom/github/ybq/android/spinkit/a/d;->a([FLandroid/util/Property;[Ljava/lang/Float;)V

    return-object p0
.end method

.method public varargs d([F[Ljava/lang/Integer;)Lcom/github/ybq/android/spinkit/a/d;
    .locals 1

    .line 109
    sget-object v0, Lcom/github/ybq/android/spinkit/b/f;->c:Landroid/util/Property;

    invoke-direct {p0, p1, v0, p2}, Lcom/github/ybq/android/spinkit/a/d;->a([FLandroid/util/Property;[Ljava/lang/Integer;)V

    return-object p0
.end method
