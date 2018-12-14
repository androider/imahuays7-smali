.class Lcom/transitionseverywhere/a/i$a;
.super Ljava/lang/Object;
.source "ViewGroupUtils.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transitionseverywhere/a/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field private static a:Ljava/lang/reflect/Field;

.field private static b:Landroid/animation/LayoutTransition;

.field private static final c:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 22
    const-class v0, Landroid/animation/LayoutTransition;

    const-string v1, "cancel"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    .line 23
    invoke-static {v0, v1, v2}, Lcom/transitionseverywhere/a/g;->b(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/transitionseverywhere/a/i$a;->c:Ljava/lang/reflect/Method;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;Z)V
    .locals 4

    .line 26
    sget-object v0, Lcom/transitionseverywhere/a/i$a;->b:Landroid/animation/LayoutTransition;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lcom/transitionseverywhere/a/i$a$1;

    invoke-direct {v0, p0}, Lcom/transitionseverywhere/a/i$a$1;-><init>(Lcom/transitionseverywhere/a/i$a;)V

    sput-object v0, Lcom/transitionseverywhere/a/i$a;->b:Landroid/animation/LayoutTransition;

    .line 33
    sget-object v0, Lcom/transitionseverywhere/a/i$a;->b:Landroid/animation/LayoutTransition;

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v2}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 34
    sget-object v0, Lcom/transitionseverywhere/a/i$a;->b:Landroid/animation/LayoutTransition;

    invoke-virtual {v0, v1, v2}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 35
    sget-object v0, Lcom/transitionseverywhere/a/i$a;->b:Landroid/animation/LayoutTransition;

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v2}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 36
    sget-object v0, Lcom/transitionseverywhere/a/i$a;->b:Landroid/animation/LayoutTransition;

    const/4 v3, 0x3

    invoke-virtual {v0, v3, v2}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 37
    sget-object v0, Lcom/transitionseverywhere/a/i$a;->b:Landroid/animation/LayoutTransition;

    const/4 v3, 0x4

    invoke-virtual {v0, v3, v2}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    :cond_0
    if-eqz p2, :cond_2

    .line 40
    invoke-virtual {p0, p1}, Lcom/transitionseverywhere/a/i$a;->a(Landroid/view/ViewGroup;)Z

    .line 41
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 42
    sget-object v0, Lcom/transitionseverywhere/a/i$a;->b:Landroid/animation/LayoutTransition;

    if-eq p2, v0, :cond_1

    .line 43
    sget p2, Lcom/transitionseverywhere/R$id;->group_layouttransition_backup:I

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    .line 45
    :cond_1
    sget-object p2, Lcom/transitionseverywhere/a/i$a;->b:Landroid/animation/LayoutTransition;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    goto :goto_0

    .line 47
    :cond_2
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 48
    sget-object p2, Lcom/transitionseverywhere/a/i$a;->a:Ljava/lang/reflect/Field;

    if-nez p2, :cond_3

    .line 49
    const-class p2, Landroid/view/ViewGroup;

    const-string v0, "mLayoutSuppressed"

    invoke-static {p2, v0}, Lcom/transitionseverywhere/a/g;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p2

    sput-object p2, Lcom/transitionseverywhere/a/i$a;->a:Ljava/lang/reflect/Field;

    .line 52
    :cond_3
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v0, Lcom/transitionseverywhere/a/i$a;->a:Ljava/lang/reflect/Field;

    invoke-static {p1, p2, v0}, Lcom/transitionseverywhere/a/g;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    .line 54
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, p2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 55
    sget-object p2, Lcom/transitionseverywhere/a/i$a;->a:Ljava/lang/reflect/Field;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/transitionseverywhere/a/g;->a(Ljava/lang/Object;Ljava/lang/reflect/Field;Ljava/lang/Object;)V

    .line 56
    invoke-virtual {p1}, Landroid/view/ViewGroup;->requestLayout()V

    .line 58
    :cond_4
    sget p2, Lcom/transitionseverywhere/R$id;->group_layouttransition_backup:I

    .line 59
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/animation/LayoutTransition;

    if-eqz p2, :cond_5

    .line 61
    sget v0, Lcom/transitionseverywhere/R$id;->group_layouttransition_backup:I

    invoke-virtual {p1, v0, v2}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    .line 62
    new-instance v0, Lcom/transitionseverywhere/a/i$a$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/transitionseverywhere/a/i$a$2;-><init>(Lcom/transitionseverywhere/a/i$a;Landroid/view/ViewGroup;Landroid/animation/LayoutTransition;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    :cond_5
    :goto_0
    return-void
.end method

.method public a(Landroid/view/ViewGroup;)Z
    .locals 2

    if-eqz p1, :cond_0

    .line 74
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {v0}, Landroid/animation/LayoutTransition;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/transitionseverywhere/a/i$a;->c:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object p1

    const/4 v0, 0x0

    sget-object v1, Lcom/transitionseverywhere/a/i$a;->c:Ljava/lang/reflect/Method;

    invoke-static {p1, v0, v1}, Lcom/transitionseverywhere/a/g;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Method;)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
