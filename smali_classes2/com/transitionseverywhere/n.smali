.class public abstract Lcom/transitionseverywhere/n;
.super Lcom/transitionseverywhere/g;
.source "Visibility.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transitionseverywhere/n$a;,
        Lcom/transitionseverywhere/n$b;
    }
.end annotation


# static fields
.field private static final a:[Ljava/lang/String;


# instance fields
.field private E:I

.field private b:I

.field private c:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    .line 77
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "android:visibility:visibility"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "android:visibility:parent"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/transitionseverywhere/n;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 96
    invoke-direct {p0}, Lcom/transitionseverywhere/g;-><init>()V

    const/4 v0, 0x3

    .line 91
    iput v0, p0, Lcom/transitionseverywhere/n;->b:I

    const/4 v0, -0x1

    .line 93
    iput v0, p0, Lcom/transitionseverywhere/n;->c:I

    .line 94
    iput v0, p0, Lcom/transitionseverywhere/n;->E:I

    return-void
.end method

.method private a(Lcom/transitionseverywhere/l;I)V
    .locals 2

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 147
    :cond_0
    iget-object p2, p1, Lcom/transitionseverywhere/l;->a:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p2

    .line 149
    :goto_0
    iget-object v0, p1, Lcom/transitionseverywhere/l;->b:Ljava/util/Map;

    const-string v1, "android:visibility:visibility"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    iget-object p2, p1, Lcom/transitionseverywhere/l;->b:Ljava/util/Map;

    const-string v0, "android:visibility:parent"

    iget-object v1, p1, Lcom/transitionseverywhere/l;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p2, 0x2

    .line 151
    new-array p2, p2, [I

    .line 152
    iget-object v0, p1, Lcom/transitionseverywhere/l;->a:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 153
    iget-object p1, p1, Lcom/transitionseverywhere/l;->b:Ljava/util/Map;

    const-string v0, "android:visibility:screenLocation"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static b(Lcom/transitionseverywhere/l;Lcom/transitionseverywhere/l;)Lcom/transitionseverywhere/n$b;
    .locals 6

    .line 203
    new-instance v0, Lcom/transitionseverywhere/n$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transitionseverywhere/n$b;-><init>(Lcom/transitionseverywhere/n$1;)V

    const/4 v2, 0x0

    .line 204
    iput-boolean v2, v0, Lcom/transitionseverywhere/n$b;->a:Z

    .line 205
    iput-boolean v2, v0, Lcom/transitionseverywhere/n$b;->b:Z

    const/4 v3, -0x1

    if-eqz p0, :cond_0

    .line 206
    iget-object v4, p0, Lcom/transitionseverywhere/l;->b:Ljava/util/Map;

    const-string v5, "android:visibility:visibility"

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 207
    iget-object v4, p0, Lcom/transitionseverywhere/l;->b:Ljava/util/Map;

    const-string v5, "android:visibility:visibility"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v0, Lcom/transitionseverywhere/n$b;->c:I

    .line 208
    iget-object v4, p0, Lcom/transitionseverywhere/l;->b:Ljava/util/Map;

    const-string v5, "android:visibility:parent"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, v0, Lcom/transitionseverywhere/n$b;->e:Landroid/view/ViewGroup;

    goto :goto_0

    .line 210
    :cond_0
    iput v3, v0, Lcom/transitionseverywhere/n$b;->c:I

    .line 211
    iput-object v1, v0, Lcom/transitionseverywhere/n$b;->e:Landroid/view/ViewGroup;

    :goto_0
    if-eqz p1, :cond_1

    .line 213
    iget-object v4, p1, Lcom/transitionseverywhere/l;->b:Ljava/util/Map;

    const-string v5, "android:visibility:visibility"

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 214
    iget-object v1, p1, Lcom/transitionseverywhere/l;->b:Ljava/util/Map;

    const-string v3, "android:visibility:visibility"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/transitionseverywhere/n$b;->d:I

    .line 215
    iget-object v1, p1, Lcom/transitionseverywhere/l;->b:Ljava/util/Map;

    const-string v3, "android:visibility:parent"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, v0, Lcom/transitionseverywhere/n$b;->f:Landroid/view/ViewGroup;

    goto :goto_1

    .line 217
    :cond_1
    iput v3, v0, Lcom/transitionseverywhere/n$b;->d:I

    .line 218
    iput-object v1, v0, Lcom/transitionseverywhere/n$b;->f:Landroid/view/ViewGroup;

    :goto_1
    const/4 v1, 0x1

    if-eqz p0, :cond_6

    if-eqz p1, :cond_6

    .line 221
    iget p0, v0, Lcom/transitionseverywhere/n$b;->c:I

    iget p1, v0, Lcom/transitionseverywhere/n$b;->d:I

    if-ne p0, p1, :cond_2

    iget-object p0, v0, Lcom/transitionseverywhere/n$b;->e:Landroid/view/ViewGroup;

    iget-object p1, v0, Lcom/transitionseverywhere/n$b;->f:Landroid/view/ViewGroup;

    if-ne p0, p1, :cond_2

    return-object v0

    .line 225
    :cond_2
    iget p0, v0, Lcom/transitionseverywhere/n$b;->c:I

    iget p1, v0, Lcom/transitionseverywhere/n$b;->d:I

    if-eq p0, p1, :cond_4

    .line 226
    iget p0, v0, Lcom/transitionseverywhere/n$b;->c:I

    if-nez p0, :cond_3

    .line 227
    iput-boolean v2, v0, Lcom/transitionseverywhere/n$b;->b:Z

    .line 228
    iput-boolean v1, v0, Lcom/transitionseverywhere/n$b;->a:Z

    goto :goto_2

    .line 229
    :cond_3
    iget p0, v0, Lcom/transitionseverywhere/n$b;->d:I

    if-nez p0, :cond_8

    .line 230
    iput-boolean v1, v0, Lcom/transitionseverywhere/n$b;->b:Z

    .line 231
    iput-boolean v1, v0, Lcom/transitionseverywhere/n$b;->a:Z

    goto :goto_2

    .line 234
    :cond_4
    iget-object p0, v0, Lcom/transitionseverywhere/n$b;->e:Landroid/view/ViewGroup;

    iget-object p1, v0, Lcom/transitionseverywhere/n$b;->f:Landroid/view/ViewGroup;

    if-eq p0, p1, :cond_8

    .line 235
    iget-object p0, v0, Lcom/transitionseverywhere/n$b;->f:Landroid/view/ViewGroup;

    if-nez p0, :cond_5

    .line 236
    iput-boolean v2, v0, Lcom/transitionseverywhere/n$b;->b:Z

    .line 237
    iput-boolean v1, v0, Lcom/transitionseverywhere/n$b;->a:Z

    goto :goto_2

    .line 238
    :cond_5
    iget-object p0, v0, Lcom/transitionseverywhere/n$b;->e:Landroid/view/ViewGroup;

    if-nez p0, :cond_8

    .line 239
    iput-boolean v1, v0, Lcom/transitionseverywhere/n$b;->b:Z

    .line 240
    iput-boolean v1, v0, Lcom/transitionseverywhere/n$b;->a:Z

    goto :goto_2

    :cond_6
    if-nez p0, :cond_7

    .line 244
    iget p0, v0, Lcom/transitionseverywhere/n$b;->d:I

    if-nez p0, :cond_7

    .line 245
    iput-boolean v1, v0, Lcom/transitionseverywhere/n$b;->b:Z

    .line 246
    iput-boolean v1, v0, Lcom/transitionseverywhere/n$b;->a:Z

    goto :goto_2

    :cond_7
    if-nez p1, :cond_8

    .line 247
    iget p0, v0, Lcom/transitionseverywhere/n$b;->c:I

    if-nez p0, :cond_8

    .line 248
    iput-boolean v2, v0, Lcom/transitionseverywhere/n$b;->b:Z

    .line 249
    iput-boolean v1, v0, Lcom/transitionseverywhere/n$b;->a:Z

    :cond_8
    :goto_2
    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;Landroid/view/View;Lcom/transitionseverywhere/l;Lcom/transitionseverywhere/l;)Landroid/animation/Animator;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Landroid/view/ViewGroup;Lcom/transitionseverywhere/l;ILcom/transitionseverywhere/l;I)Landroid/animation/Animator;
    .locals 3

    .line 293
    iget p3, p0, Lcom/transitionseverywhere/n;->b:I

    const/4 p5, 0x1

    and-int/2addr p3, p5

    const/4 v0, 0x0

    if-ne p3, p5, :cond_5

    if-nez p4, :cond_0

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    if-nez p2, :cond_1

    .line 298
    iget-object v1, p4, Lcom/transitionseverywhere/l;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 299
    invoke-virtual {p0, v1, p3}, Lcom/transitionseverywhere/n;->b(Landroid/view/View;Z)Lcom/transitionseverywhere/l;

    move-result-object v2

    .line 301
    invoke-virtual {p0, v1, p3}, Lcom/transitionseverywhere/n;->a(Landroid/view/View;Z)Lcom/transitionseverywhere/l;

    move-result-object v1

    .line 303
    invoke-static {v2, v1}, Lcom/transitionseverywhere/n;->b(Lcom/transitionseverywhere/l;Lcom/transitionseverywhere/l;)Lcom/transitionseverywhere/n$b;

    move-result-object v1

    .line 304
    iget-boolean v1, v1, Lcom/transitionseverywhere/n$b;->a:Z

    if-eqz v1, :cond_1

    return-object v0

    .line 308
    :cond_1
    iget v1, p0, Lcom/transitionseverywhere/n;->c:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    iget v1, p0, Lcom/transitionseverywhere/n;->E:I

    if-eq v1, v2, :cond_3

    :cond_2
    const/4 p3, 0x1

    :cond_3
    if-eqz p3, :cond_4

    .line 312
    iget-object p3, p4, Lcom/transitionseverywhere/l;->a:Landroid/view/View;

    sget p5, Lcom/transitionseverywhere/R$id;->transitionAlpha:I

    invoke-virtual {p3, p5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p3

    .line 313
    instance-of p5, p3, Ljava/lang/Float;

    if-eqz p5, :cond_4

    .line 314
    iget-object p5, p4, Lcom/transitionseverywhere/l;->a:Landroid/view/View;

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    invoke-virtual {p5, p3}, Landroid/view/View;->setAlpha(F)V

    .line 315
    iget-object p3, p4, Lcom/transitionseverywhere/l;->a:Landroid/view/View;

    sget p5, Lcom/transitionseverywhere/R$id;->transitionAlpha:I

    invoke-virtual {p3, p5, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 318
    :cond_4
    iget-object p3, p4, Lcom/transitionseverywhere/l;->a:Landroid/view/View;

    invoke-virtual {p0, p1, p3, p2, p4}, Lcom/transitionseverywhere/n;->a(Landroid/view/ViewGroup;Landroid/view/View;Lcom/transitionseverywhere/l;Lcom/transitionseverywhere/l;)Landroid/animation/Animator;

    move-result-object p1

    return-object p1

    :cond_5
    :goto_0
    return-object v0
.end method

.method public a(Landroid/view/ViewGroup;Lcom/transitionseverywhere/l;Lcom/transitionseverywhere/l;)Landroid/animation/Animator;
    .locals 8

    .line 257
    invoke-static {p2, p3}, Lcom/transitionseverywhere/n;->b(Lcom/transitionseverywhere/l;Lcom/transitionseverywhere/l;)Lcom/transitionseverywhere/n$b;

    move-result-object v0

    .line 258
    iget-boolean v1, v0, Lcom/transitionseverywhere/n$b;->a:Z

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/transitionseverywhere/n$b;->e:Landroid/view/ViewGroup;

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/transitionseverywhere/n$b;->f:Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    .line 260
    :cond_0
    iget-boolean v1, v0, Lcom/transitionseverywhere/n$b;->b:Z

    if-eqz v1, :cond_1

    .line 261
    iget v5, v0, Lcom/transitionseverywhere/n$b;->c:I

    iget v7, v0, Lcom/transitionseverywhere/n$b;->d:I

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v6, p3

    invoke-virtual/range {v2 .. v7}, Lcom/transitionseverywhere/n;->a(Landroid/view/ViewGroup;Lcom/transitionseverywhere/l;ILcom/transitionseverywhere/l;I)Landroid/animation/Animator;

    move-result-object p1

    return-object p1

    .line 264
    :cond_1
    iget v3, v0, Lcom/transitionseverywhere/n$b;->c:I

    iget v5, v0, Lcom/transitionseverywhere/n$b;->d:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/transitionseverywhere/n;->b(Landroid/view/ViewGroup;Lcom/transitionseverywhere/l;ILcom/transitionseverywhere/l;I)Landroid/animation/Animator;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(I)Lcom/transitionseverywhere/n;
    .locals 1

    and-int/lit8 v0, p1, -0x4

    if-eqz v0, :cond_0

    .line 119
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Only MODE_IN and MODE_OUT flags are allowed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 121
    :cond_0
    iput p1, p0, Lcom/transitionseverywhere/n;->b:I

    return-object p0
.end method

.method public a(Lcom/transitionseverywhere/l;)V
    .locals 1

    .line 158
    iget v0, p0, Lcom/transitionseverywhere/n;->c:I

    invoke-direct {p0, p1, v0}, Lcom/transitionseverywhere/n;->a(Lcom/transitionseverywhere/l;I)V

    return-void
.end method

.method public a(Lcom/transitionseverywhere/l;Lcom/transitionseverywhere/l;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    return v0

    :cond_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 495
    iget-object v1, p2, Lcom/transitionseverywhere/l;->b:Ljava/util/Map;

    const-string v2, "android:visibility:visibility"

    .line 496
    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    iget-object v2, p1, Lcom/transitionseverywhere/l;->b:Ljava/util/Map;

    const-string v3, "android:visibility:visibility"

    .line 497
    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eq v1, v2, :cond_1

    return v0

    .line 502
    :cond_1
    invoke-static {p1, p2}, Lcom/transitionseverywhere/n;->b(Lcom/transitionseverywhere/l;Lcom/transitionseverywhere/l;)Lcom/transitionseverywhere/n$b;

    move-result-object p1

    .line 503
    iget-boolean p2, p1, Lcom/transitionseverywhere/n$b;->a:Z

    if-eqz p2, :cond_3

    iget p2, p1, Lcom/transitionseverywhere/n$b;->c:I

    if-eqz p2, :cond_2

    iget p1, p1, Lcom/transitionseverywhere/n$b;->d:I

    if-nez p1, :cond_3

    :cond_2
    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method public a()[Ljava/lang/String;
    .locals 1

    .line 139
    sget-object v0, Lcom/transitionseverywhere/n;->a:[Ljava/lang/String;

    return-object v0
.end method

.method public b(Landroid/view/ViewGroup;Landroid/view/View;Lcom/transitionseverywhere/l;Lcom/transitionseverywhere/l;)Landroid/animation/Animator;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public b(Landroid/view/ViewGroup;Lcom/transitionseverywhere/l;ILcom/transitionseverywhere/l;I)Landroid/animation/Animator;
    .locals 7

    .line 378
    iget p3, p0, Lcom/transitionseverywhere/n;->b:I

    const/4 v0, 0x2

    and-int/2addr p3, v0

    const/4 v1, 0x0

    if-eq p3, v0, :cond_0

    return-object v1

    :cond_0
    if-eqz p2, :cond_1

    .line 382
    iget-object p3, p2, Lcom/transitionseverywhere/l;->a:Landroid/view/View;

    goto :goto_0

    :cond_1
    move-object p3, v1

    :goto_0
    if-eqz p4, :cond_2

    .line 383
    iget-object v0, p4, Lcom/transitionseverywhere/l;->a:Landroid/view/View;

    goto :goto_1

    :cond_2
    move-object v0, v1

    :goto_1
    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_5

    .line 387
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-nez v5, :cond_3

    goto :goto_3

    :cond_3
    const/4 v5, 0x4

    if-ne p5, v5, :cond_4

    goto :goto_2

    :cond_4
    if-ne p3, v0, :cond_8

    :goto_2
    move-object v6, v0

    move-object v0, v1

    goto :goto_5

    :cond_5
    :goto_3
    if-eqz v0, :cond_6

    :goto_4
    move-object v6, v1

    :goto_5
    const/4 v5, 0x0

    goto :goto_7

    :cond_6
    if-eqz p3, :cond_c

    .line 395
    sget v0, Lcom/transitionseverywhere/R$id;->overlay_view:I

    invoke-virtual {p3, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 399
    sget v0, Lcom/transitionseverywhere/R$id;->overlay_view:I

    invoke-virtual {p3, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    move-object v6, v1

    const/4 v5, 0x1

    goto :goto_7

    .line 401
    :cond_7
    invoke-virtual {p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_9

    :cond_8
    :goto_6
    move-object v0, p3

    goto :goto_4

    .line 404
    :cond_9
    invoke-virtual {p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_c

    .line 405
    invoke-virtual {p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 406
    invoke-virtual {p0, v0, v4}, Lcom/transitionseverywhere/n;->a(Landroid/view/View;Z)Lcom/transitionseverywhere/l;

    move-result-object v5

    .line 407
    invoke-virtual {p0, v0, v4}, Lcom/transitionseverywhere/n;->b(Landroid/view/View;Z)Lcom/transitionseverywhere/l;

    move-result-object v6

    .line 410
    invoke-static {v5, v6}, Lcom/transitionseverywhere/n;->b(Lcom/transitionseverywhere/l;Lcom/transitionseverywhere/l;)Lcom/transitionseverywhere/n$b;

    move-result-object v5

    .line 411
    iget-boolean v5, v5, Lcom/transitionseverywhere/n$b;->a:Z

    if-nez v5, :cond_a

    .line 412
    invoke-static {p1, p3, v0}, Lcom/transitionseverywhere/k;->a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    goto :goto_4

    .line 413
    :cond_a
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-nez v5, :cond_b

    .line 414
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    if-eq v0, v2, :cond_b

    .line 415
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/transitionseverywhere/n;->w:Z

    if-eqz v0, :cond_b

    goto :goto_6

    :cond_b
    move-object v0, v1

    goto :goto_4

    :cond_c
    move-object v0, v1

    move-object v6, v0

    goto :goto_5

    :goto_7
    if-eqz v0, :cond_11

    .line 441
    iget-object p5, p2, Lcom/transitionseverywhere/l;->b:Ljava/util/Map;

    const-string v1, "android:visibility:screenLocation"

    invoke-interface {p5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, [I

    if-nez v5, :cond_d

    .line 443
    aget v1, p5, v3

    aget p5, p5, v4

    invoke-static {p1, v0, v1, p5}, Lcom/transitionseverywhere/a/h;->a(Landroid/view/ViewGroup;Landroid/view/View;II)V

    .line 445
    :cond_d
    invoke-virtual {p0, p1, v0, p2, p4}, Lcom/transitionseverywhere/n;->b(Landroid/view/ViewGroup;Landroid/view/View;Lcom/transitionseverywhere/l;Lcom/transitionseverywhere/l;)Landroid/animation/Animator;

    move-result-object p2

    if-nez p2, :cond_e

    .line 447
    invoke-static {p1, v0}, Lcom/transitionseverywhere/a/h;->a(Landroid/view/ViewGroup;Landroid/view/View;)V

    goto :goto_8

    :cond_e
    if-nez v5, :cond_10

    if-eqz p3, :cond_f

    .line 452
    sget p4, Lcom/transitionseverywhere/R$id;->overlay_view:I

    invoke-virtual {p3, p4, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 454
    :cond_f
    new-instance p4, Lcom/transitionseverywhere/n$1;

    invoke-direct {p4, p0, p3, p1, v0}, Lcom/transitionseverywhere/n$1;-><init>(Lcom/transitionseverywhere/n;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/View;)V

    invoke-virtual {p0, p4}, Lcom/transitionseverywhere/n;->a(Lcom/transitionseverywhere/g$b;)Lcom/transitionseverywhere/g;

    :cond_10
    :goto_8
    return-object p2

    :cond_11
    if-eqz v6, :cond_17

    .line 469
    iget p3, p0, Lcom/transitionseverywhere/n;->c:I

    if-ne p3, v2, :cond_13

    iget p3, p0, Lcom/transitionseverywhere/n;->E:I

    if-eq p3, v2, :cond_12

    goto :goto_9

    :cond_12
    const/4 v4, 0x0

    :cond_13
    :goto_9
    if-nez v4, :cond_14

    .line 472
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v2

    .line 473
    invoke-static {v6, v3}, Lcom/transitionseverywhere/a/l;->a(Landroid/view/View;I)V

    .line 475
    :cond_14
    invoke-virtual {p0, p1, v6, p2, p4}, Lcom/transitionseverywhere/n;->b(Landroid/view/ViewGroup;Landroid/view/View;Lcom/transitionseverywhere/l;Lcom/transitionseverywhere/l;)Landroid/animation/Animator;

    move-result-object p1

    if-eqz p1, :cond_15

    .line 477
    new-instance p2, Lcom/transitionseverywhere/n$a;

    invoke-direct {p2, v6, p5, v4}, Lcom/transitionseverywhere/n$a;-><init>(Landroid/view/View;IZ)V

    .line 479
    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 480
    invoke-static {p1, p2}, Lcom/transitionseverywhere/a/a;->a(Landroid/animation/Animator;Landroid/animation/Animator$AnimatorPauseListener;)V

    .line 481
    invoke-virtual {p0, p2}, Lcom/transitionseverywhere/n;->a(Lcom/transitionseverywhere/g$b;)Lcom/transitionseverywhere/g;

    goto :goto_a

    :cond_15
    if-nez v4, :cond_16

    .line 483
    invoke-static {v6, v2}, Lcom/transitionseverywhere/a/l;->a(Landroid/view/View;I)V

    :cond_16
    :goto_a
    return-object p1

    :cond_17
    return-object v1
.end method

.method public b(Lcom/transitionseverywhere/l;)V
    .locals 1

    .line 163
    iget v0, p0, Lcom/transitionseverywhere/n;->E:I

    invoke-direct {p0, p1, v0}, Lcom/transitionseverywhere/n;->a(Lcom/transitionseverywhere/l;I)V

    return-void
.end method
