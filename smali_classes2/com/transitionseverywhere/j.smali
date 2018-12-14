.class public Lcom/transitionseverywhere/j;
.super Lcom/transitionseverywhere/g;
.source "TransitionSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transitionseverywhere/j$a;
    }
.end annotation


# instance fields
.field private E:Z

.field a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/transitionseverywhere/g;",
            ">;"
        }
    .end annotation
.end field

.field b:I

.field c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 79
    invoke-direct {p0}, Lcom/transitionseverywhere/g;-><init>()V

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transitionseverywhere/j;->a:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 56
    iput-boolean v0, p0, Lcom/transitionseverywhere/j;->E:Z

    const/4 v0, 0x0

    .line 58
    iput-boolean v0, p0, Lcom/transitionseverywhere/j;->c:Z

    return-void
.end method

.method private c(Lcom/transitionseverywhere/g;)V
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/transitionseverywhere/j;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    iput-object p0, p1, Lcom/transitionseverywhere/g;->r:Lcom/transitionseverywhere/j;

    return-void
.end method

.method private l()V
    .locals 3

    .line 364
    new-instance v0, Lcom/transitionseverywhere/j$a;

    invoke-direct {v0, p0}, Lcom/transitionseverywhere/j$a;-><init>(Lcom/transitionseverywhere/j;)V

    .line 365
    iget-object v1, p0, Lcom/transitionseverywhere/j;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transitionseverywhere/g;

    .line 366
    invoke-virtual {v2, v0}, Lcom/transitionseverywhere/g;->a(Lcom/transitionseverywhere/g$b;)Lcom/transitionseverywhere/g;

    goto :goto_0

    .line 368
    :cond_0
    iget-object v0, p0, Lcom/transitionseverywhere/j;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/transitionseverywhere/j;->b:I

    return-void
.end method


# virtual methods
.method public synthetic a(J)Lcom/transitionseverywhere/g;
    .locals 0

    .line 53
    invoke-virtual {p0, p1, p2}, Lcom/transitionseverywhere/j;->c(J)Lcom/transitionseverywhere/j;

    move-result-object p1

    return-object p1
.end method

.method public synthetic a(Landroid/animation/TimeInterpolator;)Lcom/transitionseverywhere/g;
    .locals 0

    .line 53
    invoke-virtual {p0, p1}, Lcom/transitionseverywhere/j;->b(Landroid/animation/TimeInterpolator;)Lcom/transitionseverywhere/j;

    move-result-object p1

    return-object p1
.end method

.method public synthetic a(Lcom/transitionseverywhere/g$b;)Lcom/transitionseverywhere/g;
    .locals 0

    .line 53
    invoke-virtual {p0, p1}, Lcom/transitionseverywhere/j;->c(Lcom/transitionseverywhere/g$b;)Lcom/transitionseverywhere/j;

    move-result-object p1

    return-object p1
.end method

.method public a(I)Lcom/transitionseverywhere/j;
    .locals 3

    packed-switch p1, :pswitch_data_0

    .line 108
    new-instance v0, Landroid/util/AndroidRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid parameter for TransitionSet ordering: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/4 p1, 0x0

    .line 102
    iput-boolean p1, p0, Lcom/transitionseverywhere/j;->E:Z

    goto :goto_0

    :pswitch_1
    const/4 p1, 0x1

    .line 105
    iput-boolean p1, p0, Lcom/transitionseverywhere/j;->E:Z

    :goto_0
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 571
    invoke-super {p0, p1}, Lcom/transitionseverywhere/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 572
    :goto_0
    iget-object v2, p0, Lcom/transitionseverywhere/j;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 573
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/transitionseverywhere/j;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transitionseverywhere/g;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/transitionseverywhere/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method protected a(Landroid/view/ViewGroup;Lcom/transitionseverywhere/m;Lcom/transitionseverywhere/m;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Lcom/transitionseverywhere/m;",
            "Lcom/transitionseverywhere/m;",
            "Ljava/util/ArrayList<",
            "Lcom/transitionseverywhere/l;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/transitionseverywhere/l;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    .line 409
    invoke-virtual {v0}, Lcom/transitionseverywhere/j;->c()J

    move-result-wide v1

    .line 410
    iget-object v3, v0, Lcom/transitionseverywhere/j;->a:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    .line 412
    iget-object v5, v0, Lcom/transitionseverywhere/j;->a:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/transitionseverywhere/g;

    const-wide/16 v7, 0x0

    cmp-long v5, v1, v7

    if-lez v5, :cond_2

    .line 415
    iget-boolean v5, v0, Lcom/transitionseverywhere/j;->E:Z

    if-nez v5, :cond_0

    if-nez v4, :cond_2

    .line 416
    :cond_0
    invoke-virtual {v6}, Lcom/transitionseverywhere/g;->c()J

    move-result-wide v9

    cmp-long v5, v9, v7

    if-lez v5, :cond_1

    add-long v7, v1, v9

    .line 418
    invoke-virtual {v6, v7, v8}, Lcom/transitionseverywhere/g;->b(J)Lcom/transitionseverywhere/g;

    goto :goto_1

    .line 420
    :cond_1
    invoke-virtual {v6, v1, v2}, Lcom/transitionseverywhere/g;->b(J)Lcom/transitionseverywhere/g;

    :cond_2
    :goto_1
    move-object v7, p1

    move-object v8, p2

    move-object v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    .line 423
    invoke-virtual/range {v6 .. v11}, Lcom/transitionseverywhere/g;->a(Landroid/view/ViewGroup;Lcom/transitionseverywhere/m;Lcom/transitionseverywhere/m;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public a(Lcom/transitionseverywhere/l;)V
    .locals 3

    .line 467
    iget-object v0, p1, Lcom/transitionseverywhere/l;->a:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/transitionseverywhere/j;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 468
    iget-object v0, p0, Lcom/transitionseverywhere/j;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transitionseverywhere/g;

    .line 469
    iget-object v2, p1, Lcom/transitionseverywhere/l;->a:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/transitionseverywhere/g;->a(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 470
    invoke-virtual {v1, p1}, Lcom/transitionseverywhere/g;->a(Lcom/transitionseverywhere/l;)V

    .line 471
    iget-object v2, p1, Lcom/transitionseverywhere/l;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public synthetic b(J)Lcom/transitionseverywhere/g;
    .locals 0

    .line 53
    invoke-virtual {p0, p1, p2}, Lcom/transitionseverywhere/j;->d(J)Lcom/transitionseverywhere/j;

    move-result-object p1

    return-object p1
.end method

.method public synthetic b(Lcom/transitionseverywhere/g$b;)Lcom/transitionseverywhere/g;
    .locals 0

    .line 53
    invoke-virtual {p0, p1}, Lcom/transitionseverywhere/j;->d(Lcom/transitionseverywhere/g$b;)Lcom/transitionseverywhere/j;

    move-result-object p1

    return-object p1
.end method

.method public b(Landroid/animation/TimeInterpolator;)Lcom/transitionseverywhere/j;
    .locals 3

    .line 212
    invoke-super {p0, p1}, Lcom/transitionseverywhere/g;->a(Landroid/animation/TimeInterpolator;)Lcom/transitionseverywhere/g;

    .line 213
    iget-object p1, p0, Lcom/transitionseverywhere/j;->f:Landroid/animation/TimeInterpolator;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transitionseverywhere/j;->a:Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    .line 214
    iget-object p1, p0, Lcom/transitionseverywhere/j;->a:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 216
    iget-object v1, p0, Lcom/transitionseverywhere/j;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transitionseverywhere/g;

    iget-object v2, p0, Lcom/transitionseverywhere/j;->f:Landroid/animation/TimeInterpolator;

    invoke-virtual {v1, v2}, Lcom/transitionseverywhere/g;->a(Landroid/animation/TimeInterpolator;)Lcom/transitionseverywhere/g;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public b(Lcom/transitionseverywhere/g;)Lcom/transitionseverywhere/j;
    .locals 5

    if-eqz p1, :cond_1

    .line 141
    invoke-direct {p0, p1}, Lcom/transitionseverywhere/j;->c(Lcom/transitionseverywhere/g;)V

    .line 142
    iget-wide v0, p0, Lcom/transitionseverywhere/j;->e:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    .line 143
    iget-wide v0, p0, Lcom/transitionseverywhere/j;->e:J

    invoke-virtual {p1, v0, v1}, Lcom/transitionseverywhere/g;->a(J)Lcom/transitionseverywhere/g;

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/transitionseverywhere/j;->f:Landroid/animation/TimeInterpolator;

    if-eqz v0, :cond_1

    .line 146
    iget-object v0, p0, Lcom/transitionseverywhere/j;->f:Landroid/animation/TimeInterpolator;

    invoke-virtual {p1, v0}, Lcom/transitionseverywhere/g;->a(Landroid/animation/TimeInterpolator;)Lcom/transitionseverywhere/g;

    :cond_1
    return-object p0
.end method

.method public b(Landroid/view/View;)V
    .locals 3

    .line 501
    invoke-super {p0, p1}, Lcom/transitionseverywhere/g;->b(Landroid/view/View;)V

    .line 502
    iget-object v0, p0, Lcom/transitionseverywhere/j;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 504
    iget-object v2, p0, Lcom/transitionseverywhere/j;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transitionseverywhere/g;

    invoke-virtual {v2, p1}, Lcom/transitionseverywhere/g;->b(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b(Lcom/transitionseverywhere/l;)V
    .locals 3

    .line 479
    iget-object v0, p1, Lcom/transitionseverywhere/l;->a:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/transitionseverywhere/j;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 480
    iget-object v0, p0, Lcom/transitionseverywhere/j;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transitionseverywhere/g;

    .line 481
    iget-object v2, p1, Lcom/transitionseverywhere/l;->a:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/transitionseverywhere/g;->a(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 482
    invoke-virtual {v1, p1}, Lcom/transitionseverywhere/g;->b(Lcom/transitionseverywhere/l;)V

    .line 483
    iget-object v2, p1, Lcom/transitionseverywhere/l;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public c(J)Lcom/transitionseverywhere/j;
    .locals 5

    .line 195
    invoke-super {p0, p1, p2}, Lcom/transitionseverywhere/g;->a(J)Lcom/transitionseverywhere/g;

    .line 196
    iget-wide v0, p0, Lcom/transitionseverywhere/j;->e:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    iget-object v0, p0, Lcom/transitionseverywhere/j;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/transitionseverywhere/j;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 199
    iget-object v2, p0, Lcom/transitionseverywhere/j;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transitionseverywhere/g;

    invoke-virtual {v2, p1, p2}, Lcom/transitionseverywhere/g;->a(J)Lcom/transitionseverywhere/g;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public c(Lcom/transitionseverywhere/g$b;)Lcom/transitionseverywhere/j;
    .locals 0

    .line 256
    invoke-super {p0, p1}, Lcom/transitionseverywhere/g;->a(Lcom/transitionseverywhere/g$b;)Lcom/transitionseverywhere/g;

    move-result-object p1

    check-cast p1, Lcom/transitionseverywhere/j;

    return-object p1
.end method

.method public c(Landroid/view/View;)V
    .locals 3

    .line 511
    invoke-super {p0, p1}, Lcom/transitionseverywhere/g;->c(Landroid/view/View;)V

    .line 512
    iget-object v0, p0, Lcom/transitionseverywhere/j;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 514
    iget-object v2, p0, Lcom/transitionseverywhere/j;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transitionseverywhere/g;

    invoke-virtual {v2, p1}, Lcom/transitionseverywhere/g;->c(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method c(Lcom/transitionseverywhere/l;)V
    .locals 3

    .line 491
    invoke-super {p0, p1}, Lcom/transitionseverywhere/g;->c(Lcom/transitionseverywhere/l;)V

    .line 492
    iget-object v0, p0, Lcom/transitionseverywhere/j;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 494
    iget-object v2, p0, Lcom/transitionseverywhere/j;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transitionseverywhere/g;

    invoke-virtual {v2, p1}, Lcom/transitionseverywhere/g;->c(Lcom/transitionseverywhere/l;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 53
    invoke-virtual {p0}, Lcom/transitionseverywhere/j;->k()Lcom/transitionseverywhere/j;

    move-result-object v0

    return-object v0
.end method

.method public d(J)Lcom/transitionseverywhere/j;
    .locals 0

    .line 207
    invoke-super {p0, p1, p2}, Lcom/transitionseverywhere/g;->b(J)Lcom/transitionseverywhere/g;

    move-result-object p1

    check-cast p1, Lcom/transitionseverywhere/j;

    return-object p1
.end method

.method public d(Lcom/transitionseverywhere/g$b;)Lcom/transitionseverywhere/j;
    .locals 0

    .line 325
    invoke-super {p0, p1}, Lcom/transitionseverywhere/g;->b(Lcom/transitionseverywhere/g$b;)Lcom/transitionseverywhere/g;

    move-result-object p1

    check-cast p1, Lcom/transitionseverywhere/j;

    return-object p1
.end method

.method protected e()V
    .locals 6

    .line 433
    iget-object v0, p0, Lcom/transitionseverywhere/j;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 434
    invoke-virtual {p0}, Lcom/transitionseverywhere/j;->f()V

    .line 435
    invoke-virtual {p0}, Lcom/transitionseverywhere/j;->g()V

    return-void

    .line 438
    :cond_0
    invoke-direct {p0}, Lcom/transitionseverywhere/j;->l()V

    .line 439
    iget-object v0, p0, Lcom/transitionseverywhere/j;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 440
    iget-boolean v1, p0, Lcom/transitionseverywhere/j;->E:Z

    const/4 v2, 0x0

    if-nez v1, :cond_2

    const/4 v1, 0x1

    :goto_0
    if-ge v1, v0, :cond_1

    .line 444
    iget-object v3, p0, Lcom/transitionseverywhere/j;->a:Ljava/util/ArrayList;

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transitionseverywhere/g;

    .line 445
    iget-object v4, p0, Lcom/transitionseverywhere/j;->a:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transitionseverywhere/g;

    .line 446
    new-instance v5, Lcom/transitionseverywhere/j$1;

    invoke-direct {v5, p0, v4}, Lcom/transitionseverywhere/j$1;-><init>(Lcom/transitionseverywhere/j;Lcom/transitionseverywhere/g;)V

    invoke-virtual {v3, v5}, Lcom/transitionseverywhere/g;->a(Lcom/transitionseverywhere/g$b;)Lcom/transitionseverywhere/g;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 454
    :cond_1
    iget-object v0, p0, Lcom/transitionseverywhere/j;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transitionseverywhere/g;

    if-eqz v0, :cond_3

    .line 456
    invoke-virtual {v0}, Lcom/transitionseverywhere/g;->e()V

    goto :goto_2

    :cond_2
    :goto_1
    if-ge v2, v0, :cond_3

    .line 460
    iget-object v1, p0, Lcom/transitionseverywhere/j;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transitionseverywhere/g;

    invoke-virtual {v1}, Lcom/transitionseverywhere/g;->e()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    return-void
.end method

.method public synthetic i()Lcom/transitionseverywhere/g;
    .locals 1

    .line 53
    invoke-virtual {p0}, Lcom/transitionseverywhere/j;->k()Lcom/transitionseverywhere/j;

    move-result-object v0

    return-object v0
.end method

.method public k()Lcom/transitionseverywhere/j;
    .locals 4

    .line 580
    invoke-super {p0}, Lcom/transitionseverywhere/g;->i()Lcom/transitionseverywhere/g;

    move-result-object v0

    check-cast v0, Lcom/transitionseverywhere/j;

    .line 581
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/transitionseverywhere/j;->a:Ljava/util/ArrayList;

    .line 582
    iget-object v1, p0, Lcom/transitionseverywhere/j;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 584
    iget-object v3, p0, Lcom/transitionseverywhere/j;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transitionseverywhere/g;

    invoke-virtual {v3}, Lcom/transitionseverywhere/g;->i()Lcom/transitionseverywhere/g;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/transitionseverywhere/j;->c(Lcom/transitionseverywhere/g;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method
