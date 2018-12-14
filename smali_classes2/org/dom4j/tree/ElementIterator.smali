.class public Lorg/dom4j/tree/ElementIterator;
.super Lorg/dom4j/tree/FilterIterator;
.source "ElementIterator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/dom4j/tree/FilterIterator<",
        "Lorg/dom4j/Node;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/Iterator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "Lorg/dom4j/Node;",
            ">;)V"
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1}, Lorg/dom4j/tree/FilterIterator;-><init>(Ljava/util/Iterator;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic matches(Ljava/lang/Object;)Z
    .locals 0

    .line 26
    check-cast p1, Lorg/dom4j/Node;

    invoke-virtual {p0, p1}, Lorg/dom4j/tree/ElementIterator;->matches(Lorg/dom4j/Node;)Z

    move-result p1

    return p1
.end method

.method protected matches(Lorg/dom4j/Node;)Z
    .locals 0

    .line 41
    instance-of p1, p1, Lorg/dom4j/Element;

    return p1
.end method
