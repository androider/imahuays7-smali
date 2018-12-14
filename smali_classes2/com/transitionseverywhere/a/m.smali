.class Lcom/transitionseverywhere/a/m;
.super Lcom/transitionseverywhere/a/l$e;
.source "ViewUtilsLollipop.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# static fields
.field private static final a:Ljava/lang/Class;

.field private static final b:Ljava/lang/reflect/Method;

.field private static final c:Ljava/lang/reflect/Method;

.field private static final d:Ljava/lang/reflect/Method;

.field private static final e:Ljava/lang/reflect/Method;

.field private static final f:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const-string v0, "android.view.GhostView"

    .line 17
    invoke-static {v0}, Lcom/transitionseverywhere/a/g;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/transitionseverywhere/a/m;->a:Ljava/lang/Class;

    .line 18
    sget-object v0, Lcom/transitionseverywhere/a/m;->a:Ljava/lang/Class;

    const-string v1, "addGhost"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Landroid/view/View;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, Landroid/view/ViewGroup;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-class v3, Landroid/graphics/Matrix;

    const/4 v6, 0x2

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Lcom/transitionseverywhere/a/g;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/transitionseverywhere/a/m;->b:Ljava/lang/reflect/Method;

    .line 20
    sget-object v0, Lcom/transitionseverywhere/a/m;->a:Ljava/lang/Class;

    const-string v1, "removeGhost"

    new-array v2, v5, [Ljava/lang/Class;

    const-class v3, Landroid/view/View;

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/transitionseverywhere/a/g;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/transitionseverywhere/a/m;->c:Ljava/lang/reflect/Method;

    .line 22
    const-class v0, Landroid/view/View;

    const-string v1, "transformMatrixToGlobal"

    new-array v2, v5, [Ljava/lang/Class;

    const-class v3, Landroid/graphics/Matrix;

    aput-object v3, v2, v4

    .line 23
    invoke-static {v0, v1, v2}, Lcom/transitionseverywhere/a/g;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/transitionseverywhere/a/m;->d:Ljava/lang/reflect/Method;

    .line 24
    const-class v0, Landroid/view/View;

    const-string v1, "transformMatrixToLocal"

    new-array v2, v5, [Ljava/lang/Class;

    const-class v3, Landroid/graphics/Matrix;

    aput-object v3, v2, v4

    .line 25
    invoke-static {v0, v1, v2}, Lcom/transitionseverywhere/a/g;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/transitionseverywhere/a/m;->e:Ljava/lang/reflect/Method;

    .line 26
    const-class v0, Landroid/view/View;

    const-string v1, "setAnimationMatrix"

    new-array v2, v5, [Ljava/lang/Class;

    const-class v3, Landroid/graphics/Matrix;

    aput-object v3, v2, v4

    .line 27
    invoke-static {v0, v1, v2}, Lcom/transitionseverywhere/a/g;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/transitionseverywhere/a/m;->f:Ljava/lang/reflect/Method;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/transitionseverywhere/a/l$e;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroid/graphics/Matrix;)V
    .locals 2

    .line 31
    sget-object v0, Lcom/transitionseverywhere/a/m;->d:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, p2}, Lcom/transitionseverywhere/a/g;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Method;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public b(Landroid/view/View;)Ljava/lang/String;
    .locals 0

    .line 61
    invoke-virtual {p1}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public b(Landroid/view/View;Landroid/graphics/Matrix;)V
    .locals 2

    .line 36
    sget-object v0, Lcom/transitionseverywhere/a/m;->e:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, p2}, Lcom/transitionseverywhere/a/g;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Method;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
