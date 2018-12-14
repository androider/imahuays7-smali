.class Lcom/transitionseverywhere/j$1;
.super Lcom/transitionseverywhere/g$c;
.source "TransitionSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transitionseverywhere/j;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transitionseverywhere/g;

.field final synthetic b:Lcom/transitionseverywhere/j;


# direct methods
.method constructor <init>(Lcom/transitionseverywhere/j;Lcom/transitionseverywhere/g;)V
    .locals 0

    .line 446
    iput-object p1, p0, Lcom/transitionseverywhere/j$1;->b:Lcom/transitionseverywhere/j;

    iput-object p2, p0, Lcom/transitionseverywhere/j$1;->a:Lcom/transitionseverywhere/g;

    invoke-direct {p0}, Lcom/transitionseverywhere/g$c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/transitionseverywhere/g;)V
    .locals 1

    .line 449
    iget-object v0, p0, Lcom/transitionseverywhere/j$1;->a:Lcom/transitionseverywhere/g;

    invoke-virtual {v0}, Lcom/transitionseverywhere/g;->e()V

    .line 450
    invoke-virtual {p1, p0}, Lcom/transitionseverywhere/g;->b(Lcom/transitionseverywhere/g$b;)Lcom/transitionseverywhere/g;

    return-void
.end method
