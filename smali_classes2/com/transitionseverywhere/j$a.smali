.class Lcom/transitionseverywhere/j$a;
.super Lcom/transitionseverywhere/g$c;
.source "TransitionSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transitionseverywhere/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:Lcom/transitionseverywhere/j;


# direct methods
.method constructor <init>(Lcom/transitionseverywhere/j;)V
    .locals 0

    .line 378
    invoke-direct {p0}, Lcom/transitionseverywhere/g$c;-><init>()V

    .line 379
    iput-object p1, p0, Lcom/transitionseverywhere/j$a;->a:Lcom/transitionseverywhere/j;

    return-void
.end method


# virtual methods
.method public a(Lcom/transitionseverywhere/g;)V
    .locals 2

    .line 392
    iget-object v0, p0, Lcom/transitionseverywhere/j$a;->a:Lcom/transitionseverywhere/j;

    iget v1, v0, Lcom/transitionseverywhere/j;->b:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/transitionseverywhere/j;->b:I

    .line 393
    iget-object v0, p0, Lcom/transitionseverywhere/j$a;->a:Lcom/transitionseverywhere/j;

    iget v0, v0, Lcom/transitionseverywhere/j;->b:I

    if-nez v0, :cond_0

    .line 395
    iget-object v0, p0, Lcom/transitionseverywhere/j$a;->a:Lcom/transitionseverywhere/j;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/transitionseverywhere/j;->c:Z

    .line 396
    iget-object v0, p0, Lcom/transitionseverywhere/j$a;->a:Lcom/transitionseverywhere/j;

    invoke-virtual {v0}, Lcom/transitionseverywhere/j;->g()V

    .line 398
    :cond_0
    invoke-virtual {p1, p0}, Lcom/transitionseverywhere/g;->b(Lcom/transitionseverywhere/g$b;)Lcom/transitionseverywhere/g;

    return-void
.end method

.method public d(Lcom/transitionseverywhere/g;)V
    .locals 1

    .line 384
    iget-object p1, p0, Lcom/transitionseverywhere/j$a;->a:Lcom/transitionseverywhere/j;

    iget-boolean p1, p1, Lcom/transitionseverywhere/j;->c:Z

    if-nez p1, :cond_0

    .line 385
    iget-object p1, p0, Lcom/transitionseverywhere/j$a;->a:Lcom/transitionseverywhere/j;

    invoke-virtual {p1}, Lcom/transitionseverywhere/j;->f()V

    .line 386
    iget-object p1, p0, Lcom/transitionseverywhere/j$a;->a:Lcom/transitionseverywhere/j;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/transitionseverywhere/j;->c:Z

    :cond_0
    return-void
.end method
