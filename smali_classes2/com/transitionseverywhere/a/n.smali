.class Lcom/transitionseverywhere/a/n;
.super Lcom/transitionseverywhere/a/m;
.source "ViewUtilsLollipopMr1.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x16
.end annotation


# static fields
.field private static final a:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Landroid/graphics/PointF;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    sput-object v0, Lcom/transitionseverywhere/a/n;->c:Landroid/graphics/PointF;

    const-string v0, "POSITION_PROPERTY"

    .line 19
    invoke-static {v0}, Lcom/transitionseverywhere/a/n;->a(Ljava/lang/String;)Landroid/util/Property;

    move-result-object v0

    sput-object v0, Lcom/transitionseverywhere/a/n;->a:Landroid/util/Property;

    const-string v0, "BOTTOM_RIGHT_ONLY_PROPERTY"

    .line 20
    invoke-static {v0}, Lcom/transitionseverywhere/a/n;->a(Ljava/lang/String;)Landroid/util/Property;

    move-result-object v0

    sput-object v0, Lcom/transitionseverywhere/a/n;->b:Landroid/util/Property;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/transitionseverywhere/a/m;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)Landroid/util/Property;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    .line 25
    const-class v0, Landroid/transition/ChangeBounds;

    .line 26
    invoke-static {v0, p0}, Lcom/transitionseverywhere/a/g;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    const/4 v0, 0x0

    .line 25
    invoke-static {v0, v0, p0}, Lcom/transitionseverywhere/a/g;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object p0

    .line 27
    instance-of v1, p0, Landroid/util/Property;

    if-eqz v1, :cond_0

    .line 28
    check-cast p0, Landroid/util/Property;

    .line 30
    :try_start_0
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    invoke-virtual {p0, v0, v1}, Landroid/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object p0, v0

    :catch_1
    :goto_0
    return-object p0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/View;IIII)V
    .locals 1

    .line 45
    sget-object v0, Lcom/transitionseverywhere/a/n;->a:Landroid/util/Property;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/transitionseverywhere/a/n;->b:Landroid/util/Property;

    if-eqz v0, :cond_0

    .line 46
    sget-object v0, Lcom/transitionseverywhere/a/n;->c:Landroid/graphics/PointF;

    int-to-float p2, p2

    int-to-float p3, p3

    invoke-virtual {v0, p2, p3}, Landroid/graphics/PointF;->set(FF)V

    .line 47
    sget-object p2, Lcom/transitionseverywhere/a/n;->a:Landroid/util/Property;

    sget-object p3, Lcom/transitionseverywhere/a/n;->c:Landroid/graphics/PointF;

    invoke-virtual {p2, p1, p3}, Landroid/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 48
    sget-object p2, Lcom/transitionseverywhere/a/n;->c:Landroid/graphics/PointF;

    int-to-float p3, p4

    int-to-float p4, p5

    invoke-virtual {p2, p3, p4}, Landroid/graphics/PointF;->set(FF)V

    .line 49
    sget-object p2, Lcom/transitionseverywhere/a/n;->b:Landroid/util/Property;

    sget-object p3, Lcom/transitionseverywhere/a/n;->c:Landroid/graphics/PointF;

    invoke-virtual {p2, p1, p3}, Landroid/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 51
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/transitionseverywhere/a/m;->a(Landroid/view/View;IIII)V

    :goto_0
    return-void
.end method
