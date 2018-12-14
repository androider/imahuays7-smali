.class public Lcom/transitionseverywhere/a;
.super Lcom/transitionseverywhere/j;
.source "AutoTransition.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/transitionseverywhere/j;-><init>()V

    .line 38
    invoke-direct {p0}, Lcom/transitionseverywhere/a;->l()V

    return-void
.end method

.method private l()V
    .locals 3

    const/4 v0, 0x1

    .line 47
    invoke-virtual {p0, v0}, Lcom/transitionseverywhere/a;->a(I)Lcom/transitionseverywhere/j;

    .line 48
    new-instance v1, Lcom/transitionseverywhere/d;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lcom/transitionseverywhere/d;-><init>(I)V

    invoke-virtual {p0, v1}, Lcom/transitionseverywhere/a;->b(Lcom/transitionseverywhere/g;)Lcom/transitionseverywhere/j;

    move-result-object v1

    new-instance v2, Lcom/transitionseverywhere/b;

    invoke-direct {v2}, Lcom/transitionseverywhere/b;-><init>()V

    .line 49
    invoke-virtual {v1, v2}, Lcom/transitionseverywhere/j;->b(Lcom/transitionseverywhere/g;)Lcom/transitionseverywhere/j;

    move-result-object v1

    new-instance v2, Lcom/transitionseverywhere/d;

    invoke-direct {v2, v0}, Lcom/transitionseverywhere/d;-><init>(I)V

    .line 50
    invoke-virtual {v1, v2}, Lcom/transitionseverywhere/j;->b(Lcom/transitionseverywhere/g;)Lcom/transitionseverywhere/j;

    return-void
.end method
