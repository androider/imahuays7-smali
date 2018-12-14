.class public abstract Lorg/dom4j/tree/FilterIterator;
.super Ljava/lang/Object;
.source "FilterIterator.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private first:Z

.field private next:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected proxy:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Iterator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "TT;>;)V"
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 29
    iput-boolean v0, p0, Lorg/dom4j/tree/FilterIterator;->first:Z

    .line 32
    iput-object p1, p0, Lorg/dom4j/tree/FilterIterator;->proxy:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method protected findNext()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lorg/dom4j/tree/FilterIterator;->proxy:Ljava/util/Iterator;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 79
    :cond_0
    iget-object v0, p0, Lorg/dom4j/tree/FilterIterator;->proxy:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    iget-object v0, p0, Lorg/dom4j/tree/FilterIterator;->proxy:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {p0, v0}, Lorg/dom4j/tree/FilterIterator;->matches(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v0

    .line 87
    :cond_1
    iput-object v1, p0, Lorg/dom4j/tree/FilterIterator;->proxy:Ljava/util/Iterator;

    :cond_2
    return-object v1
.end method

.method public hasNext()Z
    .locals 2

    .line 36
    iget-boolean v0, p0, Lorg/dom4j/tree/FilterIterator;->first:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 37
    invoke-virtual {p0}, Lorg/dom4j/tree/FilterIterator;->findNext()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/tree/FilterIterator;->next:Ljava/lang/Object;

    .line 38
    iput-boolean v1, p0, Lorg/dom4j/tree/FilterIterator;->first:Z

    .line 41
    :cond_0
    iget-object v0, p0, Lorg/dom4j/tree/FilterIterator;->next:Ljava/lang/Object;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method protected abstract matches(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    .line 45
    invoke-virtual {p0}, Lorg/dom4j/tree/FilterIterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 49
    :cond_0
    iget-object v0, p0, Lorg/dom4j/tree/FilterIterator;->next:Ljava/lang/Object;

    .line 50
    invoke-virtual {p0}, Lorg/dom4j/tree/FilterIterator;->findNext()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lorg/dom4j/tree/FilterIterator;->next:Ljava/lang/Object;

    return-object v0
.end method

.method public remove()V
    .locals 1

    .line 63
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
