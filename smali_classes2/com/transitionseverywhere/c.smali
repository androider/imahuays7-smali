.class public Lcom/transitionseverywhere/c;
.super Lcom/transitionseverywhere/g;
.source "ChangeClipBounds.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# static fields
.field public static final a:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    .line 44
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "android:clipBounds:clip"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/transitionseverywhere/c;->b:[Ljava/lang/String;

    .line 51
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 52
    new-instance v0, Lcom/transitionseverywhere/c$1;

    const-class v1, Landroid/graphics/Rect;

    const-string v2, "clipBounds"

    invoke-direct {v0, v1, v2}, Lcom/transitionseverywhere/c$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/transitionseverywhere/c;->a:Landroid/util/Property;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 66
    sput-object v0, Lcom/transitionseverywhere/c;->a:Landroid/util/Property;

    :goto_0
    return-void
.end method

.method private d(Lcom/transitionseverywhere/l;)V
    .locals 4

    .line 82
    iget-object v0, p1, Lcom/transitionseverywhere/l;->a:Landroid/view/View;

    .line 83
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    return-void

    .line 87
    :cond_0
    invoke-static {v0}, Lcom/transitionseverywhere/a/l;->a(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    .line 88
    iget-object v2, p1, Lcom/transitionseverywhere/l;->b:Ljava/util/Map;

    const-string v3, "android:clipBounds:clip"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v1, :cond_1

    .line 90
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    const/4 v3, 0x0

    invoke-direct {v1, v3, v3, v2, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 91
    iget-object p1, p1, Lcom/transitionseverywhere/l;->b:Ljava/util/Map;

    const-string v0, "android:clipBounds:bounds"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;Lcom/transitionseverywhere/l;Lcom/transitionseverywhere/l;)Landroid/animation/Animator;
    .locals 4

    const/4 p1, 0x0

    if-eqz p2, :cond_5

    if-eqz p3, :cond_5

    .line 108
    iget-object v0, p2, Lcom/transitionseverywhere/l;->b:Ljava/util/Map;

    const-string v1, "android:clipBounds:clip"

    .line 109
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p3, Lcom/transitionseverywhere/l;->b:Ljava/util/Map;

    const-string v1, "android:clipBounds:clip"

    .line 110
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 113
    :cond_0
    iget-object v0, p2, Lcom/transitionseverywhere/l;->b:Ljava/util/Map;

    const-string v1, "android:clipBounds:clip"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 114
    iget-object v1, p3, Lcom/transitionseverywhere/l;->b:Ljava/util/Map;

    const-string v2, "android:clipBounds:clip"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    if-nez v0, :cond_1

    if-nez v1, :cond_1

    return-object p1

    :cond_1
    if-nez v0, :cond_2

    .line 120
    iget-object p2, p2, Lcom/transitionseverywhere/l;->b:Ljava/util/Map;

    const-string v0, "android:clipBounds:bounds"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Landroid/graphics/Rect;

    goto :goto_0

    :cond_2
    if-nez v1, :cond_3

    .line 122
    iget-object p2, p3, Lcom/transitionseverywhere/l;->b:Ljava/util/Map;

    const-string v1, "android:clipBounds:bounds"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v1, p2

    check-cast v1, Landroid/graphics/Rect;

    .line 124
    :cond_3
    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    return-object p1

    .line 128
    :cond_4
    iget-object p1, p3, Lcom/transitionseverywhere/l;->a:Landroid/view/View;

    invoke-static {p1, v0}, Lcom/transitionseverywhere/a/l;->a(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 129
    new-instance p1, Lcom/transitionseverywhere/a/f;

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {p1, p2}, Lcom/transitionseverywhere/a/f;-><init>(Landroid/graphics/Rect;)V

    .line 130
    iget-object p2, p3, Lcom/transitionseverywhere/l;->a:Landroid/view/View;

    sget-object p3, Lcom/transitionseverywhere/c;->a:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/graphics/Rect;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-static {p2, p3, p1, v2}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    return-object p1

    :cond_5
    :goto_1
    return-object p1
.end method

.method public a(Lcom/transitionseverywhere/l;)V
    .locals 0

    .line 97
    invoke-direct {p0, p1}, Lcom/transitionseverywhere/c;->d(Lcom/transitionseverywhere/l;)V

    return-void
.end method

.method public a()[Ljava/lang/String;
    .locals 1

    .line 78
    sget-object v0, Lcom/transitionseverywhere/c;->b:[Ljava/lang/String;

    return-object v0
.end method

.method public b(Lcom/transitionseverywhere/l;)V
    .locals 0

    .line 102
    invoke-direct {p0, p1}, Lcom/transitionseverywhere/c;->d(Lcom/transitionseverywhere/l;)V

    return-void
.end method
