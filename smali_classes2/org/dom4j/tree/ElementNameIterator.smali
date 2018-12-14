.class public Lorg/dom4j/tree/ElementNameIterator;
.super Lorg/dom4j/tree/FilterIterator;
.source "ElementNameIterator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/dom4j/tree/FilterIterator<",
        "Lorg/dom4j/Node;",
        ">;"
    }
.end annotation


# instance fields
.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/Iterator;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "Lorg/dom4j/Node;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 31
    invoke-direct {p0, p1}, Lorg/dom4j/tree/FilterIterator;-><init>(Ljava/util/Iterator;)V

    .line 32
    iput-object p2, p0, Lorg/dom4j/tree/ElementNameIterator;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected bridge synthetic matches(Ljava/lang/Object;)Z
    .locals 0

    .line 27
    check-cast p1, Lorg/dom4j/Node;

    invoke-virtual {p0, p1}, Lorg/dom4j/tree/ElementNameIterator;->matches(Lorg/dom4j/Node;)Z

    move-result p1

    return p1
.end method

.method protected matches(Lorg/dom4j/Node;)Z
    .locals 1

    .line 45
    instance-of v0, p1, Lorg/dom4j/Element;

    if-eqz v0, :cond_0

    .line 46
    check-cast p1, Lorg/dom4j/Element;

    .line 48
    iget-object v0, p0, Lorg/dom4j/tree/ElementNameIterator;->name:Ljava/lang/String;

    invoke-interface {p1}, Lorg/dom4j/Element;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
