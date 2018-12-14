.class Lcom/transitionseverywhere/h$a$1;
.super Lcom/transitionseverywhere/g$c;
.source "TransitionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transitionseverywhere/h$a;->onPreDraw()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transitionseverywhere/h$a;


# direct methods
.method constructor <init>(Lcom/transitionseverywhere/h$a;)V
    .locals 0

    .line 289
    iput-object p1, p0, Lcom/transitionseverywhere/h$a$1;->a:Lcom/transitionseverywhere/h$a;

    invoke-direct {p0}, Lcom/transitionseverywhere/g$c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/transitionseverywhere/g;)V
    .locals 1

    .line 292
    iget-object v0, p0, Lcom/transitionseverywhere/h$a$1;->a:Lcom/transitionseverywhere/h$a;

    iget-object v0, v0, Lcom/transitionseverywhere/h$a;->b:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/transitionseverywhere/h;->b(Landroid/view/ViewGroup;)Ljava/util/ArrayList;

    move-result-object v0

    .line 293
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
