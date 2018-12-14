.class public Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$b;
.super Lio/rx_cache2/internal/cache/memory/apache/c$c;
.source "AbstractReferenceMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lio/rx_cache2/internal/cache/memory/apache/c$c<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private final e:Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap;Lio/rx_cache2/internal/cache/memory/apache/c$c;ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap<",
            "TK;TV;>;",
            "Lio/rx_cache2/internal/cache/memory/apache/c$c<",
            "TK;TV;>;ITK;TV;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 607
    invoke-direct {p0, p2, p3, v0, v0}, Lio/rx_cache2/internal/cache/memory/apache/c$c;-><init>(Lio/rx_cache2/internal/cache/memory/apache/c$c;ILjava/lang/Object;Ljava/lang/Object;)V

    .line 608
    iput-object p1, p0, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$b;->e:Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap;

    .line 609
    invoke-static {p1}, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap;->a(Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap;)Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$ReferenceStrength;

    move-result-object p2

    invoke-virtual {p0, p2, p4, p3}, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$b;->a(Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$ReferenceStrength;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p2

    iput-object p2, p0, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$b;->c:Ljava/lang/Object;

    .line 610
    invoke-static {p1}, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap;->b(Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap;)Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$ReferenceStrength;

    move-result-object p1

    invoke-virtual {p0, p1, p5, p3}, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$b;->a(Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$ReferenceStrength;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$b;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected a()Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$b<",
            "TK;TV;>;"
        }
    .end annotation

    .line 748
    iget-object v0, p0, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$b;->a:Lio/rx_cache2/internal/cache/memory/apache/c$c;

    check-cast v0, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$b;

    return-object v0
.end method

.method protected a(Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$ReferenceStrength;Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$ReferenceStrength;",
            "TT;I)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 709
    sget-object v0, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$ReferenceStrength;->HARD:Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$ReferenceStrength;

    if-ne p1, v0, :cond_0

    return-object p2

    .line 712
    :cond_0
    sget-object v0, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$ReferenceStrength;->SOFT:Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$ReferenceStrength;

    if-ne p1, v0, :cond_1

    .line 713
    new-instance p1, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$j;

    iget-object v0, p0, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$b;->e:Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap;

    invoke-static {v0}, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap;->c(Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap;)Ljava/lang/ref/ReferenceQueue;

    move-result-object v0

    invoke-direct {p1, p3, p2, v0}, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$j;-><init>(ILjava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    return-object p1

    .line 715
    :cond_1
    sget-object v0, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$ReferenceStrength;->WEAK:Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$ReferenceStrength;

    if-ne p1, v0, :cond_2

    .line 716
    new-instance p1, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$k;

    iget-object v0, p0, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$b;->e:Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap;

    invoke-static {v0}, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap;->c(Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap;)Ljava/lang/ref/ReferenceQueue;

    move-result-object v0

    invoke-direct {p1, p3, p2, v0}, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$k;-><init>(ILjava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    return-object p1

    .line 718
    :cond_2
    new-instance p1, Ljava/lang/Error;

    invoke-direct {p1}, Ljava/lang/Error;-><init>()V

    throw p1
.end method

.method a(Ljava/lang/ref/Reference;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/Reference<",
            "*>;)Z"
        }
    .end annotation

    .line 727
    iget-object v0, p0, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$b;->e:Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap;

    invoke-static {v0}, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap;->a(Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap;)Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$ReferenceStrength;

    move-result-object v0

    sget-object v1, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$ReferenceStrength;->HARD:Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$ReferenceStrength;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$b;->c:Ljava/lang/Object;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 728
    iget-object v0, p0, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$b;->e:Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap;

    invoke-static {v0}, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap;->b(Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap;)Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$ReferenceStrength;

    move-result-object v0

    sget-object v1, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$ReferenceStrength;->HARD:Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$ReferenceStrength;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$b;->d:Ljava/lang/Object;

    if-ne v0, p1, :cond_2

    :cond_1
    const/4 v2, 0x1

    :cond_2
    if-eqz v2, :cond_5

    .line 730
    iget-object p1, p0, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$b;->e:Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap;

    invoke-static {p1}, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap;->a(Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap;)Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$ReferenceStrength;

    move-result-object p1

    sget-object v0, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$ReferenceStrength;->HARD:Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$ReferenceStrength;

    if-eq p1, v0, :cond_3

    .line 731
    iget-object p1, p0, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$b;->c:Ljava/lang/Object;

    check-cast p1, Ljava/lang/ref/Reference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->clear()V

    .line 733
    :cond_3
    iget-object p1, p0, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$b;->e:Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap;

    invoke-static {p1}, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap;->b(Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap;)Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$ReferenceStrength;

    move-result-object p1

    sget-object v0, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$ReferenceStrength;->HARD:Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$ReferenceStrength;

    if-eq p1, v0, :cond_4

    .line 734
    iget-object p1, p0, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$b;->d:Ljava/lang/Object;

    check-cast p1, Ljava/lang/ref/Reference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->clear()V

    goto :goto_1

    .line 735
    :cond_4
    iget-object p1, p0, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$b;->e:Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap;

    invoke-static {p1}, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap;->d(Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, 0x0

    .line 736
    iput-object p1, p0, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$b;->d:Ljava/lang/Object;

    :cond_5
    :goto_1
    return v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 668
    :cond_0
    instance-of v1, p1, Ljava/util/Map$Entry;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 672
    :cond_1
    check-cast p1, Ljava/util/Map$Entry;

    .line 673
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 674
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-eqz v1, :cond_4

    if-nez p1, :cond_2

    goto :goto_1

    .line 680
    :cond_2
    iget-object v3, p0, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$b;->e:Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap;

    iget-object v4, p0, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$b;->c:Ljava/lang/Object;

    invoke-virtual {v3, v1, v4}, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$b;->e:Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap;

    .line 681
    invoke-virtual {p0}, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$b;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, p1, v3}, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_4
    :goto_1
    return v2
.end method

.method public getKey()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 622
    iget-object v0, p0, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$b;->e:Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap;

    invoke-static {v0}, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap;->a(Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap;)Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$ReferenceStrength;

    move-result-object v0

    sget-object v1, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$ReferenceStrength;->HARD:Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$ReferenceStrength;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$b;->c:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$b;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/ref/Reference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 634
    iget-object v0, p0, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$b;->e:Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap;

    invoke-static {v0}, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap;->b(Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap;)Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$ReferenceStrength;

    move-result-object v0

    sget-object v1, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$ReferenceStrength;->HARD:Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$ReferenceStrength;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$b;->d:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$b;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/ref/Reference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 693
    iget-object v0, p0, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$b;->e:Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap;

    invoke-virtual {p0}, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$b;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0}, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$b;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap;->c(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 646
    invoke-virtual {p0}, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$b;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 647
    iget-object v1, p0, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$b;->e:Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap;

    invoke-static {v1}, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap;->b(Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap;)Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$ReferenceStrength;

    move-result-object v1

    sget-object v2, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$ReferenceStrength;->HARD:Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$ReferenceStrength;

    if-eq v1, v2, :cond_0

    .line 648
    iget-object v1, p0, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$b;->d:Ljava/lang/Object;

    check-cast v1, Ljava/lang/ref/Reference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->clear()V

    .line 650
    :cond_0
    iget-object v1, p0, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$b;->e:Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap;

    invoke-static {v1}, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap;->b(Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap;)Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$ReferenceStrength;

    move-result-object v1

    iget v2, p0, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$b;->b:I

    invoke-virtual {p0, v1, p1, v2}, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$b;->a(Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$ReferenceStrength;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lio/rx_cache2/internal/cache/memory/apache/AbstractReferenceMap$b;->d:Ljava/lang/Object;

    return-object v0
.end method
